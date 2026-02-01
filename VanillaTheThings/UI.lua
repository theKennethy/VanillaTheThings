--------------------------------------------------------------------------------
--                   A L L   T H E   T H I N G S   U I                        --
--                           WoW 1.12.1 Edition                               --
--------------------------------------------------------------------------------

local VTT = VanillaTheThings
local L = VanillaTheThings_L
local DB = VanillaTheThings_DB

-- UI State
VTT.CurrentView = "overview"
VTT.CurrentViewMode = "all"
VTT.CurrentSettingsTab = "general"
VTT.ExpandedCategories = {}
VTT.MainListData = {}
VTT.MiniListData = {}
VTT.RaidListData = {}
VTT.MiniPinned = false
VTT.CurrentMiniFilter = "all"

-- Tracker State
VTT.TrackerMinimized = false
VTT.TrackerRows = {}
VTT.TrackerData = {}
local MAX_TRACKER_ROWS = 15

--------------------------------------------------------------------------------
-- Helper Functions
--------------------------------------------------------------------------------

local function tcount(t)
    if not t then return 0 end
    local count = 0
    for _ in pairs(t) do count = count + 1 end
    return count
end

local function tlen(t)
    if not t then return 0 end
    return table.getn(t) or 0
end

--------------------------------------------------------------------------------
-- Progress Bar Functions
--------------------------------------------------------------------------------

local function UpdateProgressBar(bar, current, total, text)
    if not bar then return end
    
    bar:SetMinMaxValues(0, math.max(total, 1))
    bar:SetValue(current)
    
    local pct = total > 0 and (current / total) or 1
    
    -- Color based on progress
    if pct >= 1 then
        bar:SetStatusBarColor(0.1, 0.9, 0.1)  -- Green
    elseif pct >= 0.75 then
        bar:SetStatusBarColor(0.5, 0.9, 0.3)  -- Light green
    elseif pct >= 0.5 then
        bar:SetStatusBarColor(0.9, 0.9, 0.1)  -- Yellow
    elseif pct >= 0.25 then
        bar:SetStatusBarColor(0.9, 0.6, 0.1)  -- Orange
    else
        bar:SetStatusBarColor(0.9, 0.2, 0.2)  -- Red
    end
    
    local barText = getglobal(bar:GetName() .. "Text")
    if barText then
        if text then
            barText:SetText(text)
        else
            barText:SetText(string.format("%d / %d (%.1f%%)", current, total, pct * 100))
        end
    end
end

VTT.UpdateProgressBar = UpdateProgressBar

--------------------------------------------------------------------------------
-- Row Management
--------------------------------------------------------------------------------

local MAX_MAIN_ROWS = 21
local MAX_MINI_ROWS = 16
local MAX_RAID_ROWS = 17

local mainRows = {}
local miniRows = {}
local raidRows = {}

local function CreateRow(parent, name, template, index, width)
    local row = CreateFrame("Button", name, parent)
    row:SetWidth(width or parent:GetWidth())
    row:SetHeight(20)
    row:SetPoint("TOPLEFT", parent, "TOPLEFT", 0, -((index - 1) * 20))
    
    -- Background
    row.bg = row:CreateTexture(nil, "BACKGROUND")
    row.bg:SetAllPoints()
    row.bg:SetTexture(0.1, 0.1, 0.1, 0.3)
    
    -- Left indicator bar (for category coloring)
    row.indicator = row:CreateTexture(nil, "ARTWORK")
    row.indicator:SetWidth(3)
    row.indicator:SetHeight(16)
    row.indicator:SetPoint("LEFT", row, "LEFT", 1, 0)
    row.indicator:SetTexture(0.1, 0.6, 1, 0)
    
    -- Icon
    row.icon = row:CreateTexture(nil, "ARTWORK")
    row.icon:SetWidth(16)
    row.icon:SetHeight(16)
    row.icon:SetPoint("LEFT", row, "LEFT", 6, 0)
    
    -- Label
    row.label = row:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
    row.label:SetPoint("LEFT", row.icon, "RIGHT", 4, 0)
    row.label:SetPoint("RIGHT", row, "RIGHT", -90, 0)
    row.label:SetJustifyH("LEFT")
    row.label:SetTextColor(1, 1, 1)
    
    -- Count
    row.count = row:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
    row.count:SetPoint("RIGHT", row, "RIGHT", -24, 0)
    row.count:SetWidth(60)
    row.count:SetJustifyH("RIGHT")
    
    -- Checkmark/Status icon
    row.checkmark = row:CreateTexture(nil, "ARTWORK")
    row.checkmark:SetWidth(14)
    row.checkmark:SetHeight(14)
    row.checkmark:SetPoint("RIGHT", row, "RIGHT", -4, 0)
    
    -- Highlight
    row.highlight = row:CreateTexture(nil, "HIGHLIGHT")
    row.highlight:SetAllPoints()
    row.highlight:SetTexture(1, 1, 1, 0.1)
    row.highlight:SetBlendMode("ADD")
    
    -- Scripts
    row:EnableMouse(true)
    row:RegisterForClicks("LeftButtonUp", "RightButtonUp")
    
    row:SetScript("OnEnter", function()
        if row.data and row.data.tooltip then
            GameTooltip:SetOwner(row, "ANCHOR_RIGHT")
            if type(row.data.tooltip) == "function" then
                row.data.tooltip(GameTooltip)
            else
                GameTooltip:SetText(row.data.tooltip)
            end
            GameTooltip:Show()
        end
        -- Show indicator on hover
        if row.indicator then
            row.indicator:SetTexture(0.1, 0.6, 1, 0.8)
        end
    end)
    
    row:SetScript("OnLeave", function()
        GameTooltip:Hide()
        if row.indicator and row.data and not row.data.isHeader then
            row.indicator:SetTexture(0.1, 0.6, 1, 0)
        end
    end)
    
    row:SetScript("OnClick", function()
        if row.data then
            if arg1 == "RightButton" and row.data.onRightClick then
                row.data.onRightClick(row.data)
            elseif row.data.isHeader then
                VTT:ToggleCategory(row.data.category)
            elseif row.data.onClick then
                row.data.onClick(row.data)
            end
        end
    end)
    
    return row
end

local function InitializeRows()
    local miniContent = getglobal("ATTMiniFrameContent")
    local raidContent = getglobal("ATTRaidFrameContent")
    
    if miniContent then
        for i = 1, MAX_MINI_ROWS do
            miniRows[i] = CreateRow(miniContent, "ATTMiniRow" .. i, nil, i, 220)
        end
    end
    
    if raidContent then
        for i = 1, MAX_RAID_ROWS do
            raidRows[i] = CreateRow(raidContent, "ATTRaidRow" .. i, nil, i, 290)
        end
    end
end

--------------------------------------------------------------------------------
-- Category Toggle
--------------------------------------------------------------------------------

function VTT:ToggleCategory(category)
    if not category then return end
    
    if self.ExpandedCategories[category] then
        self.ExpandedCategories[category] = nil
    else
        self.ExpandedCategories[category] = true
    end
    
    self:RefreshMiniWindow()
end

function VTT:IsCategoryExpanded(category)
    return self.ExpandedCategories[category]
end

--------------------------------------------------------------------------------
-- Filter Helper Functions
--------------------------------------------------------------------------------

-- Check if an item should be shown based on current filter settings
function VTT:ShouldShowItem(itemID, isCollected)
    if not self.settings or not self.settings.filters then
        return true
    end
    
    -- If collected and showCollected is false, hide it
    if isCollected and not self.settings.filters.showCollected then
        return false
    end
    
    return true
end

-- Check if a completed thing should be shown
function VTT:ShouldShowCompleted(isCompleted)
    if not self.settings or not self.settings.filters then
        return true
    end
    
    -- If completed and showCompleted is false, hide it
    if isCompleted and not self.settings.filters.showCompleted then
        return false
    end
    
    return true
end

-- Check if something unavailable should be shown (e.g., wrong faction)
function VTT:ShouldShowUnavailable(isUnavailable)
    if not self.settings or not self.settings.filters then
        return true
    end
    
    -- If unavailable and showUnavailable is false, hide it
    if isUnavailable and not self.settings.filters.showUnavailable then
        return false
    end
    
    return true
end

--------------------------------------------------------------------------------
-- Build List Data
--------------------------------------------------------------------------------

function VTT:BuildMainListData()
    local data = {}
    local stats = VTT.GetStatistics()
    local filters = self.settings and self.settings.filters or {}
    local zone = GetRealZoneText() or "Unknown"
    local subzone = GetSubZoneText()
    
    -- ==================== CURRENT ZONE SECTION (like mini window) ====================
    local isInInstance = false
    local instanceData = nil
    
    -- Check if zone matches a dungeon name
    for _, dungeon in ipairs(DB.Dungeons) do
        if dungeon.name == zone or string.find(zone, dungeon.name) then
            isInInstance = true
            instanceData = dungeon
            break
        end
    end
    
    -- Check if zone matches a raid name
    if not isInInstance then
        for _, raid in ipairs(DB.Raids) do
            if raid.name == zone or string.find(zone, raid.name) then
                isInInstance = true
                instanceData = raid
                instanceData.isRaid = true
                break
            end
        end
    end
    
    -- Zone Header (always show)
    local zoneLabel = zone
    if subzone and subzone ~= "" then
        zoneLabel = zone .. " - " .. subzone
    end
    
    if isInInstance and instanceData then
        -- Instance zone header
        local headerColor = instanceData.isRaid and "FF8800" or "00CCFF"
        local instanceType = instanceData.isRaid and "Raid" or "Dungeon"
        table.insert(data, {
            isHeader = true,
            category = "currentzone",
            label = "|cFF" .. headerColor .. instanceData.name .. "|r",
            count = instanceType .. " (" .. (instanceData.players or "?") .. " players)",
            indent = 0,
            icon = instanceData.isRaid and DB.Icons.Raid or DB.Icons.Dungeon,
            tooltip = function(tip)
                tip:AddLine(instanceData.name, 1, 0.8, 0)
                tip:AddLine(instanceType, 1, 1, 1)
                if instanceData.players then
                    tip:AddLine(instanceData.players .. " players", 0.8, 0.8, 0.8)
                end
                if instanceData.minLevel then
                    tip:AddLine("Level: " .. instanceData.minLevel .. "-" .. instanceData.maxLevel, 0.8, 0.8, 0.8)
                end
            end,
        })
        
        -- Show instance loot when expanded (or always for current zone)
        if self:IsCategoryExpanded("currentzone") and DB.BossLoot then
            local totalLoot = 0
            local collectedLoot = 0
            
            -- Count loot progress
            for bossName, bossData in pairs(DB.BossLoot) do
                if bossData.instance == instanceData.name then
                    if bossData.items then
                        for _, itemID in ipairs(bossData.items) do
                            totalLoot = totalLoot + 1
                            if VTT.IsItemCollected(itemID) then
                                collectedLoot = collectedLoot + 1
                            end
                        end
                    end
                end
            end
            
            -- Progress summary
            if totalLoot > 0 then
                local progressColor = collectedLoot == totalLoot and "00FF00" or 
                                     (collectedLoot > 0 and "FFFF00" or "FF6666")
                table.insert(data, {
                    isHeader = false,
                    label = "  |cFFFFD700Loot Progress:|r",
                    count = "|cFF" .. progressColor .. collectedLoot .. "/" .. totalLoot .. "|r",
                    indent = 1,
                })
            end
            
            -- Boss list with loot
            for bossName, bossData in pairs(DB.BossLoot) do
                if bossData.instance == instanceData.name then
                    local bossLootCount = bossData.items and tlen(bossData.items) or 0
                    local bossCollected = 0
                    
                    if bossData.items then
                        for _, itemID in ipairs(bossData.items) do
                            if VTT.IsItemCollected(itemID) then
                                bossCollected = bossCollected + 1
                            end
                        end
                    end
                    
                    local bossColor = bossCollected == bossLootCount and "00FF00" or 
                                     (bossCollected > 0 and "FFFF00" or "FFFFFF")
                    local bossIcon = bossCollected == bossLootCount and "|cFF00FF00✓|r " or ""
                    
                    -- Boss header
                    local bossKey = "boss_" .. bossName
                    table.insert(data, {
                        isHeader = true,
                        category = bossKey,
                        label = "  " .. bossIcon .. "|cFFFFD700" .. bossName .. "|r",
                        count = "|cFF" .. bossColor .. bossCollected .. "/" .. bossLootCount .. "|r",
                        indent = 1,
                        tooltip = function(tip)
                            tip:AddLine(bossName, 1, 0.8, 0)
                            tip:AddLine("Loot: " .. bossCollected .. "/" .. bossLootCount .. " collected", 1, 1, 1)
                        end,
                    })
                    
                    -- Show loot items when boss is expanded
                    if self:IsCategoryExpanded(bossKey) and bossData.items then
                        for _, itemID in ipairs(bossData.items) do
                            local itemInfo = DB.Items and DB.Items[itemID]
                            local itemName = itemInfo and itemInfo.name or ("Item " .. itemID)
                            local quality = itemInfo and itemInfo.quality or 3
                            local qualityColor = quality >= 5 and "FF8000" or 
                                                (quality == 4 and "A335EE" or "0070DD")
                            
                            local collected = VTT.IsItemCollected(itemID)
                            local statusIcon = collected and "|cFF00FF00✓|r" or "|cFFFF6666○|r"
                            
                            if self:ShouldShowItem(itemID, collected) then
                                table.insert(data, {
                                    isHeader = false,
                                    label = "    " .. statusIcon .. " |cFF" .. qualityColor .. itemName .. "|r",
                                    count = collected and "|cFF00FF00Got|r" or "",
                                    indent = 2,
                                    data = { itemID = itemID, name = itemName },
                                    onClick = function()
                                        if not collected then
                                            VTT.MarkItemCollected(itemID, itemName)
                                            VTT:RefreshMiniWindow()
                                        end
                                    end,
                                    tooltip = function(tip)
                                        tip:AddLine(itemName, 1, 0.8, 0)
                                        tip:AddLine("Drops from: " .. bossName, 1, 1, 1)
                                        if itemInfo and itemInfo.class then
                                            tip:AddLine("Class: " .. itemInfo.class, 0.8, 0.8, 0.8)
                                        end
                                        if collected then
                                            tip:AddLine("|cFF00FF00Already collected!|r", 0, 1, 0)
                                        else
                                            tip:AddLine("|cFFFFFF00Click to mark collected|r", 1, 1, 0)
                                        end
                                    end,
                                })
                            end
                        end
                    end
                end
            end
        end
    else
        -- Regular zone header (not in instance)
        table.insert(data, {
            isHeader = true,
            category = "currentzone",
            label = "|cFF15ABFFCurrent Zone:|r " .. zoneLabel,
            count = "",
            indent = 0,
            icon = DB.Icons.Zone,
        })
        
        -- Show active quests for zone when expanded
        if self:IsCategoryExpanded("currentzone") then
            local quests = VTT.GetQuestLogData()
            if tlen(quests) > 0 then
                for _, quest in ipairs(quests) do
                    local status = quest.isComplete and "|cFF00FF00[Complete]|r " or ""
                    table.insert(data, {
                        isHeader = false,
                        label = "  " .. status .. quest.title,
                        count = quest.level and ("Lv " .. quest.level) or "",
                        indent = 1,
                        data = quest,
                    })
                end
            else
                table.insert(data, {
                    isHeader = false,
                    label = "  |cFF888888No active quests|r",
                    count = "",
                    indent = 1,
                })
            end
        end
    end
    
    -- ==================== OVERALL PROGRESS HEADER ====================
    table.insert(data, {
        isHeader = true,
        category = "overview",
        label = "|cFF15ABFF" .. L.TITLE .. "|r",
        count = "",
        indent = 0,
    })
    
    -- Quests Category
    local questCount = stats.questsCompleted
    table.insert(data, {
        isHeader = true,
        category = "quests",
        label = L.CAT_QUESTS,
        count = tostring(questCount),
        indent = 0,
        tooltip = L.TIP_QUESTS,
    })
    
    if self:IsCategoryExpanded("quests") then
        -- Show current quest log
        local quests = VTT.GetQuestLogData()
        for _, quest in ipairs(quests) do
            local status = quest.isComplete and "|cFF00FF00[Complete]|r " or ""
            table.insert(data, {
                isHeader = false,
                label = "  " .. status .. quest.title,
                count = quest.level and ("Lv " .. quest.level) or "",
                indent = 1,
                data = quest,
                tooltip = function(tip)
                    tip:AddLine(quest.title, 1, 1, 0)
                    if quest.level then
                        tip:AddLine("Level: " .. quest.level, 1, 1, 1)
                    end
                    if quest.tag then
                        tip:AddLine("Type: " .. quest.tag, 0.8, 0.8, 0.8)
                    end
                end,
            })
        end
    end
    
    -- Reputations Category
    local repCount = stats.reputationsMaxed
    local exaltedText = (L.STANDINGS and L.STANDINGS[8]) or "Exalted"
    table.insert(data, {
        isHeader = true,
        category = "reputations",
        label = L.CAT_REPUTATIONS,
        count = repCount .. " " .. exaltedText,
        indent = 0,
        tooltip = L.TIP_REPUTATIONS,
    })
    
    if self:IsCategoryExpanded("reputations") then
        local reps = VTT.GetReputationData()
        for _, rep in ipairs(reps) do
            local color
            if rep.standingID >= 5 then color = "00FF00"
            elseif rep.standingID >= 4 then color = "FFFF00"
            else color = "FF8800" end
            
            table.insert(data, {
                isHeader = false,
                label = "  " .. rep.name,
                count = "|cFF" .. color .. rep.standing .. "|r",
                indent = 1,
                data = rep,
                tooltip = function(tip)
                    tip:AddLine(rep.name, 1, 1, 0)
                    tip:AddLine(rep.standing, 1, 1, 1)
                    tip:AddLine(string.format("%d / %d (%.1f%%)", rep.current, rep.max, rep.percent), 0.8, 0.8, 0.8)
                end,
            })
        end
    end
    
    -- Professions Category
    table.insert(data, {
        isHeader = true,
        category = "professions",
        label = L.CAT_PROFESSIONS,
        count = "",
        indent = 0,
        tooltip = L.TIP_PROFESSIONS,
    })
    
    if self:IsCategoryExpanded("professions") then
        local profs = VTT.GetProfessionData()
        
        if tlen(profs.primary) > 0 then
            table.insert(data, {
                isHeader = false,
                label = "  |cFFFFD700Primary|r",
                count = "",
                indent = 1,
            })
            for _, prof in ipairs(profs.primary) do
                local pct = prof.maxRank > 0 and (prof.rank / prof.maxRank * 100) or 0
                local color = pct >= 100 and "00FF00" or (pct >= 50 and "FFFF00" or "FFFFFF")
                table.insert(data, {
                    isHeader = false,
                    label = "    " .. prof.name,
                    count = "|cFF" .. color .. prof.rank .. "/" .. prof.maxRank .. "|r",
                    indent = 2,
                    data = prof,
                })
            end
        end
        
        if tlen(profs.secondary) > 0 then
            table.insert(data, {
                isHeader = false,
                label = "  |cFFFFD700Secondary|r",
                count = "",
                indent = 1,
            })
            for _, prof in ipairs(profs.secondary) do
                local pct = prof.maxRank > 0 and (prof.rank / prof.maxRank * 100) or 0
                local color = pct >= 100 and "00FF00" or (pct >= 50 and "FFFF00" or "FFFFFF")
                table.insert(data, {
                    isHeader = false,
                    label = "    " .. prof.name,
                    count = "|cFF" .. color .. prof.rank .. "/" .. prof.maxRank .. "|r",
                    indent = 2,
                    data = prof,
                })
            end
        end
    end
    
    -- Exploration Category
    local exploreCount = stats.areasExplored
    table.insert(data, {
        isHeader = true,
        category = "exploration",
        label = L.CAT_EXPLORATION,
        count = tostring(exploreCount),
        indent = 0,
        tooltip = L.TIP_EXPLORATION,
    })
    
    if self:IsCategoryExpanded("exploration") then
        for key, area in pairs(VTT.db.exploredAreas) do
            table.insert(data, {
                isHeader = false,
                label = "  " .. area.name,
                count = "",
                indent = 1,
                data = area,
            })
        end
    end
    
    -- Flight Paths Category
    local fpCount = stats.flightPathsKnown
    table.insert(data, {
        isHeader = true,
        category = "flightpaths",
        label = L.CAT_FLIGHT_PATHS,
        count = tostring(fpCount),
        indent = 0,
        tooltip = L.TIP_FLIGHT_PATHS,
    })
    
    if self:IsCategoryExpanded("flightpaths") then
        for key, fp in pairs(VTT.db.knownFlightPaths) do
            table.insert(data, {
                isHeader = false,
                label = "  " .. fp.name,
                count = "",
                indent = 1,
                data = fp,
            })
        end
    end
    
    -- Dungeons Category (with nested boss/loot view)
    table.insert(data, {
        isHeader = true,
        category = "dungeons",
        label = L.CAT_DUNGEONS,
        count = tlen(DB.Dungeons) .. " total",
        indent = 0,
        tooltip = L.TIP_DUNGEONS,
    })
    
    if self:IsCategoryExpanded("dungeons") then
        for _, dungeon in ipairs(DB.Dungeons) do
            local levelText = ""
            if dungeon.minLevel and dungeon.maxLevel then
                levelText = dungeon.minLevel .. "-" .. dungeon.maxLevel
            end
            
            -- Dungeon header (sub-expandable)
            local dungeonKey = "dungeon_" .. (dungeon.name or "unknown")
            table.insert(data, {
                isHeader = true,
                category = dungeonKey,
                label = "  " .. dungeon.name,
                count = levelText,
                indent = 1,
                data = dungeon,
                tooltip = function(tip)
                    tip:AddLine(dungeon.name, 1, 1, 0)
                    if dungeon.minLevel then
                        tip:AddLine("Level: " .. dungeon.minLevel .. "-" .. dungeon.maxLevel, 1, 1, 1)
                    end
                    if dungeon.players then
                        tip:AddLine("Players: " .. dungeon.players, 0.8, 0.8, 0.8)
                    end
                    if dungeon.zone then
                        tip:AddLine("Zone: " .. dungeon.zone, 0.8, 0.8, 0.8)
                    end
                end,
            })
            
            -- Show bosses and loot if expanded
            if self:IsCategoryExpanded(dungeonKey) then
                -- Find bosses for this dungeon from BossLoot database
                if DB.BossLoot then
                    for bossName, bossData in pairs(DB.BossLoot) do
                        if bossData.instance == dungeon.name then
                            -- Boss entry
                            local bossKey = "boss_" .. bossName
                            table.insert(data, {
                                isHeader = true,
                                category = bossKey,
                                label = "    |cFFFFD700" .. bossName .. "|r",
                                count = bossData.items and tlen(bossData.items) .. " drops" or "",
                                indent = 2,
                            })
                            
                            -- Show loot if boss expanded
                            if self:IsCategoryExpanded(bossKey) and bossData.items then
                                for _, itemID in ipairs(bossData.items) do
                                    local itemInfo = DB.Items and DB.Items[itemID]
                                    local itemName = itemInfo and itemInfo.name or ("Item " .. itemID)
                                    local quality = itemInfo and itemInfo.quality or 3
                                    local qualityColor = quality >= 5 and "FF8000" or 
                                                        (quality == 4 and "A335EE" or
                                                        (quality == 3 and "0070DD" or "1EFF00"))
                                    
                                    local collected = VTT.IsItemCollected(itemID)
                                    
                                    -- Apply filter: skip collected items if filter says so
                                    if self:ShouldShowItem(itemID, collected) then
                                        local statusIcon = collected and "|cFF00FF00✓|r" or "|cFFFF6666✗|r"
                                        
                                        table.insert(data, {
                                            isHeader = false,
                                            label = "      " .. statusIcon .. " |cFF" .. qualityColor .. itemName .. "|r",
                                            count = collected and "Collected" or "",
                                            indent = 3,
                                            data = { itemID = itemID, name = itemName },
                                            onClick = function(itemData)
                                                -- Toggle collected status
                                                if not collected then
                                                    VTT.MarkItemCollected(itemID, itemName)
                                                    VTT:RefreshMiniWindow()
                                                end
                                            end,
                                            tooltip = function(tip)
                                                tip:AddLine(itemName, 1, 0.8, 0)
                                                tip:AddLine("Item ID: " .. itemID, 0.5, 0.5, 0.5)
                                                if itemInfo then
                                                    if itemInfo.sourceDetail then
                                                        tip:AddLine("Source: " .. itemInfo.sourceDetail, 1, 1, 1)
                                                    end
                                                    if itemInfo.class then
                                                        tip:AddLine("Class: " .. itemInfo.class, 0.8, 0.8, 0.8)
                                                    end
                                                    if itemInfo.dropRate then
                                                        tip:AddLine("Drop Rate: ~" .. itemInfo.dropRate .. "%", 0.6, 0.6, 0.6)
                                                    end
                                                end
                                                if collected then
                                                    tip:AddLine("|cFF00FF00Already collected!|r", 0, 1, 0)
                                                else
                                                    tip:AddLine("|cFFFFFF00Click to mark as collected|r", 1, 1, 0)
                                                end
                                            end,
                                        })
                                    end -- end ShouldShowItem filter
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    
    -- Raids Category (with nested boss/loot view)
    table.insert(data, {
        isHeader = true,
        category = "raids",
        label = L.CAT_RAIDS,
        count = tlen(DB.Raids) .. " total",
        indent = 0,
        tooltip = L.TIP_RAIDS,
    })
    
    if self:IsCategoryExpanded("raids") then
        for _, raid in ipairs(DB.Raids) do
            local raidKey = "raid_" .. (raid.name or "unknown")
            table.insert(data, {
                isHeader = true,
                category = raidKey,
                label = "  |cFFFF8800" .. raid.name .. "|r",
                count = raid.players and (raid.players .. " players") or "",
                indent = 1,
                data = raid,
                tooltip = function(tip)
                    tip:AddLine(raid.name, 1, 0.5, 0)
                    if raid.minLevel then
                        tip:AddLine("Level: " .. raid.minLevel .. "+", 1, 1, 1)
                    end
                    if raid.players then
                        tip:AddLine("Players: " .. raid.players, 0.8, 0.8, 0.8)
                    end
                    if raid.zone then
                        tip:AddLine("Zone: " .. raid.zone, 0.8, 0.8, 0.8)
                    end
                end,
            })
            
            -- Show bosses and loot if expanded
            if self:IsCategoryExpanded(raidKey) then
                if DB.BossLoot then
                    for bossName, bossData in pairs(DB.BossLoot) do
                        if bossData.instance == raid.name then
                            local bossKey = "boss_" .. bossName
                            local lootCount = bossData.items and tlen(bossData.items) or 0
                            local collectedCount = 0
                            if bossData.items then
                                for _, itemID in ipairs(bossData.items) do
                                    if VTT.IsItemCollected(itemID) then
                                        collectedCount = collectedCount + 1
                                    end
                                end
                            end
                            
                            local progressColor = collectedCount == lootCount and "00FF00" or 
                                                 (collectedCount > 0 and "FFFF00" or "FFFFFF")
                            
                            table.insert(data, {
                                isHeader = true,
                                category = bossKey,
                                label = "    |cFFFFD700" .. bossName .. "|r",
                                count = "|cFF" .. progressColor .. collectedCount .. "/" .. lootCount .. "|r",
                                indent = 2,
                            })
                            
                            if self:IsCategoryExpanded(bossKey) and bossData.items then
                                for _, itemID in ipairs(bossData.items) do
                                    local itemInfo = DB.Items and DB.Items[itemID]
                                    local itemName = itemInfo and itemInfo.name or ("Item " .. itemID)
                                    local quality = itemInfo and itemInfo.quality or 4
                                    local qualityColor = quality >= 5 and "FF8000" or 
                                                        (quality == 4 and "A335EE" or "0070DD")
                                    
                                    local collected = VTT.IsItemCollected(itemID)
                                    
                                    -- Apply filter: skip collected items if filter says so
                                    if self:ShouldShowItem(itemID, collected) then
                                        local statusIcon = collected and "|cFF00FF00✓|r" or "|cFFFF6666✗|r"
                                        
                                        table.insert(data, {
                                            isHeader = false,
                                            label = "      " .. statusIcon .. " |cFF" .. qualityColor .. itemName .. "|r",
                                            count = collected and "Collected" or "",
                                            indent = 3,
                                            data = { itemID = itemID, name = itemName },
                                            onClick = function(itemData)
                                                if not collected then
                                                    VTT.MarkItemCollected(itemID, itemName)
                                                    VTT:RefreshMiniWindow()
                                                end
                                            end,
                                            tooltip = function(tip)
                                                tip:AddLine(itemName, 1, 0.8, 0)
                                                tip:AddLine("Item ID: " .. itemID, 0.5, 0.5, 0.5)
                                                if itemInfo then
                                                    if itemInfo.sourceDetail then
                                                        tip:AddLine("Source: " .. itemInfo.sourceDetail, 1, 1, 1)
                                                    end
                                                    if itemInfo.class then
                                                        local classColor = L.CLASS_COLORS[itemInfo.class] or "FFFFFFFF"
                                                        tip:AddLine("Class: |c" .. classColor .. itemInfo.class .. "|r", 0.8, 0.8, 0.8)
                                                    end
                                                    if itemInfo.dropRate then
                                                        tip:AddLine("Drop Rate: ~" .. itemInfo.dropRate .. "%", 1, 0.5, 0.5)
                                                    end
                                                end
                                                if collected then
                                                    tip:AddLine("|cFF00FF00Already collected!|r", 0, 1, 0)
                                                else
                                                    tip:AddLine("|cFFFFFF00Click to mark as collected|r", 1, 1, 0)
                                                end
                                            end,
                                        })
                                    end -- end ShouldShowItem filter
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    
    -- World Bosses Category
    table.insert(data, {
        isHeader = true,
        category = "worldbosses",
        label = L.CAT_WORLD_BOSSES,
        count = tlen(DB.WorldBosses) .. " total",
        indent = 0,
    })
    
    if self:IsCategoryExpanded("worldbosses") then
        for _, boss in ipairs(DB.WorldBosses) do
            table.insert(data, {
                isHeader = false,
                label = "  " .. boss.name,
                count = boss.zone or "",
                indent = 1,
                data = boss,
            })
        end
    end
    
    -- Items Category
    local itemCount = stats.itemsCollected
    table.insert(data, {
        isHeader = true,
        category = "items",
        label = L.CAT_ITEMS,
        count = tostring(itemCount),
        indent = 0,
        tooltip = L.TIP_ITEMS,
    })
    
    if self:IsCategoryExpanded("items") then
        for id, item in pairs(VTT.db.collectedItems) do
            -- Filter: items in collectedItems are always collected
            if self:ShouldShowItem(id, true) then
                table.insert(data, {
                    isHeader = false,
                    label = "  |cFF00FF00✓|r " .. item.name,
                    count = "|cFF00FF00Collected|r",
                    indent = 1,
                    data = item,
                })
            end
        end
    end
    
    -- Recipes Category
    local recipeCount = stats.recipesLearned
    table.insert(data, {
        isHeader = true,
        category = "recipes",
        label = L.CAT_RECIPES,
        count = tostring(recipeCount),
        indent = 0,
        tooltip = L.TIP_RECIPES,
    })
    
    if self:IsCategoryExpanded("recipes") then
        for id, recipe in pairs(VTT.db.learnedRecipes) do
            -- Filter: recipes in learnedRecipes are always collected/learned
            if self:ShouldShowItem(id, true) then
                table.insert(data, {
                    isHeader = false,
                    label = "  |cFF00FF00✓|r " .. recipe.name,
                    count = recipe.profession or "",
                    indent = 1,
                    data = recipe,
                })
            end
        end
    end
    
    -- Vendors Category (shows important vendors)
    local vendorCount = DB.Vendors and tcount(DB.Vendors) or 0
    table.insert(data, {
        isHeader = true,
        category = "vendors",
        label = "Vendors",
        count = vendorCount .. " total",
        indent = 0,
        tooltip = "Important vendors with special items",
    })
    
    if self:IsCategoryExpanded("vendors") and DB.Vendors then
        local faction = VTT.PlayerFaction or "Alliance"
        for vendorName, vendorData in pairs(DB.Vendors) do
            -- Filter by faction
            if vendorData.faction == "Both" or vendorData.faction == faction then
                local vendorKey = "vendor_" .. vendorName
                local itemCount = vendorData.items and tlen(vendorData.items) or 0
                
                table.insert(data, {
                    isHeader = true,
                    category = vendorKey,
                    label = "  " .. vendorName,
                    count = itemCount .. " items",
                    indent = 1,
                    tooltip = function(tip)
                        tip:AddLine(vendorName, 1, 1, 0)
                        if vendorData.location then
                            tip:AddLine("Location: " .. vendorData.location, 1, 1, 1)
                        end
                        if vendorData.coords then
                            tip:AddLine(string.format("Coords: %.0f, %.0f", vendorData.coords.x, vendorData.coords.y), 0.8, 0.8, 0.8)
                        end
                        if vendorData.reputation then
                            tip:AddLine("Requires: " .. vendorData.reputation, 0.5, 0.8, 1)
                        end
                    end,
                })
                
                if self:IsCategoryExpanded(vendorKey) and vendorData.items then
                    for _, item in ipairs(vendorData.items) do
                        local collected = VTT.IsItemCollected(item.id)
                        -- Apply filter
                        if self:ShouldShowItem(item.id, collected) then
                            local statusIcon = collected and "|cFF00FF00✓|r " or ""
                            table.insert(data, {
                                isHeader = false,
                                label = "    " .. statusIcon .. item.name,
                                count = item.cost or "",
                                indent = 2,
                                data = item,
                                tooltip = function(tip)
                                    tip:AddLine(item.name, 1, 0.8, 0)
                                    if item.cost then
                                        tip:AddLine("Cost: " .. item.cost, 1, 1, 0)
                                    end
                                    if item.rep then
                                        tip:AddLine("Requires: " .. item.rep, 0.5, 0.8, 1)
                                    end
                                end,
                            })
                        end
                    end
                end
            end
        end
    end
    
    -- Mounts Category
    table.insert(data, {
        isHeader = true,
        category = "mounts",
        label = L.CAT_MOUNTS or "Mounts",
        count = tlen(DB.Mounts) .. " total",
        indent = 0,
        tooltip = "Collectible mounts in the game",
        icon = DB.Icons.Mount,
    })
    
    if self:IsCategoryExpanded("mounts") then
        -- Filter by faction
        local faction = VTT.PlayerFaction
        for _, mount in ipairs(DB.Mounts) do
            if mount.faction == "Both" or mount.faction == faction then
                local rarityColor = mount.rarity == "Legendary" and "FF8000" or 
                                   (mount.rarity == "Epic" and "A335EE" or "FFFFFF")
                table.insert(data, {
                    isHeader = false,
                    label = "  |cFF" .. rarityColor .. mount.name .. "|r",
                    count = mount.source or "",
                    indent = 1,
                    data = mount,
                    tooltip = function(tip)
                        tip:AddLine(mount.name, 1, 0.8, 0)
                        tip:AddLine("Source: " .. (mount.source or "Unknown"), 1, 1, 1)
                        if mount.cost then
                            tip:AddLine("Cost: " .. mount.cost, 1, 0.8, 0)
                        end
                        if mount.rarity then
                            tip:AddLine("Rarity: " .. mount.rarity, 0.8, 0.8, 0.8)
                        end
                    end,
                })
            end
        end
    end
    
    -- Battlegrounds Category
    table.insert(data, {
        isHeader = true,
        category = "battlegrounds",
        label = L.CAT_BATTLEGROUNDS or "Battlegrounds",
        count = tlen(DB.Battlegrounds) .. " total",
        indent = 0,
        tooltip = "PvP Battlegrounds",
        icon = DB.Icons.Battleground,
    })
    
    if self:IsCategoryExpanded("battlegrounds") then
        for _, bg in ipairs(DB.Battlegrounds) do
            table.insert(data, {
                isHeader = false,
                label = "  " .. bg.name,
                count = bg.players,
                indent = 1,
                data = bg,
                tooltip = function(tip)
                    tip:AddLine(bg.name, 1, 0.3, 0.3)
                    tip:AddLine("Type: " .. bg.type, 1, 1, 1)
                    tip:AddLine("Level: " .. bg.minLevel .. "-" .. bg.maxLevel, 0.8, 0.8, 0.8)
                    tip:AddLine("Players: " .. bg.players, 0.8, 0.8, 0.8)
                end,
            })
        end
    end
    
    -- Item Sets Category
    table.insert(data, {
        isHeader = true,
        category = "itemsets",
        label = L.CAT_ITEM_SETS or "Item Sets",
        count = tlen(DB.ItemSets) .. " sets",
        indent = 0,
        tooltip = "Collectible armor sets from raids",
    })
    
    if self:IsCategoryExpanded("itemsets") then
        -- Group by class
        local playerClass = VTT.PlayerClass
        local classMatches = {}
        local otherSets = {}
        
        for _, set in ipairs(DB.ItemSets) do
            if set.class == playerClass then
                table.insert(classMatches, set)
            else
                table.insert(otherSets, set)
            end
        end
        
        -- Show player class sets first
        if tlen(classMatches) > 0 then
            local color = L.CLASS_COLORS[playerClass] or "FFFFFFFF"
            table.insert(data, {
                isHeader = false,
                label = "  |c" .. color .. "Your Class Sets|r",
                count = "",
                indent = 1,
            })
            for _, set in ipairs(classMatches) do
                table.insert(data, {
                    isHeader = false,
                    label = "    " .. set.name,
                    count = set.pieces .. "pc / " .. set.source,
                    indent = 2,
                    data = set,
                })
            end
        end
    end
    
    -- PvP Ranks Category
    table.insert(data, {
        isHeader = true,
        category = "pvpranks",
        label = L.CAT_PVP_RANKS or "PvP Ranks",
        count = "14 ranks",
        indent = 0,
        tooltip = "Honor system PvP rankings",
        icon = DB.Icons.PvP,
    })
    
    if self:IsCategoryExpanded("pvpranks") then
        local faction = VTT.PlayerFaction or "Alliance"
        local ranks = DB.PvPRanks[faction] or DB.PvPRanks.Alliance
        for _, rank in ipairs(ranks) do
            local color = rank.rank >= 10 and "A335EE" or (rank.rank >= 6 and "0070DD" or "1EFF00")
            table.insert(data, {
                isHeader = false,
                label = "  |cFF" .. color .. rank.rank .. ". " .. rank.name .. "|r",
                count = "",
                indent = 1,
                data = rank,
                tooltip = function(tip)
                    tip:AddLine(rank.name, 1, 0.8, 0)
                    tip:AddLine("Rank: " .. rank.rank, 1, 1, 1)
                    tip:AddLine("Minimum Honorable Kills to achieve", 0.8, 0.8, 0.8)
                end,
            })
        end
    end
    
    -- Holidays Category
    table.insert(data, {
        isHeader = true,
        category = "holidays",
        label = L.CAT_HOLIDAYS or "Holidays",
        count = tlen(DB.Holidays) .. " events",
        indent = 0,
        tooltip = "Seasonal holiday events",
        icon = DB.Icons.Holiday,
    })
    
    if self:IsCategoryExpanded("holidays") then
        for _, holiday in ipairs(DB.Holidays) do
            local startDate = string.format("%d/%d", holiday.startMonth, holiday.startDay)
            local endDate = string.format("%d/%d", holiday.endMonth, holiday.endDay)
            table.insert(data, {
                isHeader = false,
                label = "  " .. holiday.name,
                count = startDate .. " - " .. endDate,
                indent = 1,
                data = holiday,
            })
        end
    end
    
    self.MainListData = data
    return data
end

function VTT:BuildMiniListData()
    local data = {}
    local zone = GetRealZoneText() or "Unknown"
    local subzone = GetSubZoneText()
    
    -- ==================== CHECK IF INSIDE A DUNGEON/RAID ====================
    local isInInstance = false
    local instanceData = nil
    
    -- Check if zone matches a dungeon name
    for _, dungeon in ipairs(DB.Dungeons) do
        if dungeon.name == zone or string.find(zone, dungeon.name) then
            isInInstance = true
            instanceData = dungeon
            break
        end
    end
    
    -- Check if zone matches a raid name
    if not isInInstance then
        for _, raid in ipairs(DB.Raids) do
            if raid.name == zone or string.find(zone, raid.name) then
                isInInstance = true
                instanceData = raid
                instanceData.isRaid = true
                break
            end
        end
    end
    
    -- ==================== INSIDE DUNGEON/RAID VIEW ====================
    if isInInstance and instanceData then
        local headerColor = instanceData.isRaid and "FF8800" or "00CCFF"
        local instanceType = instanceData.isRaid and "Raid" or "Dungeon"
        
        -- Instance header
        table.insert(data, {
            isHeader = true,
            label = "|cFF" .. headerColor .. instanceData.name .. "|r",
            count = instanceType,
            icon = instanceData.isRaid and DB.Icons.Raid or DB.Icons.Dungeon,
        })
        
        -- Instance info
        if instanceData.players then
            table.insert(data, {
                isHeader = false,
                label = "  |cFF888888" .. instanceData.players .. " players|r",
                count = "",
            })
        end
        
        -- ==================== BOSS LOOT ====================
        if DB.BossLoot then
            local bossCount = 0
            local totalLoot = 0
            local collectedLoot = 0
            
            -- First pass: count bosses and loot
            for bossName, bossData in pairs(DB.BossLoot) do
                if bossData.instance == instanceData.name then
                    bossCount = bossCount + 1
                    if bossData.items then
                        for _, itemID in ipairs(bossData.items) do
                            totalLoot = totalLoot + 1
                            if VTT.IsItemCollected(itemID) then
                                collectedLoot = collectedLoot + 1
                            end
                        end
                    end
                end
            end
            
            -- Progress summary
            if totalLoot > 0 then
                local progressColor = collectedLoot == totalLoot and "00FF00" or 
                                     (collectedLoot > 0 and "FFFF00" or "FF6666")
                table.insert(data, {
                    isHeader = true,
                    label = "|cFFFFD700Loot Progress|r",
                    count = "|cFF" .. progressColor .. collectedLoot .. "/" .. totalLoot .. "|r",
                })
            end
            
            -- Boss list with loot
            for bossName, bossData in pairs(DB.BossLoot) do
                if bossData.instance == instanceData.name then
                    local bossLootCount = bossData.items and tlen(bossData.items) or 0
                    local bossCollected = 0
                    
                    if bossData.items then
                        for _, itemID in ipairs(bossData.items) do
                            if VTT.IsItemCollected(itemID) then
                                bossCollected = bossCollected + 1
                            end
                        end
                    end
                    
                    local bossColor = bossCollected == bossLootCount and "00FF00" or 
                                     (bossCollected > 0 and "FFFF00" or "FFFFFF")
                    local bossIcon = bossCollected == bossLootCount and "|cFF00FF00✓|r " or ""
                    
                    -- Boss header (expandable)
                    local bossKey = "mini_boss_" .. bossName
                    table.insert(data, {
                        isHeader = true,
                        category = bossKey,
                        label = "  " .. bossIcon .. "|cFFFFD700" .. bossName .. "|r",
                        count = "|cFF" .. bossColor .. bossCollected .. "/" .. bossLootCount .. "|r",
                        tooltip = function(tip)
                            tip:AddLine(bossName, 1, 0.8, 0)
                            tip:AddLine("Instance: " .. instanceData.name, 0.8, 0.8, 0.8)
                            tip:AddLine("Loot: " .. bossCollected .. "/" .. bossLootCount .. " collected", 1, 1, 1)
                        end,
                    })
                    
                    -- Show loot (always expanded in mini for convenience)
                    if bossData.items then
                        for _, itemID in ipairs(bossData.items) do
                            local itemInfo = DB.Items and DB.Items[itemID]
                            local itemName = itemInfo and itemInfo.name or ("Item " .. itemID)
                            local quality = itemInfo and itemInfo.quality or 3
                            local qualityColor = quality >= 5 and "FF8000" or 
                                                (quality == 4 and "A335EE" or "0070DD")
                            
                            local collected = VTT.IsItemCollected(itemID)
                            local statusIcon = collected and "|cFF00FF00✓|r" or "|cFFFF6666✗|r"
                            
                            table.insert(data, {
                                isHeader = false,
                                label = "    " .. statusIcon .. " |cFF" .. qualityColor .. itemName .. "|r",
                                count = collected and "" or "Need",
                                data = { itemID = itemID, name = itemName },
                                onClick = function()
                                    if not collected then
                                        VTT.MarkItemCollected(itemID, itemName)
                                        VTT:RefreshMiniWindow()
                                    end
                                end,
                                tooltip = function(tip)
                                    tip:AddLine(itemName, 1, 0.8, 0)
                                    tip:AddLine("Drops from: " .. bossName, 1, 1, 1)
                                    if itemInfo and itemInfo.class then
                                        tip:AddLine("Class: " .. itemInfo.class, 0.8, 0.8, 0.8)
                                    end
                                    if itemInfo and itemInfo.dropRate then
                                        tip:AddLine("Drop Rate: ~" .. itemInfo.dropRate .. "%", 1, 0.5, 0.5)
                                    end
                                    if collected then
                                        tip:AddLine("|cFF00FF00Already collected!|r", 0, 1, 0)
                                    else
                                        tip:AddLine("|cFFFFFF00Click to mark collected|r", 1, 1, 0)
                                    end
                                end,
                            })
                        end
                    end
                end
            end
        end
        
        -- ==================== ACTIVE QUESTS (in dungeon) ====================
        local quests = VTT.GetQuestLogData()
        if tlen(quests) > 0 then
            table.insert(data, {
                isHeader = true,
                category = "mini_quests_dungeon",
                label = "|cFFFFFF00Active Quests|r",
                count = tostring(tlen(quests)),
                icon = DB.Icons.Quest,
            })
            
            for _, quest in ipairs(quests) do
                local status = quest.isComplete and "|cFF00FF00✓|r " or ""
                local color = quest.isComplete and "00FF00" or "FFFFFF"
                table.insert(data, {
                    isHeader = false,
                    label = "  " .. status .. "|cFF" .. color .. quest.title .. "|r",
                    count = quest.level and ("Lv" .. quest.level) or "",
                    data = quest,
                    tooltip = function(tip)
                        tip:AddLine(quest.title, 1, 1, 0)
                        if quest.level then
                            tip:AddLine("Level: " .. quest.level, 1, 1, 1)
                        end
                        if quest.isComplete then
                            tip:AddLine("|cFF00FF00Ready to turn in!|r", 0, 1, 0)
                        end
                    end,
                })
            end
        end
        
        -- Return early - we're in an instance, don't show outdoor zone stuff
        self.MiniListData = data
        return data
    end
    
    -- ==================== OUTDOOR ZONE VIEW ====================
    -- Zone header with collection status
    local zoneExplored = 0
    local zoneTotal = 0
    local explorationAreas = DB.ExplorationAreas and DB.ExplorationAreas[zone]
    if explorationAreas then
        zoneTotal = tlen(explorationAreas)
        for _, area in ipairs(explorationAreas) do
            if VTT.db.exploredAreas[area] then
                zoneExplored = zoneExplored + 1
            end
        end
    end
    
    local progressText = zoneTotal > 0 and (zoneExplored .. "/" .. zoneTotal) or ""
    table.insert(data, {
        isHeader = true,
        label = "|cFF15ABFF" .. zone .. "|r",
        count = progressText,
        icon = DB.Icons.Exploration,
    })
    
    if subzone and subzone ~= "" then
        table.insert(data, {
            isHeader = false,
            label = "  |cFF888888" .. subzone .. "|r",
            count = "",
        })
    end
    
    -- ==================== MISSING EXPLORATION ====================
    if explorationAreas and zoneExplored < zoneTotal then
        table.insert(data, {
            isHeader = true,
            category = "mini_exploration",
            label = "|cFFFFD700Missing Exploration|r",
            count = (zoneTotal - zoneExplored) .. " left",
            icon = DB.Icons.Exploration,
        })
        
        if self:IsCategoryExpanded("mini_exploration") or true then  -- Always expanded in mini
            for _, area in ipairs(explorationAreas) do
                if not VTT.db.exploredAreas[area] then
                    table.insert(data, {
                        isHeader = false,
                        label = "  |cFFFF6666✗|r " .. area,
                        count = "",
                        data = { name = area, type = "exploration" },
                        tooltip = function(tip)
                            tip:AddLine(area, 1, 1, 0)
                            tip:AddLine("Undiscovered area", 1, 0.5, 0.5)
                            tip:AddLine("Explore this area to collect!", 0.7, 0.7, 0.7)
                        end,
                    })
                end
            end
        end
    end
    
    -- ==================== FLIGHT PATHS ====================
    local faction = VTT.PlayerFaction or "Alliance"
    local flightPaths = DB.FlightPaths and DB.FlightPaths[faction]
    local missingFPs = {}
    
    if flightPaths then
        for _, fp in ipairs(flightPaths) do
            if fp.zone == zone and not VTT.db.knownFlightPaths[fp.name] then
                table.insert(missingFPs, fp)
            end
        end
    end
    
    -- Also check neutral
    local neutralFPs = DB.FlightPaths and DB.FlightPaths.Neutral
    if neutralFPs then
        for _, fp in ipairs(neutralFPs) do
            if fp.zone == zone and not VTT.db.knownFlightPaths[fp.name] then
                table.insert(missingFPs, fp)
            end
        end
    end
    
    if tlen(missingFPs) > 0 then
        table.insert(data, {
            isHeader = true,
            category = "mini_flightpaths",
            label = "|cFF00FF00Missing Flight Paths|r",
            count = tlen(missingFPs),
            icon = DB.Icons.FlightPath,
        })
        
        for _, fp in ipairs(missingFPs) do
            table.insert(data, {
                isHeader = false,
                label = "  |cFFFF6666✗|r " .. fp.name,
                count = "",
                data = fp,
                tooltip = function(tip)
                    tip:AddLine(fp.name, 1, 1, 0)
                    tip:AddLine("Flight Path", 0.5, 1, 0.5)
                    tip:AddLine("Find the flight master!", 0.7, 0.7, 0.7)
                end,
            })
        end
    end
    
    -- ==================== DUNGEONS IN THIS ZONE ====================
    local zoneDungeons = {}
    for _, dungeon in ipairs(DB.Dungeons) do
        if dungeon.zone == zone then
            table.insert(zoneDungeons, dungeon)
        end
    end
    
    if tlen(zoneDungeons) > 0 then
        table.insert(data, {
            isHeader = true,
            category = "mini_dungeons",
            label = "|cFF00CCFFDungeons|r",
            count = tlen(zoneDungeons),
            icon = DB.Icons.Dungeon,
        })
        
        for _, dungeon in ipairs(zoneDungeons) do
            local levelColor = "FFFFFF"
            local playerLevel = VTT.PlayerLevel or 60
            if dungeon.minLevel and playerLevel < dungeon.minLevel then
                levelColor = "FF0000"
            elseif dungeon.maxLevel and playerLevel > dungeon.maxLevel + 5 then
                levelColor = "888888"
            else
                levelColor = "00FF00"
            end
            
            table.insert(data, {
                isHeader = false,
                label = "  " .. dungeon.name,
                count = "|cFF" .. levelColor .. dungeon.minLevel .. "-" .. dungeon.maxLevel .. "|r",
                data = dungeon,
                tooltip = function(tip)
                    tip:AddLine(dungeon.name, 1, 0.8, 0)
                    tip:AddLine("Level: " .. dungeon.minLevel .. "-" .. dungeon.maxLevel, 1, 1, 1)
                    tip:AddLine("Players: " .. dungeon.players, 0.8, 0.8, 0.8)
                end,
            })
        end
    end
    
    -- ==================== RAIDS IN THIS ZONE ====================
    local zoneRaids = {}
    for _, raid in ipairs(DB.Raids) do
        if raid.location == zone then
            table.insert(zoneRaids, raid)
        end
    end
    
    if tlen(zoneRaids) > 0 then
        table.insert(data, {
            isHeader = true,
            category = "mini_raids",
            label = "|cFFFF8800Raids|r",
            count = tlen(zoneRaids),
            icon = DB.Icons.Raid,
        })
        
        for _, raid in ipairs(zoneRaids) do
            table.insert(data, {
                isHeader = false,
                label = "  " .. raid.name,
                count = raid.players .. " man",
                data = raid,
                tooltip = function(tip)
                    tip:AddLine(raid.name, 1, 0.5, 0)
                    tip:AddLine("Level: " .. raid.level, 1, 1, 1)
                    tip:AddLine("Players: " .. raid.players, 0.8, 0.8, 0.8)
                end,
            })
        end
    end
    
    -- ==================== WORLD BOSSES ====================
    local zoneBosses = {}
    for _, boss in ipairs(DB.WorldBosses) do
        if boss.location == zone then
            table.insert(zoneBosses, boss)
        end
    end
    
    if tlen(zoneBosses) > 0 then
        table.insert(data, {
            isHeader = true,
            category = "mini_worldbosses",
            label = "|cFFFF0000World Bosses|r",
            count = tlen(zoneBosses),
            icon = DB.Icons.WorldBoss,
        })
        
        for _, boss in ipairs(zoneBosses) do
            table.insert(data, {
                isHeader = false,
                label = "  " .. boss.name,
                count = "Lv " .. boss.level,
                data = boss,
            })
        end
    end
    
    -- ==================== ACTIVE QUESTS ====================
    local quests = VTT.GetQuestLogData()
    if tlen(quests) > 0 then
        table.insert(data, {
            isHeader = true,
            category = "mini_quests",
            label = "|cFFFFFF00Active Quests|r",
            count = tostring(tlen(quests)),
            icon = DB.Icons.Quest,
        })
        
        for _, quest in ipairs(quests) do
            local status = quest.isComplete and "|cFF00FF00✓|r " or ""
            local color = quest.isComplete and "00FF00" or "FFFFFF"
            table.insert(data, {
                isHeader = false,
                label = "  " .. status .. "|cFF" .. color .. quest.title .. "|r",
                count = quest.level and ("Lv" .. quest.level) or "",
                data = quest,
            })
        end
    end
    
    -- ==================== SUMMARY ====================
    local totalMissing = (zoneTotal - zoneExplored) + tlen(missingFPs)
    if totalMissing == 0 and tlen(zoneDungeons) == 0 and tlen(zoneRaids) == 0 then
        table.insert(data, {
            isHeader = false,
            label = "|cFF00FF00✓ Zone Complete!|r",
            count = "",
        })
    end
    
    self.MiniListData = data
    return data
end

--------------------------------------------------------------------------------
-- Window Management
--------------------------------------------------------------------------------

function VTT:RefreshMiniWindow()
    self:BuildMiniListData()
    VTT.UpdateMiniList()
    
    -- Update title
    local title = getglobal("ATTMiniFrameTitle")
    if title then
        local zone = GetRealZoneText() or "Unknown"
        title:SetText(zone)
    end
    
    -- Update subzone
    local subzone = getglobal("ATTMiniFrameSubzone")
    if subzone then
        local sz = GetSubZoneText()
        if sz and sz ~= "" then
            subzone:SetText(sz)
        else
            subzone:SetText("")
        end
    end
    
    -- Update progress bar for zone
    local progressBar = getglobal("ATTMiniFrameProgressBar")
    if progressBar then
        local quests = VTT.GetQuestLogData()
        local completed = 0
        for _, q in ipairs(quests) do
            if q.isComplete then completed = completed + 1 end
        end
        UpdateProgressBar(progressBar, completed, tlen(quests))
    end
    
    -- Update status
    local status = getglobal("ATTMiniFrameStatusText")
    if status then
        local quests = VTT.GetQuestLogData()
        status:SetText(tlen(quests) .. " active quests in log")
    end
end

function VTT:ToggleMiniWindow()
    if not self.MiniFrame then
        self.MiniFrame = getglobal("ATTMiniFrame")
    end
    
    if self.MiniFrame then
        if self.MiniFrame:IsVisible() then
            self.MiniFrame:Hide()
        else
            self.MiniFrame:Show()
        end
    else
        VTT.Print("Mini window not found!")
    end
end

function VTT:SaveWindowPosition(windowType, frame)
    if not frame then return end
    
    local point, _, relativePoint, x, y = frame:GetPoint()
    if self.settings and self.settings.windows and self.settings.windows[windowType] then
        self.settings.windows[windowType].x = x
        self.settings.windows[windowType].y = y
    end
end

--------------------------------------------------------------------------------
-- Minimap Button
--------------------------------------------------------------------------------

function VTT:CreateMinimapButton()
    local button = getglobal("ATTMinimapButton")
    if not button then return end
    
    -- Position around minimap
    local angle = self.settings and self.settings.minimap.position or 220
    local radius = 80
    angle = math.rad(angle)
    
    local x = math.cos(angle) * radius
    local y = math.sin(angle) * radius
    
    button:ClearAllPoints()
    button:SetPoint("CENTER", Minimap, "CENTER", x, y)
    
    if self.settings and self.settings.minimap.show then
        button:Show()
    else
        button:Hide()
    end
end

--------------------------------------------------------------------------------
-- Additional Window Functions
--------------------------------------------------------------------------------

function VTT:ToggleRaidWindow()
    if not self.RaidFrame then
        self.RaidFrame = getglobal("ATTRaidFrame")
    end
    
    if self.RaidFrame then
        if self.RaidFrame:IsVisible() then
            self.RaidFrame:Hide()
        else
            self.RaidFrame:Show()
        end
    end
end

function VTT:RefreshRaidWindow()
    self:BuildRaidListData()
    VTT.UpdateRaidList()
end

function VTT:BuildRaidListData()
    local data = {}
    
    -- Raids Header
    table.insert(data, {
        isHeader = true,
        category = "raids",
        label = "|cFFFF8800Vanilla Raids|r",
        count = tlen(DB.Raids) .. " raids",
        icon = DB.Icons.Raid,
    })
    
    if self:IsCategoryExpanded("raids") then
        for _, raid in ipairs(DB.Raids) do
            table.insert(data, {
                isHeader = false,
                label = "  " .. raid.name,
                count = raid.players .. " man",
                indent = 1,
                data = raid,
                icon = DB.Icons.Raid,
                tooltip = function(tip)
                    tip:AddLine(raid.name, 1, 0.5, 0)
                    tip:AddLine("Players: " .. raid.players, 1, 1, 1)
                    tip:AddLine("Level: " .. (raid.level or 60), 0.8, 0.8, 0.8)
                    if raid.location then
                        tip:AddLine("Location: " .. raid.location, 0.6, 0.8, 1)
                    end
                end,
            })
        end
    end
    
    -- World Bosses
    table.insert(data, {
        isHeader = true,
        category = "worldbosses_raid",
        label = "|cFFFF0000World Bosses|r",
        count = tlen(DB.WorldBosses) .. " bosses",
        icon = DB.Icons.Raid,
    })
    
    if self:IsCategoryExpanded("worldbosses_raid") then
        for _, boss in ipairs(DB.WorldBosses) do
            table.insert(data, {
                isHeader = false,
                label = "  " .. boss.name,
                count = boss.location or "",
                indent = 1,
                data = boss,
                icon = DB.Icons.Raid,
            })
        end
    end
    
    self.RaidListData = data
    return data
end

function VTT.UpdateRaidList()
    local scrollFrame = getglobal("ATTRaidFrameScrollFrame")
    if not scrollFrame then return end
    
    local offset = FauxScrollFrame_GetOffset(scrollFrame)
    local data = VTT.RaidListData or {}
    local total = tlen(data)
    
    for i = 1, MAX_RAID_ROWS do
        local row = raidRows[i]
        if row then
            local index = offset + i
            if index <= total then
                local item = data[index]
                row.data = item
                
                if item.isHeader then
                    row.bg:SetTexture(0.3, 0.1, 0.1, 0.6)
                    row.label:SetText((VTT:IsCategoryExpanded(item.category) and "- " or "+ ") .. item.label)
                    if row.indicator then
                        row.indicator:SetTexture(0.8, 0.3, 0.1, 0.8)
                    end
                else
                    row.bg:SetTexture(0.1, 0.1, 0.1, 0.3)
                    row.label:SetText(item.label)
                    if row.indicator then
                        row.indicator:SetTexture(0.1, 0.6, 1, 0)
                    end
                end
                
                row.count:SetText(item.count or "")
                row.icon:SetTexture(item.icon or DB.Icons.Unknown)
                
                row:Show()
            else
                row:Hide()
            end
        end
    end
    
    FauxScrollFrame_Update(scrollFrame, total, MAX_RAID_ROWS, 22)
    
    -- Update status
    local status = getglobal("ATTRaidFrameStatusText")
    if status then
        status:SetText("Select a raid to view loot tables")
    end
end

function VTT:ToggleCharacterWindow()
    if not self.CharacterFrame then
        self.CharacterFrame = getglobal("ATTCharacterFrame")
    end
    
    if self.CharacterFrame then
        if self.CharacterFrame:IsVisible() then
            self.CharacterFrame:Hide()
        else
            self.CharacterFrame:Show()
        end
    end
end

function VTT:RefreshCharacterWindow()
    local nameText = getglobal("ATTCharacterFrameName")
    local infoText = getglobal("ATTCharacterFrameInfo")
    local guildText = getglobal("ATTCharacterFrameGuild")
    
    if nameText then
        local color = L.CLASS_COLORS[self.PlayerClass] or "FFFFFFFF"
        nameText:SetText("|c" .. color .. (self.PlayerName or "Unknown") .. "|r")
    end
    
    if infoText then
        infoText:SetText(string.format("Level %d %s %s",
            self.PlayerLevel or 1,
            self.PlayerRace or "Unknown",
            self.PlayerClass or "Unknown"))
    end
    
    if guildText then
        local guildName = GetGuildInfo("player")
        if guildName then
            guildText:SetText("<" .. guildName .. ">")
        else
            guildText:SetText("")
        end
    end
    
    -- Build stats display
    self:BuildCharacterStats()
end

function VTT:BuildCharacterStats()
    local content = getglobal("ATTCharacterFrameStats")
    if not content or content.initialized then return end
    
    local stats = self.GetStatistics()
    local yOffset = 0
    
    local function AddStatLine(label, value, color)
        local frame = CreateFrame("Frame", nil, content)
        frame:SetWidth(260)
        frame:SetHeight(20)
        frame:SetPoint("TOPLEFT", content, "TOPLEFT", 0, yOffset)
        
        local labelText = frame:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
        labelText:SetPoint("LEFT", frame, "LEFT", 0, 0)
        labelText:SetText(label)
        labelText:SetTextColor(0.8, 0.8, 0.8)
        
        local valueText = frame:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
        valueText:SetPoint("RIGHT", frame, "RIGHT", 0, 0)
        valueText:SetText(value)
        if color then
            valueText:SetTextColor(color.r or 1, color.g or 1, color.b or 1)
        end
        
        yOffset = yOffset - 22
    end
    
    -- Header
    local header = content:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    header:SetPoint("TOPLEFT", content, "TOPLEFT", 0, 0)
    header:SetText("|cFFFFD700Collection Statistics|r")
    yOffset = -25
    
    AddStatLine("Quests Completed:", tostring(stats.questsCompleted), {r=0.3, g=0.9, b=0.3})
    AddStatLine("Reputations Exalted:", tostring(stats.reputationsMaxed), {r=0.8, g=0.6, b=1})
    AddStatLine("Recipes Learned:", tostring(stats.recipesLearned), {r=1, g=0.8, b=0.3})
    AddStatLine("Items Collected:", tostring(stats.itemsCollected), {r=0.5, g=0.8, b=1})
    AddStatLine("Flight Paths:", tostring(stats.flightPathsKnown), {r=0.6, g=1, b=0.6})
    AddStatLine("Areas Explored:", tostring(stats.areasExplored), {r=1, g=0.9, b=0.5})
    AddStatLine("Deaths:", tostring(stats.deaths), {r=1, g=0.3, b=0.3})
    AddStatLine("Characters:", tostring(stats.characters), {r=0.8, g=0.8, b=0.8})
    
    content.initialized = true
end

function VTT:ShowHelp()
    if not self.HelpFrame then
        self.HelpFrame = getglobal("ATTHelpFrame")
    end
    
    if self.HelpFrame then
        if self.HelpFrame:IsVisible() then
            self.HelpFrame:Hide()
        else
            self.HelpFrame:Show()
        end
    end
end

function VTT:InitHelpWindow()
    local text = getglobal("ATTHelpFrameText")
    if not text then return end
    
    local helpText = [[
|cFF15ABFFVanillaTheThings|r - WoW 1.12.1 Edition
|cFFFFD700Version:|r ]] .. (VTT.Version or "1.12.1-2.0.0") .. [[


|cFFFFD700DESCRIPTION|r
Track your collections in World of Warcraft 1.12.1!
Monitor quests, reputations, recipes, exploration,
flight paths, and items across all your characters.

|cFFFFD700SLASH COMMANDS|r
|cFF00FF00/att|r - Toggle main window
|cFF00FF00/att mini|r - Toggle mini list
|cFF00FF00/att mounts|r - Toggle mount collection
|cFF00FF00/att pets|r - Toggle pet collection
|cFF00FF00/att tree|r - Toggle tree browser
|cFF00FF00/att search <text>|r - Search database
|cFF00FF00/att filter|r - Open advanced search
|cFF00FF00/att preset <name>|r - Load filter preset
|cFF00FF00/att settings|r - Open settings
|cFF00FF00/att refresh|r - Refresh all data
|cFF00FF00/att reset|r - Reset window positions
|cFF00FF00/att stats|r - Show statistics
|cFF00FF00/att debug|r - Toggle debug mode

|cFFFFD700MINIMAP BUTTON|r
|cFFFFFFFFLeft-Click:|r Open main window
|cFFFFFFFFShift+Left:|r Refresh data
|cFFFFFFFFRight-Click:|r Open mini list
|cFFFFFFFFShift+Right:|r Open settings
|cFFFFFFFFMiddle-Click:|r Open raid assistant
|cFFFFFFFFDrag:|r Move button position

|cFFFFD700MAIN WINDOW TABS|r
|cFF00FF00All:|r Show all categories
|cFF00FF00Character:|r Character-specific data
|cFF00FF00World:|r Zones, dungeons, raids
|cFF00FF00PvP:|r PvP rankings and battlegrounds
|cFF00FF00Stats:|r Collection statistics

|cFFFFD700NEW FEATURES|r
|cFF00FF00Tree Browser:|r Hierarchical view organized
  by Zone > Subzone > NPC > Items with expand/collapse.
|cFF00FF00Advanced Search:|r Filter by source type,
  quality level, and level range.
|cFF00FF00Filter Presets:|r Save and load custom
  filter combinations with one click.
|cFF00FF00Mount Collection:|r Track all mounts with 
  costs, reputation requirements, and sources.
|cFF00FF00Pet Collection:|r Track companion pets from
  vendors, quests, drops, and events.
|cFF00FF00Cost Tracking:|r Items now show gold, honor,
  and token costs in tooltips.
|cFF00FF00Source Chains:|r See where items drop and
  the full chain of requirements.

|cFFFFD700FEATURES|r
- Quest completion tracking
- Reputation standings
- Recipe collection
- Exploration tracking
- Flight path discovery
- Item collection
- Mount collection tracking
- Pet collection tracking
- Cost/currency tracking
- Source chain information
- Hierarchical tree browser
- Advanced search filters
- Filter presets system
- Account-wide tracking
- Per-character tracking
- Searchable database
- Zone-specific mini list
- Raid loot assistant

|cFFFFD700TIPS|r
- Click category headers to expand/collapse
- Use the search box to find specific items
- Hover over items for detailed tooltips
- Right-click items for additional options
- Click mounts/pets to mark as collected
- Use presets for quick filter switching
- Tree browser shows full item hierarchy
]]
    
    text:SetText(helpText)
end

function VTT:ToggleFilterDropdown()
    local dropdown = getglobal("ATTFilterDropdown")
    if not dropdown then return end
    
    if dropdown:IsVisible() then
        dropdown:Hide()
    else
        -- Position near filter button
        local filterBtn = getglobal("ATTMiniFrameFilterButton")
        if filterBtn then
            dropdown:ClearAllPoints()
            dropdown:SetPoint("TOPRIGHT", filterBtn, "BOTTOMRIGHT", 0, -2)
        end
        dropdown:Show()
    end
end

function VTT:InitFilterDropdown()
    local content = getglobal("ATTFilterDropdownContent")
    if not content or content.initialized then return end
    
    local yOffset = 0
    
    local filters = {
        { key = "showCompleted", label = "Show Completed" },
        { key = "showCollected", label = "Show Collected" },
        { key = "showUnavailable", label = "Show Unavailable" },
    }
    
    for _, filter in ipairs(filters) do
        local cb = CreateFrame("CheckButton", "ATTFilter_" .. filter.key, content, "UICheckButtonTemplate")
        cb:SetPoint("TOPLEFT", content, "TOPLEFT", 0, yOffset)
        cb:SetWidth(20)
        cb:SetHeight(20)
        
        local text = getglobal("ATTFilter_" .. filter.key .. "Text")
        if text then
            text:SetText(filter.label)
            text:SetFontObject("GameFontNormalSmall")
        end
        
        cb:SetChecked(self.settings.filters[filter.key])
        cb:SetScript("OnClick", function()
            self.settings.filters[filter.key] = this:GetChecked()
            self:RefreshMiniWindow()
        end)
        
        yOffset = yOffset - 24
    end
    
    content.initialized = true
end

function VTT:ToggleMiniPinned()
    self.MiniPinned = not self.MiniPinned
    
    local pinBtn = getglobal("ATTMiniFramePinButton")
    if pinBtn then
        local normalTex = pinBtn:GetNormalTexture()
        if normalTex then
            if self.MiniPinned then
                normalTex:SetTexture("Interface\\Buttons\\UI-GuildButton-OfficerNote-Up")
            else
                normalTex:SetTexture("Interface\\Buttons\\UI-GuildButton-OfficerNote-Disabled")
            end
        end
    end
    
    if self.MiniFrame then
        if self.MiniPinned then
            self.MiniFrame:SetFrameStrata("HIGH")
        else
            self.MiniFrame:SetFrameStrata("MEDIUM")
        end
    end
end

function VTT:OnWindowResize(windowType, frame)
    if not frame then return end
    
    -- Store new size
    local width = frame:GetWidth()
    local height = frame:GetHeight()
    
    if self.settings and self.settings.windows and self.settings.windows[windowType] then
        self.settings.windows[windowType].width = width
        self.settings.windows[windowType].height = height
    end
end

--------------------------------------------------------------------------------
-- Search Handler
--------------------------------------------------------------------------------

-- Store current search query
VTT.CurrentSearchQuery = nil

function VTT:OnSearch(query)
    if not query or query == "" then
        self.CurrentSearchQuery = nil
        self:RefreshMiniWindow()
        return
    end
    
    self.CurrentSearchQuery = query
    local results = self.SearchDatabase(query)
    VTT.Print("Found " .. tcount(results) .. " results for '" .. query .. "'")
    
    -- Build search results view with categories
    local data = {}
    
    -- Search header
    table.insert(data, {
        isHeader = true,
        category = "search_header",
        label = "|cFF15ABFFSearch Results: \"" .. query .. "\"|r",
        count = tcount(results) .. " found",
        tooltip = "Press Escape to clear search",
    })
    
    -- Organize results by type
    local byType = {}
    for _, result in ipairs(results) do
        local rtype = result.type
        if not byType[rtype] then
            byType[rtype] = {}
        end
        table.insert(byType[rtype], result)
    end
    
    -- Type display info
    local typeInfo = {
        quest = { label = "Completed Quests", icon = DB.Icons.Quest, color = "FFFF00" },
        item = { label = "Collected Items", icon = DB.Icons.Item, color = "00FF00" },
        recipe = { label = "Learned Recipes", icon = DB.Icons.Recipe, color = "00CCFF" },
        dungeon = { label = "Dungeons", icon = DB.Icons.Dungeon, color = "00CCFF" },
        raid = { label = "Raids", icon = DB.Icons.Raid, color = "FF8800" },
        dbitem = { label = "Database Items", icon = DB.Icons.Item, color = "A335EE" },
        boss = { label = "Bosses", icon = DB.Icons.Boss, color = "FFD700" },
        faction = { label = "Factions", icon = DB.Icons.Faction, color = "00FF00" },
        worldboss = { label = "World Bosses", icon = DB.Icons.WorldBoss, color = "FF0000" },
    }
    
    -- Auto-expand first category with results (for better UX)
    local typeOrder = { "dbitem", "boss", "dungeon", "raid", "worldboss", "faction", "quest", "item", "recipe" }
    local firstExpanded = false
    for _, rtype in ipairs(typeOrder) do
        if byType[rtype] and tlen(byType[rtype]) > 0 and tlen(byType[rtype]) <= 15 then
            local categoryKey = "search_" .. rtype
            if not self:IsCategoryExpanded(categoryKey) and not firstExpanded then
                self.ExpandedCategories[categoryKey] = true
                firstExpanded = true
            end
        end
    end
    
    -- Display results by type
    for _, rtype in ipairs(typeOrder) do
        local items = byType[rtype]
        if items and tlen(items) > 0 then
            local info = typeInfo[rtype] or { label = rtype, color = "FFFFFF" }
            local categoryKey = "search_" .. rtype
            
            -- Category header (expandable)
            table.insert(data, {
                isHeader = true,
                category = categoryKey,
                label = "|cFF" .. info.color .. info.label .. "|r",
                count = tlen(items),
                indent = 0,
                icon = info.icon,
            })
            
            -- Show items when expanded
            if self:IsCategoryExpanded(categoryKey) then
                for _, result in ipairs(items) do
                    local itemLabel = result.name
                    local itemCount = ""
                    local itemTooltip = nil
                    
                    -- Format based on type
                    if rtype == "dbitem" then
                        local qualityColor = result.quality and result.quality >= 5 and "FF8000" or
                                            (result.quality == 4 and "A335EE" or "0070DD")
                        local statusIcon = result.collected and "|cFF00FF00✓|r " or "|cFFFF6666○|r "
                        itemLabel = "  " .. statusIcon .. "|cFF" .. qualityColor .. result.name .. "|r"
                        itemCount = result.collected and "|cFF00FF00Got|r" or ""
                        itemTooltip = function(tip)
                            tip:AddLine(result.name, 1, 0.8, 0)
                            if result.sourceDetail then
                                tip:AddLine("Source: " .. result.sourceDetail, 1, 1, 1)
                            end
                            if result.collected then
                                tip:AddLine("|cFF00FF00Collected|r", 0, 1, 0)
                            else
                                tip:AddLine("|cFFFFFF00Click to mark collected|r", 1, 1, 0)
                            end
                        end
                    elseif rtype == "boss" then
                        itemLabel = "  |cFFFFD700" .. result.name .. "|r"
                        itemCount = result.instance or ""
                        itemTooltip = function(tip)
                            tip:AddLine(result.name, 1, 0.8, 0)
                            if result.instance then
                                tip:AddLine("Instance: " .. result.instance, 1, 1, 1)
                            end
                            if result.data and result.data.items then
                                tip:AddLine("Drops " .. tlen(result.data.items) .. " tracked items", 0.8, 0.8, 0.8)
                            end
                        end
                    elseif rtype == "dungeon" then
                        local d = result.data
                        itemLabel = "  |cFF00CCFF" .. result.name .. "|r"
                        itemCount = d and (d.minLevel .. "-" .. d.maxLevel) or ""
                        itemTooltip = function(tip)
                            tip:AddLine(result.name, 1, 0.8, 0)
                            if d then
                                tip:AddLine("Level: " .. d.minLevel .. "-" .. d.maxLevel, 1, 1, 1)
                                tip:AddLine("Players: " .. d.players, 0.8, 0.8, 0.8)
                                tip:AddLine("Zone: " .. (d.zone or "Unknown"), 0.8, 0.8, 0.8)
                            end
                        end
                    elseif rtype == "raid" then
                        local r = result.data
                        itemLabel = "  |cFFFF8800" .. result.name .. "|r"
                        itemCount = r and (r.players .. " players") or ""
                        itemTooltip = function(tip)
                            tip:AddLine(result.name, 1, 0.8, 0)
                            if r then
                                tip:AddLine("Players: " .. r.players, 1, 1, 1)
                                tip:AddLine("Location: " .. (r.location or "Unknown"), 0.8, 0.8, 0.8)
                            end
                        end
                    elseif rtype == "worldboss" then
                        local wb = result.data
                        itemLabel = "  |cFFFF0000" .. result.name .. "|r"
                        itemCount = wb and wb.location or ""
                    elseif rtype == "faction" then
                        local f = result.data
                        itemLabel = "  " .. result.name
                        itemCount = f and f.faction or ""
                    elseif rtype == "quest" then
                        itemLabel = "  |cFFFFFF00" .. result.name .. "|r"
                        itemCount = "|cFF00FF00Done|r"
                    elseif rtype == "item" or rtype == "recipe" then
                        itemLabel = "  |cFF00FF00✓|r " .. result.name
                        itemCount = "|cFF00FF00Got|r"
                    else
                        itemLabel = "  " .. result.name
                    end
                    
                    table.insert(data, {
                        isHeader = false,
                        label = itemLabel,
                        count = itemCount,
                        indent = 1,
                        data = result,
                        tooltip = itemTooltip,
                        onClick = function()
                            if rtype == "dbitem" and not result.collected then
                                VTT.MarkItemCollected(result.id, result.name)
                                VTT:OnSearch(query) -- Refresh search
                            end
                        end,
                    })
                end
            end
        end
    end
    
    -- Clear search instructions
    if tcount(results) == 0 then
        table.insert(data, {
            isHeader = false,
            label = "  |cFF888888No results found|r",
            count = "",
        })
    end
    
    table.insert(data, {
        isHeader = false,
        label = "",
        count = "",
    })
    table.insert(data, {
        isHeader = false,
        label = "  |cFF666666Press Escape or clear search box to return|r",
        count = "",
    })
    
    self.MainListData = data
    VTT.UpdateMainList()
end

--------------------------------------------------------------------------------
-- TRACKER FRAME (Always-Visible Quest-Log Style)
--------------------------------------------------------------------------------

function VTT:InitTracker()
    VTT.Print("|cFF00FF00Initializing tracker...|r")
    
    local tracker = getglobal("ATTTrackerFrame")
    if not tracker then 
        VTT.Print("|cFFFF0000Tracker frame not found!|r")
        return 
    end
    
    self.TrackerFrame = tracker
    local content = getglobal("ATTTrackerFrameContent")
    if not content then 
        VTT.Print("|cFFFF0000Tracker content frame not found!|r")
        return 
    end
    
    VTT.Print("|cFF00FF00Creating " .. MAX_TRACKER_ROWS .. " tracker rows...|r")
    
    -- Create tracker rows PROGRAMMATICALLY (not using template)
    self.TrackerRows = {}  -- Reset to ensure clean state
    for i = 1, MAX_TRACKER_ROWS do
        local rowName = "ATTTrackerRow" .. i
        local row = CreateFrame("Button", rowName, content)
        row:SetHeight(14)
        row:SetWidth(216)
        row:SetPoint("TOPLEFT", content, "TOPLEFT", 0, -((i-1) * 14))
        
        -- Create icon texture
        local icon = row:CreateTexture(rowName .. "Icon", "ARTWORK")
        icon:SetWidth(12)
        icon:SetHeight(12)
        icon:SetPoint("LEFT", row, "LEFT", 2, 0)
        row.icon = icon
        
        -- Create text fontstring
        local text = row:CreateFontString(rowName .. "Text", "ARTWORK", "GameFontNormalSmall")
        text:SetPoint("LEFT", row, "LEFT", 16, 0)
        text:SetPoint("RIGHT", row, "RIGHT", -4, 0)
        text:SetJustifyH("LEFT")
        text:SetTextColor(1, 1, 1)
        row.text = text
        
        -- Highlight on hover
        row:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
        
        -- Scripts for tooltip
        row:SetScript("OnEnter", function()
            if this.tooltip then
                GameTooltip:SetOwner(this, "ANCHOR_LEFT")
                if type(this.tooltip) == "function" then
                    this.tooltip(GameTooltip)
                else
                    GameTooltip:SetText(this.tooltip)
                end
                GameTooltip:Show()
            end
        end)
        row:SetScript("OnLeave", function()
            GameTooltip:Hide()
        end)
        row:SetScript("OnClick", function()
            if this.onClick then
                this.onClick()
            end
        end)
        
        row:Hide()
        self.TrackerRows[i] = row
    end
    
    -- Load saved position
    if self.settings and self.settings.tracker then
        if self.settings.tracker.x and self.settings.tracker.y then
            tracker:ClearAllPoints()
            tracker:SetPoint("TOPLEFT", UIParent, "TOPLEFT", self.settings.tracker.x, self.settings.tracker.y)
        end
        if self.settings.tracker.show == false then
            tracker:Hide()
        else
            tracker:Show()
        end
    end
    
    VTT.Print("|cFF00FF00Tracker rows created: " .. table.getn(self.TrackerRows) .. "|r")
    
    -- Initial refresh
    self:RefreshTracker()
    
    VTT.Print("|cFF00FF00Tracker initialized!|r")
end

function VTT:SaveTrackerPosition()
    local tracker = self.TrackerFrame
    if not tracker then return end
    
    if not self.settings then return end
    if not self.settings.tracker then
        self.settings.tracker = {}
    end
    
    local left = tracker:GetLeft()
    local top = tracker:GetTop()
    local screenHeight = GetScreenHeight()
    
    self.settings.tracker.x = left
    self.settings.tracker.y = top - screenHeight
end

function VTT:ToggleTracker()
    local tracker = self.TrackerFrame or getglobal("ATTTrackerFrame")
    if not tracker then return end
    
    if tracker:IsVisible() then
        tracker:Hide()
        if self.settings and self.settings.tracker then
            self.settings.tracker.show = false
        end
    else
        tracker:Show()
        if self.settings and self.settings.tracker then
            self.settings.tracker.show = true
        end
        self:RefreshTracker()
    end
end

function VTT:ToggleTrackerMinimized()
    self.TrackerMinimized = not self.TrackerMinimized
    
    local tracker = self.TrackerFrame or getglobal("ATTTrackerFrame")
    local content = getglobal("ATTTrackerFrameContent")
    local btn = getglobal("ATTTrackerFrameCloseBtn")
    
    if not tracker then return end
    
    if self.TrackerMinimized then
        -- Collapse to just header
        tracker:SetHeight(20)
        if content then content:Hide() end
        if btn then
            btn:SetNormalTexture("Interface\\Buttons\\UI-PlusButton-Up")
            btn:SetPushedTexture("Interface\\Buttons\\UI-PlusButton-Down")
        end
    else
        -- Expand
        self:ResizeTrackerToContent()
        if content then content:Show() end
        if btn then
            btn:SetNormalTexture("Interface\\Buttons\\UI-MinusButton-Up")
            btn:SetPushedTexture("Interface\\Buttons\\UI-MinusButton-Down")
        end
        self:RefreshTracker()
    end
end

function VTT:ResizeTrackerToContent()
    local tracker = self.TrackerFrame or getglobal("ATTTrackerFrame")
    if not tracker then return end
    
    local rowCount = tlen(self.TrackerData)
    if rowCount < 3 then rowCount = 3 end
    if rowCount > MAX_TRACKER_ROWS then rowCount = MAX_TRACKER_ROWS end
    
    local height = 22 + (rowCount * 14) + 4
    tracker:SetHeight(height)
end

function VTT:BuildTrackerData()
    local data = {}
    
    -- Always show something even if db not loaded
    if not VTT.db then
        table.insert(data, {
            text = "|cFFFF0000Database not loaded|r",
        })
        self.TrackerData = data
        return data
    end
    
    local zone = GetRealZoneText() or "Unknown"
    local subzone = GetSubZoneText()
    
    -- Calculate zone progress
    local totalMissing = 0
    local explorationAreas = DB.ExplorationAreas and DB.ExplorationAreas[zone]
    local missingExploration = 0
    local totalExploration = 0
    
    if explorationAreas then
        totalExploration = tlen(explorationAreas)
        for _, area in ipairs(explorationAreas) do
            if VTT.db.exploredAreas and not VTT.db.exploredAreas[area] then
                missingExploration = missingExploration + 1
            end
        end
        totalMissing = totalMissing + missingExploration
    end
    
    -- Check missing flight paths
    local faction = VTT.PlayerFaction or "Alliance"
    local flightPaths = DB.FlightPaths and DB.FlightPaths[faction]
    local missingFPs = 0
    
    if flightPaths then
        for _, fp in ipairs(flightPaths) do
            if fp.zone == zone and VTT.db.knownFlightPaths and not VTT.db.knownFlightPaths[fp.name] then
                missingFPs = missingFPs + 1
            end
        end
    end
    totalMissing = totalMissing + missingFPs
    
    -- Header: Zone name with count
    local countText = totalMissing > 0 and (" |cFFFF6666(" .. totalMissing .. ")|r") or " |cFF00FF00✓|r"
    table.insert(data, {
        isHeader = true,
        text = "|cFFFFD700" .. zone .. "|r" .. countText,
        icon = DB.Icons.Exploration,
    })
    
    -- Missing exploration areas
    if missingExploration > 0 and explorationAreas then
        table.insert(data, {
            isHeader = true,
            text = "|cFF00CCFFExploration|r |cFFFFFFFF(" .. missingExploration .. "/" .. totalExploration .. ")|r",
            icon = DB.Icons.Exploration,
        })
        
        local shown = 0
        local remainingAreas = {}
        for _, area in ipairs(explorationAreas) do
            if VTT.db.exploredAreas and not VTT.db.exploredAreas[area] then
                shown = shown + 1
                if shown <= 4 then
                    table.insert(data, {
                        text = "  |cFFFF6666✗|r " .. area,
                        tooltip = function(tip)
                            tip:AddLine(area, 1, 1, 0)
                            tip:AddLine("Undiscovered", 1, 0.3, 0.3)
                        end,
                    })
                else
                    table.insert(remainingAreas, area)
                end
            end
        end
        if shown > 4 then
            local moreAreas = remainingAreas  -- Capture for closure
            table.insert(data, {
                text = "  |cFF888888+" .. (shown - 4) .. " more...|r",
                tooltip = function(tip)
                    tip:AddLine("Remaining Areas to Discover:", 1, 0.82, 0)
                    for _, areaName in ipairs(moreAreas) do
                        tip:AddLine("  " .. areaName, 1, 0.3, 0.3)
                    end
                end,
            })
        end
    end
    
    -- Missing flight paths
    if missingFPs > 0 and flightPaths then
        -- Collect all missing flight paths for tooltip
        local missingFPList = {}
        for _, fp in ipairs(flightPaths) do
            if fp.zone == zone and VTT.db.knownFlightPaths and not VTT.db.knownFlightPaths[fp.name] then
                table.insert(missingFPList, fp)
            end
        end
        
        table.insert(data, {
            isHeader = true,
            text = "|cFF00FF00Flight Paths|r |cFFFFFFFF(" .. missingFPs .. ")|r",
            icon = DB.Icons.FlightPath,
            tooltip = function(tip)
                tip:AddLine("Missing Flight Paths in " .. zone, 1, 0.82, 0)
                for _, fp in ipairs(missingFPList) do
                    tip:AddLine("  " .. fp.name, 1, 0.3, 0.3)
                end
            end,
        })
        
        for i, fp in ipairs(missingFPList) do
            if i == 1 then  -- Just show first one in tracker
                local fpData = fp
                table.insert(data, {
                    text = "  |cFFFF6666✗|r " .. fp.name,
                    tooltip = function(tip)
                        tip:AddLine(fpData.name, 1, 1, 0)
                        tip:AddLine("Flight Master not discovered", 1, 0.3, 0.3)
                        tip:AddLine("Zone: " .. fpData.zone, 0.7, 0.7, 0.7)
                    end,
                })
                break
            end
        end
    end
    
    -- Show dungeons in this zone
    local zoneDungeons = {}
    for _, dungeon in ipairs(DB.Dungeons) do
        if dungeon.zone == zone then
            table.insert(zoneDungeons, dungeon)
        end
    end
    
    if tlen(zoneDungeons) > 0 then
        table.insert(data, {
            isHeader = true,
            text = "|cFF00CCFFDungeons|r",
            icon = DB.Icons.Dungeon,
            tooltip = function(tip)
                tip:AddLine("Dungeons in " .. zone, 1, 0.82, 0)
                for _, d in ipairs(zoneDungeons) do
                    tip:AddLine("  " .. d.name .. " (" .. d.minLevel .. "-" .. d.maxLevel .. ")", 0.7, 0.7, 1)
                end
            end,
        })
        for _, d in ipairs(zoneDungeons) do
            local dungeonData = d
            table.insert(data, {
                text = "  " .. d.name .. " |cFF888888(" .. d.minLevel .. "-" .. d.maxLevel .. ")|r",
                tooltip = function(tip)
                    tip:AddLine(dungeonData.name, 1, 1, 0)
                    tip:AddLine("Level Range: " .. dungeonData.minLevel .. " - " .. dungeonData.maxLevel, 0.7, 0.7, 0.7)
                    if dungeonData.players then
                        tip:AddLine("Players: " .. dungeonData.players, 0.7, 0.7, 0.7)
                    end
                    if dungeonData.location then
                        tip:AddLine("Location: " .. dungeonData.location, 0.7, 0.7, 0.7)
                    end
                end,
            })
        end
    end
    
    -- Show collection summary with more detail
    local stats = VTT.GetStatistics and VTT.GetStatistics() or {}
    
    -- Separator
    table.insert(data, {
        isHeader = true,
        text = "|cFF888888───────────────|r",
    })
    
    -- Items collected
    table.insert(data, {
        text = "  |cFF00FF00Items:|r " .. (stats.itemsCollected or 0),
        icon = DB.Icons.Loot,
        tooltip = function(tip)
            tip:AddLine("Items Collected", 1, 0.82, 0)
            tip:AddLine("Total unique items looted: " .. (stats.itemsCollected or 0), 0.7, 1, 0.7)
            tip:AddLine("Loot any item to track it!", 0.5, 0.5, 0.5)
        end,
    })
    
    -- Quests completed  
    table.insert(data, {
        text = "  |cFFFFFF00Quests:|r " .. (stats.questsCompleted or 0),
        icon = DB.Icons.Quest,
        tooltip = function(tip)
            tip:AddLine("Quests Completed", 1, 0.82, 0)
            tip:AddLine("Total quests turned in: " .. (stats.questsCompleted or 0), 1, 1, 0.7)
        end,
    })
    
    -- Flight paths
    table.insert(data, {
        text = "  |cFF00CCFFFlights:|r " .. (stats.flightPathsKnown or 0),
        icon = DB.Icons.FlightPath,
        tooltip = function(tip)
            tip:AddLine("Flight Paths Known", 1, 0.82, 0)
            tip:AddLine("Discovered flight masters: " .. (stats.flightPathsKnown or 0), 0.7, 1, 0.7)
        end,
    })
    
    -- Areas explored
    table.insert(data, {
        text = "  |cFF00FFFFExplored:|r " .. (stats.areasExplored or 0),
        icon = DB.Icons.Exploration,
        tooltip = function(tip)
            tip:AddLine("Areas Explored", 1, 0.82, 0)
            tip:AddLine("Discovered subzones: " .. (stats.areasExplored or 0), 0.7, 1, 1)
        end,
    })
    
    self.TrackerData = data
    return data
end

function VTT:RefreshTracker()
    if self.TrackerMinimized then return end
    
    local tracker = self.TrackerFrame or getglobal("ATTTrackerFrame")
    if not tracker then return end
    
    -- Build data (handles db not loaded case internally)
    self:BuildTrackerData()
    local data = self.TrackerData
    local dataCount = data and table.getn(data) or 0
    
    VTT.Print("|cFF00CCFFRefreshTracker: " .. dataCount .. " data items, " .. table.getn(self.TrackerRows) .. " rows|r")
    
    if dataCount == 0 then 
        -- Show fallback message if no data
        data = {{ text = "|cFF888888No data available|r" }}
        self.TrackerData = data
    end
    
    -- Update zone display
    local zoneText = getglobal("ATTTrackerFrameZone")
    if zoneText then
        local zone = GetRealZoneText() or ""
        if string.len(zone) > 20 then
            zone = string.sub(zone, 1, 18) .. ".."
        end
        zoneText:SetText(zone)
    end
    
    -- Update rows using direct references (not getglobal)
    for i = 1, MAX_TRACKER_ROWS do
        local row = self.TrackerRows[i]
        if row then
            local item = data[i]
            if item then
                -- Use direct row properties set during creation
                if row.text then
                    row.text:SetText(item.text or "")
                end
                
                if row.icon then
                    if item.icon then
                        row.icon:SetTexture(item.icon)
                        row.icon:Show()
                    else
                        row.icon:Hide()
                    end
                end
                
                row.tooltip = item.tooltip
                row.onClick = item.onClick
                row:Show()
            else
                row:Hide()
            end
        end
    end
    
    -- Resize frame to fit content
    self:ResizeTrackerToContent()
end

--------------------------------------------------------------------------------
-- MOUNT & PET COLLECTION WINDOWS
--------------------------------------------------------------------------------

-- Collection State
VTT.MountCollectionData = {}
VTT.PetCollectionData = {}
VTT.CollectionFilter = "all"  -- "all", "collected", "missing", "faction"
VTT.CollectionSort = "name"   -- "name", "source", "speed"

-- Mount Collection Frame
local MAX_COLLECTION_ROWS = 15
local mountRows = {}
local petRows = {}

function VTT:CreateCollectionRow(parent, name, index, width)
    local row = CreateFrame("Button", name, parent)
    row:SetWidth(width or 280)
    row:SetHeight(22)
    row:SetPoint("TOPLEFT", parent, "TOPLEFT", 0, -((index - 1) * 22))
    
    -- Background
    row.bg = row:CreateTexture(nil, "BACKGROUND")
    row.bg:SetAllPoints()
    row.bg:SetTexture(0.1, 0.1, 0.1, 0.3)
    
    -- Icon
    row.icon = row:CreateTexture(nil, "ARTWORK")
    row.icon:SetWidth(18)
    row.icon:SetHeight(18)
    row.icon:SetPoint("LEFT", row, "LEFT", 4, 0)
    
    -- Name
    row.nameText = row:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
    row.nameText:SetPoint("LEFT", row.icon, "RIGHT", 4, 0)
    row.nameText:SetWidth(140)
    row.nameText:SetJustifyH("LEFT")
    
    -- Source
    row.sourceText = row:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
    row.sourceText:SetPoint("LEFT", row.nameText, "RIGHT", 4, 0)
    row.sourceText:SetWidth(80)
    row.sourceText:SetJustifyH("LEFT")
    row.sourceText:SetTextColor(0.7, 0.7, 0.7)
    
    -- Collected indicator
    row.collected = row:CreateTexture(nil, "ARTWORK")
    row.collected:SetWidth(14)
    row.collected:SetHeight(14)
    row.collected:SetPoint("RIGHT", row, "RIGHT", -4, 0)
    
    -- Highlight
    row.highlight = row:CreateTexture(nil, "HIGHLIGHT")
    row.highlight:SetAllPoints()
    row.highlight:SetTexture(1, 1, 1, 0.1)
    row.highlight:SetBlendMode("ADD")
    
    row:EnableMouse(true)
    row:RegisterForClicks("LeftButtonUp", "RightButtonUp")
    
    row:SetScript("OnEnter", function()
        if row.data then
            GameTooltip:SetOwner(row, "ANCHOR_RIGHT")
            VTT:ShowCollectionTooltip(row.data)
            GameTooltip:Show()
        end
    end)
    
    row:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)
    
    row:SetScript("OnClick", function()
        if row.data and arg1 == "LeftButton" then
            VTT:ToggleCollectionItem(row.data)
        end
    end)
    
    return row
end

function VTT:ShowCollectionTooltip(data)
    if not data then return end
    
    -- Name with quality color
    local qualityColor = "|cFFFFFFFF"
    if data.speed == 100 then
        qualityColor = "|cFFA335EE"  -- Epic
    elseif data.speed == 60 then
        qualityColor = "|cFF0070DD"  -- Rare
    end
    GameTooltip:SetText(qualityColor .. (data.name or "Unknown") .. "|r")
    
    -- Speed
    if data.speed then
        GameTooltip:AddLine("Speed: " .. data.speed .. "%", 1, 1, 0.5)
    end
    
    -- Source
    if data.source then
        GameTooltip:AddLine("Source: " .. data.source, 0.7, 0.7, 0.7)
    end
    
    -- Vendor info
    if data.vendor then
        GameTooltip:AddLine("Vendor: " .. data.vendor, 0.7, 0.7, 0.7)
    end
    
    -- Location
    if data.location then
        GameTooltip:AddLine("Location: " .. data.location, 0.7, 0.7, 0.7)
    end
    
    -- Cost
    if data.cost and data.cost > 0 then
        local gold = math.floor(data.cost / 10000)
        local silver = math.floor(math.mod(data.cost, 10000) / 100)
        GameTooltip:AddLine(string.format("Cost: %dg %ds", gold, silver), 1, 0.8, 0)
    end
    
    -- Reputation requirement
    if data.reputation then
        local standing = DB.ReputationStandings[data.reputation.standing] or "Unknown"
        GameTooltip:AddLine(string.format("Requires: %s - %s", data.reputation.faction, standing), 0.5, 0.5, 1)
    end
    
    -- PvP Rank requirement
    if data.rankReq then
        local rankNames = {
            [1] = "Private/Scout", [2] = "Corporal/Grunt", [3] = "Sergeant", [4] = "Master Sergeant/Senior Sergeant",
            [5] = "Sergeant Major/First Sergeant", [6] = "Knight/Stone Guard", [7] = "Knight-Lieutenant/Blood Guard",
            [8] = "Knight-Captain/Legionnaire", [9] = "Knight-Champion/Centurion", [10] = "Lieutenant Commander/Champion",
            [11] = "Commander/Lieutenant General", [12] = "Marshal/General", [13] = "Field Marshal/Warlord",
            [14] = "Grand Marshal/High Warlord"
        }
        GameTooltip:AddLine("Requires Rank: " .. (rankNames[data.rankReq] or data.rankReq), 1, 0.3, 0.3)
    end
    
    -- Faction
    if data.faction and data.faction ~= "Both" then
        local factionColor = data.faction == "Alliance" and "|cFF0070DD" or "|cFFFF0000"
        GameTooltip:AddLine(factionColor .. data.faction .. " Only|r")
    end
    
    -- Class restriction
    if data.class then
        GameTooltip:AddLine("Class: " .. data.class, 0.3, 1, 0.3)
    end
    
    -- Drop info
    if data.dropInfo then
        GameTooltip:AddDoubleLine("Instance:", data.dropInfo.instance or "Unknown", 0.7, 0.7, 0.7, 1, 1, 1)
        if data.dropInfo.boss then
            GameTooltip:AddDoubleLine("Boss:", data.dropInfo.boss, 0.7, 0.7, 0.7, 1, 1, 1)
        end
        if data.dropInfo.dropRate then
            GameTooltip:AddDoubleLine("Drop Rate:", data.dropInfo.dropRate .. "%", 0.7, 0.7, 0.7, 1, 1, 0)
        end
    end
    
    -- Notes
    if data.note then
        GameTooltip:AddLine("|cFFFF7700" .. data.note .. "|r")
    end
    
    -- Collection status
    local charDB = VanillaTheThingsCharDB
    local isCollected = charDB and charDB.collectedMounts and charDB.collectedMounts[data.itemID]
    if isCollected then
        GameTooltip:AddLine("|cFF00FF00✓ Collected|r")
    else
        GameTooltip:AddLine("|cFF888888Click to mark as collected|r")
    end
end

function VTT:ToggleCollectionItem(data)
    if not data or not data.itemID then return end
    
    local charDB = VanillaTheThingsCharDB
    if not charDB then return end
    
    if data.type == "mount" then
        if not charDB.collectedMounts then charDB.collectedMounts = {} end
        if charDB.collectedMounts[data.itemID] then
            charDB.collectedMounts[data.itemID] = nil
            VTT.Print("|cFFFF0000Removed:|r " .. (data.name or "Unknown") .. " from mount collection")
        else
            charDB.collectedMounts[data.itemID] = true
            VTT.Print("|cFF00FF00Collected:|r " .. (data.name or "Unknown"))
        end
        VTT:RefreshMountWindow()
    elseif data.type == "pet" then
        if not charDB.collectedPets then charDB.collectedPets = {} end
        if charDB.collectedPets[data.itemID] then
            charDB.collectedPets[data.itemID] = nil
            VTT.Print("|cFFFF0000Removed:|r " .. (data.name or "Unknown") .. " from pet collection")
        else
            charDB.collectedPets[data.itemID] = true
            VTT.Print("|cFF00FF00Collected:|r " .. (data.name or "Unknown"))
        end
        VTT:RefreshPetWindow()
    end
end

function VTT:BuildMountCollectionData()
    local data = {}
    local charDB = VanillaTheThingsCharDB
    local playerFaction = UnitFactionGroup("player") or "Alliance"
    
    -- Debug: Check DB loading
    if not DB then
        DEFAULT_CHAT_FRAME:AddMessage("|cFFFF0000[VTT DEBUG] DB is nil!|r")
        return data
    end
    if not DB.Mounts then
        DEFAULT_CHAT_FRAME:AddMessage("|cFFFF0000[VTT DEBUG] DB.Mounts is nil!|r")
        return data
    end
    
    -- Debug: Count categories
    local catCount = 0
    if DB.Mounts.Epic60Alliance then catCount = catCount + 1 end
    if DB.Mounts.Epic100Alliance then catCount = catCount + 1 end
    if DB.Mounts.Epic60Horde then catCount = catCount + 1 end
    if DB.Mounts.Epic100Horde then catCount = catCount + 1 end
    if DB.Mounts.Special then catCount = catCount + 1 end
    DEFAULT_CHAT_FRAME:AddMessage("|cFFFFFF00[VTT DEBUG] Mount categories: " .. catCount .. ", Faction: " .. playerFaction .. "|r")
    
    -- Helper to add mounts from a category
    local function addMounts(category, source)
        if not category then return end
        for itemID, mount in pairs(category) do
            -- Filter by faction
            local factionOK = not mount.faction or mount.faction == "Both" or mount.faction == playerFaction
            
            if factionOK then
                local isCollected = charDB and charDB.collectedMounts and charDB.collectedMounts[itemID]
                
                -- Apply filter
                local showItem = true
                if VTT.CollectionFilter == "collected" and not isCollected then
                    showItem = false
                elseif VTT.CollectionFilter == "missing" and isCollected then
                    showItem = false
                end
                
                if showItem then
                    table.insert(data, {
                        type = "mount",
                        itemID = itemID,
                        name = mount.name,
                        speed = mount.speed,
                        source = source or mount.source or "Vendor",
                        vendor = mount.vendor,
                        location = mount.location,
                        cost = mount.cost,
                        reputation = mount.reputation,
                        rankReq = mount.rankReq,
                        faction = mount.faction,
                        class = mount.class,
                        dropInfo = mount.dropInfo,
                        note = mount.note,
                        collected = isCollected,
                    })
                end
            end
        end
    end
    
    -- Add all mount categories
    addMounts(DB.Mounts.Epic60Alliance, "Vendor (60%)")
    addMounts(DB.Mounts.Epic100Alliance, "Vendor (100%)")
    addMounts(DB.Mounts.Epic60Horde, "Vendor (60%)")
    addMounts(DB.Mounts.Epic100Horde, "Vendor (100%)")
    addMounts(DB.Mounts.Special, "Special")
    
    -- Sort
    if VTT.CollectionSort == "name" then
        table.sort(data, function(a, b) return (a.name or "") < (b.name or "") end)
    elseif VTT.CollectionSort == "speed" then
        table.sort(data, function(a, b) return (a.speed or 0) > (b.speed or 0) end)
    elseif VTT.CollectionSort == "source" then
        table.sort(data, function(a, b) return (a.source or "") < (b.source or "") end)
    end
    
    VTT.MountCollectionData = data
    return data
end

function VTT:BuildPetCollectionData()
    local data = {}
    local charDB = VanillaTheThingsCharDB
    local playerFaction = UnitFactionGroup("player") or "Alliance"
    
    if not DB or not DB.Pets then
        return data
    end
    
    local function addPets(category, source)
        if not category then return end
        for itemID, pet in pairs(category) do
            local factionOK = not pet.faction or pet.faction == "Both" or pet.faction == playerFaction
            
            if factionOK then
                local isCollected = charDB and charDB.collectedPets and charDB.collectedPets[itemID]
                
                local showItem = true
                if VTT.CollectionFilter == "collected" and not isCollected then
                    showItem = false
                elseif VTT.CollectionFilter == "missing" and isCollected then
                    showItem = false
                end
                
                if showItem then
                    table.insert(data, {
                        type = "pet",
                        itemID = itemID,
                        name = pet.name,
                        source = source or pet.source or "Unknown",
                        cost = pet.cost,
                        vendor = pet.vendor,
                        location = pet.location,
                        faction = pet.faction,
                        dropInfo = pet.dropInfo,
                        questName = pet.questName,
                        zone = pet.zone,
                        profession = pet.profession,
                        skillReq = pet.skillReq,
                        event = pet.event,
                        note = pet.note,
                        collected = isCollected,
                    })
                end
            end
        end
    end
    
    if DB.Pets then
        addPets(DB.Pets.Vendor, "Vendor")
        addPets(DB.Pets.Quest, "Quest")
        addPets(DB.Pets.Drop, "Drop")
        addPets(DB.Pets.Event, "Event")
        addPets(DB.Pets.Rare, "Rare/Special")
    end
    
    table.sort(data, function(a, b) return (a.name or "") < (b.name or "") end)
    
    VTT.PetCollectionData = data
    return data
end

function VTT:ToggleMountWindow()
    if not self.MountFrame then
        self.MountFrame = getglobal("ATTMountFrame")
    end
    
    if self.MountFrame then
        if self.MountFrame:IsVisible() then
            self.MountFrame:Hide()
        else
            self:RefreshMountWindow()
            self.MountFrame:Show()
        end
    else
        VTT.Print("|cFFFF0000Mount Collection window not found!|r")
    end
end

function VTT:TogglePetWindow()
    if not self.PetFrame then
        self.PetFrame = getglobal("ATTPetFrame")
    end
    
    if self.PetFrame then
        if self.PetFrame:IsVisible() then
            self.PetFrame:Hide()
        else
            self:RefreshPetWindow()
            self.PetFrame:Show()
        end
    else
        VTT.Print("|cFFFF0000Pet Collection window not found!|r")
    end
end

function VTT:RefreshMountWindow()
    local content = getglobal("ATTMountFrameContent")
    if not content then return end
    
    -- Build data
    VTT.CollectionFilter = "all"
    local data = self:BuildMountCollectionData()
    local charDB = VanillaTheThingsCharDB
    
    -- Update header stats
    local totalMounts = table.getn(data)
    local collectedMounts = 0
    
    for _, mount in ipairs(data) do
        if charDB and charDB.collectedMounts and charDB.collectedMounts[mount.itemID] then
            collectedMounts = collectedMounts + 1
        end
    end
    
    local headerText = getglobal("ATTMountFrameHeader")
    if headerText then
        headerText:SetText(string.format("Mounts: %d / %d (%.1f%%)", collectedMounts, totalMounts, totalMounts > 0 and (collectedMounts / totalMounts * 100) or 0))
    end
    
    -- Create rows if needed
    if not mountRows[1] then
        for i = 1, MAX_COLLECTION_ROWS do
            mountRows[i] = VTT:CreateCollectionRow(content, "ATTMountRow" .. i, i, 276)
        end
    end
    
    -- Populate rows
    for i = 1, MAX_COLLECTION_ROWS do
        local row = mountRows[i]
        local item = data[i]
        
        if item and row then
            row.data = item
            
            -- Icon
            row.icon:SetTexture("Interface\\Icons\\Ability_Mount_RidingHorse")
            
            -- Name with color based on speed
            local nameColor = item.speed == 100 and "|cFFA335EE" or "|cFF0070DD"
            row.nameText:SetText(nameColor .. (item.name or "Unknown") .. "|r")
            
            -- Source
            row.sourceText:SetText(item.source or "")
            
            -- Collected indicator
            if item.collected then
                row.collected:SetTexture("Interface\\RaidFrame\\ReadyCheck-Ready")
                row.bg:SetTexture(0.1, 0.3, 0.1, 0.4)
            else
                row.collected:SetTexture("Interface\\RaidFrame\\ReadyCheck-NotReady")
                row.bg:SetTexture(0.1, 0.1, 0.1, 0.3)
            end
            
            row:Show()
        elseif row then
            row:Hide()
        end
    end
end

function VTT:RefreshPetWindow()
    local content = getglobal("ATTPetFrameContent")
    if not content then return end
    
    VTT.CollectionFilter = "all"
    local data = self:BuildPetCollectionData()
    local charDB = VanillaTheThingsCharDB
    
    -- Count stats
    local totalPets = table.getn(data)
    local collectedPets = 0
    
    for _, pet in ipairs(data) do
        if charDB and charDB.collectedPets and charDB.collectedPets[pet.itemID] then
            collectedPets = collectedPets + 1
        end
    end
    
    local headerText = getglobal("ATTPetFrameHeader")
    if headerText then
        headerText:SetText(string.format("Pets: %d / %d (%.1f%%)", collectedPets, totalPets, totalPets > 0 and (collectedPets / totalPets * 100) or 0))
    end
    
    -- Create rows if needed
    if not petRows[1] then
        for i = 1, MAX_COLLECTION_ROWS do
            petRows[i] = VTT:CreateCollectionRow(content, "ATTPetRow" .. i, i, 280)
        end
    end
    
    -- Populate rows
    for i = 1, MAX_COLLECTION_ROWS do
        local row = petRows[i]
        local item = data[i]
        
        if item and row then
            row.data = item
            
            -- Icon based on source
            if item.source == "Event" then
                row.icon:SetTexture("Interface\\Icons\\INV_Misc_Gift_05")
            elseif item.source == "Drop" then
                row.icon:SetTexture("Interface\\Icons\\INV_Box_PetCarrier_01")
            elseif item.source == "Quest" then
                row.icon:SetTexture("Interface\\Icons\\INV_Misc_Note_01")
            else
                row.icon:SetTexture("Interface\\Icons\\INV_Crate_02")
            end
            
            -- Name
            local nameColor = item.source == "Rare/Special" and "|cFFA335EE" or "|cFF1EFF00"
            row.nameText:SetText(nameColor .. (item.name or "Unknown") .. "|r")
            
            -- Source
            row.sourceText:SetText(item.source or "")
            
            -- Collected indicator
            if item.collected then
                row.collected:SetTexture("Interface\\RaidFrame\\ReadyCheck-Ready")
                row.bg:SetTexture(0.1, 0.3, 0.1, 0.4)
            else
                row.collected:SetTexture("Interface\\RaidFrame\\ReadyCheck-NotReady")
                row.bg:SetTexture(0.1, 0.1, 0.1, 0.3)
            end
            
            row:Show()
        elseif row then
            row:Hide()
        end
    end
end

--------------------------------------------------------------------------------
-- COST TRACKING INTEGRATION
--------------------------------------------------------------------------------

function VTT:GetItemCostInfo(itemID)
    if not DB.ItemCosts then return nil end
    return DB.ItemCosts[itemID]
end

function VTT:GetSourceChain(itemID)
    if not DB.SourceChains then return nil end
    return DB.SourceChains[itemID]
end

function VTT:FormatItemCosts(itemID)
    local costInfo = self:GetItemCostInfo(itemID)
    if not costInfo then return nil end
    
    return DB.FormatCost(costInfo.costs)
end

function VTT:GetSourceChainText(itemID)
    return DB.GetSourceChainText(itemID)
end

-- Enhance tooltip with cost and source chain info
local origTooltipSetItem = GameTooltip.SetHyperlink
if origTooltipSetItem then
    GameTooltip.SetHyperlink = function(self, link)
        origTooltipSetItem(self, link)
        
        -- Extract item ID from link
        local _, _, itemID = string.find(link, "item:(%d+)")
        if itemID then
            itemID = tonumber(itemID)
            
            -- Add cost info
            local costInfo = VTT:GetItemCostInfo(itemID)
            if costInfo then
                GameTooltip:AddLine(" ")
                GameTooltip:AddLine("|cFFFFD700Cost Information:|r")
                local costText = DB.FormatCost(costInfo.costs)
                if costText then
                    GameTooltip:AddLine(costText, 1, 0.8, 0)
                end
                if costInfo.reputation then
                    local standing = DB.ReputationStandings and DB.ReputationStandings[costInfo.reputation.standing] or "Unknown"
                    GameTooltip:AddLine(string.format("Requires: %s - %s", costInfo.reputation.faction, standing), 0.5, 0.5, 1)
                end
                if costInfo.rankReq then
                    GameTooltip:AddLine(string.format("Requires PvP Rank: %d", costInfo.rankReq), 1, 0.3, 0.3)
                end
            end
            
            -- Add source chain info
            local sourceText = VTT:GetSourceChainText(itemID)
            if sourceText then
                GameTooltip:AddLine(" ")
                GameTooltip:AddLine("|cFF00FF00Source Chain:|r")
                for line in string.gfind(sourceText, "[^\n]+") do
                    GameTooltip:AddLine(line, 0.8, 0.8, 0.8)
                end
            end
            
            GameTooltip:Show()
        end
    end
end

--------------------------------------------------------------------------------
-- HIERARCHICAL TREE BROWSER UI
-- ATT-style nested tree view with expand/collapse functionality
--------------------------------------------------------------------------------

-- Tree browser state
VTT.TreeBrowserState = {
    rows = {},
    visibleData = {},
    scrollOffset = 0,
    maxVisibleRows = 24,
    rowHeight = 16,
}

-- Toggle the tree browser window
function VTT:ToggleTreeBrowser()
    local frame = getglobal("ATTTreeBrowserFrame")
    if frame then
        if frame:IsVisible() then
            frame:Hide()
        else
            frame:Show()
        end
    else
        self.Print("|cFFFF0000Tree browser frame not found.|r")
    end
end

-- Initialize tree browser rows
function VTT:InitTreeBrowserRows()
    local contentFrame = getglobal("ATTTreeBrowserContent")
    if not contentFrame then return end
    
    -- Create rows
    for i = 1, self.TreeBrowserState.maxVisibleRows do
        local rowName = "ATTTreeBrowserRow" .. i
        local row = CreateFrame("Button", rowName, contentFrame)
        row:SetHeight(self.TreeBrowserState.rowHeight)
        row:SetWidth(350)
        row:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 0, -((i - 1) * self.TreeBrowserState.rowHeight))
        
        -- Background
        local bg = row:CreateTexture(rowName .. "BG", "BACKGROUND")
        bg:SetAllPoints()
        bg:SetTexture("Interface\\Tooltips\\UI-Tooltip-Background")
        bg:SetVertexColor(0.1, 0.1, 0.1, 0)
        row.bg = bg
        
        -- Expand/collapse icon
        local expandIcon = row:CreateTexture(rowName .. "ExpandIcon", "ARTWORK")
        expandIcon:SetWidth(12)
        expandIcon:SetHeight(12)
        expandIcon:SetPoint("LEFT", 2, 0)
        row.expandIcon = expandIcon
        
        -- Node type icon
        local typeIcon = row:CreateTexture(rowName .. "TypeIcon", "ARTWORK")
        typeIcon:SetWidth(14)
        typeIcon:SetHeight(14)
        typeIcon:SetPoint("LEFT", 16, 0)
        row.typeIcon = typeIcon
        
        -- Text
        local text = row:CreateFontString(rowName .. "Text", "OVERLAY", "GameFontNormalSmall")
        text:SetPoint("LEFT", 34, 0)
        text:SetPoint("RIGHT", -40, 0)
        text:SetJustifyH("LEFT")
        row.text = text
        
        -- Count text
        local countText = row:CreateFontString(rowName .. "Count", "OVERLAY", "GameFontNormalSmall")
        countText:SetPoint("RIGHT", -4, 0)
        countText:SetJustifyH("RIGHT")
        countText:SetTextColor(0.6, 0.6, 0.6)
        row.countText = countText
        
        -- Click handler
        row:SetScript("OnClick", function()
            local data = this.nodeData
            if data then
                if data.isItem then
                    -- Item click - show tooltip or link in chat
                    if IsShiftKeyDown() and data.itemId then
                        local link = "item:" .. data.itemId .. ":0:0:0"
                        ChatFrameEditBox:Show()
                        ChatFrameEditBox:Insert(link)
                    end
                elseif data.hasChildren or data.hasItems then
                    -- Node click - toggle expand
                    DB.ToggleNodeExpanded(data.path)
                    VTT:RefreshTreeBrowser()
                end
            end
        end)
        
        -- Hover effects
        row:SetScript("OnEnter", function()
            this.bg:SetVertexColor(0.3, 0.3, 0.3, 0.5)
            
            local data = this.nodeData
            if data and data.isItem and data.itemId then
                GameTooltip:SetOwner(this, "ANCHOR_RIGHT")
                GameTooltip:SetHyperlink("item:" .. data.itemId .. ":0:0:0")
                GameTooltip:Show()
            elseif data and data.node then
                -- Show node info tooltip
                GameTooltip:SetOwner(this, "ANCHOR_RIGHT")
                GameTooltip:AddLine(data.name, 1, 1, 1)
                if data.type then
                    GameTooltip:AddLine("Type: " .. data.type, 0.7, 0.7, 0.7)
                end
                if data.level then
                    GameTooltip:AddLine("Level: " .. data.level, 0.7, 0.7, 0.7)
                end
                if data.faction then
                    local factionColor = data.faction == "Alliance" and {0.2, 0.4, 1} or 
                                        data.faction == "Horde" and {1, 0.2, 0.2} or {0.7, 0.7, 0.7}
                    GameTooltip:AddLine("Faction: " .. data.faction, factionColor[1], factionColor[2], factionColor[3])
                end
                if data.itemCount and data.itemCount > 0 then
                    GameTooltip:AddLine("Items: " .. data.itemCount, 0.5, 1, 0.5)
                end
                GameTooltip:Show()
            end
        end)
        
        row:SetScript("OnLeave", function()
            this.bg:SetVertexColor(0.1, 0.1, 0.1, 0)
            GameTooltip:Hide()
        end)
        
        row:Hide()
        self.TreeBrowserState.rows[i] = row
    end
end

-- Refresh tree browser display
function VTT:RefreshTreeBrowser()
    -- Initialize rows if needed
    if not self.TreeBrowserState.rows or table.getn(self.TreeBrowserState.rows) == 0 then
        self:InitTreeBrowserRows()
    end
    
    -- Get flat tree data
    local flatData = DB.GetFlatTreeView()
    self.TreeBrowserState.visibleData = flatData
    
    -- Update scroll frame
    local scrollFrame = getglobal("ATTTreeBrowserScrollFrame")
    if scrollFrame then
        FauxScrollFrame_Update(scrollFrame, table.getn(flatData), self.TreeBrowserState.maxVisibleRows, self.TreeBrowserState.rowHeight)
    end
    
    local offset = FauxScrollFrame_GetOffset(scrollFrame) or 0
    
    -- Update count text
    local countText = getglobal("ATTTreeBrowserCount")
    if countText then
        countText:SetText(table.getn(flatData) .. " items")
    end
    
    -- Update filter text
    local filterText = getglobal("ATTTreeBrowserFilterText")
    if filterText then
        filterText:SetText(DB.GetFilterSummary())
    end
    
    -- Update rows
    for i = 1, self.TreeBrowserState.maxVisibleRows do
        local row = self.TreeBrowserState.rows[i]
        if row then
            local dataIndex = offset + i
            local data = flatData[dataIndex]
            
            if data then
                row.nodeData = data
                
                -- Calculate indent
                local indent = (data.depth or 0) * 16
                row.expandIcon:SetPoint("LEFT", 2 + indent, 0)
                row.typeIcon:SetPoint("LEFT", 16 + indent, 0)
                row.text:SetPoint("LEFT", 34 + indent, 0)
                
                -- Set expand icon
                if data.isItem then
                    row.expandIcon:SetTexture(nil)
                elseif data.hasChildren or data.hasItems then
                    if data.isExpanded then
                        row.expandIcon:SetTexture("Interface\\Buttons\\UI-MinusButton-Up")
                    else
                        row.expandIcon:SetTexture("Interface\\Buttons\\UI-PlusButton-Up")
                    end
                else
                    row.expandIcon:SetTexture(nil)
                end
                
                -- Set type icon
                if data.isItem then
                    row.typeIcon:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark")
                elseif data.icon then
                    row.typeIcon:SetTexture(data.icon)
                else
                    row.typeIcon:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark")
                end
                
                -- Set text with quality color for items
                if data.isItem and data.quality then
                    local qualityInfo = DB.QualityLevels[data.quality]
                    local color = qualityInfo and qualityInfo.color or "|cFFFFFFFF"
                    row.text:SetText(color .. (data.name or "Unknown") .. "|r")
                else
                    row.text:SetText(data.name or "Unknown")
                    row.text:SetTextColor(1, 1, 1)
                end
                
                -- Set count text
                if data.isItem then
                    if data.dropRate then
                        row.countText:SetText(string.format("%.1f%%", data.dropRate))
                    elseif data.cost then
                        row.countText:SetText(DB.FormatCost(data.cost))
                    else
                        row.countText:SetText("")
                    end
                elseif data.itemCount and data.itemCount > 0 then
                    row.countText:SetText("(" .. data.itemCount .. ")")
                elseif data.childCount and data.childCount > 0 then
                    row.countText:SetText("(" .. data.childCount .. ")")
                else
                    row.countText:SetText("")
                end
                
                row:Show()
            else
                row:Hide()
            end
        end
    end
end

-- Search tree browser
function VTT:SearchTreeBrowser(searchText)
    DB.SetSearchText(searchText or "")
    self:RefreshTreeBrowser()
end

-- Handle search text change (for live search)
function VTT:OnTreeSearchChanged(searchText)
    -- Debounce - only search after user stops typing
    if self.searchTimer then
        self.searchTimer:SetScript("OnUpdate", nil)
    end
    
    if not self.searchTimer then
        self.searchTimer = CreateFrame("Frame")
    end
    
    self.searchTimer.elapsed = 0
    self.searchTimer.searchText = searchText
    self.searchTimer:SetScript("OnUpdate", function()
        this.elapsed = this.elapsed + arg1
        if this.elapsed > 0.3 then
            this:SetScript("OnUpdate", nil)
            VTT:SearchTreeBrowser(this.searchText)
        end
    end)
end

-- Expand all tree nodes
function VTT:ExpandAllTreeNodes()
    DB.ExpandAllNodes()
    self:RefreshTreeBrowser()
end

-- Collapse all tree nodes
function VTT:CollapseAllTreeNodes()
    DB.CollapseAllNodes()
    self:RefreshTreeBrowser()
end

-- Reset tree filters
function VTT:ResetTreeFilters()
    DB.ResetSearchFilters()
    local searchBox = getglobal("ATTTreeBrowserSearchBox")
    if searchBox then
        searchBox:SetText("")
    end
    self:RefreshTreeBrowser()
end

--------------------------------------------------------------------------------
-- FILTER PRESET UI
--------------------------------------------------------------------------------

VTT.PresetMenuState = {
    rows = {},
    maxVisibleRows = 15,
    rowHeight = 18,
}

-- Toggle preset menu
function VTT:TogglePresetMenu()
    local frame = getglobal("ATTPresetMenuFrame")
    if frame then
        if frame:IsVisible() then
            frame:Hide()
        else
            -- Position below preset button
            local presetButton = getglobal("ATTTreeBrowserPresetButton")
            if presetButton then
                frame:ClearAllPoints()
                frame:SetPoint("TOPLEFT", presetButton, "BOTTOMLEFT", 0, -2)
            end
            frame:Show()
        end
    end
end

-- Initialize preset menu rows
function VTT:InitPresetMenuRows()
    local contentFrame = getglobal("ATTPresetMenuContent")
    if not contentFrame then return end
    
    for i = 1, self.PresetMenuState.maxVisibleRows do
        local rowName = "ATTPresetMenuRow" .. i
        local row = CreateFrame("Button", rowName, contentFrame)
        row:SetHeight(self.PresetMenuState.rowHeight)
        row:SetWidth(160)
        row:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 0, -((i - 1) * self.PresetMenuState.rowHeight))
        
        -- Background
        local bg = row:CreateTexture(rowName .. "BG", "BACKGROUND")
        bg:SetAllPoints()
        bg:SetTexture("Interface\\Tooltips\\UI-Tooltip-Background")
        bg:SetVertexColor(0.15, 0.15, 0.15, 0.8)
        row.bg = bg
        
        -- Text
        local text = row:CreateFontString(rowName .. "Text", "OVERLAY", "GameFontNormalSmall")
        text:SetPoint("LEFT", 4, 0)
        text:SetPoint("RIGHT", -20, 0)
        text:SetJustifyH("LEFT")
        row.text = text
        
        -- Default indicator
        local defaultIcon = row:CreateFontString(rowName .. "Default", "OVERLAY", "GameFontNormalSmall")
        defaultIcon:SetPoint("RIGHT", -4, 0)
        defaultIcon:SetText("*")
        defaultIcon:SetTextColor(0.5, 0.5, 0.5)
        row.defaultIcon = defaultIcon
        
        -- Click handler
        row:SetScript("OnClick", function()
            local presetName = this.presetName
            if presetName then
                local success, msg = DB.LoadFilterPreset(presetName)
                if success then
                    VTT:RefreshTreeBrowser()
                    ATTPresetMenuFrame:Hide()
                    VTT.Print("|cFF00FF00" .. msg .. "|r")
                else
                    VTT.Print("|cFFFF0000" .. msg .. "|r")
                end
            end
        end)
        
        -- Hover effects
        row:SetScript("OnEnter", function()
            this.bg:SetVertexColor(0.3, 0.3, 0.4, 0.9)
        end)
        
        row:SetScript("OnLeave", function()
            this.bg:SetVertexColor(0.15, 0.15, 0.15, 0.8)
        end)
        
        row:Hide()
        self.PresetMenuState.rows[i] = row
    end
end

-- Refresh preset menu
function VTT:RefreshPresetMenu()
    -- Initialize rows if needed
    if not self.PresetMenuState.rows or table.getn(self.PresetMenuState.rows) == 0 then
        self:InitPresetMenuRows()
    end
    
    -- Get presets
    local presets = DB.GetFilterPresetNames()
    
    -- Update rows
    for i = 1, self.PresetMenuState.maxVisibleRows do
        local row = self.PresetMenuState.rows[i]
        if row then
            local preset = presets[i]
            if preset then
                row.presetName = preset.name
                row.text:SetText(preset.name)
                
                if preset.isDefault then
                    row.defaultIcon:SetText("*")
                    row.defaultIcon:Show()
                    row.text:SetTextColor(0.8, 0.8, 0.8)
                else
                    row.defaultIcon:SetText("")
                    row.defaultIcon:Hide()
                    row.text:SetTextColor(0.5, 1, 0.5)
                end
                
                row:Show()
            else
                row:Hide()
            end
        end
    end
    
    -- Resize menu frame
    local menuFrame = getglobal("ATTPresetMenuFrame")
    if menuFrame then
        local height = math.min(table.getn(presets), self.PresetMenuState.maxVisibleRows) * self.PresetMenuState.rowHeight + 40
        menuFrame:SetHeight(height)
    end
end

-- Show save preset dialog
function VTT:ShowSavePresetDialog()
    StaticPopupDialogs["ATT_SAVE_PRESET"] = {
        text = "Enter name for new filter preset:",
        button1 = "Save",
        button2 = "Cancel",
        hasEditBox = true,
        maxLetters = 30,
        OnAccept = function()
            local editBox = getglobal(this:GetParent():GetName() .. "EditBox")
            local name = editBox:GetText()
            if name and name ~= "" then
                local success, msg = DB.SaveFilterPreset(name)
                if success then
                    VTT.Print("|cFF00FF00" .. msg .. "|r")
                    VTT:RefreshPresetMenu()
                else
                    VTT.Print("|cFFFF0000" .. msg .. "|r")
                end
            end
        end,
        timeout = 0,
        whileDead = true,
        hideOnEscape = true,
    }
    StaticPopup_Show("ATT_SAVE_PRESET")
    ATTPresetMenuFrame:Hide()
end

--------------------------------------------------------------------------------
-- ADVANCED SEARCH UI
--------------------------------------------------------------------------------

VTT.AdvancedSearchState = {
    qualityCheckboxes = {},
    sourceCheckboxes = {},
    minLevelSlider = nil,
    maxLevelSlider = nil,
}

-- Toggle advanced search window
function VTT:ToggleAdvancedSearch()
    local frame = getglobal("ATTAdvancedSearchFrame")
    if frame then
        if frame:IsVisible() then
            frame:Hide()
        else
            frame:Show()
        end
    end
end

-- Initialize advanced search UI elements
function VTT:InitAdvancedSearchUI()
    local qualitySection = getglobal("ATTAdvancedSearchQualitySection")
    local levelSection = getglobal("ATTAdvancedSearchLevelSection")
    local sourceSection = getglobal("ATTAdvancedSearchSourceSection")
    
    if not qualitySection or not levelSection or not sourceSection then return end
    
    -- Create quality checkboxes
    local qualityNames = { "Poor", "Common", "Uncommon", "Rare", "Epic", "Legendary" }
    local qualityColors = {
        { 0.6, 0.6, 0.6 },  -- Poor
        { 1, 1, 1 },        -- Common
        { 0.1, 1, 0 },      -- Uncommon
        { 0, 0.44, 0.87 },  -- Rare
        { 0.64, 0.21, 0.93 }, -- Epic
        { 1, 0.5, 0 },      -- Legendary
    }
    
    for i = 1, 6 do
        local cb = CreateFrame("CheckButton", "ATTAdvSearchQuality" .. i, qualitySection, "UICheckButtonTemplate")
        cb:SetWidth(20)
        cb:SetHeight(20)
        local col = math.mod(i - 1, 3)
        local row = math.floor((i - 1) / 3)
        cb:SetPoint("TOPLEFT", 6 + (col * 90), -20 - (row * 20))
        cb:SetChecked(true)
        cb.qualityIndex = i - 1
        
        local label = cb:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
        label:SetPoint("LEFT", cb, "RIGHT", 0, 0)
        label:SetText(qualityNames[i])
        label:SetTextColor(qualityColors[i][1], qualityColors[i][2], qualityColors[i][3])
        
        cb:SetScript("OnClick", function()
            -- Update filter based on checked qualities
            VTT:UpdateQualityFilters()
        end)
        
        self.AdvancedSearchState.qualityCheckboxes[i] = cb
    end
    
    -- Create level sliders
    local minLevelLabel = levelSection:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    minLevelLabel:SetPoint("TOPLEFT", 6, -20)
    minLevelLabel:SetText("Min: 1")
    minLevelLabel:SetTextColor(0.8, 0.8, 0.8)
    self.AdvancedSearchState.minLevelLabel = minLevelLabel
    
    local maxLevelLabel = levelSection:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    maxLevelLabel:SetPoint("TOPLEFT", 140, -20)
    maxLevelLabel:SetText("Max: 60")
    maxLevelLabel:SetTextColor(0.8, 0.8, 0.8)
    self.AdvancedSearchState.maxLevelLabel = maxLevelLabel
    
    -- Create source type checkboxes
    local sourceTypes = { "Drop", "Quest", "Vendor", "Crafted", "Reputation", "PvP", "Dungeon", "Raid", "World Boss", "Rare Spawn" }
    
    for i, sourceType in ipairs(sourceTypes) do
        local cb = CreateFrame("CheckButton", "ATTAdvSearchSource" .. i, sourceSection, "UICheckButtonTemplate")
        cb:SetWidth(18)
        cb:SetHeight(18)
        local col = math.mod(i - 1, 2)
        local row = math.floor((i - 1) / 2)
        cb:SetPoint("TOPLEFT", 6 + (col * 135), -20 - (row * 18))
        cb:SetChecked(true)
        cb.sourceType = sourceType
        
        local label = cb:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
        label:SetPoint("LEFT", cb, "RIGHT", 0, 0)
        label:SetText(sourceType)
        label:SetTextColor(0.8, 0.8, 0.8)
        
        cb:SetScript("OnClick", function()
            DB.SetSourceType(this.sourceType, this:GetChecked())
        end)
        
        self.AdvancedSearchState.sourceCheckboxes[i] = cb
    end
end

-- Update quality filters based on checkboxes
function VTT:UpdateQualityFilters()
    local minQuality = nil
    local maxQuality = nil
    
    for i = 1, 6 do
        local cb = self.AdvancedSearchState.qualityCheckboxes[i]
        if cb and cb:GetChecked() then
            local qual = i - 1
            if not minQuality or qual < minQuality then
                minQuality = qual
            end
            if not maxQuality or qual > maxQuality then
                maxQuality = qual
            end
        end
    end
    
    DB.SetQualityFilter(minQuality, maxQuality)
end

-- Refresh advanced search UI
function VTT:RefreshAdvancedSearch()
    -- Initialize UI if needed
    if not self.AdvancedSearchState.qualityCheckboxes or table.getn(self.AdvancedSearchState.qualityCheckboxes) == 0 then
        self:InitAdvancedSearchUI()
    end
    
    -- Update quality checkboxes
    for i = 1, 6 do
        local cb = self.AdvancedSearchState.qualityCheckboxes[i]
        if cb then
            local qual = i - 1
            local minQ = DB.SearchFilters.minQuality or 0
            local maxQ = DB.SearchFilters.maxQuality or 5
            cb:SetChecked(qual >= minQ and qual <= maxQ)
        end
    end
    
    -- Update source checkboxes
    for i, cb in ipairs(self.AdvancedSearchState.sourceCheckboxes) do
        if cb and cb.sourceType then
            cb:SetChecked(DB.SearchFilters.sourceTypes[cb.sourceType] ~= false)
        end
    end
    
    -- Update level labels
    if self.AdvancedSearchState.minLevelLabel then
        local minL = DB.SearchFilters.minLevel or 1
        self.AdvancedSearchState.minLevelLabel:SetText("Min: " .. minL)
    end
    if self.AdvancedSearchState.maxLevelLabel then
        local maxL = DB.SearchFilters.maxLevel or 60
        self.AdvancedSearchState.maxLevelLabel:SetText("Max: " .. maxL)
    end
end

-- Apply advanced filters
function VTT:ApplyAdvancedFilters()
    self:UpdateQualityFilters()
    self:RefreshTreeBrowser()
    ATTAdvancedSearchFrame:Hide()
end

-- Reset advanced filters
function VTT:ResetAdvancedFilters()
    DB.ResetSearchFilters()
    self:RefreshAdvancedSearch()
    self:RefreshTreeBrowser()
end

--------------------------------------------------------------------------------
-- Initialize UI on Load
--------------------------------------------------------------------------------

-- Delayed initialization
local initFrame = CreateFrame("Frame")
initFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
initFrame:SetScript("OnEvent", function()
    -- Slight delay to ensure frames are loaded
    this.elapsed = 0
    this:SetScript("OnUpdate", function()
        this.elapsed = this.elapsed + arg1
        if this.elapsed > 0.5 then
            this:SetScript("OnUpdate", nil)
            
            -- Initialize all frames
            VTT.MiniFrame = getglobal("ATTMiniFrame")
            VTT.RaidFrame = getglobal("ATTRaidFrame")
            VTT.CharacterFrame = getglobal("ATTCharacterFrame")
            VTT.HelpFrame = getglobal("ATTHelpFrame")
            VTT.FilterDropdown = getglobal("ATTFilterDropdown")
            VTT.TrackerFrame = getglobal("ATTTrackerFrame")
            VTT.MountFrame = getglobal("ATTMountFrame")
            VTT.PetFrame = getglobal("ATTPetFrame")
            VTT.TreeBrowserFrame = getglobal("ATTTreeBrowserFrame")
            VTT.AdvancedSearchFrame = getglobal("ATTAdvancedSearchFrame")
            VTT.PresetMenuFrame = getglobal("ATTPresetMenuFrame")
            
            -- Create rows for all list windows
            InitializeRows()
            
            -- Initialize tracker
            VTT:InitTracker()
            
            -- Initialize raid list data
            VTT:BuildRaidListData()
            
            VTT.Print("|cFF00FF00UI initialized!|r Type |cFFFFD700/att|r to open.")
        end
    end)
end)

-- Zone change handler for mini window and tracker
local zoneFrame = CreateFrame("Frame")
zoneFrame:RegisterEvent("ZONE_CHANGED")
zoneFrame:RegisterEvent("ZONE_CHANGED_INDOORS")
zoneFrame:RegisterEvent("ZONE_CHANGED_NEW_AREA")
zoneFrame:RegisterEvent("QUEST_LOG_UPDATE")
zoneFrame:SetScript("OnEvent", function()
    -- Only update if addon is fully loaded
    if not VTT.db then return end
    
    if VTT.MiniFrame and VTT.MiniFrame:IsVisible() then
        VTT:RefreshMiniWindow()
    end
    -- Always refresh tracker on zone/quest changes
    VTT:RefreshTracker()
end)


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
        if row.indicator and not row.data.isHeader then
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
    local mainContent = getglobal("ATTMainFrameContent")
    local miniContent = getglobal("ATTMiniFrameContent")
    local raidContent = getglobal("ATTRaidFrameContent")
    
    if mainContent then
        for i = 1, MAX_MAIN_ROWS do
            mainRows[i] = CreateRow(mainContent, "ATTMainRow" .. i, nil, i, 358)
        end
    end
    
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
    
    self:RefreshMainWindow()
end

function VTT:IsCategoryExpanded(category)
    return self.ExpandedCategories[category]
end

--------------------------------------------------------------------------------
-- View Mode Management
--------------------------------------------------------------------------------

function VTT:SetViewMode(mode)
    self.CurrentViewMode = mode or "all"
    
    -- Update tab appearances
    local tabs = {
        { name = "ATTMainFrameTabAll", mode = "all" },
        { name = "ATTMainFrameTabCharacter", mode = "character" },
        { name = "ATTMainFrameTabWorld", mode = "world" },
        { name = "ATTMainFrameTabPvP", mode = "pvp" },
        { name = "ATTMainFrameTabStats", mode = "stats" },
    }
    
    for _, tab in ipairs(tabs) do
        local btn = getglobal(tab.name)
        if btn then
            local bg = getglobal(tab.name .. "BG")
            if bg then
                if tab.mode == mode then
                    bg:SetTexture(0.15, 0.4, 0.6, 0.9)
                else
                    bg:SetTexture(0.2, 0.2, 0.2, 0.8)
                end
            end
        end
    end
    
    self:RefreshMainWindow()
end

--------------------------------------------------------------------------------
-- Settings Tab Management
--------------------------------------------------------------------------------

function VTT:SetSettingsTab(tab)
    self.CurrentSettingsTab = tab or "general"
    
    -- Update tab appearances
    local tabs = {
        { name = "ATTSettingsTabGeneral", tab = "general" },
        { name = "ATTSettingsTabTracking", tab = "tracking" },
        { name = "ATTSettingsTabTooltips", tab = "tooltips" },
        { name = "ATTSettingsTabFilters", tab = "filters" },
        { name = "ATTSettingsTabAbout", tab = "about" },
    }
    
    for _, t in ipairs(tabs) do
        local btn = getglobal(t.name)
        if btn then
            local bg = getglobal(t.name .. "BG")
            if bg then
                if t.tab == tab then
                    bg:SetTexture(0.3, 0.3, 0.4, 0.9)
                else
                    bg:SetTexture(0.2, 0.2, 0.2, 0.8)
                end
            end
        end
    end
    
    self:RefreshSettingsContent()
end

function VTT:RefreshSettingsContent()
    local content = getglobal("ATTSettingsFrameContent")
    if not content then return end
    
    -- Clear existing children (simple approach for 1.12.1)
    -- In newer versions we'd use frame pools
    
    -- Build content based on current tab
    -- This is initialized in InitSettingsWindow
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
                                            VTT:RefreshMainWindow()
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
                                                    VTT:RefreshMainWindow()
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
                                                    VTT:RefreshMainWindow()
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
-- Update List Display
--------------------------------------------------------------------------------

function VTT.UpdateMainList()
    local offset = FauxScrollFrame_GetOffset(getglobal("ATTMainFrameScrollFrame"))
    local data = VTT.MainListData
    local total = tlen(data)
    
    for i = 1, MAX_MAIN_ROWS do
        local row = mainRows[i]
        if row then
            local index = offset + i
            if index <= total then
                local item = data[index]
                row.data = item
                
                -- Set appearance based on header vs item
                if item.isHeader then
                    row.bg:SetTexture(0.1, 0.3, 0.5, 0.6)
                    row.label:SetText((VTT:IsCategoryExpanded(item.category) and "- " or "+ ") .. item.label)
                else
                    row.bg:SetTexture(0.1, 0.1, 0.1, 0.3)
                    row.label:SetText(item.label)
                end
                
                row.count:SetText(item.count or "")
                
                -- Icon (placeholder)
                row.icon:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark")
                
                row:Show()
            else
                row:Hide()
            end
        end
    end
    
    FauxScrollFrame_Update(getglobal("ATTMainFrameScrollFrame"), total, MAX_MAIN_ROWS, 20)
end

function VTT.UpdateMiniList()
    local offset = FauxScrollFrame_GetOffset(getglobal("ATTMiniFrameScrollFrame"))
    local data = VTT.MiniListData
    local total = tlen(data)
    
    for i = 1, MAX_MINI_ROWS do
        local row = miniRows[i]
        if row then
            local index = offset + i
            if index <= total then
                local item = data[index]
                row.data = item
                
                if item.isHeader then
                    row.bg:SetTexture(0.1, 0.3, 0.5, 0.6)
                else
                    row.bg:SetTexture(0.1, 0.1, 0.1, 0.3)
                end
                
                row.label:SetText(item.label or "")
                row.count:SetText(item.count or "")
                row.icon:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark")
                
                row:Show()
            else
                row:Hide()
            end
        end
    end
    
    FauxScrollFrame_Update(getglobal("ATTMiniFrameScrollFrame"), total, MAX_MINI_ROWS, 18)
end

--------------------------------------------------------------------------------
-- Window Management
--------------------------------------------------------------------------------

function VTT:RefreshMainWindow()
    self:BuildMainListData()
    VTT.UpdateMainList()
    
    -- Update progress bar
    local progressBar = getglobal("ATTMainFrameProgressBar")
    if progressBar then
        local stats = self.GetStatistics()
        local total = (stats.questsCompleted or 0) + (stats.reputationsMaxed or 0) + 
                      (stats.recipesLearned or 0) + (stats.itemsCollected or 0) +
                      (stats.flightPathsKnown or 0) + (stats.areasExplored or 0)
        -- For vanilla, we estimate a "total" based on known content
        local estimated = 3000  -- Rough estimate of collectibles
        UpdateProgressBar(progressBar, total, estimated, 
            string.format("%d collected (%.1f%%)", total, (total/estimated)*100))
    end
    
    -- Update subtitle with stats
    local stats = self.GetStatistics()
    local subtitle = getglobal("ATTMainFrameSubtitle")
    if subtitle then
        subtitle:SetText(string.format("Q:%d | Rep:%d | E:%d | FP:%d | R:%d",
            stats.questsCompleted, stats.reputationsMaxed,
            stats.areasExplored, stats.flightPathsKnown, stats.recipesLearned))
    end
    
    -- Update status text
    local status = getglobal("ATTMainFrameStatusText")
    if status then
        local char = VTT.PlayerName or "Unknown"
        local level = VTT.PlayerLevel or 1
        local class = VTT.PlayerClass or "Unknown"
        local color = L.CLASS_COLORS[class] or "FFFFFFFF"
        status:SetText("|c" .. color .. char .. "|r - Level " .. level .. " " .. class)
    end
    
    -- Update right status (money/time)
    local statusRight = getglobal("ATTMainFrameStatusRight")
    if statusRight then
        local money = GetMoney() or 0
        local gold = math.floor(money / 10000)
        local silver = math.floor(math.mod(money, 10000) / 100)
        statusRight:SetText(string.format("|cFFFFD700%d|rg |cFFC0C0C0%d|rs", gold, silver))
    end
end

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

function VTT:ToggleMainWindow()
    if not self.MainFrame then
        self.MainFrame = getglobal("ATTMainFrame")
    end
    
    if self.MainFrame then
        if self.MainFrame:IsVisible() then
            self.MainFrame:Hide()
        else
            self.MainFrame:Show()
        end
    else
        VTT.Print("Main window not found!")
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

function VTT:ToggleSettingsWindow()
    if not self.SettingsFrame then
        self.SettingsFrame = getglobal("ATTSettingsFrame")
    end
    
    if self.SettingsFrame then
        if self.SettingsFrame:IsVisible() then
            self.SettingsFrame:Hide()
        else
            self.SettingsFrame:Show()
        end
    else
        VTT.Print("Settings window not found!")
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
|cFF00FF00/att settings|r - Open settings
|cFF00FF00/att refresh|r - Refresh all data
|cFF00FF00/att reset|r - Reset window positions
|cFF00FF00/att search <text>|r - Search database
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

|cFFFFD700FEATURES|r
- Quest completion tracking
- Reputation standings
- Recipe collection
- Exploration tracking
- Flight path discovery
- Item collection
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
        local filterBtn = getglobal("ATTMainFrameFilterButton")
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
            self:RefreshMainWindow()
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
    
    -- Refresh to adapt to new size
    if windowType == "main" then
        self:RefreshMainWindow()
    end
end

function VTT:ApplySettings()
    self:CreateMinimapButton()
    self:RefreshMainWindow()
    self.Print("Settings applied!")
end

function VTT:ResetSettings()
    -- Reset to defaults
    if self.settings then
        self.settings.filters.showCompleted = false
        self.settings.filters.showCollected = false
        self.settings.filters.showUnavailable = false
    end
    self:InitSettingsWindow()
    self.Print("Settings reset to defaults!")
end

--------------------------------------------------------------------------------
-- Settings Window Initialization
--------------------------------------------------------------------------------

function VTT:InitSettingsWindow()
    local content = getglobal("ATTSettingsFrameContent")
    if not content then return end
    
    -- Clear previous content if re-initializing
    -- (In 1.12.1, we can't easily destroy frames, so we use visibility)
    
    if not content.initialized then
        self:BuildSettingsUI(content)
        content.initialized = true
    end
    
    -- Set initial tab
    self:SetSettingsTab("general")
end

function VTT:BuildSettingsUI(content)
    local yOffset = 0
    
    -- Create section headers
    local function CreateHeader(text, yPos)
        local header = content:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
        header:SetPoint("TOPLEFT", content, "TOPLEFT", 0, yPos)
        header:SetText("|cFFFFD700" .. text .. "|r")
        return header
    end
    
    -- Create checkboxes
    local function CreateCheckbox(name, label, setting, yPos, desc)
        local cb = CreateFrame("CheckButton", name, content, "UICheckButtonTemplate")
        cb:SetPoint("TOPLEFT", content, "TOPLEFT", 0, yPos)
        
        local text = getglobal(name .. "Text")
        if text then
            text:SetText(label)
        end
        
        cb:SetChecked(VTT.GetSetting(setting))
        cb:SetScript("OnClick", function()
            VTT.SetSetting(setting, this:GetChecked())
        end)
        
        -- Description tooltip
        if desc then
            cb:SetScript("OnEnter", function()
                GameTooltip:SetOwner(this, "ANCHOR_RIGHT")
                GameTooltip:AddLine(label, 1, 1, 1)
                GameTooltip:AddLine(desc, 0.8, 0.8, 0.8, true)
                GameTooltip:Show()
            end)
            cb:SetScript("OnLeave", function()
                GameTooltip:Hide()
            end)
        end
        
        return cb
    end
    
    -- ==================== GENERAL SECTION ====================
    CreateHeader("General Options", yOffset)
    yOffset = yOffset - 28
    
    CreateCheckbox("ATTSettingMinimap", "Show Minimap Button", "minimap.show", yOffset,
        "Display the VanillaTheThings icon around the minimap")
    getglobal("ATTSettingMinimap"):SetScript("OnClick", function()
        VTT.SetSetting("minimap.show", this:GetChecked())
        VTT:CreateMinimapButton()
    end)
    yOffset = yOffset - 26
    
    CreateCheckbox("ATTSettingAccountMode", "Account Mode", "modes.account", yOffset,
        "Track collections across all characters on this account")
    yOffset = yOffset - 26
    
    CreateCheckbox("ATTSettingDebugMode", "Debug Mode", "modes.debug", yOffset,
        "Show debug messages in chat (for troubleshooting)")
    yOffset = yOffset - 40
    
    -- ==================== TRACKING SECTION ====================
    CreateHeader("Tracking Options", yOffset)
    yOffset = yOffset - 28
    
    CreateCheckbox("ATTSettingTrackQuests", "Track Quests", "tracking.quests", yOffset,
        "Track quest completions across characters")
    yOffset = yOffset - 26
    
    CreateCheckbox("ATTSettingTrackReps", "Track Reputations", "tracking.reputations", yOffset,
        "Track faction reputation standings")
    yOffset = yOffset - 26
    
    CreateCheckbox("ATTSettingTrackExplore", "Track Exploration", "tracking.exploration", yOffset,
        "Track discovered areas and zones")
    yOffset = yOffset - 26
    
    CreateCheckbox("ATTSettingTrackFP", "Track Flight Paths", "tracking.flightPaths", yOffset,
        "Track discovered flight path locations")
    yOffset = yOffset - 26
    
    CreateCheckbox("ATTSettingTrackRecipes", "Track Recipes", "tracking.recipes", yOffset,
        "Track learned crafting recipes")
    yOffset = yOffset - 26
    
    CreateCheckbox("ATTSettingTrackItems", "Track Items", "tracking.items", yOffset,
        "Track collected items")
    yOffset = yOffset - 40
    
    -- ==================== TOOLTIP SECTION ====================
    CreateHeader("Tooltip Options", yOffset)
    yOffset = yOffset - 28
    
    CreateCheckbox("ATTSettingTooltips", "Enable Tooltips", "tooltips.enable", yOffset,
        "Show VanillaTheThings information in tooltips")
    yOffset = yOffset - 26
    
    CreateCheckbox("ATTSettingTooltipProgress", "Show Progress", "tooltips.showProgress", yOffset,
        "Show collection progress in tooltips")
    yOffset = yOffset - 26
    
    CreateCheckbox("ATTSettingTooltipSource", "Show Source", "tooltips.showSource", yOffset,
        "Show item source information in tooltips")
    yOffset = yOffset - 40
    
    -- ==================== FILTER SECTION ====================
    CreateHeader("Filter Options", yOffset)
    yOffset = yOffset - 28
    
    CreateCheckbox("ATTSettingShowComplete", "Show Completed", "filters.showCompleted", yOffset,
        "Show already completed items in lists")
    yOffset = yOffset - 26
    
    CreateCheckbox("ATTSettingShowCollected", "Show Collected", "filters.showCollected", yOffset,
        "Show already collected items in lists")
    yOffset = yOffset - 26
    
    CreateCheckbox("ATTSettingShowUnavail", "Show Unavailable", "filters.showUnavailable", yOffset,
        "Show items unavailable to your character")
end

--------------------------------------------------------------------------------
-- Search Handler
--------------------------------------------------------------------------------

-- Store current search query
VTT.CurrentSearchQuery = nil

function VTT:OnSearch(query)
    if not query or query == "" then
        self.CurrentSearchQuery = nil
        self:RefreshMainWindow()
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
    local tracker = getglobal("ATTTrackerFrame")
    if not tracker then return end
    
    self.TrackerFrame = tracker
    local content = getglobal("ATTTrackerFrameContent")
    if not content then return end
    
    -- Create tracker rows
    for i = 1, MAX_TRACKER_ROWS do
        local row = CreateFrame("Button", "ATTTrackerRow" .. i, content, "ATTTrackerRowTemplate")
        row:SetPoint("TOPLEFT", content, "TOPLEFT", 0, -((i-1) * 14))
        row:SetWidth(216)
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
    
    -- Initial refresh
    self:RefreshTracker()
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
            if not VTT.db.exploredAreas[area] then
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
            if fp.zone == zone and not VTT.db.knownFlightPaths[fp.name] then
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
        for _, area in ipairs(explorationAreas) do
            if not VTT.db.exploredAreas[area] then
                shown = shown + 1
                if shown <= 4 then
                    table.insert(data, {
                        text = "  |cFFFF6666✗|r " .. area,
                        tooltip = function(tip)
                            tip:AddLine(area, 1, 1, 0)
                            tip:AddLine("Undiscovered", 1, 0.3, 0.3)
                        end,
                    })
                end
            end
        end
        if shown > 4 then
            table.insert(data, {
                text = "  |cFF888888+" .. (shown - 4) .. " more...|r",
            })
        end
    end
    
    -- Missing flight paths
    if missingFPs > 0 and flightPaths then
        table.insert(data, {
            isHeader = true,
            text = "|cFF00FF00Flight Paths|r |cFFFFFFFF(" .. missingFPs .. ")|r",
            icon = DB.Icons.FlightPath,
        })
        
        for _, fp in ipairs(flightPaths) do
            if fp.zone == zone and not VTT.db.knownFlightPaths[fp.name] then
                table.insert(data, {
                    text = "  |cFFFF6666✗|r " .. fp.name,
                })
                break  -- Just show first one in tracker
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
        })
        for _, d in ipairs(zoneDungeons) do
            table.insert(data, {
                text = "  " .. d.name .. " |cFF888888(" .. d.minLevel .. "-" .. d.maxLevel .. ")|r",
            })
        end
    end
    
    -- Summary line
    local stats = VTT.GetStatistics and VTT.GetStatistics() or {}
    table.insert(data, {
        isHeader = true,
        text = "|cFF15ABFFTotal:|r |cFFFFFFFF" .. (stats.itemsCollected or 0) .. "|r collected",
        icon = DB.Icons.Logo,
    })
    
    self.TrackerData = data
    return data
end

function VTT:RefreshTracker()
    if self.TrackerMinimized then return end
    
    local tracker = self.TrackerFrame or getglobal("ATTTrackerFrame")
    if not tracker or not tracker:IsVisible() then return end
    
    -- Build data
    self:BuildTrackerData()
    local data = self.TrackerData
    
    -- Update zone display
    local zoneText = getglobal("ATTTrackerFrameZone")
    if zoneText then
        local zone = GetRealZoneText() or ""
        if string.len(zone) > 20 then
            zone = string.sub(zone, 1, 18) .. ".."
        end
        zoneText:SetText(zone)
    end
    
    -- Update rows
    for i = 1, MAX_TRACKER_ROWS do
        local row = self.TrackerRows[i]
        if row then
            local item = data[i]
            if item then
                local text = getglobal("ATTTrackerRow" .. i .. "Text")
                local icon = getglobal("ATTTrackerRow" .. i .. "Icon")
                
                if text then
                    text:SetText(item.text or "")
                end
                
                if icon then
                    if item.icon then
                        icon:SetTexture(item.icon)
                        icon:Show()
                    else
                        icon:Hide()
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
            VTT.MainFrame = getglobal("ATTMainFrame")
            VTT.MiniFrame = getglobal("ATTMiniFrame")
            VTT.SettingsFrame = getglobal("ATTSettingsFrame")
            VTT.RaidFrame = getglobal("ATTRaidFrame")
            VTT.CharacterFrame = getglobal("ATTCharacterFrame")
            VTT.HelpFrame = getglobal("ATTHelpFrame")
            VTT.FilterDropdown = getglobal("ATTFilterDropdown")
            VTT.TrackerFrame = getglobal("ATTTrackerFrame")
            
            -- Create rows for all list windows
            InitializeRows()
            
            -- Initialize tracker
            VTT:InitTracker()
            
            -- Set initial view mode
            VTT:SetViewMode("all")
            
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
    if VTT.MiniFrame and VTT.MiniFrame:IsVisible() then
        VTT:RefreshMiniWindow()
    end
    -- Always refresh tracker on zone/quest changes
    VTT:RefreshTracker()
end)

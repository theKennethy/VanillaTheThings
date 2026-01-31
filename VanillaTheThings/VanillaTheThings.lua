--------------------------------------------------------------------------------
--                   V A N I L L A   T H E   T H I N G S                      --
--                           WoW 1.12.1 Edition                               --
--------------------------------------------------------------------------------
--  A comprehensive collection tracker for World of Warcraft 1.12.1 (Vanilla)
--  Tracks: Quests, Reputations, Recipes, Exploration, Flight Paths, Items
--------------------------------------------------------------------------------

-- Addon namespace
local ADDON_NAME = "VanillaTheThings"
local VTT = {}
VanillaTheThings = VTT
ATTC = VTT

-- Localization and Database
local L = VanillaTheThings_L
local DB = VanillaTheThings_DB

-- Version info
VTT.Version = L.VERSION
VTT.L = L
VTT.DB = DB

--------------------------------------------------------------------------------
-- Lua 5.0 Compatibility (WoW 1.12.1 uses Lua 5.0)
--------------------------------------------------------------------------------

-- table.getn replacement for # operator
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

-- wipe function
local function wipe(t)
    for k in pairs(t) do t[k] = nil end
    return t
end

-- tinsert/tremove shortcuts
local tinsert = table.insert
local tremove = table.remove

--------------------------------------------------------------------------------
-- Utility Functions
--------------------------------------------------------------------------------

-- Get item ID from item link (must be defined early as it's used in event handlers)
local function GetItemIDFromLink(link)
    if not link then return nil end
    local _, _, itemID = string.find(link, "item:(%d+)")
    if itemID then
        return tonumber(itemID)
    end
    return nil
end

local function Print(msg)
    DEFAULT_CHAT_FRAME:AddMessage("|cFF15ABFF[ATT]|r " .. tostring(msg))
end

local function PrintDebug(msg)
    if VTT.DebugMode then
        DEFAULT_CHAT_FRAME:AddMessage("|cFFFF0000[ATT Debug]|r " .. tostring(msg))
    end
end

local function ColorText(text, hex)
    return "|c" .. hex .. text .. "|r"
end

local function ClassColorText(text, class)
    local color = L.CLASS_COLORS[class] or "FFFFFFFF"
    return "|c" .. color .. text .. "|r"
end

local function GetProgressColor(progress, total)
    if total == 0 then return 1, 1, 1 end
    local pct = progress / total
    if pct >= 1 then return 0, 1, 0
    elseif pct >= 0.75 then return 0.5, 1, 0.5
    elseif pct >= 0.5 then return 1, 1, 0
    elseif pct >= 0.25 then return 1, 0.5, 0
    else return 1, 0.3, 0.3 end
end

local function GetProgressColorText(progress, total)
    local r, g, b = GetProgressColor(progress, total)
    return string.format("|cFF%02x%02x%02x%d / %d|r", r*255, g*255, b*255, progress, total)
end

local function GetProgressPercent(progress, total)
    if total == 0 then return "100%" end
    return string.format("%.1f%%", (progress / total) * 100)
end

VTT.Print = Print
VTT.PrintDebug = PrintDebug
VTT.ColorText = ColorText
VTT.GetProgressColor = GetProgressColor
VTT.GetProgressColorText = GetProgressColorText

--------------------------------------------------------------------------------
-- Saved Variables Initialization
--------------------------------------------------------------------------------

local defaults = {
    -- Collection Data
    completedQuests = {},
    collectedItems = {},
    learnedRecipes = {},
    exploredAreas = {},
    knownFlightPaths = {},
    earnedReputations = {},
    
    -- Settings
    settings = {
        minimap = {
            show = true,
            position = 220,
            radius = 0,
        },
        tooltips = {
            enable = true,
            showProgress = true,
            showSource = true,
        },
        tracking = {
            quests = true,
            reputations = true,
            exploration = true,
            flightPaths = true,
            recipes = true,
            items = true,
        },
        filters = {
            showCompleted = false,
            showCollected = false,
            showUnavailable = false,
        },
        modes = {
            debug = false,
            account = true,
        },
        windows = {
            main = { x = 0, y = 0, width = 400, height = 550 },
            mini = { x = 0, y = 0, width = 250, height = 350 },
        },
        tracker = {
            show = true,
            x = nil,
            y = nil,
        },
    },
    
    -- Account-wide tracking
    characters = {},
    
    -- Statistics
    statistics = {
        totalPlayTime = 0,
        deaths = 0,
        questsCompleted = 0,
        dungeonsCleared = 0,
    },
}

local charDefaults = {
    name = "",
    realm = "",
    class = "",
    race = "",
    faction = "",
    level = 1,
    money = 0,
    
    -- Per-character tracking
    questLog = {},
    reputations = {},
    professions = {},
    skills = {},
    completedQuests = {},
    deaths = 0,
    playTime = 0,
}

local function DeepCopy(orig)
    local copy
    if type(orig) == "table" then
        copy = {}
        for k, v in pairs(orig) do
            copy[k] = DeepCopy(v)
        end
    else
        copy = orig
    end
    return copy
end

local function InitializeDB()
    if not VanillaTheThingsDB then
        VanillaTheThingsDB = DeepCopy(defaults)
    else
        -- Merge missing defaults
        for k, v in pairs(defaults) do
            if VanillaTheThingsDB[k] == nil then
                VanillaTheThingsDB[k] = DeepCopy(v)
            elseif type(v) == "table" then
                for k2, v2 in pairs(v) do
                    if VanillaTheThingsDB[k][k2] == nil then
                        VanillaTheThingsDB[k][k2] = DeepCopy(v2)
                    end
                end
            end
        end
    end
    
    if not VanillaTheThingsCharDB then
        VanillaTheThingsCharDB = DeepCopy(charDefaults)
    else
        for k, v in pairs(charDefaults) do
            if VanillaTheThingsCharDB[k] == nil then
                VanillaTheThingsCharDB[k] = DeepCopy(v)
            end
        end
    end
    
    VTT.db = VanillaTheThingsDB
    VTT.chardb = VanillaTheThingsCharDB
    VTT.settings = VTT.db.settings
    VTT.DebugMode = VTT.settings.modes.debug
    VTT.AccountMode = VTT.settings.modes.account
end

--------------------------------------------------------------------------------
-- Character Data Collection
--------------------------------------------------------------------------------

local function UpdateCharacterInfo()
    local name = UnitName("player")
    local realm = GetRealmName()
    local _, class = UnitClass("player")
    local _, race = UnitRace("player")
    local faction = UnitFactionGroup("player")
    local level = UnitLevel("player")
    local money = GetMoney()
    
    VTT.chardb.name = name
    VTT.chardb.realm = realm
    VTT.chardb.class = class
    VTT.chardb.race = race
    VTT.chardb.faction = faction or "Neutral"
    VTT.chardb.level = level
    VTT.chardb.money = money
    
    -- Store globally accessible
    VTT.PlayerName = name
    VTT.PlayerRealm = realm
    VTT.PlayerClass = class
    VTT.PlayerRace = race
    VTT.PlayerFaction = faction
    VTT.PlayerLevel = level
    
    -- Full character ID
    VTT.PlayerID = name .. "-" .. realm
    
    -- Store in account-wide characters list
    if not VTT.db.characters[VTT.PlayerID] then
        VTT.db.characters[VTT.PlayerID] = {}
    end
    local char = VTT.db.characters[VTT.PlayerID]
    char.name = name
    char.realm = realm
    char.class = class
    char.race = race
    char.faction = faction
    char.level = level
    char.lastSeen = time()
end

--------------------------------------------------------------------------------
-- Quest Tracking
--------------------------------------------------------------------------------

local function GetQuestLogData()
    local quests = {}
    local numEntries = GetNumQuestLogEntries()
    
    for i = 1, numEntries do
        local title, level, tag, suggestedGroup, isHeader, isCollapsed, isComplete = GetQuestLogTitle(i)
        if title and not isHeader then
            tinsert(quests, {
                index = i,
                title = title,
                level = level,
                tag = tag,
                suggestedGroup = suggestedGroup,
                isComplete = isComplete,
            })
        end
    end
    
    return quests
end

local function MarkQuestCompleted(questName)
    if not questName then return end
    
    -- Create hash from quest name
    local hash = 0
    for i = 1, string.len(questName) do
        hash = hash + string.byte(questName, i)
    end
    
    if not VTT.db.completedQuests[hash] then
        VTT.db.completedQuests[hash] = {
            name = questName,
            completedAt = time(),
            completedBy = VTT.PlayerID,
        }
        VTT.chardb.completedQuests[hash] = time()
        VTT.db.statistics.questsCompleted = (VTT.db.statistics.questsCompleted or 0) + 1
        
        if VTT.settings.tooltips.enable then
            Print(string.format(L.MSG_QUEST_COMPLETED, questName))
        end
        return true
    end
    return false
end

local function IsQuestCompleted(questName)
    if not questName then return false end
    local hash = 0
    for i = 1, string.len(questName) do
        hash = hash + string.byte(questName, i)
    end
    return VTT.db.completedQuests[hash] ~= nil
end

local function CountCompletedQuests()
    return tcount(VTT.db.completedQuests)
end

VTT.GetQuestLogData = GetQuestLogData
VTT.MarkQuestCompleted = MarkQuestCompleted
VTT.IsQuestCompleted = IsQuestCompleted
VTT.CountCompletedQuests = CountCompletedQuests

--------------------------------------------------------------------------------
-- Reputation Tracking
--------------------------------------------------------------------------------

local function GetReputationData()
    local reps = {}
    local numFactions = GetNumFactions()
    
    for i = 1, numFactions do
        local name, description, standingID, barMin, barMax, barValue, atWarWith,
              canToggleAtWar, isHeader, isCollapsed, hasRep, isWatched, isChild = GetFactionInfo(i)
        
        if name and not isHeader then
            local standing = L.STANDINGS[standingID] or "Unknown"
            local current = barValue - barMin
            local max = barMax - barMin
            
            tinsert(reps, {
                index = i,
                name = name,
                standing = standing,
                standingID = standingID,
                current = current,
                max = max,
                percent = max > 0 and (current / max * 100) or 0,
                atWar = atWarWith,
                isWatched = isWatched,
            })
            
            -- Track reputation
            if not VTT.db.earnedReputations[name] then
                VTT.db.earnedReputations[name] = {}
            end
            VTT.db.earnedReputations[name][VTT.PlayerID] = {
                standingID = standingID,
                current = current,
                max = max,
            }
        end
    end
    
    return reps
end

local function CountMaxedReputations()
    local count = 0
    local reps = GetReputationData()
    for _, rep in ipairs(reps) do
        if rep.standingID == 8 then  -- Exalted
            count = count + 1
        end
    end
    return count
end

VTT.GetReputationData = GetReputationData
VTT.CountMaxedReputations = CountMaxedReputations

--------------------------------------------------------------------------------
-- Profession & Skill Tracking
--------------------------------------------------------------------------------

local function GetProfessionData()
    local professions = {
        primary = {},
        secondary = {},
    }
    local numSkills = GetNumSkillLines()
    
    -- Known profession names
    local primaryProfs = {
        ["Alchemy"] = true, ["Blacksmithing"] = true, ["Enchanting"] = true,
        ["Engineering"] = true, ["Herbalism"] = true, ["Leatherworking"] = true,
        ["Mining"] = true, ["Skinning"] = true, ["Tailoring"] = true,
    }
    local secondaryProfs = {
        ["Cooking"] = true, ["First Aid"] = true, ["Fishing"] = true,
    }
    
    for i = 1, numSkills do
        local name, header, isExpanded, rank, numTempPoints, modifier,
              maxRank, isAbandonable, stepCost, rankCost, minLevel = GetSkillLineInfo(i)
        
        if name and not header then
            local profData = {
                name = name,
                rank = rank,
                maxRank = maxRank,
                percent = maxRank > 0 and (rank / maxRank * 100) or 0,
            }
            
            if primaryProfs[name] then
                tinsert(professions.primary, profData)
            elseif secondaryProfs[name] then
                tinsert(professions.secondary, profData)
            end
        end
    end
    
    -- Store in chardb
    VTT.chardb.professions = professions
    
    return professions
end

local function GetAllSkillData()
    local skills = {}
    local numSkills = GetNumSkillLines()
    
    for i = 1, numSkills do
        local name, header, isExpanded, rank, numTempPoints, modifier,
              maxRank, isAbandonable, stepCost, rankCost, minLevel = GetSkillLineInfo(i)
        
        if name then
            tinsert(skills, {
                name = name,
                isHeader = header,
                rank = rank or 0,
                maxRank = maxRank or 0,
            })
        end
    end
    
    return skills
end

VTT.GetProfessionData = GetProfessionData
VTT.GetAllSkillData = GetAllSkillData

--------------------------------------------------------------------------------
-- Recipe Tracking
--------------------------------------------------------------------------------

local function MarkRecipeLearned(recipeID, recipeName, profession)
    if not recipeID or not recipeName then return end
    
    if not VTT.db.learnedRecipes[recipeID] then
        VTT.db.learnedRecipes[recipeID] = {
            name = recipeName,
            profession = profession,
            learnedAt = time(),
            learnedBy = VTT.PlayerID,
        }
        Print(string.format(L.MSG_RECIPE_LEARNED, recipeName))
        return true
    end
    return false
end

local function IsRecipeLearned(recipeID)
    return VTT.db.learnedRecipes[recipeID] ~= nil
end

local function CountLearnedRecipes()
    return tcount(VTT.db.learnedRecipes)
end

VTT.MarkRecipeLearned = MarkRecipeLearned
VTT.IsRecipeLearned = IsRecipeLearned
VTT.CountLearnedRecipes = CountLearnedRecipes

--------------------------------------------------------------------------------
-- Item Tracking
--------------------------------------------------------------------------------

local function MarkItemCollected(itemID, itemName)
    if not itemID then return end
    
    if not VTT.db.collectedItems[itemID] then
        VTT.db.collectedItems[itemID] = {
            name = itemName or "Unknown",
            collectedAt = time(),
            collectedBy = VTT.PlayerID,
        }
        if itemName then
            Print(string.format(L.MSG_ITEM_COLLECTED, itemName))
        end
        return true
    end
    return false
end

local function IsItemCollected(itemID)
    return VTT.db.collectedItems[itemID] ~= nil
end

local function CountCollectedItems()
    return tcount(VTT.db.collectedItems)
end

VTT.MarkItemCollected = MarkItemCollected
VTT.IsItemCollected = IsItemCollected
VTT.CountCollectedItems = CountCollectedItems

--------------------------------------------------------------------------------
-- Flight Path Tracking
--------------------------------------------------------------------------------

local function MarkFlightPathKnown(nodeName, nodeID)
    if not nodeName then return end
    
    local key = nodeID or nodeName
    if not VTT.db.knownFlightPaths[key] then
        VTT.db.knownFlightPaths[key] = {
            name = nodeName,
            discoveredAt = time(),
            discoveredBy = VTT.PlayerID,
        }
        Print(string.format(L.MSG_FLIGHT_PATH, nodeName))
        return true
    end
    return false
end

local function CountKnownFlightPaths()
    return tcount(VTT.db.knownFlightPaths)
end

VTT.MarkFlightPathKnown = MarkFlightPathKnown
VTT.CountKnownFlightPaths = CountKnownFlightPaths

--------------------------------------------------------------------------------
-- Exploration Tracking
--------------------------------------------------------------------------------

local function MarkAreaExplored(areaName, zoneID)
    if not areaName then return end
    
    local key = zoneID or areaName
    if not VTT.db.exploredAreas[key] then
        VTT.db.exploredAreas[key] = {
            name = areaName,
            exploredAt = time(),
            exploredBy = VTT.PlayerID,
        }
        Print(string.format(L.MSG_ZONE_DISCOVERED, areaName))
        return true
    end
    return false
end

local function CountExploredAreas()
    return tcount(VTT.db.exploredAreas)
end

VTT.MarkAreaExplored = MarkAreaExplored
VTT.CountExploredAreas = CountExploredAreas

--------------------------------------------------------------------------------
-- Death Tracking
--------------------------------------------------------------------------------

local function RecordDeath()
    VTT.db.statistics.deaths = (VTT.db.statistics.deaths or 0) + 1
    VTT.chardb.deaths = (VTT.chardb.deaths or 0) + 1
end

local function GetDeathCount()
    return VTT.db.statistics.deaths or 0
end

VTT.RecordDeath = RecordDeath
VTT.GetDeathCount = GetDeathCount

--------------------------------------------------------------------------------
-- Statistics
--------------------------------------------------------------------------------

local function GetStatistics()
    return {
        questsCompleted = CountCompletedQuests(),
        reputationsMaxed = CountMaxedReputations(),
        recipesLearned = CountLearnedRecipes(),
        itemsCollected = CountCollectedItems(),
        flightPathsKnown = CountKnownFlightPaths(),
        areasExplored = CountExploredAreas(),
        deaths = GetDeathCount(),
        characters = tcount(VTT.db.characters),
    }
end

VTT.GetStatistics = GetStatistics

--------------------------------------------------------------------------------
-- Data Refresh
--------------------------------------------------------------------------------

local function RefreshAllData()
    UpdateCharacterInfo()
    GetProfessionData()
    GetReputationData()
    Print(L.MSG_DATA_REFRESHED)
    
    -- Trigger UI refresh if windows are open
    if VTT.MainFrame and VTT.MainFrame:IsVisible() then
        VTT:RefreshMainWindow()
    end
    if VTT.MiniFrame and VTT.MiniFrame:IsVisible() then
        VTT:RefreshMiniWindow()
    end
end

VTT.RefreshAllData = RefreshAllData

--------------------------------------------------------------------------------
-- Search Functionality
--------------------------------------------------------------------------------

local function SearchDatabase(query)
    if not query or query == "" then return {} end
    
    query = string.lower(query)
    local results = {}
    
    -- Search completed quests
    for hash, data in pairs(VTT.db.completedQuests) do
        if data.name and string.find(string.lower(data.name), query) then
            tinsert(results, {
                type = "quest",
                name = data.name,
                data = data,
            })
        end
    end
    
    -- Search collected items
    for id, data in pairs(VTT.db.collectedItems) do
        if data.name and string.find(string.lower(data.name), query) then
            tinsert(results, {
                type = "item",
                id = id,
                name = data.name,
                data = data,
            })
        end
    end
    
    -- Search learned recipes
    for id, data in pairs(VTT.db.learnedRecipes) do
        if data.name and string.find(string.lower(data.name), query) then
            tinsert(results, {
                type = "recipe",
                id = id,
                name = data.name,
                data = data,
            })
        end
    end
    
    -- Search dungeons
    for _, dungeon in ipairs(DB.Dungeons) do
        if string.find(string.lower(dungeon.name), query) then
            tinsert(results, {
                type = "dungeon",
                name = dungeon.name,
                data = dungeon,
            })
        end
    end
    
    -- Search raids
    for _, raid in ipairs(DB.Raids) do
        if string.find(string.lower(raid.name), query) then
            tinsert(results, {
                type = "raid",
                name = raid.name,
                data = raid,
            })
        end
    end
    
    -- Search all items in database (not just collected)
    if DB.Items then
        for itemID, itemInfo in pairs(DB.Items) do
            if itemInfo.name and string.find(string.lower(itemInfo.name), query) then
                local collected = VTT.IsItemCollected(itemID)
                tinsert(results, {
                    type = "dbitem",
                    id = itemID,
                    name = itemInfo.name,
                    data = itemInfo,
                    collected = collected,
                    quality = itemInfo.quality,
                    source = itemInfo.source,
                    sourceDetail = itemInfo.sourceDetail,
                })
            end
        end
    end
    
    -- Search boss names
    if DB.BossLoot then
        for bossName, bossData in pairs(DB.BossLoot) do
            if string.find(string.lower(bossName), query) then
                tinsert(results, {
                    type = "boss",
                    name = bossName,
                    data = bossData,
                    instance = bossData.instance,
                })
            end
        end
    end
    
    -- Search factions
    if DB.Factions then
        for _, faction in ipairs(DB.Factions) do
            if string.find(string.lower(faction.name), query) then
                tinsert(results, {
                    type = "faction",
                    name = faction.name,
                    data = faction,
                })
            end
        end
    end
    
    -- Search world bosses
    if DB.WorldBosses then
        for _, boss in ipairs(DB.WorldBosses) do
            if string.find(string.lower(boss.name), query) then
                tinsert(results, {
                    type = "worldboss",
                    name = boss.name,
                    data = boss,
                })
            end
        end
    end
    
    return results
end

VTT.SearchDatabase = SearchDatabase

--------------------------------------------------------------------------------
-- Settings Management
--------------------------------------------------------------------------------

local function GetSetting(path)
    local parts = { strsplit(".", path) }
    local current = VTT.settings
    for i = 1, table.getn(parts) do
        if current[parts[i]] ~= nil then
            current = current[parts[i]]
        else
            return nil
        end
    end
    return current
end

local function SetSetting(path, value)
    local parts = { strsplit(".", path) }
    local current = VTT.settings
    for i = 1, table.getn(parts) - 1 do
        if current[parts[i]] == nil then
            current[parts[i]] = {}
        end
        current = current[parts[i]]
    end
    current[parts[table.getn(parts)]] = value
    
    -- Update cached values
    VTT.DebugMode = VTT.settings.modes.debug
    VTT.AccountMode = VTT.settings.modes.account
end

VTT.GetSetting = GetSetting
VTT.SetSetting = SetSetting

-- String split helper
function strsplit(delimiter, str)
    local result = {}
    local pattern = "([^" .. delimiter .. "]+)"
    for match in string.gfind(str, pattern) do
        tinsert(result, match)
    end
    return unpack(result)
end

--------------------------------------------------------------------------------
-- Slash Commands
--------------------------------------------------------------------------------

SLASH_VTT1 = "/vtt"
SLASH_VTT2 = "/vanillathethings"

SlashCmdList["VTT"] = function(msg)
    msg = string.lower(msg or "")
    local cmd, arg = strsplit(" ", msg)
    
    if cmd == "" or cmd == nil then
        VTT:ToggleMainWindow()  -- Main collection window
    elseif cmd == "mini" then
        VTT:ToggleMiniWindow()  -- Zone-based mini list
    elseif cmd == "help" then
        Print("Commands:")
        for _, line in ipairs(L.SLASH_HELP) do
            DEFAULT_CHAT_FRAME:AddMessage("  " .. line)
        end
    elseif cmd == "tracker" then
        VTT:ToggleTracker()
    elseif cmd == "settings" or cmd == "options" or cmd == "config" then
        VTT:ToggleSettingsWindow()
    elseif cmd == "refresh" then
        RefreshAllData()
        VTT:RefreshTracker()
    elseif cmd == "reset" then
        if VTT.MainFrame then
            VTT.MainFrame:ClearAllPoints()
            VTT.MainFrame:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
        end
        if VTT.MiniFrame then
            VTT.MiniFrame:ClearAllPoints()
            VTT.MiniFrame:SetPoint("CENTER", UIParent, "CENTER", 200, 0)
        end
        if VTT.TrackerFrame then
            VTT.TrackerFrame:ClearAllPoints()
            VTT.TrackerFrame:SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", -20, -200)
        end
        Print("Window positions reset.")
    elseif cmd == "search" then
        if arg then
            local results = SearchDatabase(arg)
            Print("Search results for '" .. arg .. "': " .. tcount(results) .. " found")
            for i, result in ipairs(results) do
                if i <= 10 then
                    DEFAULT_CHAT_FRAME:AddMessage("  [" .. result.type .. "] " .. result.name)
                end
            end
            if tcount(results) > 10 then
                DEFAULT_CHAT_FRAME:AddMessage("  ... and " .. (tcount(results) - 10) .. " more")
            end
        else
            Print("Usage: /vtt search <text>")
        end
    elseif cmd == "debug" then
        VTT.settings.modes.debug = not VTT.settings.modes.debug
        VTT.DebugMode = VTT.settings.modes.debug
        Print("Debug mode: " .. (VTT.DebugMode and "ON" or "OFF"))
    elseif cmd == "stats" then
        local stats = GetStatistics()
        Print("Statistics:")
        DEFAULT_CHAT_FRAME:AddMessage("  Quests Completed: " .. stats.questsCompleted)
        DEFAULT_CHAT_FRAME:AddMessage("  Reputations Maxed: " .. stats.reputationsMaxed)
        DEFAULT_CHAT_FRAME:AddMessage("  Recipes Learned: " .. stats.recipesLearned)
        DEFAULT_CHAT_FRAME:AddMessage("  Items Collected: " .. stats.itemsCollected)
        DEFAULT_CHAT_FRAME:AddMessage("  Flight Paths: " .. stats.flightPathsKnown)
        DEFAULT_CHAT_FRAME:AddMessage("  Areas Explored: " .. stats.areasExplored)
        DEFAULT_CHAT_FRAME:AddMessage("  Deaths: " .. stats.deaths)
        DEFAULT_CHAT_FRAME:AddMessage("  Characters: " .. stats.characters)
    else
        Print("Unknown command. Type /vtt help for available commands.")
    end
end

--------------------------------------------------------------------------------
-- Event Handling
--------------------------------------------------------------------------------

local EventFrame = CreateFrame("Frame", "ATTEventFrame", UIParent)
VTT.EventFrame = EventFrame

local EventHandlers = {}

EventFrame:RegisterEvent("ADDON_LOADED")
EventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
EventFrame:RegisterEvent("PLAYER_LEVEL_UP")
EventFrame:RegisterEvent("PLAYER_DEAD")
EventFrame:RegisterEvent("QUEST_FINISHED")
EventFrame:RegisterEvent("QUEST_COMPLETE")
EventFrame:RegisterEvent("CHAT_MSG_SYSTEM")
EventFrame:RegisterEvent("CHAT_MSG_SKILL")
EventFrame:RegisterEvent("CHAT_MSG_LOOT")
EventFrame:RegisterEvent("SKILL_LINES_CHANGED")
EventFrame:RegisterEvent("UPDATE_FACTION")
EventFrame:RegisterEvent("ZONE_CHANGED")
EventFrame:RegisterEvent("ZONE_CHANGED_INDOORS")
EventFrame:RegisterEvent("ZONE_CHANGED_NEW_AREA")
EventFrame:RegisterEvent("PLAYER_MONEY")
EventFrame:RegisterEvent("CRAFT_SHOW")
EventFrame:RegisterEvent("TRADE_SKILL_SHOW")
EventFrame:RegisterEvent("TAXIMAP_OPENED")
EventFrame:RegisterEvent("BAG_UPDATE")
EventFrame:RegisterEvent("LOOT_OPENED")

EventHandlers["ADDON_LOADED"] = function(addon)
    if addon == ADDON_NAME then
        InitializeDB()
        Print(L.MSG_ADDON_LOADED)
    end
end

EventHandlers["PLAYER_ENTERING_WORLD"] = function()
    UpdateCharacterInfo()
    VTT:CreateMinimapButton()
    
    -- Initial data collection
    GetProfessionData()
    GetReputationData()
end

EventHandlers["PLAYER_LEVEL_UP"] = function(newLevel)
    VTT.PlayerLevel = newLevel
    VTT.chardb.level = newLevel
    if VTT.db.characters[VTT.PlayerID] then
        VTT.db.characters[VTT.PlayerID].level = newLevel
    end
end

EventHandlers["PLAYER_DEAD"] = function()
    RecordDeath()
end

EventHandlers["CHAT_MSG_SYSTEM"] = function(msg)
    -- Quest completion detection
    if msg then
        local _, _, questName = string.find(msg, "(.+) completed%.")
        if questName then
            MarkQuestCompleted(questName)
        end
        
        -- Discovery messages
        local _, _, discovered = string.find(msg, "Discovered (.+)")
        if discovered then
            MarkAreaExplored(discovered)
        end
    end
end

EventHandlers["CHAT_MSG_SKILL"] = function(msg)
    -- Skill up tracking
    if msg then
        local _, _, skill, newRank = string.find(msg, "Your skill in (.+) has increased to (%d+)%.")
        if skill and newRank then
            PrintDebug("Skill up: " .. skill .. " -> " .. newRank)
        end
    end
end

EventHandlers["SKILL_LINES_CHANGED"] = function()
    GetProfessionData()
end

EventHandlers["UPDATE_FACTION"] = function()
    GetReputationData()
end

EventHandlers["ZONE_CHANGED_NEW_AREA"] = function()
    local zone = GetRealZoneText()
    local subzone = GetSubZoneText()
    PrintDebug("Zone changed: " .. (zone or "Unknown") .. " / " .. (subzone or ""))
end

EventHandlers["PLAYER_MONEY"] = function()
    VTT.chardb.money = GetMoney()
end

-- Auto-detect looted items
EventHandlers["CHAT_MSG_LOOT"] = function(msg)
    if not msg then return end
    -- Match "You receive loot: [Item Name]"
    local _, _, link = string.find(msg, "You receive loot: (.+)")
    if not link then
        -- Match "You receive item: [Item Name]"
        _, _, link = string.find(msg, "You receive item: (.+)")
    end
    if link then
        local itemID = GetItemIDFromLink(link)
        if itemID then
            local name = nil
            -- Extract name from link
            local _, _, itemName = string.find(link, "%[(.+)%]")
            if itemName then
                name = itemName
            end
            
            -- Check if it's a tracked collectible (rare drop, special item)
            if DB.Items and DB.Items[itemID] then
                VTT.MarkItemCollected(itemID, name or "Unknown")
            end
            
            -- Always log in debug mode
            PrintDebug("Looted: " .. (name or "ID:" .. itemID))
        end
    end
end

-- Auto-scan known recipes when crafting window opens
EventHandlers["CRAFT_SHOW"] = function()
    local numCrafts = GetNumCrafts()
    for i = 1, numCrafts do
        local craftName, craftRank, craftType = GetCraftInfo(i)
        if craftName and craftType ~= "header" then
            -- Generate a pseudo-ID from the name
            local hash = 0
            for j = 1, string.len(craftName) do
                hash = hash + string.byte(craftName, j)
            end
            if not VTT.db.learnedRecipes[hash] then
                VTT.db.learnedRecipes[hash] = {
                    name = craftName,
                    profession = "Crafting",
                    learnedAt = time(),
                    learnedBy = VTT.PlayerID,
                }
            end
        end
    end
    PrintDebug("Scanned " .. numCrafts .. " crafting recipes")
end

-- Auto-scan known recipes when tradeskill window opens
EventHandlers["TRADE_SKILL_SHOW"] = function()
    local numSkills = GetNumTradeSkills()
    local skillName = GetTradeSkillLine()
    local recipeCount = 0
    
    for i = 1, numSkills do
        local recipeName, recipeType = GetTradeSkillInfo(i)
        if recipeName and recipeType ~= "header" then
            -- Generate a pseudo-ID from the name
            local hash = 0
            for j = 1, string.len(recipeName) do
                hash = hash + string.byte(recipeName, j)
            end
            if not VTT.db.learnedRecipes[hash] then
                VTT.db.learnedRecipes[hash] = {
                    name = recipeName,
                    profession = skillName or "Unknown",
                    learnedAt = time(),
                    learnedBy = VTT.PlayerID,
                }
                recipeCount = recipeCount + 1
            end
        end
    end
    
    if recipeCount > 0 then
        PrintDebug("Discovered " .. recipeCount .. " new " .. (skillName or "tradeskill") .. " recipes")
    end
end

-- Auto-detect known flight paths when taxi map opens
EventHandlers["TAXIMAP_OPENED"] = function()
    local numNodes = NumTaxiNodes()
    local newPaths = 0
    
    for i = 1, numNodes do
        local nodeType = TaxiNodeGetType(i)
        local nodeName = TaxiNodeName(i)
        
        -- nodeType: "CURRENT" = current node, "REACHABLE" = known, "DISTANT" = unknown
        if nodeType == "REACHABLE" or nodeType == "CURRENT" then
            if nodeName and not VTT.db.knownFlightPaths[nodeName] then
                VTT.db.knownFlightPaths[nodeName] = {
                    name = nodeName,
                    discoveredAt = time(),
                    discoveredBy = VTT.PlayerID,
                }
                newPaths = newPaths + 1
            end
        end
    end
    
    if newPaths > 0 then
        Print("Discovered " .. newPaths .. " new flight path(s)!")
    end
    
    PrintDebug("Total known flight paths: " .. tcount(VTT.db.knownFlightPaths))
end

-- Scan bags for collectible items
EventHandlers["BAG_UPDATE"] = function(bagID)
    -- Only scan periodically to avoid spam
    if not VTT.lastBagScan then
        VTT.lastBagScan = 0
    end
    local now = time()
    if now - VTT.lastBagScan < 5 then return end
    VTT.lastBagScan = now
    
    -- Scan all bags for trackable items
    for bag = 0, 4 do
        local numSlots = GetContainerNumSlots(bag)
        for slot = 1, numSlots do
            local link = GetContainerItemLink(bag, slot)
            if link then
                local itemID = GetItemIDFromLink(link)
                if itemID and DB.Items and DB.Items[itemID] then
                    local _, _, itemName = string.find(link, "%[(.+)%]")
                    if not VTT.db.collectedItems[itemID] then
                        VTT.MarkItemCollected(itemID, itemName or "Unknown")
                    end
                end
            end
        end
    end
end

-- Scan loot window
EventHandlers["LOOT_OPENED"] = function()
    local numItems = GetNumLootItems()
    for i = 1, numItems do
        local link = GetLootSlotLink(i)
        if link then
            local itemID = GetItemIDFromLink(link)
            -- Log rare/epic drops
            if itemID then
                local _, _, _, quality = GetItemInfo(itemID)
                if quality and quality >= 3 then -- Rare or better
                    local _, _, itemName = string.find(link, "%[(.+)%]")
                    PrintDebug("Loot available: " .. (itemName or "Unknown") .. " (Quality: " .. quality .. ")")
                end
            end
        end
    end
end

EventFrame:SetScript("OnEvent", function()
    local handler = EventHandlers[event]
    if handler then
        handler(arg1, arg2, arg3, arg4, arg5)
    end
end)

--------------------------------------------------------------------------------
-- TOOLTIP HOOKS (Core ATT Feature)
--------------------------------------------------------------------------------

-- Store original tooltip functions
local OriginalSetBagItem = GameTooltip.SetBagItem
local OriginalSetLootItem = GameTooltip.SetLootItem
local OriginalSetQuestItem = GameTooltip.SetQuestItem
local OriginalSetQuestLogItem = GameTooltip.SetQuestLogItem
local OriginalSetInventoryItem = GameTooltip.SetInventoryItem
local OriginalSetMerchantItem = GameTooltip.SetMerchantItem
local OriginalSetCraftItem = GameTooltip.SetCraftItem
local OriginalSetTradeSkillItem = GameTooltip.SetTradeSkillItem
local OriginalSetAuctionItem = GameTooltip.SetAuctionItem
local OriginalSetAuctionSellItem = GameTooltip.SetAuctionSellItem
local OriginalSetTradePlayerItem = GameTooltip.SetTradePlayerItem
local OriginalSetTradeTargetItem = GameTooltip.SetTradeTargetItem
local OriginalSetInboxItem = GameTooltip.SetInboxItem
local OriginalSetHyperlink = ItemRefTooltip.SetHyperlink

-- ATT Tooltip Colors
local ATT_COLOR = { r = 0.4, g = 0.8, b = 1.0 }
local COLLECTED_COLOR = { r = 0.0, g = 1.0, b = 0.0 }
local NOT_COLLECTED_COLOR = { r = 1.0, g = 0.0, b = 0.0 }

-- Note: GetItemIDFromLink is defined in Utility Functions section above

-- Add ATT info to tooltip
local function AddATTTooltipInfo(tooltip, itemID, itemLink)
    if not VTT.settings or not VTT.settings.tooltips or not VTT.settings.tooltips.enable then
        return
    end
    
    if not itemID then return end
    
    -- Separator line
    tooltip:AddLine(" ")
    tooltip:AddLine("|cFF15ABFF--- VanillaTheThings ---|r")
    
    -- Check if collected
    local isCollected = VTT.IsItemCollected(itemID)
    if isCollected then
        tooltip:AddLine("|cFF00FF00✓ Collected|r", COLLECTED_COLOR.r, COLLECTED_COLOR.g, COLLECTED_COLOR.b)
        local data = VTT.db.collectedItems[itemID]
        if data and data.collectedBy then
            tooltip:AddLine("  Collected by: |cFFFFFFFF" .. data.collectedBy .. "|r", 0.7, 0.7, 0.7)
        end
    else
        tooltip:AddLine("|cFFFF0000✗ Not Collected|r", NOT_COLLECTED_COLOR.r, NOT_COLLECTED_COLOR.g, NOT_COLLECTED_COLOR.b)
        tooltip:AddLine("  |cFF888888Shift+Click to mark collected|r", 0.5, 0.5, 0.5)
    end
    
    -- Show source info if enabled
    if VTT.settings.tooltips.showSource then
        local source = VTT:GetItemSource(itemID)
        if source then
            tooltip:AddLine("Source: |cFFFFD700" .. source .. "|r", ATT_COLOR.r, ATT_COLOR.g, ATT_COLOR.b)
        end
    end
    
    -- Show progress if enabled
    if VTT.settings.tooltips.showProgress then
        local stats = VTT.GetStatistics()
        tooltip:AddLine(string.format("Progress: |cFFFFFFFF%d|r items collected", stats.itemsCollected), ATT_COLOR.r, ATT_COLOR.g, ATT_COLOR.b)
    end
    
    tooltip:Show()
end

-- Get item source from database
function VTT:GetItemSource(itemID)
    if not itemID then return nil end
    
    -- Check Items database first
    if DB.Items and DB.Items[itemID] then
        local item = DB.Items[itemID]
        if item.sourceDetail then
            return item.sourceDetail
        elseif item.source then
            return item.source
        end
    end
    
    -- Check BossLoot database
    if DB.BossLoot then
        for bossName, bossData in pairs(DB.BossLoot) do
            if bossData.items then
                for _, lootID in ipairs(bossData.items) do
                    if lootID == itemID then
                        return bossName .. " (" .. (bossData.instance or "Unknown") .. ")"
                    end
                end
            end
        end
    end
    
    -- Check Vendors database
    if DB.Vendors then
        for vendorName, vendorData in pairs(DB.Vendors) do
            if vendorData.items then
                for _, itemData in ipairs(vendorData.items) do
                    if itemData.id == itemID then
                        local loc = vendorData.location or "Unknown Location"
                        return "Vendor: " .. vendorName .. " (" .. loc .. ")"
                    end
                end
            end
        end
    end
    
    -- Check Quest Rewards database
    if DB.QuestRewards then
        for questName, questData in pairs(DB.QuestRewards) do
            if questData.rewards then
                for _, rewardData in ipairs(questData.rewards) do
                    if rewardData.id == itemID then
                        return "Quest: " .. questName .. " (" .. (questData.zone or "Unknown") .. ")"
                    end
                end
            end
        end
    end
    
    return nil
end

-- Hook: Bag Items
GameTooltip.SetBagItem = function(self, bag, slot)
    local hasItem, hasCooldown, repairCost = OriginalSetBagItem(self, bag, slot)
    local link = GetContainerItemLink(bag, slot)
    local itemID = GetItemIDFromLink(link)
    AddATTTooltipInfo(self, itemID, link)
    return hasItem, hasCooldown, repairCost
end

-- Hook: Loot Items
GameTooltip.SetLootItem = function(self, slot)
    OriginalSetLootItem(self, slot)
    local link = GetLootSlotLink(slot)
    local itemID = GetItemIDFromLink(link)
    AddATTTooltipInfo(self, itemID, link)
end

-- Hook: Quest Reward Items
GameTooltip.SetQuestItem = function(self, itemType, index)
    OriginalSetQuestItem(self, itemType, index)
    local link = GetQuestItemLink(itemType, index)
    local itemID = GetItemIDFromLink(link)
    AddATTTooltipInfo(self, itemID, link)
end

-- Hook: Quest Log Items
GameTooltip.SetQuestLogItem = function(self, itemType, index)
    OriginalSetQuestLogItem(self, itemType, index)
    local link = GetQuestLogItemLink(itemType, index)
    local itemID = GetItemIDFromLink(link)
    AddATTTooltipInfo(self, itemID, link)
end

-- Hook: Inventory Items (equipped)
GameTooltip.SetInventoryItem = function(self, unit, slot)
    local hasItem, hasCooldown, repairCost = OriginalSetInventoryItem(self, unit, slot)
    local link = GetInventoryItemLink(unit, slot)
    local itemID = GetItemIDFromLink(link)
    AddATTTooltipInfo(self, itemID, link)
    return hasItem, hasCooldown, repairCost
end

-- Hook: Merchant Items
GameTooltip.SetMerchantItem = function(self, index)
    OriginalSetMerchantItem(self, index)
    local link = GetMerchantItemLink(index)
    local itemID = GetItemIDFromLink(link)
    AddATTTooltipInfo(self, itemID, link)
end

-- Hook: Craft Items
GameTooltip.SetCraftItem = function(self, skill, slot)
    OriginalSetCraftItem(self, skill, slot)
    local link = GetCraftItemLink(skill)
    local itemID = GetItemIDFromLink(link)
    AddATTTooltipInfo(self, itemID, link)
end

-- Hook: Trade Skill Items
GameTooltip.SetTradeSkillItem = function(self, skill, slot)
    OriginalSetTradeSkillItem(self, skill, slot)
    local link = GetTradeSkillItemLink(skill)
    local itemID = GetItemIDFromLink(link)
    AddATTTooltipInfo(self, itemID, link)
end

-- Hook: Auction Items
GameTooltip.SetAuctionItem = function(self, atype, index)
    OriginalSetAuctionItem(self, atype, index)
    local link = GetAuctionItemLink(atype, index)
    local itemID = GetItemIDFromLink(link)
    AddATTTooltipInfo(self, itemID, link)
end

-- Hook: Auction Sell Item
GameTooltip.SetAuctionSellItem = function(self)
    OriginalSetAuctionSellItem(self)
    local name, texture, count, quality, canUse, price = GetAuctionSellItemInfo()
    -- Can't easily get link here, skip
end

-- Hook: Trade Window (Player)
GameTooltip.SetTradePlayerItem = function(self, index)
    OriginalSetTradePlayerItem(self, index)
    local link = GetTradePlayerItemLink(index)
    local itemID = GetItemIDFromLink(link)
    AddATTTooltipInfo(self, itemID, link)
end

-- Hook: Trade Window (Target)
GameTooltip.SetTradeTargetItem = function(self, index)
    OriginalSetTradeTargetItem(self, index)
    local link = GetTradeTargetItemLink(index)
    local itemID = GetItemIDFromLink(link)
    AddATTTooltipInfo(self, itemID, link)
end

-- Hook: Mail Inbox Items
GameTooltip.SetInboxItem = function(self, index, attachIndex)
    OriginalSetInboxItem(self, index, attachIndex)
    local link = GetInboxItemLink(index, attachIndex)
    local itemID = GetItemIDFromLink(link)
    AddATTTooltipInfo(self, itemID, link)
end

-- Hook: Hyperlinks (chat links, item ref tooltip)
local OriginalItemRefOnHyperlinkClick = ItemRefTooltip_SetItemRef
function ItemRefTooltip_SetItemRef(link, text, button)
    OriginalItemRefOnHyperlinkClick(link, text, button)
    local itemID = GetItemIDFromLink(link)
    if itemID and ItemRefTooltip:IsVisible() then
        AddATTTooltipInfo(ItemRefTooltip, itemID, link)
    end
end

-- Hook: Chat hyperlink hover
local OriginalSetItemRef = SetItemRef
function SetItemRef(link, text, button)
    OriginalSetItemRef(link, text, button)
    
    -- Mark as collected on shift-click
    if IsShiftKeyDown() and button == "LeftButton" then
        local itemID = GetItemIDFromLink(link)
        if itemID then
            local name = GetItemInfo(itemID)
            if name then
                VTT.MarkItemCollected(itemID, name)
            end
        end
    end
end

--------------------------------------------------------------------------------
-- Quest Tooltip Hook
--------------------------------------------------------------------------------

-- Hook quest log tooltip to show ATT quest info
local OriginalQuestLog_SetSelection = QuestLog_SetSelection
function QuestLog_SetSelection(index)
    OriginalQuestLog_SetSelection(index)
    -- Could add ATT info to quest frame here
end

--------------------------------------------------------------------------------
-- Initialize
--------------------------------------------------------------------------------

Print("|cFF15ABFFVanillaTheThings|r " .. VTT.Version .. " loaded")

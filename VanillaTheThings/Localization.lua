--------------------------------------------------------------------------------
--                        A L L   T H E   T H I N G S                         --
--                           Localization (1.12.1)                            --
--------------------------------------------------------------------------------

VanillaTheThings_L = {
    -- General
    TITLE = "|cFFFFFFFFVANILLA THE THINGS|r",
    SHORTTITLE = "|cFFFFFFFFVTT|r",
    VERSION = "1.0.0",
    
    -- Colors
    COLORS = {
        ATT = "FF15ABFF",
        Account = "FF00CCFF",
        Insane = "FFFF8000",
        Horde = "FFE21919",
        Alliance = "FF1994E2",
    },
    
    -- Collection States
    COLLECTED = "|cFF00FF00Collected|r",
    COLLECTED_ICON = "|TInterface\\Buttons\\UI-CheckBox-Check:0|t",
    NOT_COLLECTED = "|cFFFF0000Not Collected|r",
    NOT_COLLECTED_ICON = "|TInterface\\Buttons\\UI-CheckBox-Up:0|t",
    COMPLETE = "|cFF00FF00Complete|r",
    COMPLETE_ICON = "|TInterface\\Buttons\\UI-CheckBox-Check:0|t",
    INCOMPLETE = "|cFFFFFF00Incomplete|r",
    
    -- UI Text
    MAIN_LIST = "Main List",
    MINI_LIST = "Mini List",
    SETTINGS = "Settings",
    REFRESH = "Refresh",
    SEARCH = "Search",
    CLOSE = "Close",
    
    -- Category Labels
    CAT_QUESTS = "Quests",
    CAT_REPUTATIONS = "Reputations",
    CAT_PROFESSIONS = "Professions",
    CAT_EXPLORATION = "Exploration",
    CAT_FLIGHT_PATHS = "Flight Paths",
    CAT_DUNGEONS = "Dungeons",
    CAT_RAIDS = "Raids",
    CAT_WORLD_BOSSES = "World Bosses",
    CAT_ITEMS = "Items",
    CAT_RECIPES = "Recipes",
    CAT_PVP = "PvP",
    CAT_HOLIDAYS = "Holidays",
    CAT_STATISTICS = "Statistics",
    CAT_ZONES = "Zones",
    CAT_MOUNTS = "Mounts",
    CAT_BATTLEGROUNDS = "Battlegrounds",
    CAT_ITEM_SETS = "Item Sets",
    CAT_PVP_RANKS = "PvP Ranks",
    
    -- Category Tooltips
    TIP_QUESTS = "Quests completed by your characters",
    TIP_REPUTATIONS = "Faction reputation standings",
    TIP_PROFESSIONS = "Crafting and gathering professions",
    TIP_EXPLORATION = "Discovered zones and areas",
    TIP_FLIGHT_PATHS = "Flight path locations discovered",
    TIP_DUNGEONS = "Dungeon instances in Vanilla WoW",
    TIP_RAIDS = "Raid instances in Vanilla WoW",
    TIP_ITEMS = "Items you've collected",
    TIP_RECIPES = "Crafting recipes you've learned",
    
    -- Tracking Categories
    TRACKING = {
        QUESTS = "Quest Tracking",
        QUESTS_DESC = "Track completed quests across your characters",
        REPUTATIONS = "Reputation Tracking",
        REPUTATIONS_DESC = "Track your faction standings",
        EXPLORATION = "Exploration Tracking",
        EXPLORATION_DESC = "Track explored areas and zones",
        FLIGHT_PATHS = "Flight Path Tracking",
        FLIGHT_PATHS_DESC = "Track discovered flight paths",
        RECIPES = "Recipe Tracking",
        RECIPES_DESC = "Track learned crafting recipes",
        ITEMS = "Item Tracking",
        ITEMS_DESC = "Track collected items",
        PROFESSIONS = "Profession Tracking",
        PROFESSIONS_DESC = "Track profession skill progress",
    },
    
    -- Categories (for backwards compat)
    CATEGORIES = {
        CHARACTER = "Character",
        QUESTS = QUESTS_LABEL or "Quests",
        REPUTATIONS = "Reputations",
        PROFESSIONS = "Professions",
        EXPLORATION = "Exploration",
        FLIGHT_PATHS = "Flight Paths",
        DUNGEONS = "Dungeons",
        RAIDS = "Raids",
        WORLD_BOSSES = "World Bosses",
        WORLD_DROPS = "World Drops",
        VENDORS = "Vendors",
        ZONES = "Zones",
        PVP = PVP or "PvP",
        HOLIDAYS = "Holidays",
        STATISTICS = "Statistics",
    },
    
    -- Tooltips
    TOOLTIP_CLICK = "Click to toggle window",
    TOOLTIP_SHIFT_CLICK = "Shift+Click to refresh",
    TOOLTIP_RIGHT_CLICK = "Right-Click for settings",
    TOOLTIP_DRAG = "Drag to move",
    
    -- Settings Labels
    SET_TRACK_QUESTS = "Track Quests",
    SET_TRACK_REPS = "Track Reputations",
    SET_TRACK_EXPLORE = "Track Exploration",
    SET_TRACK_FP = "Track Flight Paths",
    SET_TRACK_RECIPES = "Track Recipes",
    SET_MINIMAP = "Show Minimap Button",
    SET_TOOLTIPS = "Enable Tooltips",
    SET_SHOW_COMPLETED = "Show Completed",
    SET_ACCOUNT_MODE = "Account Mode",
    SET_DEBUG = "Debug Mode",
    
    -- Settings Categories
    SETTINGS_GENERAL = "General",
    SETTINGS_TRACKING = "Tracking",
    SETTINGS_TOOLTIPS = "Tooltips",
    SETTINGS_FILTERS = "Filters",
    
    -- Modes
    DEBUG_MODE = "Debug Mode",
    DEBUG_MODE_DESC = "Show everything in the database",
    ACCOUNT_MODE = "Account Mode",
    ACCOUNT_MODE_DESC = "Track for all characters",
    COMPLETIONIST_MODE = "Completionist Mode",
    COMPLETIONIST_MODE_DESC = "Require all sources",
    
    -- Minimap
    MINIMAP_MOUSEOVER = "Left-Click: Toggle Window\nRight-Click: Settings\nDrag: Move Button",
    
    -- Messages
    MSG_ADDON_LOADED = "Loaded. Type /vtt for help.",
    MSG_DATA_REFRESHED = "Data refreshed.",
    MSG_QUEST_COMPLETED = "Quest completed: %s",
    MSG_ITEM_COLLECTED = "Item collected: %s",
    MSG_RECIPE_LEARNED = "Recipe learned: %s",
    MSG_ZONE_DISCOVERED = "Zone discovered: %s",
    MSG_FLIGHT_PATH = "Flight path discovered: %s",
    MSG_UI_READY = "UI Ready.",
    
    -- Classes (for color coding)
    CLASS_COLORS = {
        WARRIOR = "FFC79C6E",
        PALADIN = "FFF58CBA",
        HUNTER = "FFABD473",
        ROGUE = "FFFFF569",
        PRIEST = "FFFFFFFF",
        SHAMAN = "FF0070DE",
        MAGE = "FF69CCF0",
        WARLOCK = "FF9482C9",
        DRUID = "FFFF7D0A",
    },
    
    -- Factions
    STANDINGS = {
        [1] = "Hated",
        [2] = "Hostile",
        [3] = "Unfriendly",
        [4] = "Neutral",
        [5] = "Friendly",
        [6] = "Honored",
        [7] = "Revered",
        [8] = "Exalted",
    },
    
    -- Filters
    FILTER_COMPLETED = "Show Completed",
    FILTER_COLLECTED = "Show Collected",
    FILTER_BOE = "Show BoE Items",
    FILTER_UNAVAILABLE = "Show Unavailable",
    
    -- Misc
    UNKNOWN = "Unknown",
    RETRIEVING = "Retrieving...",
    LEVEL = "Level",
    REQUIRED_LEVEL = "Required Level",
    QUEST_GIVER = "Quest Giver",
    DROP = "Drop",
    VENDOR = "Vendor",
    RECIPE = "Recipe",
    REWARD = "Reward",
    COST = "Cost",
    LOCATION = "Location",
    COORDINATES = "Coordinates",
}

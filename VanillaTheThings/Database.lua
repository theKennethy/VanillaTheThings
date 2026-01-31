--------------------------------------------------------------------------------
--                        A L L   T H E   T H I N G S                         --
--                            Database (1.12.1)                               --
--------------------------------------------------------------------------------
-- Contains static data for vanilla WoW 1.12.1
--------------------------------------------------------------------------------

VanillaTheThings_DB = {}
local DB = VanillaTheThings_DB

--------------------------------------------------------------------------------
-- Zone Data
--------------------------------------------------------------------------------
DB.Zones = {
    -- Eastern Kingdoms
    [1] = { name = "Dun Morogh", faction = "Alliance", level = "1-10", continent = "Eastern Kingdoms" },
    [12] = { name = "Elwynn Forest", faction = "Alliance", level = "1-10", continent = "Eastern Kingdoms" },
    [14] = { name = "Durotar", faction = "Horde", level = "1-10", continent = "Kalimdor" },
    [85] = { name = "Tirisfal Glades", faction = "Horde", level = "1-10", continent = "Eastern Kingdoms" },
    [141] = { name = "Teldrassil", faction = "Alliance", level = "1-10", continent = "Kalimdor" },
    [215] = { name = "Mulgore", faction = "Horde", level = "1-10", continent = "Kalimdor" },
    
    -- Contested Zones
    [33] = { name = "Stranglethorn Vale", faction = "Contested", level = "30-45", continent = "Eastern Kingdoms" },
    [440] = { name = "Tanaris", faction = "Contested", level = "40-50", continent = "Kalimdor" },
    [1377] = { name = "Silithus", faction = "Contested", level = "55-60", continent = "Kalimdor" },
    [1497] = { name = "Undercity", faction = "Horde", level = "1-60", continent = "Eastern Kingdoms", isCity = true },
    [1537] = { name = "Ironforge", faction = "Alliance", level = "1-60", continent = "Eastern Kingdoms", isCity = true },
    [1519] = { name = "Stormwind City", faction = "Alliance", level = "1-60", continent = "Eastern Kingdoms", isCity = true },
    [1637] = { name = "Orgrimmar", faction = "Horde", level = "1-60", continent = "Kalimdor", isCity = true },
    [1638] = { name = "Thunder Bluff", faction = "Horde", level = "1-60", continent = "Kalimdor", isCity = true },
    [1657] = { name = "Darnassus", faction = "Alliance", level = "1-60", continent = "Kalimdor", isCity = true },
}

--------------------------------------------------------------------------------
-- Dungeon Data
--------------------------------------------------------------------------------
DB.Dungeons = {
    -- Classic Dungeons
    { id = 1, name = "Ragefire Chasm", minLevel = 13, maxLevel = 18, players = 5, zone = "Orgrimmar", faction = "Horde" },
    { id = 2, name = "The Deadmines", minLevel = 17, maxLevel = 26, players = 5, zone = "Westfall", faction = "Alliance" },
    { id = 3, name = "Wailing Caverns", minLevel = 17, maxLevel = 24, players = 5, zone = "The Barrens", faction = "Horde" },
    { id = 4, name = "Shadowfang Keep", minLevel = 22, maxLevel = 30, players = 5, zone = "Silverpine Forest", faction = "Both" },
    { id = 5, name = "Blackfathom Deeps", minLevel = 24, maxLevel = 32, players = 5, zone = "Ashenvale", faction = "Both" },
    { id = 6, name = "The Stockade", minLevel = 24, maxLevel = 32, players = 5, zone = "Stormwind City", faction = "Alliance" },
    { id = 7, name = "Gnomeregan", minLevel = 29, maxLevel = 38, players = 5, zone = "Dun Morogh", faction = "Both" },
    { id = 8, name = "Razorfen Kraul", minLevel = 29, maxLevel = 38, players = 5, zone = "The Barrens", faction = "Both" },
    { id = 9, name = "Scarlet Monastery - Graveyard", minLevel = 28, maxLevel = 38, players = 5, zone = "Tirisfal Glades", faction = "Both" },
    { id = 10, name = "Scarlet Monastery - Library", minLevel = 29, maxLevel = 39, players = 5, zone = "Tirisfal Glades", faction = "Both" },
    { id = 11, name = "Scarlet Monastery - Armory", minLevel = 32, maxLevel = 42, players = 5, zone = "Tirisfal Glades", faction = "Both" },
    { id = 12, name = "Scarlet Monastery - Cathedral", minLevel = 35, maxLevel = 45, players = 5, zone = "Tirisfal Glades", faction = "Both" },
    { id = 13, name = "Razorfen Downs", minLevel = 37, maxLevel = 46, players = 5, zone = "The Barrens", faction = "Both" },
    { id = 14, name = "Uldaman", minLevel = 41, maxLevel = 51, players = 5, zone = "Badlands", faction = "Both" },
    { id = 15, name = "Zul'Farrak", minLevel = 44, maxLevel = 54, players = 5, zone = "Tanaris", faction = "Both" },
    { id = 16, name = "Maraudon", minLevel = 46, maxLevel = 55, players = 5, zone = "Desolace", faction = "Both" },
    { id = 17, name = "Temple of Atal'Hakkar", minLevel = 50, maxLevel = 56, players = 5, zone = "Swamp of Sorrows", faction = "Both" },
    { id = 18, name = "Blackrock Depths", minLevel = 52, maxLevel = 60, players = 5, zone = "Blackrock Mountain", faction = "Both" },
    { id = 19, name = "Lower Blackrock Spire", minLevel = 55, maxLevel = 60, players = 10, zone = "Blackrock Mountain", faction = "Both" },
    { id = 20, name = "Upper Blackrock Spire", minLevel = 58, maxLevel = 60, players = 15, zone = "Blackrock Mountain", faction = "Both" },
    { id = 21, name = "Dire Maul - East", minLevel = 56, maxLevel = 60, players = 5, zone = "Feralas", faction = "Both" },
    { id = 22, name = "Dire Maul - West", minLevel = 56, maxLevel = 60, players = 5, zone = "Feralas", faction = "Both" },
    { id = 23, name = "Dire Maul - North", minLevel = 56, maxLevel = 60, players = 5, zone = "Feralas", faction = "Both" },
    { id = 24, name = "Stratholme - Living", minLevel = 58, maxLevel = 60, players = 5, zone = "Eastern Plaguelands", faction = "Both" },
    { id = 25, name = "Stratholme - Undead", minLevel = 58, maxLevel = 60, players = 5, zone = "Eastern Plaguelands", faction = "Both" },
    { id = 26, name = "Scholomance", minLevel = 58, maxLevel = 60, players = 5, zone = "Western Plaguelands", faction = "Both" },
}

--------------------------------------------------------------------------------
-- Raid Data
--------------------------------------------------------------------------------
DB.Raids = {
    { id = 1, name = "Onyxia's Lair", level = 60, players = 40, location = "Dustwallow Marsh" },
    { id = 2, name = "Molten Core", level = 60, players = 40, location = "Blackrock Mountain" },
    { id = 3, name = "Blackwing Lair", level = 60, players = 40, location = "Blackrock Mountain" },
    { id = 4, name = "Zul'Gurub", level = 60, players = 20, location = "Stranglethorn Vale" },
    { id = 5, name = "Ruins of Ahn'Qiraj", level = 60, players = 20, location = "Silithus" },
    { id = 6, name = "Temple of Ahn'Qiraj", level = 60, players = 40, location = "Silithus" },
    { id = 7, name = "Naxxramas", level = 60, players = 40, location = "Eastern Plaguelands" },
}

--------------------------------------------------------------------------------
-- World Boss Data
--------------------------------------------------------------------------------
DB.WorldBosses = {
    { id = 1, name = "Lord Kazzak", level = 60, location = "Blasted Lands" },
    { id = 2, name = "Azuregos", level = 60, location = "Azshara" },
    { id = 3, name = "Emeriss", level = 60, location = "Various" },
    { id = 4, name = "Lethon", level = 60, location = "Various" },
    { id = 5, name = "Taerar", level = 60, location = "Various" },
    { id = 6, name = "Ysondre", level = 60, location = "Various" },
}

--------------------------------------------------------------------------------
-- Profession Data
--------------------------------------------------------------------------------
DB.Professions = {
    Primary = {
        { name = "Alchemy", icon = "Interface\\Icons\\Trade_Alchemy", maxSkill = 300 },
        { name = "Blacksmithing", icon = "Interface\\Icons\\Trade_Blacksmithing", maxSkill = 300 },
        { name = "Enchanting", icon = "Interface\\Icons\\Trade_Enchant", maxSkill = 300 },
        { name = "Engineering", icon = "Interface\\Icons\\Trade_Engineering", maxSkill = 300 },
        { name = "Herbalism", icon = "Interface\\Icons\\Trade_Herbalism", maxSkill = 300 },
        { name = "Leatherworking", icon = "Interface\\Icons\\Trade_Leatherworking", maxSkill = 300 },
        { name = "Mining", icon = "Interface\\Icons\\Trade_Mining", maxSkill = 300 },
        { name = "Skinning", icon = "Interface\\Icons\\Trade_Skinning", maxSkill = 300 },
        { name = "Tailoring", icon = "Interface\\Icons\\Trade_Tailoring", maxSkill = 300 },
    },
    Secondary = {
        { name = "Cooking", icon = "Interface\\Icons\\INV_Misc_Food_15", maxSkill = 300 },
        { name = "First Aid", icon = "Interface\\Icons\\Spell_Holy_SealOfSacrifice", maxSkill = 300 },
        { name = "Fishing", icon = "Interface\\Icons\\Trade_Fishing", maxSkill = 300 },
    },
}

--------------------------------------------------------------------------------
-- Faction Data
--------------------------------------------------------------------------------
DB.Factions = {
    -- Alliance
    { id = 72, name = "Stormwind", faction = "Alliance" },
    { id = 47, name = "Ironforge", faction = "Alliance" },
    { id = 54, name = "Gnomeregan Exiles", faction = "Alliance" },
    { id = 69, name = "Darnassus", faction = "Alliance" },
    
    -- Horde
    { id = 76, name = "Orgrimmar", faction = "Horde" },
    { id = 68, name = "Undercity", faction = "Horde" },
    { id = 81, name = "Thunder Bluff", faction = "Horde" },
    { id = 530, name = "Darkspear Trolls", faction = "Horde" },
    
    -- Neutral
    { id = 59, name = "Thorium Brotherhood", faction = "Neutral" },
    { id = 270, name = "Zandalar Tribe", faction = "Neutral" },
    { id = 529, name = "Argent Dawn", faction = "Neutral" },
    { id = 576, name = "Timbermaw Hold", faction = "Neutral" },
    { id = 609, name = "Cenarion Circle", faction = "Neutral" },
    { id = 749, name = "Hydraxian Waterlords", faction = "Neutral" },
    { id = 809, name = "Shen'dralar", faction = "Neutral" },
    { id = 910, name = "Brood of Nozdormu", faction = "Neutral" },
    
    -- PvP
    { id = 890, name = "Silverwing Sentinels", faction = "Alliance" },
    { id = 889, name = "Warsong Outriders", faction = "Horde" },
    { id = 730, name = "Stormpike Guard", faction = "Alliance" },
    { id = 729, name = "Frostwolf Clan", faction = "Horde" },
}

--------------------------------------------------------------------------------
-- Holiday Data
--------------------------------------------------------------------------------
DB.Holidays = {
    { name = "Lunar Festival", startMonth = 1, startDay = 23, endMonth = 2, endDay = 10 },
    { name = "Love is in the Air", startMonth = 2, startDay = 11, endMonth = 2, endDay = 16 },
    { name = "Noblegarden", startMonth = 4, startDay = 9, endMonth = 4, endDay = 15 },
    { name = "Children's Week", startMonth = 5, startDay = 1, endMonth = 5, endDay = 7 },
    { name = "Midsummer Fire Festival", startMonth = 6, startDay = 21, endMonth = 7, endDay = 4 },
    { name = "Harvest Festival", startMonth = 9, startDay = 28, endMonth = 10, endDay = 4 },
    { name = "Hallow's End", startMonth = 10, startDay = 18, endMonth = 11, endDay = 1 },
    { name = "Winter Veil", startMonth = 12, startDay = 15, endMonth = 1, endDay = 2 },
}

--------------------------------------------------------------------------------
-- PvP Rank Data (for both factions)
--------------------------------------------------------------------------------
DB.PvPRanks = {
    Alliance = {
        { rank = 1, name = "Private", minHK = 15 },
        { rank = 2, name = "Corporal", minHK = 2000 },
        { rank = 3, name = "Sergeant", minHK = 5000 },
        { rank = 4, name = "Master Sergeant", minHK = 10000 },
        { rank = 5, name = "Sergeant Major", minHK = 15000 },
        { rank = 6, name = "Knight", minHK = 20000 },
        { rank = 7, name = "Knight-Lieutenant", minHK = 25000 },
        { rank = 8, name = "Knight-Captain", minHK = 30000 },
        { rank = 9, name = "Knight-Champion", minHK = 35000 },
        { rank = 10, name = "Lieutenant Commander", minHK = 40000 },
        { rank = 11, name = "Commander", minHK = 45000 },
        { rank = 12, name = "Marshal", minHK = 50000 },
        { rank = 13, name = "Field Marshal", minHK = 55000 },
        { rank = 14, name = "Grand Marshal", minHK = 60000 },
    },
    Horde = {
        { rank = 1, name = "Scout", minHK = 15 },
        { rank = 2, name = "Grunt", minHK = 2000 },
        { rank = 3, name = "Sergeant", minHK = 5000 },
        { rank = 4, name = "Senior Sergeant", minHK = 10000 },
        { rank = 5, name = "First Sergeant", minHK = 15000 },
        { rank = 6, name = "Stone Guard", minHK = 20000 },
        { rank = 7, name = "Blood Guard", minHK = 25000 },
        { rank = 8, name = "Legionnaire", minHK = 30000 },
        { rank = 9, name = "Centurion", minHK = 35000 },
        { rank = 10, name = "Champion", minHK = 40000 },
        { rank = 11, name = "Lieutenant General", minHK = 45000 },
        { rank = 12, name = "General", minHK = 50000 },
        { rank = 13, name = "Warlord", minHK = 55000 },
        { rank = 14, name = "High Warlord", minHK = 60000 },
    },
}

--------------------------------------------------------------------------------
-- Battleground Data
--------------------------------------------------------------------------------
DB.Battlegrounds = {
    { id = 1, name = "Warsong Gulch", minLevel = 10, maxLevel = 60, type = "Capture the Flag", players = "10v10" },
    { id = 2, name = "Arathi Basin", minLevel = 20, maxLevel = 60, type = "Resource Control", players = "15v15" },
    { id = 3, name = "Alterac Valley", minLevel = 51, maxLevel = 60, type = "Large Scale PvP", players = "40v40" },
}

--------------------------------------------------------------------------------
-- Exploration Areas per Zone (for tracking)
--------------------------------------------------------------------------------
DB.ExplorationAreas = {
    ["Elwynn Forest"] = {
        "Goldshire", "Northshire Valley", "Crystal Lake", "Stone Cairn Lake", 
        "Tower of Azora", "Brackwell Pumpkin Patch", "Fargodeep Mine", "Jasperlode Mine",
        "Eastvale Logging Camp", "Ridgepoint Tower", "Westbrook Garrison",
    },
    ["Dun Morogh"] = {
        "Coldridge Valley", "Anvilmar", "Chill Breeze Valley", "Kharanos",
        "Brewnall Village", "Gnomeregan", "Frostmane Hold", "Ironforge Airfield",
        "The Tundrid Hills", "Iceflow Lake", "Helm's Bed Lake", "Gates of Ironforge",
    },
    ["Tirisfal Glades"] = {
        "Deathknell", "Night Web's Hollow", "Solliden Farmstead", "Cold Hearth Manor",
        "Brill", "Agamand Mills", "Garren's Haunt", "Nightmare Vale",
        "The Bulwark", "Scarlet Monastery", "Whispering Gardens",
    },
    ["Durotar"] = {
        "Valley of Trials", "Burning Blade Coven", "Sen'jin Village", "Echo Isles",
        "Razor Hill", "Tiragarde Keep", "Skull Rock", "Thunder Ridge",
        "Drygulch Ravine", "Razormane Grounds", "Southfury River",
    },
    ["Mulgore"] = {
        "Camp Narache", "Red Cloud Mesa", "Bloodhoof Village", "Stonebull Lake",
        "Winterhoof Water Well", "Thunderhorn Water Well", "Wildmane Water Well",
        "The Rolling Plains", "Ravaged Caravan", "Venture Co. Mine", "Windfury Ridge",
    },
    ["Teldrassil"] = {
        "Shadowglen", "Aldrassil", "Dolanaar", "Lake Al'Ameth", "Pools of Arlithrien",
        "Ban'ethil Hollow", "Gnarlpine Hold", "Starbreeze Village", "The Oracle Glade",
        "Wellspring Lake", "Rut'theran Village", "Darnassus",
    },
    -- Mid-level zones
    ["Westfall"] = {
        "Sentinel Hill", "Moonbrook", "The Deadmines", "Alexston Farmstead",
        "The Dagger Hills", "The Dust Plains", "Gold Coast Quarry", "Jangolode Mine",
        "Furlbrow's Pumpkin Farm", "Longshore", "The Molsen Farm", "Saldean's Farm",
    },
    ["Darkshore"] = {
        "Auberdine", "Bashal'Aran", "Cliffspring Falls", "Cliffspring River",
        "Grove of the Ancients", "Master's Glaive", "Ruins of Mathystra", "Tower of Althalaxx",
        "Ameth'Aran", "Remtravel's Excavation", "The Long Wash",
    },
    ["Loch Modan"] = {
        "Thelsamar", "The Loch", "Stonewrought Dam", "Mo'grosh Stronghold",
        "Stonesplinter Valley", "The Farstrider Lodge", "Ironband's Excavation Site",
        "Valley of Kings", "North Gate Pass", "South Gate Pass",
    },
    ["Silverpine Forest"] = {
        "The Sepulcher", "Shadowfang Keep", "Pyrewood Village", "Ambermill",
        "Deep Elem Mine", "The Decrepit Ferry", "The Greymane Wall",
        "Fenris Isle", "Valgan's Field", "The Dead Field",
    },
    ["The Barrens"] = {
        "The Crossroads", "Camp Taurajo", "Ratchet", "Wailing Caverns",
        "The Dry Hills", "The Forgotten Pools", "The Stagnant Oasis",
        "Razorfen Kraul", "Razorfen Downs", "Northwatch Hold", "Southern Barrens",
    },
    -- High-level zones
    ["Stranglethorn Vale"] = {
        "Booty Bay", "Grom'gol Base Camp", "Nesingwary's Expedition",
        "Kurzen's Compound", "Rebel Camp", "Zul'Gurub",
        "The Vile Reef", "Yojamba Isle", "Lake Nazferiti",
    },
    ["Tanaris"] = {
        "Gadgetzan", "Zul'Farrak", "Steamwheedle Port", "Lost Rigger Cove",
        "Sandsorrow Watch", "Dunemaul Compound", "Broken Pillar",
        "The Noxious Lair", "Caverns of Time", "Land's End Beach",
    },
    ["Un'Goro Crater"] = {
        "Marshal's Refuge", "Fire Plume Ridge", "Terror Run",
        "The Slithering Scar", "Golakka Hot Springs", "Fungal Rock",
        "Lakkari Tar Pits", "The Screaming Reaches", "The Marshlands",
    },
    ["Silithus"] = {
        "Cenarion Hold", "The Crystal Vale", "Hive'Ashi", "Hive'Regal", "Hive'Zora",
        "Twilight Base Camp", "The Scarab Wall", "Southwind Village",
    },
    ["Eastern Plaguelands"] = {
        "Light's Hope Chapel", "Stratholme", "Corin's Crossing", "Crown Guard Tower",
        "Darrowshire", "Eastwall Tower", "The Fungal Vale", "Lake Mereldar",
        "Northdale", "Northpass Tower", "Plaguewood", "The Marris Stead",
        "The Noxious Glade", "The Undercroft", "Terrordale", "Tyr's Hand",
    },
    ["Western Plaguelands"] = {
        "Chillwind Camp", "Andorhal", "Caer Darrow", "Hearthglen",
        "Scholomance", "The Bulwark", "Dalson's Tears", "Felstone Field",
        "Gahrron's Withering", "The Writhing Haunt", "Sorrow Hill",
    },
    ["Burning Steppes"] = {
        "Morgan's Vigil", "Blackrock Mountain", "Blackrock Stronghold",
        "Dreadmaul Rock", "Flame Crest", "Ruins of Thaurissan",
        "Terror Wing Path", "The Pillar of Ash", "Altar of Storms",
    },
    ["Winterspring"] = {
        "Everlook", "Frostfire Hot Springs", "Frostsaber Rock",
        "Owl Wing Thicket", "Starfall Village", "Timbermaw Post",
        "Winterfall Village", "Mazthoril", "Lake Kel'Theril",
    },
    ["Felwood"] = {
        "Bloodvenom Post", "Emerald Sanctuary", "Talonbranch Glade",
        "Deadwood Village", "Felpaw Village", "Jaedenar",
        "Irontree Woods", "Shatter Scar Vale", "The Ruins of Constellas",
    },
    -- Add more zones as needed...
}

--------------------------------------------------------------------------------
-- Flight Path Locations (for tracking discovery)
--------------------------------------------------------------------------------
DB.FlightPaths = {
    -- Alliance
    Alliance = {
        { name = "Stormwind, Elwynn", zone = "Elwynn Forest" },
        { name = "Sentinel Hill, Westfall", zone = "Westfall" },
        { name = "Darkshire, Duskwood", zone = "Duskwood" },
        { name = "Lakeshire, Redridge", zone = "Redridge Mountains" },
        { name = "Ironforge, Dun Morogh", zone = "Dun Morogh" },
        { name = "Thelsamar, Loch Modan", zone = "Loch Modan" },
        { name = "Menethil Harbor, Wetlands", zone = "Wetlands" },
        { name = "Southshore, Hillsbrad", zone = "Hillsbrad Foothills" },
        { name = "Refuge Pointe, Arathi", zone = "Arathi Highlands" },
        { name = "Aerie Peak, The Hinterlands", zone = "The Hinterlands" },
        { name = "Light's Hope Chapel, Eastern Plaguelands", zone = "Eastern Plaguelands" },
        { name = "Chillwind Camp, Western Plaguelands", zone = "Western Plaguelands" },
        { name = "Rut'theran Village, Teldrassil", zone = "Teldrassil" },
        { name = "Auberdine, Darkshore", zone = "Darkshore" },
        { name = "Astranaar, Ashenvale", zone = "Ashenvale" },
        { name = "Stonetalon Peak, Stonetalon", zone = "Stonetalon Mountains" },
        { name = "Nijel's Point, Desolace", zone = "Desolace" },
        { name = "Feathermoon Stronghold, Feralas", zone = "Feralas" },
        { name = "Thalanaar, Feralas", zone = "Feralas" },
        { name = "Theramore Isle, Dustwallow", zone = "Dustwallow Marsh" },
        { name = "Gadgetzan, Tanaris", zone = "Tanaris" },
        { name = "Marshal's Refuge, Un'Goro", zone = "Un'Goro Crater" },
        { name = "Cenarion Hold, Silithus", zone = "Silithus" },
        { name = "Talendris Point, Azshara", zone = "Azshara" },
        { name = "Everlook, Winterspring", zone = "Winterspring" },
        { name = "Morgan's Vigil, Burning Steppes", zone = "Burning Steppes" },
        { name = "Thorium Point, Searing Gorge", zone = "Searing Gorge" },
        { name = "Nethergarde Keep, Blasted Lands", zone = "Blasted Lands" },
    },
    Horde = {
        { name = "Orgrimmar, Durotar", zone = "Durotar" },
        { name = "The Crossroads, The Barrens", zone = "The Barrens" },
        { name = "Camp Taurajo, The Barrens", zone = "The Barrens" },
        { name = "Thunder Bluff, Mulgore", zone = "Mulgore" },
        { name = "Sun Rock Retreat, Stonetalon", zone = "Stonetalon Mountains" },
        { name = "Shadowprey Village, Desolace", zone = "Desolace" },
        { name = "Camp Mojache, Feralas", zone = "Feralas" },
        { name = "Brackenwall Village, Dustwallow", zone = "Dustwallow Marsh" },
        { name = "Gadgetzan, Tanaris", zone = "Tanaris" },
        { name = "Marshal's Refuge, Un'Goro", zone = "Un'Goro Crater" },
        { name = "Cenarion Hold, Silithus", zone = "Silithus" },
        { name = "Valormok, Azshara", zone = "Azshara" },
        { name = "Everlook, Winterspring", zone = "Winterspring" },
        { name = "Undercity, Tirisfal", zone = "Tirisfal Glades" },
        { name = "The Sepulcher, Silverpine", zone = "Silverpine Forest" },
        { name = "Tarren Mill, Hillsbrad", zone = "Hillsbrad Foothills" },
        { name = "Hammerfall, Arathi", zone = "Arathi Highlands" },
        { name = "Revantusk Village, The Hinterlands", zone = "The Hinterlands" },
        { name = "Light's Hope Chapel, Eastern Plaguelands", zone = "Eastern Plaguelands" },
        { name = "Stonard, Swamp of Sorrows", zone = "Swamp of Sorrows" },
        { name = "Grom'gol, Stranglethorn", zone = "Stranglethorn Vale" },
        { name = "Booty Bay, Stranglethorn", zone = "Stranglethorn Vale" },
        { name = "Kargath, Badlands", zone = "Badlands" },
        { name = "Flame Crest, Burning Steppes", zone = "Burning Steppes" },
        { name = "Thorium Point, Searing Gorge", zone = "Searing Gorge" },
    },
    Neutral = {
        { name = "Gadgetzan, Tanaris", zone = "Tanaris" },
        { name = "Marshal's Refuge, Un'Goro", zone = "Un'Goro Crater" },
        { name = "Cenarion Hold, Silithus", zone = "Silithus" },
        { name = "Everlook, Winterspring", zone = "Winterspring" },
        { name = "Light's Hope Chapel, Eastern Plaguelands", zone = "Eastern Plaguelands" },
        { name = "Thorium Point, Searing Gorge", zone = "Searing Gorge" },
        { name = "Booty Bay, Stranglethorn", zone = "Stranglethorn Vale" },
    },
}

--------------------------------------------------------------------------------
-- Collectible Item Sets (for tracking)
--------------------------------------------------------------------------------
DB.ItemSets = {
    -- Tier 1 Sets
    { name = "Cenarion Raiment", class = "DRUID", pieces = 8, source = "Molten Core" },
    { name = "Nightslayer Armor", class = "ROGUE", pieces = 8, source = "Molten Core" },
    { name = "Giantstalker Armor", class = "HUNTER", pieces = 8, source = "Molten Core" },
    { name = "Arcanist Regalia", class = "MAGE", pieces = 8, source = "Molten Core" },
    { name = "Felheart Raiment", class = "WARLOCK", pieces = 8, source = "Molten Core" },
    { name = "Lawbringer Armor", class = "PALADIN", pieces = 8, source = "Molten Core" },
    { name = "Prophecy Garb", class = "PRIEST", pieces = 8, source = "Molten Core" },
    { name = "Might of Earthfury", class = "SHAMAN", pieces = 8, source = "Molten Core" },
    { name = "Battlegear of Might", class = "WARRIOR", pieces = 8, source = "Molten Core" },
    
    -- Tier 2 Sets
    { name = "Stormrage Raiment", class = "DRUID", pieces = 8, source = "Blackwing Lair" },
    { name = "Bloodfang Armor", class = "ROGUE", pieces = 8, source = "Blackwing Lair" },
    { name = "Dragonstalker Armor", class = "HUNTER", pieces = 8, source = "Blackwing Lair" },
    { name = "Netherwind Regalia", class = "MAGE", pieces = 8, source = "Blackwing Lair" },
    { name = "Nemesis Raiment", class = "WARLOCK", pieces = 8, source = "Blackwing Lair" },
    { name = "Judgement Armor", class = "PALADIN", pieces = 8, source = "Blackwing Lair" },
    { name = "Vestments of Transcendence", class = "PRIEST", pieces = 8, source = "Blackwing Lair" },
    { name = "The Ten Storms", class = "SHAMAN", pieces = 8, source = "Blackwing Lair" },
    { name = "Battlegear of Wrath", class = "WARRIOR", pieces = 8, source = "Blackwing Lair" },
    
    -- Zul'Gurub Sets
    { name = "Haruspex's Garb", class = "DRUID", pieces = 5, source = "Zul'Gurub" },
    { name = "Madcap's Outfit", class = "ROGUE", pieces = 5, source = "Zul'Gurub" },
    { name = "Predator's Armor", class = "HUNTER", pieces = 5, source = "Zul'Gurub" },
    { name = "Illusionist's Attire", class = "MAGE", pieces = 5, source = "Zul'Gurub" },
    { name = "Demoniac's Threads", class = "WARLOCK", pieces = 5, source = "Zul'Gurub" },
    { name = "Freethinker's Armor", class = "PALADIN", pieces = 5, source = "Zul'Gurub" },
    { name = "Confessor's Raiment", class = "PRIEST", pieces = 5, source = "Zul'Gurub" },
    { name = "Augur's Regalia", class = "SHAMAN", pieces = 5, source = "Zul'Gurub" },
    { name = "Vindicator's Battlegear", class = "WARRIOR", pieces = 5, source = "Zul'Gurub" },
}

--------------------------------------------------------------------------------
-- Mounts (collectible)
--------------------------------------------------------------------------------
DB.Mounts = {
    -- Alliance
    { name = "Swift White Steed", faction = "Alliance", source = "Vendor", cost = "1000g" },
    { name = "Swift Brown Steed", faction = "Alliance", source = "Vendor", cost = "1000g" },
    { name = "Swift Palomino", faction = "Alliance", source = "Vendor", cost = "1000g" },
    { name = "Swift Frostsaber", faction = "Alliance", source = "Vendor", cost = "1000g" },
    { name = "Swift Mistsaber", faction = "Alliance", source = "Vendor", cost = "1000g" },
    { name = "Swift Stormsaber", faction = "Alliance", source = "Vendor", cost = "1000g" },
    { name = "Swift Mechanostrider", faction = "Alliance", source = "Vendor", cost = "1000g" },
    { name = "Swift Brown Ram", faction = "Alliance", source = "Vendor", cost = "1000g" },
    { name = "Swift White Ram", faction = "Alliance", source = "Vendor", cost = "1000g" },
    { name = "Swift Gray Ram", faction = "Alliance", source = "Vendor", cost = "1000g" },
    
    -- Horde
    { name = "Swift Brown Wolf", faction = "Horde", source = "Vendor", cost = "1000g" },
    { name = "Swift Timber Wolf", faction = "Horde", source = "Vendor", cost = "1000g" },
    { name = "Swift Gray Wolf", faction = "Horde", source = "Vendor", cost = "1000g" },
    { name = "Swift Blue Raptor", faction = "Horde", source = "Vendor", cost = "1000g" },
    { name = "Swift Olive Raptor", faction = "Horde", source = "Vendor", cost = "1000g" },
    { name = "Swift Orange Raptor", faction = "Horde", source = "Vendor", cost = "1000g" },
    { name = "Great White Kodo", faction = "Horde", source = "Vendor", cost = "1000g" },
    { name = "Great Brown Kodo", faction = "Horde", source = "Vendor", cost = "1000g" },
    { name = "Great Gray Kodo", faction = "Horde", source = "Vendor", cost = "1000g" },
    { name = "Skeletal War Horse", faction = "Horde", source = "Vendor", cost = "1000g" },
    
    -- Special/Rare
    { name = "Deathcharger's Reins", faction = "Both", source = "Baron Rivendare (Stratholme)", rarity = "Epic" },
    { name = "Swift Razzashi Raptor", faction = "Both", source = "Bloodlord Mandokir (Zul'Gurub)", rarity = "Epic" },
    { name = "Swift Zulian Tiger", faction = "Both", source = "High Priest Thekal (Zul'Gurub)", rarity = "Epic" },
    { name = "Black Qiraji Battle Tank", faction = "Both", source = "AQ War Effort", rarity = "Legendary" },
    { name = "Onyxian Drake", faction = "Both", source = "Not obtainable in 1.12.1", rarity = "N/A" },
    
    -- PvP
    { name = "Black War Steed", faction = "Alliance", source = "PvP Vendor", cost = "Honor" },
    { name = "Black War Tiger", faction = "Alliance", source = "PvP Vendor", cost = "Honor" },
    { name = "Black War Ram", faction = "Alliance", source = "PvP Vendor", cost = "Honor" },
    { name = "Black War Mechanostrider", faction = "Alliance", source = "PvP Vendor", cost = "Honor" },
    { name = "Black War Wolf", faction = "Horde", source = "PvP Vendor", cost = "Honor" },
    { name = "Black War Raptor", faction = "Horde", source = "PvP Vendor", cost = "Honor" },
    { name = "Black War Kodo", faction = "Horde", source = "PvP Vendor", cost = "Honor" },
    { name = "Red Skeletal Warhorse", faction = "Horde", source = "PvP Vendor", cost = "Honor" },
}

--------------------------------------------------------------------------------
-- Icon Paths
--------------------------------------------------------------------------------
DB.Icons = {
    Logo = "Interface\\Icons\\INV_Misc_Book_09",
    Quest = "Interface\\GossipFrame\\AvailableQuestIcon",
    QuestComplete = "Interface\\GossipFrame\\ActiveQuestIcon",
    Reputation = "Interface\\Icons\\INV_Misc_Note_02",
    Profession = "Interface\\Icons\\INV_Misc_Wrench_01",
    Dungeon = "Interface\\Icons\\INV_Misc_Head_Dragon_01",
    Raid = "Interface\\Icons\\INV_Misc_Head_Dragon_Black",
    PvP = "Interface\\Icons\\INV_Banner_03",
    Exploration = "Interface\\Icons\\INV_Misc_Map_01",
    FlightPath = "Interface\\Icons\\Ability_Mount_Wyvern_01",
    Item = "Interface\\Icons\\INV_Misc_Bag_07",
    Recipe = "Interface\\Icons\\INV_Scroll_03",
    Holiday = "Interface\\Icons\\INV_Misc_Gift_01",
    Settings = "Interface\\Icons\\Trade_Engineering",
    Refresh = "Interface\\Icons\\Spell_Frost_FrostWard",
    Unknown = "Interface\\Icons\\INV_Misc_QuestionMark",
    Mount = "Interface\\Icons\\Ability_Mount_Ridinghorse",
    Character = "Interface\\Icons\\INV_Misc_GroupLooking",
    Help = "Interface\\Icons\\INV_Misc_Note_01",
    Filter = "Interface\\Icons\\INV_Misc_Spyglass_03",
    Close = "Interface\\Icons\\Spell_ChargeNegative",
    Pin = "Interface\\Icons\\INV_Misc_PunchCards_Yellow",
    WorldBoss = "Interface\\Icons\\Spell_Shadow_SummonInfernal",
    Battleground = "Interface\\Icons\\Achievement_PVP_A_01",
}

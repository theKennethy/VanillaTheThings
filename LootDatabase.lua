--------------------------------------------------------------------------------
--                        A L L   T H E   T H I N G S                         --
--                       Loot Database (1.12.1)                               --
--------------------------------------------------------------------------------
-- Contains loot tables, vendor data, quest rewards for vanilla WoW
--------------------------------------------------------------------------------

local DB = VanillaTheThings_DB

--------------------------------------------------------------------------------
-- Item Database (itemID -> item info)
-- This allows reverse lookup for source information
--------------------------------------------------------------------------------
DB.Items = {
    -- ==================== LEGENDARY ITEMS ====================
    [17182] = { name = "Sulfuras, Hand of Ragnaros", quality = 5, source = "Crafted", sourceDetail = "Ragnaros (Molten Core) + Crafting" },
    [19019] = { name = "Thunderfury, Blessed Blade of the Windseeker", quality = 5, source = "Quest", sourceDetail = "Bindings from Garr & Geddon (Molten Core)" },
    [21176] = { name = "Black Qiraji Resonating Crystal", quality = 5, source = "Quest", sourceDetail = "AQ War Effort - First to ring gong" },
    [22589] = { name = "Atiesh, Greatstaff of the Guardian", quality = 5, source = "Quest", sourceDetail = "40 Splinters from Naxxramas" },
    
    -- ==================== MOLTEN CORE LOOT ====================
    -- Tier 1 Helms (Ragnaros)
    [16795] = { name = "Arcanist Crown", quality = 4, source = "Drop", sourceDetail = "Ragnaros (Molten Core)", class = "MAGE" },
    [16808] = { name = "Felheart Horns", quality = 4, source = "Drop", sourceDetail = "Garr (Molten Core)", class = "WARLOCK" },
    [16846] = { name = "Giantstalker's Helmet", quality = 4, source = "Drop", sourceDetail = "Ragnaros (Molten Core)", class = "HUNTER" },
    [16866] = { name = "Helm of Might", quality = 4, source = "Drop", sourceDetail = "Ragnaros (Molten Core)", class = "WARRIOR" },
    [16834] = { name = "Cenarion Helm", quality = 4, source = "Drop", sourceDetail = "Garr (Molten Core)", class = "DRUID" },
    [16813] = { name = "Circlet of Prophecy", quality = 4, source = "Drop", sourceDetail = "Garr (Molten Core)", class = "PRIEST" },
    [16821] = { name = "Nightslayer Cover", quality = 4, source = "Drop", sourceDetail = "Garr (Molten Core)", class = "ROGUE" },
    [16842] = { name = "Earthfury Helmet", quality = 4, source = "Drop", sourceDetail = "Garr (Molten Core)", class = "SHAMAN" },
    [16854] = { name = "Lawbringer Helm", quality = 4, source = "Drop", sourceDetail = "Garr (Molten Core)", class = "PALADIN" },
    
    -- Weapons
    [17076] = { name = "Bonereaver's Edge", quality = 4, source = "Drop", sourceDetail = "Ragnaros (Molten Core)" },
    [17104] = { name = "Spinal Reaper", quality = 4, source = "Drop", sourceDetail = "Ragnaros (Molten Core)" },
    [18816] = { name = "Perdition's Blade", quality = 4, source = "Drop", sourceDetail = "Ragnaros (Molten Core)" },
    [17106] = { name = "Malistar's Defender", quality = 4, source = "Drop", sourceDetail = "Ragnaros (Molten Core)" },
    [18817] = { name = "Crown of Destruction", quality = 4, source = "Drop", sourceDetail = "Ragnaros (Molten Core)" },
    [17063] = { name = "Band of Accuria", quality = 4, source = "Drop", sourceDetail = "Ragnaros (Molten Core)" },
    [19137] = { name = "Onslaught Girdle", quality = 4, source = "Drop", sourceDetail = "Ragnaros (Molten Core)" },
    [17102] = { name = "Cloak of the Shrouded Mists", quality = 4, source = "Drop", sourceDetail = "Ragnaros (Molten Core)" },
    [18814] = { name = "Choker of the Fire Lord", quality = 4, source = "Drop", sourceDetail = "Ragnaros (Molten Core)" },
    [17082] = { name = "Shard of the Flame", quality = 4, source = "Drop", sourceDetail = "Ragnaros (Molten Core)" },
    [17083] = { name = "Cloak of the Void", quality = 4, source = "Drop", sourceDetail = "Ragnaros (Molten Core)" },
    
    -- Eye of Sulfuras
    [17204] = { name = "Eye of Sulfuras", quality = 5, source = "Drop", sourceDetail = "Ragnaros (Molten Core)", dropRate = 3 },
    
    -- Bindings
    [18563] = { name = "Bindings of the Windseeker (Left)", quality = 5, source = "Drop", sourceDetail = "Garr (Molten Core)", dropRate = 3 },
    [18564] = { name = "Bindings of the Windseeker (Right)", quality = 5, source = "Drop", sourceDetail = "Baron Geddon (Molten Core)", dropRate = 3 },
    
    -- ==================== BLACKWING LAIR LOOT ====================
    -- Tier 2 Helms (Nefarian)
    [16914] = { name = "Netherwind Crown", quality = 4, source = "Drop", sourceDetail = "Nefarian (Blackwing Lair)", class = "MAGE" },
    [16929] = { name = "Nemesis Skullcap", quality = 4, source = "Drop", sourceDetail = "Nefarian (Blackwing Lair)", class = "WARLOCK" },
    [16939] = { name = "Dragonstalker's Helm", quality = 4, source = "Drop", sourceDetail = "Nefarian (Blackwing Lair)", class = "HUNTER" },
    [16963] = { name = "Helm of Wrath", quality = 4, source = "Drop", sourceDetail = "Nefarian (Blackwing Lair)", class = "WARRIOR" },
    [16900] = { name = "Stormrage Cover", quality = 4, source = "Drop", sourceDetail = "Nefarian (Blackwing Lair)", class = "DRUID" },
    [16921] = { name = "Halo of Transcendence", quality = 4, source = "Drop", sourceDetail = "Nefarian (Blackwing Lair)", class = "PRIEST" },
    [16908] = { name = "Bloodfang Hood", quality = 4, source = "Drop", sourceDetail = "Nefarian (Blackwing Lair)", class = "ROGUE" },
    [16947] = { name = "Helmet of Ten Storms", quality = 4, source = "Drop", sourceDetail = "Nefarian (Blackwing Lair)", class = "SHAMAN" },
    [16955] = { name = "Judgement Crown", quality = 4, source = "Drop", sourceDetail = "Nefarian (Blackwing Lair)", class = "PALADIN" },
    
    -- Weapons
    [19364] = { name = "Ashkandi, Greatsword of the Brotherhood", quality = 4, source = "Drop", sourceDetail = "Nefarian (Blackwing Lair)" },
    [19363] = { name = "Crul'shorukh, Edge of Chaos", quality = 4, source = "Drop", sourceDetail = "Nefarian (Blackwing Lair)" },
    [19361] = { name = "Ashjre'thul, Crossbow of Smiting", quality = 4, source = "Drop", sourceDetail = "Chromaggus (Blackwing Lair)" },
    [19360] = { name = "Lok'amir il Romathis", quality = 4, source = "Drop", sourceDetail = "Chromaggus (Blackwing Lair)" },
    [19375] = { name = "Mish'undare, Circlet of the Mind Flayer", quality = 4, source = "Drop", sourceDetail = "Nefarian (Blackwing Lair)" },
    [19377] = { name = "Prestor's Talisman of Connivery", quality = 4, source = "Drop", sourceDetail = "Nefarian (Blackwing Lair)" },
    [19378] = { name = "Cloak of the Brood Lord", quality = 4, source = "Drop", sourceDetail = "Nefarian (Blackwing Lair)" },
    [19002] = { name = "Head of Nefarian", quality = 4, source = "Drop", sourceDetail = "Nefarian (Blackwing Lair)" },
    
    -- Chromatic Boots
    [19387] = { name = "Chromatic Boots", quality = 4, source = "Drop", sourceDetail = "Chromaggus (Blackwing Lair)" },
    [19385] = { name = "Empowered Leggings", quality = 4, source = "Drop", sourceDetail = "Chromaggus (Blackwing Lair)" },
    [19388] = { name = "Angelista's Grasp", quality = 4, source = "Drop", sourceDetail = "Chromaggus (Blackwing Lair)" },
    
    -- ==================== ONYXIA'S LAIR ====================
    [18422] = { name = "Head of Onyxia", quality = 4, source = "Drop", sourceDetail = "Onyxia (Onyxia's Lair)" },
    [18705] = { name = "Mature Black Dragon Sinew", quality = 4, source = "Drop", sourceDetail = "Onyxia (Onyxia's Lair)" },
    [18423] = { name = "Head of Onyxia", quality = 4, source = "Drop", sourceDetail = "Onyxia (Onyxia's Lair)" },
    [17078] = { name = "Sapphiron Drape", quality = 4, source = "Drop", sourceDetail = "Onyxia (Onyxia's Lair)" },
    [18205] = { name = "Eskhandar's Collar", quality = 4, source = "Drop", sourceDetail = "Onyxia (Onyxia's Lair)" },
    [17068] = { name = "Deathbringer", quality = 4, source = "Drop", sourceDetail = "Onyxia (Onyxia's Lair)" },
    [17075] = { name = "Vis'kag the Bloodletter", quality = 4, source = "Drop", sourceDetail = "Onyxia (Onyxia's Lair)" },
    [18813] = { name = "Ring of Binding", quality = 4, source = "Drop", sourceDetail = "Onyxia (Onyxia's Lair)" },
    
    -- ==================== ZUL'GURUB LOOT ====================
    [19854] = { name = "Zin'rokh, Destroyer of Worlds", quality = 4, source = "Drop", sourceDetail = "Hakkar (Zul'Gurub)" },
    [19852] = { name = "Ancient Hakkari Manslayer", quality = 4, source = "Drop", sourceDetail = "Hakkar (Zul'Gurub)" },
    [19864] = { name = "Bloodcaller", quality = 4, source = "Drop", sourceDetail = "Hakkar (Zul'Gurub)" },
    [19865] = { name = "Warblade of the Hakkari (MH)", quality = 4, source = "Drop", sourceDetail = "Hakkar (Zul'Gurub)" },
    [19866] = { name = "Warblade of the Hakkari (OH)", quality = 4, source = "Drop", sourceDetail = "Hakkar (Zul'Gurub)" },
    [19857] = { name = "Cloak of Consumption", quality = 4, source = "Drop", sourceDetail = "Hakkar (Zul'Gurub)" },
    [19876] = { name = "Soul Corrupter's Necklace", quality = 4, source = "Drop", sourceDetail = "Hakkar (Zul'Gurub)" },
    [19856] = { name = "The Eye of Hakkar", quality = 4, source = "Drop", sourceDetail = "Hakkar (Zul'Gurub)" },
    
    -- Mount drops
    [19872] = { name = "Swift Zulian Tiger", quality = 4, source = "Drop", sourceDetail = "High Priest Thekal (Zul'Gurub)", dropRate = 1 },
    [19902] = { name = "Swift Razzashi Raptor", quality = 4, source = "Drop", sourceDetail = "Bloodlord Mandokir (Zul'Gurub)", dropRate = 1 },
    
    -- ==================== STRATHOLME LOOT ====================
    [13505] = { name = "Runeblade of Baron Rivendare", quality = 4, source = "Drop", sourceDetail = "Baron Rivendare (Stratholme)" },
    [13335] = { name = "Deathcharger's Reins", quality = 4, source = "Drop", sourceDetail = "Baron Rivendare (Stratholme)", dropRate = 0.02 },
    [18720] = { name = "Shroud of the Nathrezim", quality = 4, source = "Drop", sourceDetail = "Balnazzar (Stratholme)" },
    [18727] = { name = "Crimson Felt Hat", quality = 3, source = "Drop", sourceDetail = "Cannon Master Willey (Stratholme)" },
    [18730] = { name = "Shadowy Laced Handwraps", quality = 3, source = "Drop", sourceDetail = "Baron Rivendare (Stratholme)" },
    [18722] = { name = "Death Grips", quality = 3, source = "Drop", sourceDetail = "Baroness Anastari (Stratholme)" },
    
    -- ==================== SCHOLOMANCE LOOT ====================
    [14340] = { name = "Freezing Lich Robes", quality = 3, source = "Drop", sourceDetail = "Ras Frostwhisper (Scholomance)" },
    [14633] = { name = "Bonecreeper Stylus", quality = 3, source = "Drop", sourceDetail = "Darkmaster Gandling (Scholomance)" },
    [13523] = { name = "Blood of Innocents", quality = 3, source = "Drop", sourceDetail = "Darkmaster Gandling (Scholomance)" },
    [13531] = { name = "Krastinov's Bag of Horrors", quality = 3, source = "Drop", sourceDetail = "Doctor Theolen Krastinov (Scholomance)" },
    
    -- ==================== DIRE MAUL LOOT ====================
    [18465] = { name = "Royal Seal of Eldre'Thalas", quality = 4, source = "Drop", sourceDetail = "King Gordok (Dire Maul North)" },
    [18469] = { name = "Royal Scepter of Vek'lor", quality = 4, source = "Drop", sourceDetail = "Prince Tortheldrin (Dire Maul West)" },
    [18473] = { name = "Tarnished Elven Ring", quality = 4, source = "Drop", sourceDetail = "Alzzin the Wildshaper (Dire Maul East)" },
    
    -- ==================== UPPER BLACKROCK SPIRE ====================
    [12651] = { name = "Blackblade of Shahram", quality = 4, source = "Drop", sourceDetail = "General Drakkisath (UBRS)" },
    [22253] = { name = "Tome of Fiery Arcana", quality = 4, source = "Drop", sourceDetail = "General Drakkisath (UBRS)" },
    [12602] = { name = "Draconian Deflector", quality = 3, source = "Drop", sourceDetail = "General Drakkisath (UBRS)" },
    [12589] = { name = "Dustfeather Sash", quality = 3, source = "Drop", sourceDetail = "Solakar Flamewreath (UBRS)" },
    [12590] = { name = "Felstriker", quality = 4, source = "Drop", sourceDetail = "Warchief Rend Blackhand (UBRS)" },
    [12592] = { name = "Blackhand's Dagger", quality = 3, source = "Drop", sourceDetail = "Warchief Rend Blackhand (UBRS)" },
    
    -- ==================== LOWER BLACKROCK SPIRE ====================
    [13143] = { name = "Mark of the Dragon Lord", quality = 4, source = "Drop", sourceDetail = "Overlord Wyrmthalak (LBRS)" },
    [13164] = { name = "Heart of the Scale", quality = 3, source = "Drop", sourceDetail = "Overlord Wyrmthalak (LBRS)" },
    [12608] = { name = "Scepter of Interminable Focus", quality = 3, source = "Drop", sourceDetail = "Shadow Hunter Vosh'gajin (LBRS)" },
    [12609] = { name = "Roughshod Pike", quality = 3, source = "Drop", sourceDetail = "Highlord Omokk (LBRS)" },
    
    -- ==================== BLACKROCK DEPTHS ====================
    [11684] = { name = "Ironfoe", quality = 4, source = "Drop", sourceDetail = "Emperor Dagran Thaurissan (BRD)", dropRate = 1 },
    [11685] = { name = "Shadowforge Bushmaster", quality = 3, source = "Drop", sourceDetail = "General Angerforge (BRD)" },
    [11662] = { name = "Blade of Reckoning", quality = 3, source = "Drop", sourceDetail = "Emperor Dagran Thaurissan (BRD)" },
    [11726] = { name = "Savage Gladiator Chain", quality = 3, source = "Drop", sourceDetail = "Ring of Law (BRD)" },
    [11702] = { name = "Graverot Cape", quality = 3, source = "Drop", sourceDetail = "Graverot (BRD)" },
    [11730] = { name = "Robes of the Royal Crown", quality = 3, source = "Drop", sourceDetail = "Princess Moira Bronzebeard (BRD)" },
    
    -- ==================== THE DEADMINES ====================
    [5191] = { name = "Cruel Barb", quality = 3, source = "Drop", sourceDetail = "Edwin VanCleef (Deadmines)" },
    [5192] = { name = "Thief's Blade", quality = 3, source = "Drop", sourceDetail = "Edwin VanCleef (Deadmines)" },
    [5193] = { name = "Cape of the Brotherhood", quality = 3, source = "Drop", sourceDetail = "Edwin VanCleef (Deadmines)" },
    [5194] = { name = "Taskmaster Axe", quality = 3, source = "Drop", sourceDetail = "Sneed's Shredder (Deadmines)" },
    [5195] = { name = "Gold-flecked Gloves", quality = 3, source = "Drop", sourceDetail = "Sneed's Shredder (Deadmines)" },
    [5196] = { name = "Smite's Reaver", quality = 3, source = "Drop", sourceDetail = "Mr. Smite (Deadmines)" },
    [5197] = { name = "Cookie's Tenderizer", quality = 3, source = "Drop", sourceDetail = "Cookie (Deadmines)" },
    [1937] = { name = "Buzz Saw", quality = 3, source = "Drop", sourceDetail = "Sneed (Deadmines)" },
    
    -- ==================== SHADOWFANG KEEP ====================
    [6220] = { name = "Meteor Shard", quality = 3, source = "Drop", sourceDetail = "Arugal (Shadowfang Keep)" },
    [6318] = { name = "Odo's Ley Staff", quality = 3, source = "Drop", sourceDetail = "Odo the Blindwatcher (Shadowfang Keep)" },
    [6321] = { name = "Silverlaine's Family Seal", quality = 3, source = "Drop", sourceDetail = "Baron Silverlaine (Shadowfang Keep)" },
    [6314] = { name = "Wolfmaster Cape", quality = 3, source = "Drop", sourceDetail = "Wolf Master Nandos (Shadowfang Keep)" },
    [6323] = { name = "Baron's Scepter", quality = 3, source = "Drop", sourceDetail = "Baron Silverlaine (Shadowfang Keep)" },
    [6324] = { name = "Robes of Arugal", quality = 3, source = "Drop", sourceDetail = "Arugal (Shadowfang Keep)" },
    
    -- ==================== SCARLET MONASTERY ====================
    [7719] = { name = "Whitemane's Chapeau", quality = 3, source = "Drop", sourceDetail = "High Inquisitor Whitemane (SM Cathedral)" },
    [7720] = { name = "Triune Amulet", quality = 3, source = "Drop", sourceDetail = "High Inquisitor Whitemane (SM Cathedral)" },
    [7721] = { name = "Hand of Righteousness", quality = 3, source = "Drop", sourceDetail = "High Inquisitor Whitemane (SM Cathedral)" },
    [7723] = { name = "Mograine's Might", quality = 3, source = "Drop", sourceDetail = "Scarlet Commander Mograine (SM Cathedral)" },
    [7724] = { name = "Gauntlets of Divinity", quality = 3, source = "Drop", sourceDetail = "Scarlet Commander Mograine (SM Cathedral)" },
    [7726] = { name = "Aegis of the Scarlet Commander", quality = 3, source = "Drop", sourceDetail = "Scarlet Commander Mograine (SM Cathedral)" },
    [7727] = { name = "Watchman Pauldrons", quality = 3, source = "Drop", sourceDetail = "Herod (SM Armory)" },
    [7729] = { name = "Herod's Shoulder", quality = 3, source = "Drop", sourceDetail = "Herod (SM Armory)" },
    [7730] = { name = "Cobalt Crusher", quality = 3, source = "Drop", sourceDetail = "Herod (SM Armory)" },
    [7731] = { name = "Ghostshard Talisman", quality = 3, source = "Drop", sourceDetail = "Bloodmage Thalnos (SM Graveyard)" },
    
    -- ==================== WORLD BOSS DROPS ====================
    [18546] = { name = "Infernal Headcage", quality = 4, source = "Drop", sourceDetail = "Lord Kazzak (Blasted Lands)" },
    [17111] = { name = "Blazefury Medallion", quality = 4, source = "Drop", sourceDetail = "Lord Kazzak (Blasted Lands)" },
    [17113] = { name = "Amberseal Keeper", quality = 4, source = "Drop", sourceDetail = "Lord Kazzak (Blasted Lands)" },
    [18204] = { name = "Eskhandar's Pelt", quality = 4, source = "Drop", sourceDetail = "Azuregos (Azshara)" },
    [18202] = { name = "Eskhandar's Left Claw", quality = 4, source = "Drop", sourceDetail = "Azuregos (Azshara)" },
    [17070] = { name = "Fang of the Mystics", quality = 4, source = "Drop", sourceDetail = "Azuregos (Azshara)" },
    [18541] = { name = "Puissant Cape", quality = 4, source = "Drop", sourceDetail = "Azuregos (Azshara)" },
    [18208] = { name = "Dragonheart Necklace", quality = 4, source = "Drop", sourceDetail = "Dragons of Nightmare" },
    [20644] = { name = "Nightmare Engulfed Object", quality = 4, source = "Drop", sourceDetail = "Dragons of Nightmare" },
    
    -- ==================== AHN'QIRAJ LOOT ====================
    [21126] = { name = "Death's Sting", quality = 4, source = "Drop", sourceDetail = "C'Thun (Temple of Ahn'Qiraj)" },
    [21134] = { name = "Dark Edge of Insanity", quality = 4, source = "Drop", sourceDetail = "C'Thun (Temple of Ahn'Qiraj)" },
    [21232] = { name = "Imperial Qiraji Armaments", quality = 4, source = "Drop", sourceDetail = "Temple of Ahn'Qiraj Trash" },
    [21237] = { name = "Imperial Qiraji Regalia", quality = 4, source = "Drop", sourceDetail = "Temple of Ahn'Qiraj Trash" },
    [20926] = { name = "Vek'nilash's Circlet", quality = 4, source = "Drop", sourceDetail = "Twin Emperors (Temple of Ahn'Qiraj)" },
    [20927] = { name = "Ouro's Intact Hide", quality = 4, source = "Drop", sourceDetail = "Ouro (Temple of Ahn'Qiraj)" },
    [20928] = { name = "Carapace of the Old God", quality = 4, source = "Drop", sourceDetail = "C'Thun (Temple of Ahn'Qiraj)" },
    [20929] = { name = "Carapace of the Old God", quality = 4, source = "Drop", sourceDetail = "C'Thun (Temple of Ahn'Qiraj)" },
    [20930] = { name = "Vek'lor's Diadem", quality = 4, source = "Drop", sourceDetail = "Twin Emperors (Temple of Ahn'Qiraj)" },
    [20932] = { name = "Skin of the Great Sandworm", quality = 4, source = "Drop", sourceDetail = "Ouro (Temple of Ahn'Qiraj)" },
    [20933] = { name = "Husk of the Old God", quality = 4, source = "Drop", sourceDetail = "C'Thun (Temple of Ahn'Qiraj)" },
    
    -- ==================== NAXXRAMAS LOOT ====================
    [22691] = { name = "Corrupted Ashbringer", quality = 4, source = "Drop", sourceDetail = "The Four Horsemen (Naxxramas)" },
    [23054] = { name = "Gressil, Dawn of Ruin", quality = 4, source = "Drop", sourceDetail = "Kel'Thuzad (Naxxramas)" },
    [23056] = { name = "Hammer of the Twisting Nether", quality = 4, source = "Drop", sourceDetail = "Kel'Thuzad (Naxxramas)" },
    [23577] = { name = "The Hungering Cold", quality = 4, source = "Drop", sourceDetail = "Kel'Thuzad (Naxxramas)" },
    [22798] = { name = "Might of Menethil", quality = 4, source = "Drop", sourceDetail = "Kel'Thuzad (Naxxramas)" },
    [22799] = { name = "Soulseeker", quality = 4, source = "Drop", sourceDetail = "Kel'Thuzad (Naxxramas)" },
    [22802] = { name = "Kingsfall", quality = 4, source = "Drop", sourceDetail = "Kel'Thuzad (Naxxramas)" },
    [22812] = { name = "Nerubian Slavemaker", quality = 4, source = "Drop", sourceDetail = "Kel'Thuzad (Naxxramas)" },
    [22520] = { name = "The Phylactery of Kel'Thuzad", quality = 4, source = "Drop", sourceDetail = "Kel'Thuzad (Naxxramas)" },
    
    -- Tier 3 Tokens
    [22349] = { name = "Desecrated Breastplate", quality = 4, source = "Drop", sourceDetail = "The Four Horsemen (Naxxramas)" },
    [22350] = { name = "Desecrated Tunic", quality = 4, source = "Drop", sourceDetail = "The Four Horsemen (Naxxramas)" },
    [22351] = { name = "Desecrated Robe", quality = 4, source = "Drop", sourceDetail = "The Four Horsemen (Naxxramas)" },
}

--------------------------------------------------------------------------------
-- Vendor Database (NPC -> items sold)
--------------------------------------------------------------------------------
DB.Vendors = {
    -- ==================== MOUNT VENDORS ====================
    ["Katie Hunter"] = {
        location = "Eastvale Logging Camp, Elwynn Forest",
        coords = { x = 84, y = 65 },
        faction = "Alliance",
        items = {
            { id = 2411, name = "Black Stallion Bridle", cost = "80g" },
            { id = 2414, name = "Pinto Bridle", cost = "80g" },
            { id = 5656, name = "Brown Horse Bridle", cost = "80g" },
            { id = 5655, name = "Chestnut Mare Bridle", cost = "80g" },
            { id = 18778, name = "Swift White Steed", cost = "1000g" },
            { id = 18776, name = "Swift Palomino", cost = "1000g" },
            { id = 18777, name = "Swift Brown Steed", cost = "1000g" },
        },
    },
    ["Ogunaro Wolfrunner"] = {
        location = "Valley of Honor, Orgrimmar",
        coords = { x = 69, y = 12 },
        faction = "Horde",
        items = {
            { id = 5668, name = "Brown Wolf", cost = "80g" },
            { id = 5665, name = "Dire Wolf", cost = "80g" },
            { id = 5667, name = "Timber Wolf", cost = "80g" },
            { id = 18796, name = "Swift Brown Wolf", cost = "1000g" },
            { id = 18797, name = "Swift Timber Wolf", cost = "1000g" },
            { id = 18798, name = "Swift Gray Wolf", cost = "1000g" },
        },
    },
    ["Zjolnir"] = {
        location = "Sen'jin Village, Durotar",
        coords = { x = 55, y = 75 },
        faction = "Horde",
        items = {
            { id = 8586, name = "Whistle of the Emerald Raptor", cost = "80g" },
            { id = 8591, name = "Whistle of the Turquoise Raptor", cost = "80g" },
            { id = 8592, name = "Whistle of the Violet Raptor", cost = "80g" },
            { id = 18788, name = "Swift Blue Raptor", cost = "1000g" },
            { id = 18789, name = "Swift Olive Raptor", cost = "1000g" },
            { id = 18790, name = "Swift Orange Raptor", cost = "1000g" },
        },
    },
    
    -- ==================== RECIPE VENDORS ====================
    ["Shandrina"] = {
        location = "Auberdine, Darkshore",
        coords = { x = 37, y = 40 },
        faction = "Alliance",
        items = {
            { id = 5489, name = "Recipe: Lean Venison", cost = "40s" },
            { id = 5528, name = "Recipe: Crispy Lizard Tail", cost = "40s" },
        },
    },
    ["Wulan"] = {
        location = "Valley of Spirits, Orgrimmar",
        coords = { x = 34, y = 67 },
        faction = "Horde",
        items = {
            { id = 5487, name = "Recipe: Dig Rat Stew", cost = "40s" },
            { id = 5486, name = "Recipe: Fillet of Frenzy", cost = "40s" },
        },
    },
    ["Magnus Frostwake"] = {
        location = "Caer Darrow, Western Plaguelands",
        coords = { x = 67, y = 73 },
        faction = "Both",
        items = {
            { id = 13482, name = "Recipe: Transmute Air to Fire", cost = "1g" },
            { id = 13483, name = "Recipe: Transmute Fire to Earth", cost = "1g" },
            { id = 13484, name = "Recipe: Transmute Earth to Water", cost = "1g" },
            { id = 13485, name = "Recipe: Transmute Water to Air", cost = "1g" },
        },
    },
    ["Lorelae Wintersong"] = {
        location = "Nighthaven, Moonglade",
        coords = { x = 48, y = 40 },
        faction = "Both",
        items = {
            { id = 20753, name = "Pattern: Cenarion Herb Bag", cost = "1g 20s" },
            { id = 22310, name = "Pattern: Cenarion Reservist's Legplates", cost = "8g" },
        },
    },
    
    -- ==================== PVP VENDORS ====================
    ["Lieutenant Karter"] = {
        location = "Champions' Hall, Stormwind",
        coords = { x = 75, y = 67 },
        faction = "Alliance",
        items = {
            { id = 18854, name = "Insignia of the Alliance", cost = "Honor" },
            { id = 18862, name = "Grand Marshal's Claymore", cost = "Honor, Rank 14" },
            { id = 18867, name = "Grand Marshal's Maul", cost = "Honor, Rank 14" },
            { id = 18869, name = "Grand Marshal's Punisher", cost = "Honor, Rank 14" },
            { id = 18873, name = "Grand Marshal's Stave", cost = "Honor, Rank 14" },
        },
    },
    ["Sergeant Thunderhorn"] = {
        location = "Hall of Legends, Orgrimmar",
        coords = { x = 79, y = 30 },
        faction = "Horde",
        items = {
            { id = 18845, name = "Insignia of the Horde", cost = "Honor" },
            { id = 18829, name = "High Warlord's Blade", cost = "Honor, Rank 14" },
            { id = 18834, name = "High Warlord's Pulverizer", cost = "Honor, Rank 14" },
            { id = 18835, name = "High Warlord's Pig Sticker", cost = "Honor, Rank 14" },
            { id = 18860, name = "High Warlord's Battle Axe", cost = "Honor, Rank 14" },
        },
    },
    
    -- ==================== REPUTATION VENDORS ====================
    ["Meilosh"] = {
        location = "Timbermaw Hold, Felwood",
        coords = { x = 64, y = 10 },
        faction = "Both",
        reputation = "Timbermaw Hold",
        items = {
            { id = 13484, name = "Formula: Enchant Weapon - Agility", rep = "Friendly", cost = "1g 10s" },
            { id = 20253, name = "Pattern: Warbear Harness", rep = "Honored", cost = "1g 30s" },
            { id = 20254, name = "Pattern: Warbear Woolies", rep = "Honored", cost = "1g 30s" },
            { id = 22392, name = "Formula: Enchant 2H Weapon - Agility", rep = "Revered", cost = "2g" },
        },
    },
    ["Lokhtos Darkbargainer"] = {
        location = "Grim Guzzler, Blackrock Depths",
        coords = { x = 0, y = 0 },
        faction = "Both",
        reputation = "Thorium Brotherhood",
        items = {
            { id = 18628, name = "Plans: Demon Forged Breastplate", rep = "Exalted", cost = "10g" },
            { id = 18629, name = "Plans: Fiery Chain Girdle", rep = "Exalted", cost = "10g" },
            { id = 18592, name = "Plans: Sulfuron Hammer", rep = "Exalted", cost = "10g" },
        },
    },
    ["Quartermaster Endarin"] = {
        location = "Cenarion Hold, Silithus",
        coords = { x = 52, y = 39 },
        faction = "Both",
        reputation = "Cenarion Circle",
        items = {
            { id = 22772, name = "Pattern: Sylvan Shoulders", rep = "Exalted", cost = "5g" },
            { id = 22769, name = "Pattern: Bramblewood Helm", rep = "Revered", cost = "4g" },
            { id = 22214, name = "Plans: Heavy Obsidian Belt", rep = "Friendly", cost = "2g" },
        },
    },
}

--------------------------------------------------------------------------------
-- Quest Reward Database (quest name -> rewards)
--------------------------------------------------------------------------------
DB.QuestRewards = {
    ["The Legend of Stalvan"] = {
        zone = "Duskwood",
        rewards = {
            { id = 3400, name = "Lucine Longsword" },
            { id = 6194, name = "Barov Peasant Caller" },
        },
    },
    ["A Donation of Wool"] = {
        zone = "Various",
        reputation = "Varies",
        rewards = {},
    },
    ["The Lich, Ras Frostwhisper"] = {
        zone = "Scholomance",
        rewards = {
            { id = 14340, name = "Freezing Lich Robes" },
            { id = 14541, name = "Barov Peasant Caller" },
        },
    },
    ["Seal of Ascension"] = {
        zone = "Upper Blackrock Spire",
        rewards = {
            { id = 12344, name = "Seal of Ascension" },
        },
    },
    ["The Only Prescription"] = {
        zone = "Upper Blackrock Spire",
        rewards = {
            { id = 12352, name = "Draconic Infused Emblem" },
            { id = 13966, name = "Mark of Tyranny" },
            { id = 13968, name = "Eye of the Beast" },
        },
    },
    ["General Drakkisath's Demise"] = {
        zone = "Upper Blackrock Spire",
        rewards = {
            { id = 13965, name = "Mark of Tyranny" },
            { id = 13966, name = "Blackhand's Breadth" },
            { id = 13968, name = "Eye of the Beast" },
        },
    },
    ["In Dreams"] = {
        zone = "Western Plaguelands",
        rewards = {
            { id = 15411, name = "Mark of Fordring" },
        },
    },
    ["Corruption of Earth and Seed"] = {
        zone = "Maraudon",
        rewards = {
            { id = 17738, name = "Thrash Blade" },
            { id = 17739, name = "Resurgence Rod" },
            { id = 17740, name = "Mages' Cudgel of Intellect" },
        },
    },
    ["The Princess Saved?"] = {
        zone = "Blackrock Depths",
        rewards = {},
    },
}

--------------------------------------------------------------------------------
-- Loot Tables by Boss (boss name -> loot list)
-- This enables the nested dungeon->boss->loot view
--------------------------------------------------------------------------------
DB.BossLoot = {
    -- ==================== MOLTEN CORE ====================
    ["Ragnaros"] = {
        instance = "Molten Core",
        items = { 17182, 17204, 17076, 17104, 18816, 17106, 18817, 17063, 19137, 17102, 18814, 17082, 17083, 16795, 16846, 16866 },
    },
    ["Garr"] = {
        instance = "Molten Core",
        items = { 18563, 16808, 16834, 16813, 16821, 16842, 16854 },
    },
    ["Baron Geddon"] = {
        instance = "Molten Core",
        items = { 18564 },
    },
    ["Majordomo Executus"] = {
        instance = "Molten Core",
        items = {},
    },
    
    -- ==================== BLACKWING LAIR ====================
    ["Nefarian"] = {
        instance = "Blackwing Lair",
        items = { 19364, 19363, 19375, 19377, 19378, 19002, 16914, 16929, 16939, 16963, 16900, 16921, 16908, 16947, 16955 },
    },
    ["Chromaggus"] = {
        instance = "Blackwing Lair",
        items = { 19361, 19360, 19387, 19385, 19388 },
    },
    
    -- ==================== ONYXIA'S LAIR ====================
    ["Onyxia"] = {
        instance = "Onyxia's Lair",
        items = { 18422, 18705, 18423, 17078, 18205, 17068, 17075, 18813 },
    },
    
    -- ==================== ZUL'GURUB ====================
    ["Hakkar"] = {
        instance = "Zul'Gurub",
        items = { 19854, 19852, 19864, 19865, 19866, 19857, 19876, 19856 },
    },
    ["High Priest Thekal"] = {
        instance = "Zul'Gurub",
        items = { 19872 },
    },
    ["Bloodlord Mandokir"] = {
        instance = "Zul'Gurub",
        items = { 19902 },
    },
    
    -- ==================== STRATHOLME ====================
    ["Baron Rivendare"] = {
        instance = "Stratholme",
        items = { 13505, 13335, 18730 },
    },
    ["Balnazzar"] = {
        instance = "Stratholme",
        items = { 18720 },
    },
    ["Cannon Master Willey"] = {
        instance = "Stratholme",
        items = { 18727 },
    },
    ["Baroness Anastari"] = {
        instance = "Stratholme",
        items = { 18722 },
    },
    
    -- ==================== SCHOLOMANCE ====================
    ["Darkmaster Gandling"] = {
        instance = "Scholomance",
        items = { 14633, 13523 },
    },
    ["Ras Frostwhisper"] = {
        instance = "Scholomance",
        items = { 14340 },
    },
    ["Doctor Theolen Krastinov"] = {
        instance = "Scholomance",
        items = { 13531 },
    },
    
    -- ==================== UBRS ====================
    ["General Drakkisath"] = {
        instance = "Upper Blackrock Spire",
        items = { 12651, 22253, 12602 },
    },
    ["Warchief Rend Blackhand"] = {
        instance = "Upper Blackrock Spire",
        items = { 12590, 12592 },
    },
    ["Solakar Flamewreath"] = {
        instance = "Upper Blackrock Spire",
        items = { 12589 },
    },
    
    -- ==================== LBRS ====================
    ["Overlord Wyrmthalak"] = {
        instance = "Lower Blackrock Spire",
        items = { 13143, 13164 },
    },
    ["Shadow Hunter Vosh'gajin"] = {
        instance = "Lower Blackrock Spire",
        items = { 12608 },
    },
    ["Highlord Omokk"] = {
        instance = "Lower Blackrock Spire",
        items = { 12609 },
    },
    
    -- ==================== BRD ====================
    ["Emperor Dagran Thaurissan"] = {
        instance = "Blackrock Depths",
        items = { 11684, 11662 },
    },
    ["General Angerforge"] = {
        instance = "Blackrock Depths",
        items = { 11685 },
    },
    ["Princess Moira Bronzebeard"] = {
        instance = "Blackrock Depths",
        items = { 11730 },
    },
    
    -- ==================== DIRE MAUL ====================
    ["King Gordok"] = {
        instance = "Dire Maul",
        items = { 18465 },
    },
    ["Prince Tortheldrin"] = {
        instance = "Dire Maul",
        items = { 18469 },
    },
    ["Alzzin the Wildshaper"] = {
        instance = "Dire Maul",
        items = { 18473 },
    },
    
    -- ==================== DEADMINES ====================
    ["Edwin VanCleef"] = {
        instance = "The Deadmines",
        items = { 5191, 5192, 5193 },
    },
    ["Sneed's Shredder"] = {
        instance = "The Deadmines",
        items = { 5194, 5195 },
    },
    ["Sneed"] = {
        instance = "The Deadmines",
        items = { 1937 },
    },
    ["Mr. Smite"] = {
        instance = "The Deadmines",
        items = { 5196 },
    },
    ["Cookie"] = {
        instance = "The Deadmines",
        items = { 5197 },
    },
    
    -- ==================== SHADOWFANG KEEP ====================
    ["Archmage Arugal"] = {
        instance = "Shadowfang Keep",
        items = { 6220, 6324 },
    },
    ["Baron Silverlaine"] = {
        instance = "Shadowfang Keep",
        items = { 6321, 6323 },
    },
    ["Odo the Blindwatcher"] = {
        instance = "Shadowfang Keep",
        items = { 6318 },
    },
    ["Wolf Master Nandos"] = {
        instance = "Shadowfang Keep",
        items = { 6314 },
    },
    
    -- ==================== SCARLET MONASTERY ====================
    ["High Inquisitor Whitemane"] = {
        instance = "Scarlet Monastery",
        items = { 7719, 7720, 7721 },
    },
    ["Scarlet Commander Mograine"] = {
        instance = "Scarlet Monastery",
        items = { 7723, 7724, 7726 },
    },
    ["Herod"] = {
        instance = "Scarlet Monastery",
        items = { 7727, 7729, 7730 },
    },
    ["Bloodmage Thalnos"] = {
        instance = "Scarlet Monastery",
        items = { 7731 },
    },
    
    -- ==================== NAXXRAMAS ====================
    ["Kel'Thuzad"] = {
        instance = "Naxxramas",
        items = { 23054, 23056, 23577, 22798, 22799, 22802, 22812, 22520 },
    },
    ["The Four Horsemen"] = {
        instance = "Naxxramas",
        items = { 22691, 22349, 22350, 22351 },
    },
    
    -- ==================== WORLD BOSSES ====================
    ["Lord Kazzak"] = {
        instance = "World Boss",
        items = { 18546, 17111, 17113 },
    },
    ["Azuregos"] = {
        instance = "World Boss",
        items = { 18204, 18202, 17070, 18541 },
    },
}

--------------------------------------------------------------------------------
-- Rare Spawn Locations
--------------------------------------------------------------------------------
DB.RareSpawns = {
    ["Teremus the Devourer"] = { zone = "Blasted Lands", level = 60, coords = { x = 44, y = 33 } },
    ["Azuregos"] = { zone = "Azshara", level = 60, coords = { x = 47, y = 83 } },
    ["Deathmaw"] = { zone = "Burning Steppes", level = 55, coords = { x = 0, y = 0 } },
    ["Hematos"] = { zone = "Burning Steppes", level = 58, coords = { x = 0, y = 0 } },
    ["Volchan"] = { zone = "Burning Steppes", level = 57, coords = { x = 39, y = 57 } },
    ["Prince Nazjak"] = { zone = "Arathi Highlands", level = 40, coords = { x = 23, y = 84 } },
    ["Mist Howler"] = { zone = "Ashenvale", level = 23, coords = { x = 0, y = 0 } },
    ["Ursol'lok"] = { zone = "Ashenvale", level = 31, coords = { x = 42, y = 67 } },
    ["Oakpaw"] = { zone = "Ashenvale", level = 23, coords = { x = 0, y = 0 } },
    ["Ragepaw"] = { zone = "Felwood", level = 53, coords = { x = 0, y = 0 } },
    ["Mongress"] = { zone = "Felwood", level = 52, coords = { x = 0, y = 0 } },
}

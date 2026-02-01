--------------------------------------------------------------------------------
--                        V A N I L L A   T H E   T H I N G S                 --
--                   Comprehensive Loot Database (1.12.1)                     --
--------------------------------------------------------------------------------
-- Contains loot tables, vendor data, quest rewards for vanilla WoW
-- Item quality: 0=Poor, 1=Common, 2=Uncommon, 3=Rare, 4=Epic, 5=Legendary
--------------------------------------------------------------------------------

local DB = VanillaTheThings_DB

-- DEBUG: Track file loading
if DEFAULT_CHAT_FRAME then
    DEFAULT_CHAT_FRAME:AddMessage("|cFF00FF00[VTT] LootDatabase.lua START loading...|r")
end

--------------------------------------------------------------------------------
-- Item Database (itemID -> item info)
--------------------------------------------------------------------------------
DB.Items = {
    -- ============================================================================
    --                           LEGENDARY ITEMS
    -- ============================================================================
    [17182] = { name = "Sulfuras, Hand of Ragnaros", quality = 5, source = "Crafted", sourceDetail = "Ragnaros (Molten Core) + Crafting" },
    [19019] = { name = "Thunderfury, Blessed Blade of the Windseeker", quality = 5, source = "Quest", sourceDetail = "Bindings from Garr & Geddon (Molten Core)" },
    [21176] = { name = "Black Qiraji Resonating Crystal", quality = 5, source = "Quest", sourceDetail = "AQ War Effort - First to ring gong" },
    [22589] = { name = "Atiesh, Greatstaff of the Guardian", quality = 5, source = "Quest", sourceDetail = "40 Splinters from Naxxramas" },
    [22630] = { name = "Atiesh, Greatstaff of the Guardian", quality = 5, source = "Quest", sourceDetail = "40 Splinters from Naxxramas (Mage)" },
    [22631] = { name = "Atiesh, Greatstaff of the Guardian", quality = 5, source = "Quest", sourceDetail = "40 Splinters from Naxxramas (Warlock)" },
    [22632] = { name = "Atiesh, Greatstaff of the Guardian", quality = 5, source = "Quest", sourceDetail = "40 Splinters from Naxxramas (Priest)" },
    
    -- ============================================================================
    --                          MOLTEN CORE
    -- ============================================================================
    -- Tier 1: Arcanist (Mage)
    [16795] = { name = "Arcanist Crown", quality = 4, source = "Drop", sourceDetail = "Ragnaros (Molten Core)", class = "MAGE" },
    [16796] = { name = "Arcanist Leggings", quality = 4, source = "Drop", sourceDetail = "Magmadar (Molten Core)", class = "MAGE" },
    [16797] = { name = "Arcanist Mantle", quality = 4, source = "Drop", sourceDetail = "Baron Geddon (Molten Core)", class = "MAGE" },
    [16798] = { name = "Arcanist Robes", quality = 4, source = "Drop", sourceDetail = "Golemagg (Molten Core)", class = "MAGE" },
    [16799] = { name = "Arcanist Belt", quality = 4, source = "Drop", sourceDetail = "MC Trash (Molten Core)", class = "MAGE" },
    [16800] = { name = "Arcanist Bindings", quality = 4, source = "Drop", sourceDetail = "MC Trash (Molten Core)", class = "MAGE" },
    [16801] = { name = "Arcanist Gloves", quality = 4, source = "Drop", sourceDetail = "Shazzrah (Molten Core)", class = "MAGE" },
    [16802] = { name = "Arcanist Boots", quality = 4, source = "Drop", sourceDetail = "Lucifron (Molten Core)", class = "MAGE" },
    
    -- Tier 1: Felheart (Warlock)
    [16803] = { name = "Felheart Belt", quality = 4, source = "Drop", sourceDetail = "MC Trash (Molten Core)", class = "WARLOCK" },
    [16804] = { name = "Felheart Bracers", quality = 4, source = "Drop", sourceDetail = "MC Trash (Molten Core)", class = "WARLOCK" },
    [16805] = { name = "Felheart Gloves", quality = 4, source = "Drop", sourceDetail = "Lucifron (Molten Core)", class = "WARLOCK" },
    [16806] = { name = "Felheart Slippers", quality = 4, source = "Drop", sourceDetail = "Shazzrah (Molten Core)", class = "WARLOCK" },
    [16807] = { name = "Felheart Shoulder Pads", quality = 4, source = "Drop", sourceDetail = "Baron Geddon (Molten Core)", class = "WARLOCK" },
    [16808] = { name = "Felheart Horns", quality = 4, source = "Drop", sourceDetail = "Garr (Molten Core)", class = "WARLOCK" },
    [16809] = { name = "Felheart Robes", quality = 4, source = "Drop", sourceDetail = "Golemagg (Molten Core)", class = "WARLOCK" },
    [16810] = { name = "Felheart Pants", quality = 4, source = "Drop", sourceDetail = "Magmadar (Molten Core)", class = "WARLOCK" },
    
    -- Tier 1: Prophecy (Priest)
    [16811] = { name = "Boots of Prophecy", quality = 4, source = "Drop", sourceDetail = "Shazzrah (Molten Core)", class = "PRIEST" },
    [16812] = { name = "Gloves of Prophecy", quality = 4, source = "Drop", sourceDetail = "Gehennas (Molten Core)", class = "PRIEST" },
    [16813] = { name = "Circlet of Prophecy", quality = 4, source = "Drop", sourceDetail = "Garr (Molten Core)", class = "PRIEST" },
    [16814] = { name = "Pants of Prophecy", quality = 4, source = "Drop", sourceDetail = "Magmadar (Molten Core)", class = "PRIEST" },
    [16815] = { name = "Robes of Prophecy", quality = 4, source = "Drop", sourceDetail = "Golemagg (Molten Core)", class = "PRIEST" },
    [16816] = { name = "Mantle of Prophecy", quality = 4, source = "Drop", sourceDetail = "Sulfuron (Molten Core)", class = "PRIEST" },
    [16817] = { name = "Girdle of Prophecy", quality = 4, source = "Drop", sourceDetail = "MC Trash (Molten Core)", class = "PRIEST" },
    [16819] = { name = "Vambraces of Prophecy", quality = 4, source = "Drop", sourceDetail = "MC Trash (Molten Core)", class = "PRIEST" },
    
    -- Tier 1: Nightslayer (Rogue)
    [16820] = { name = "Nightslayer Chestpiece", quality = 4, source = "Drop", sourceDetail = "Golemagg (Molten Core)", class = "ROGUE" },
    [16821] = { name = "Nightslayer Cover", quality = 4, source = "Drop", sourceDetail = "Garr (Molten Core)", class = "ROGUE" },
    [16822] = { name = "Nightslayer Pants", quality = 4, source = "Drop", sourceDetail = "Magmadar (Molten Core)", class = "ROGUE" },
    [16823] = { name = "Nightslayer Shoulder Pads", quality = 4, source = "Drop", sourceDetail = "Sulfuron (Molten Core)", class = "ROGUE" },
    [16824] = { name = "Nightslayer Bracelets", quality = 4, source = "Drop", sourceDetail = "MC Trash (Molten Core)", class = "ROGUE" },
    [16825] = { name = "Nightslayer Belt", quality = 4, source = "Drop", sourceDetail = "MC Trash (Molten Core)", class = "ROGUE" },
    [16826] = { name = "Nightslayer Gloves", quality = 4, source = "Drop", sourceDetail = "Gehennas (Molten Core)", class = "ROGUE" },
    [16827] = { name = "Nightslayer Boots", quality = 4, source = "Drop", sourceDetail = "Shazzrah (Molten Core)", class = "ROGUE" },
    
    -- Tier 1: Cenarion (Druid)
    [16828] = { name = "Cenarion Belt", quality = 4, source = "Drop", sourceDetail = "MC Trash (Molten Core)", class = "DRUID" },
    [16829] = { name = "Cenarion Boots", quality = 4, source = "Drop", sourceDetail = "Lucifron (Molten Core)", class = "DRUID" },
    [16830] = { name = "Cenarion Bracers", quality = 4, source = "Drop", sourceDetail = "MC Trash (Molten Core)", class = "DRUID" },
    [16831] = { name = "Cenarion Gloves", quality = 4, source = "Drop", sourceDetail = "Shazzrah (Molten Core)", class = "DRUID" },
    [16833] = { name = "Cenarion Leggings", quality = 4, source = "Drop", sourceDetail = "Magmadar (Molten Core)", class = "DRUID" },
    [16834] = { name = "Cenarion Helm", quality = 4, source = "Drop", sourceDetail = "Garr (Molten Core)", class = "DRUID" },
    [16835] = { name = "Cenarion Spaulders", quality = 4, source = "Drop", sourceDetail = "Baron Geddon (Molten Core)", class = "DRUID" },
    [16836] = { name = "Cenarion Vestments", quality = 4, source = "Drop", sourceDetail = "Golemagg (Molten Core)", class = "DRUID" },
    
    -- Tier 1: Earthfury (Shaman)
    [16837] = { name = "Earthfury Boots", quality = 4, source = "Drop", sourceDetail = "Lucifron (Molten Core)", class = "SHAMAN" },
    [16838] = { name = "Earthfury Belt", quality = 4, source = "Drop", sourceDetail = "MC Trash (Molten Core)", class = "SHAMAN" },
    [16839] = { name = "Earthfury Gauntlets", quality = 4, source = "Drop", sourceDetail = "Gehennas (Molten Core)", class = "SHAMAN" },
    [16840] = { name = "Earthfury Bracers", quality = 4, source = "Drop", sourceDetail = "MC Trash (Molten Core)", class = "SHAMAN" },
    [16841] = { name = "Earthfury Legguards", quality = 4, source = "Drop", sourceDetail = "Magmadar (Molten Core)", class = "SHAMAN" },
    [16842] = { name = "Earthfury Helmet", quality = 4, source = "Drop", sourceDetail = "Garr (Molten Core)", class = "SHAMAN" },
    [16843] = { name = "Earthfury Epaulets", quality = 4, source = "Drop", sourceDetail = "Baron Geddon (Molten Core)", class = "SHAMAN" },
    [16844] = { name = "Earthfury Vestments", quality = 4, source = "Drop", sourceDetail = "Golemagg (Molten Core)", class = "SHAMAN" },
    
    -- Tier 1: Giantstalker (Hunter)
    [16845] = { name = "Giantstalker's Boots", quality = 4, source = "Drop", sourceDetail = "Gehennas (Molten Core)", class = "HUNTER" },
    [16846] = { name = "Giantstalker's Helmet", quality = 4, source = "Drop", sourceDetail = "Ragnaros (Molten Core)", class = "HUNTER" },
    [16847] = { name = "Giantstalker's Leggings", quality = 4, source = "Drop", sourceDetail = "Magmadar (Molten Core)", class = "HUNTER" },
    [16848] = { name = "Giantstalker's Breastplate", quality = 4, source = "Drop", sourceDetail = "Golemagg (Molten Core)", class = "HUNTER" },
    [16849] = { name = "Giantstalker's Epaulets", quality = 4, source = "Drop", sourceDetail = "Sulfuron (Molten Core)", class = "HUNTER" },
    [16850] = { name = "Giantstalker's Bracers", quality = 4, source = "Drop", sourceDetail = "MC Trash (Molten Core)", class = "HUNTER" },
    [16851] = { name = "Giantstalker's Belt", quality = 4, source = "Drop", sourceDetail = "MC Trash (Molten Core)", class = "HUNTER" },
    [16852] = { name = "Giantstalker's Gloves", quality = 4, source = "Drop", sourceDetail = "Shazzrah (Molten Core)", class = "HUNTER" },
    
    -- Tier 1: Lawbringer (Paladin)
    [16853] = { name = "Lawbringer Boots", quality = 4, source = "Drop", sourceDetail = "Gehennas (Molten Core)", class = "PALADIN" },
    [16854] = { name = "Lawbringer Helm", quality = 4, source = "Drop", sourceDetail = "Garr (Molten Core)", class = "PALADIN" },
    [16855] = { name = "Lawbringer Legplates", quality = 4, source = "Drop", sourceDetail = "Magmadar (Molten Core)", class = "PALADIN" },
    [16856] = { name = "Lawbringer Chestguard", quality = 4, source = "Drop", sourceDetail = "Golemagg (Molten Core)", class = "PALADIN" },
    [16857] = { name = "Lawbringer Spaulders", quality = 4, source = "Drop", sourceDetail = "Baron Geddon (Molten Core)", class = "PALADIN" },
    [16858] = { name = "Lawbringer Bracers", quality = 4, source = "Drop", sourceDetail = "MC Trash (Molten Core)", class = "PALADIN" },
    [16859] = { name = "Lawbringer Belt", quality = 4, source = "Drop", sourceDetail = "MC Trash (Molten Core)", class = "PALADIN" },
    [16860] = { name = "Lawbringer Gauntlets", quality = 4, source = "Drop", sourceDetail = "Lucifron (Molten Core)", class = "PALADIN" },
    
    -- Tier 1: Might (Warrior)
    [16861] = { name = "Bracers of Might", quality = 4, source = "Drop", sourceDetail = "MC Trash (Molten Core)", class = "WARRIOR" },
    [16862] = { name = "Sabatons of Might", quality = 4, source = "Drop", sourceDetail = "Gehennas (Molten Core)", class = "WARRIOR" },
    [16863] = { name = "Gauntlets of Might", quality = 4, source = "Drop", sourceDetail = "Lucifron (Molten Core)", class = "WARRIOR" },
    [16864] = { name = "Belt of Might", quality = 4, source = "Drop", sourceDetail = "MC Trash (Molten Core)", class = "WARRIOR" },
    [16865] = { name = "Breastplate of Might", quality = 4, source = "Drop", sourceDetail = "Golemagg (Molten Core)", class = "WARRIOR" },
    [16866] = { name = "Helm of Might", quality = 4, source = "Drop", sourceDetail = "Ragnaros (Molten Core)", class = "WARRIOR" },
    [16867] = { name = "Legplates of Might", quality = 4, source = "Drop", sourceDetail = "Magmadar (Molten Core)", class = "WARRIOR" },
    [16868] = { name = "Pauldrons of Might", quality = 4, source = "Drop", sourceDetail = "Sulfuron (Molten Core)", class = "WARRIOR" },
    
    -- MC Boss Drops
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
    [17077] = { name = "Crimson Shocker", quality = 4, source = "Drop", sourceDetail = "Ragnaros (Molten Core)" },
    [17103] = { name = "Azuresong Mageblade", quality = 4, source = "Drop", sourceDetail = "Golemagg (Molten Core)" },
    [17073] = { name = "Earthshaker", quality = 4, source = "Drop", sourceDetail = "Golemagg (Molten Core)" },
    [17074] = { name = "Shadowstrike", quality = 4, source = "Drop", sourceDetail = "Baron Geddon (Molten Core)" },
    [17071] = { name = "Gutgutter", quality = 4, source = "Drop", sourceDetail = "Shazzrah (Molten Core)" },
    [17069] = { name = "Striker's Mark", quality = 4, source = "Drop", sourceDetail = "Magmadar (Molten Core)" },
    [18203] = { name = "Eskhandar's Right Claw", quality = 4, source = "Drop", sourceDetail = "Magmadar (Molten Core)" },
    [19136] = { name = "Mana Igniting Cord", quality = 4, source = "Drop", sourceDetail = "Golemagg (Molten Core)" },
    [18808] = { name = "Gloves of Prophecy", quality = 4, source = "Drop", sourceDetail = "Gehennas (Molten Core)" },
    [18809] = { name = "Sash of Whispered Secrets", quality = 4, source = "Drop", sourceDetail = "Golemagg (Molten Core)" },
    [18811] = { name = "Fireproof Cloak", quality = 4, source = "Drop", sourceDetail = "Gehennas (Molten Core)" },
    [18812] = { name = "Wristguards of True Flight", quality = 4, source = "Drop", sourceDetail = "Golemagg (Molten Core)" },
    [18821] = { name = "Quick Strike Ring", quality = 4, source = "Drop", sourceDetail = "Garr (Molten Core)" },
    [18822] = { name = "Obsidian Edged Blade", quality = 4, source = "Drop", sourceDetail = "Sulfuron (Molten Core)" },
    [18823] = { name = "Aged Core Leather Gloves", quality = 4, source = "Drop", sourceDetail = "Sulfuron (Molten Core)" },
    [18842] = { name = "Staff of Dominance", quality = 4, source = "Drop", sourceDetail = "Golemagg (Molten Core)" },
    [18803] = { name = "Finkle's Lava Dredger", quality = 4, source = "Drop", sourceDetail = "The Beast (UBRS)" },
    [17205] = { name = "Sulfuron Ingot", quality = 4, source = "Drop", sourceDetail = "Golemagg (Molten Core)" },
    [17204] = { name = "Eye of Sulfuras", quality = 5, source = "Drop", sourceDetail = "Ragnaros (Molten Core)" },
    [18563] = { name = "Bindings of the Windseeker", quality = 5, source = "Drop", sourceDetail = "Garr (Molten Core)" },
    [18564] = { name = "Bindings of the Windseeker", quality = 5, source = "Drop", sourceDetail = "Baron Geddon (Molten Core)" },
    
    -- ============================================================================
    --                         BLACKWING LAIR
    -- ============================================================================
    -- Tier 2: Netherwind (Mage)
    [16912] = { name = "Netherwind Boots", quality = 4, source = "Drop", sourceDetail = "Broodlord Lashlayer (BWL)", class = "MAGE" },
    [16913] = { name = "Netherwind Gloves", quality = 4, source = "Drop", sourceDetail = "Firemaw/Ebonroc/Flamegor (BWL)", class = "MAGE" },
    [16914] = { name = "Netherwind Crown", quality = 4, source = "Drop", sourceDetail = "Nefarian (Blackwing Lair)", class = "MAGE" },
    [16915] = { name = "Netherwind Mantle", quality = 4, source = "Drop", sourceDetail = "Chromaggus (BWL)", class = "MAGE" },
    [16916] = { name = "Netherwind Robes", quality = 4, source = "Drop", sourceDetail = "Nefarian (BWL)", class = "MAGE" },
    [16917] = { name = "Netherwind Pants", quality = 4, source = "Drop", sourceDetail = "Ragnaros (MC)", class = "MAGE" },
    [16918] = { name = "Netherwind Belt", quality = 4, source = "Drop", sourceDetail = "Vaelastrasz (BWL)", class = "MAGE" },
    [16919] = { name = "Netherwind Bindings", quality = 4, source = "Drop", sourceDetail = "Razorgore (BWL)", class = "MAGE" },
    
    -- Tier 2: Nemesis (Warlock)
    [16925] = { name = "Nemesis Boots", quality = 4, source = "Drop", sourceDetail = "Broodlord Lashlayer (BWL)", class = "WARLOCK" },
    [16926] = { name = "Nemesis Gloves", quality = 4, source = "Drop", sourceDetail = "Firemaw/Ebonroc/Flamegor (BWL)", class = "WARLOCK" },
    [16927] = { name = "Nemesis Skullcover", quality = 4, source = "Drop", sourceDetail = "Onyxia (Onyxia's Lair)", class = "WARLOCK" },
    [16928] = { name = "Nemesis Spaulders", quality = 4, source = "Drop", sourceDetail = "Chromaggus (BWL)", class = "WARLOCK" },
    [16929] = { name = "Nemesis Skullcap", quality = 4, source = "Drop", sourceDetail = "Nefarian (Blackwing Lair)", class = "WARLOCK" },
    [16930] = { name = "Nemesis Robes", quality = 4, source = "Drop", sourceDetail = "Nefarian (BWL)", class = "WARLOCK" },
    [16931] = { name = "Nemesis Leggings", quality = 4, source = "Drop", sourceDetail = "Ragnaros (MC)", class = "WARLOCK" },
    [16932] = { name = "Nemesis Belt", quality = 4, source = "Drop", sourceDetail = "Vaelastrasz (BWL)", class = "WARLOCK" },
    [16933] = { name = "Nemesis Bracers", quality = 4, source = "Drop", sourceDetail = "Razorgore (BWL)", class = "WARLOCK" },
    
    -- Tier 2: Transcendence (Priest)
    [16919] = { name = "Transcendence Bindings", quality = 4, source = "Drop", sourceDetail = "Razorgore (BWL)", class = "PRIEST" },
    [16920] = { name = "Transcendence Boots", quality = 4, source = "Drop", sourceDetail = "Broodlord Lashlayer (BWL)", class = "PRIEST" },
    [16921] = { name = "Halo of Transcendence", quality = 4, source = "Drop", sourceDetail = "Nefarian (Blackwing Lair)", class = "PRIEST" },
    [16922] = { name = "Transcendence Gloves", quality = 4, source = "Drop", sourceDetail = "Firemaw/Ebonroc/Flamegor (BWL)", class = "PRIEST" },
    [16923] = { name = "Transcendence Robes", quality = 4, source = "Drop", sourceDetail = "Nefarian (BWL)", class = "PRIEST" },
    [16924] = { name = "Transcendence Leggings", quality = 4, source = "Drop", sourceDetail = "Ragnaros (MC)", class = "PRIEST" },
    [16925] = { name = "Transcendence Shoulderpads", quality = 4, source = "Drop", sourceDetail = "Chromaggus (BWL)", class = "PRIEST" },
    [16926] = { name = "Transcendence Belt", quality = 4, source = "Drop", sourceDetail = "Vaelastrasz (BWL)", class = "PRIEST" },
    
    -- Tier 2: Bloodfang (Rogue)
    [16905] = { name = "Bloodfang Belt", quality = 4, source = "Drop", sourceDetail = "Vaelastrasz (BWL)", class = "ROGUE" },
    [16906] = { name = "Bloodfang Bracers", quality = 4, source = "Drop", sourceDetail = "Razorgore (BWL)", class = "ROGUE" },
    [16907] = { name = "Bloodfang Gloves", quality = 4, source = "Drop", sourceDetail = "Firemaw/Ebonroc/Flamegor (BWL)", class = "ROGUE" },
    [16908] = { name = "Bloodfang Hood", quality = 4, source = "Drop", sourceDetail = "Nefarian (Blackwing Lair)", class = "ROGUE" },
    [16909] = { name = "Bloodfang Boots", quality = 4, source = "Drop", sourceDetail = "Broodlord Lashlayer (BWL)", class = "ROGUE" },
    [16910] = { name = "Bloodfang Pants", quality = 4, source = "Drop", sourceDetail = "Ragnaros (MC)", class = "ROGUE" },
    [16911] = { name = "Bloodfang Chestpiece", quality = 4, source = "Drop", sourceDetail = "Nefarian (BWL)", class = "ROGUE" },
    [16832] = { name = "Bloodfang Spaulders", quality = 4, source = "Drop", sourceDetail = "Chromaggus (BWL)", class = "ROGUE" },
    
    -- Tier 2: Stormrage (Druid)
    [16897] = { name = "Stormrage Belt", quality = 4, source = "Drop", sourceDetail = "Vaelastrasz (BWL)", class = "DRUID" },
    [16898] = { name = "Stormrage Bracers", quality = 4, source = "Drop", sourceDetail = "Razorgore (BWL)", class = "DRUID" },
    [16899] = { name = "Stormrage Handguards", quality = 4, source = "Drop", sourceDetail = "Firemaw/Ebonroc/Flamegor (BWL)", class = "DRUID" },
    [16900] = { name = "Stormrage Cover", quality = 4, source = "Drop", sourceDetail = "Nefarian (Blackwing Lair)", class = "DRUID" },
    [16901] = { name = "Stormrage Boots", quality = 4, source = "Drop", sourceDetail = "Broodlord Lashlayer (BWL)", class = "DRUID" },
    [16902] = { name = "Stormrage Legguards", quality = 4, source = "Drop", sourceDetail = "Ragnaros (MC)", class = "DRUID" },
    [16903] = { name = "Stormrage Chestguard", quality = 4, source = "Drop", sourceDetail = "Nefarian (BWL)", class = "DRUID" },
    [16904] = { name = "Stormrage Pauldrons", quality = 4, source = "Drop", sourceDetail = "Chromaggus (BWL)", class = "DRUID" },
    
    -- Tier 2: Ten Storms (Shaman)
    [16943] = { name = "Belt of Ten Storms", quality = 4, source = "Drop", sourceDetail = "Vaelastrasz (BWL)", class = "SHAMAN" },
    [16944] = { name = "Bracers of Ten Storms", quality = 4, source = "Drop", sourceDetail = "Razorgore (BWL)", class = "SHAMAN" },
    [16945] = { name = "Gauntlets of Ten Storms", quality = 4, source = "Drop", sourceDetail = "Firemaw/Ebonroc/Flamegor (BWL)", class = "SHAMAN" },
    [16946] = { name = "Epaulets of Ten Storms", quality = 4, source = "Drop", sourceDetail = "Chromaggus (BWL)", class = "SHAMAN" },
    [16947] = { name = "Helmet of Ten Storms", quality = 4, source = "Drop", sourceDetail = "Nefarian (Blackwing Lair)", class = "SHAMAN" },
    [16948] = { name = "Boots of Ten Storms", quality = 4, source = "Drop", sourceDetail = "Broodlord Lashlayer (BWL)", class = "SHAMAN" },
    [16949] = { name = "Kilt of Ten Storms", quality = 4, source = "Drop", sourceDetail = "Ragnaros (MC)", class = "SHAMAN" },
    [16950] = { name = "Breastplate of Ten Storms", quality = 4, source = "Drop", sourceDetail = "Nefarian (BWL)", class = "SHAMAN" },
    
    -- Tier 2: Judgement (Paladin)
    [16951] = { name = "Judgement Belt", quality = 4, source = "Drop", sourceDetail = "Vaelastrasz (BWL)", class = "PALADIN" },
    [16952] = { name = "Judgement Bindings", quality = 4, source = "Drop", sourceDetail = "Razorgore (BWL)", class = "PALADIN" },
    [16953] = { name = "Judgement Gauntlets", quality = 4, source = "Drop", sourceDetail = "Firemaw/Ebonroc/Flamegor (BWL)", class = "PALADIN" },
    [16954] = { name = "Judgement Sabatons", quality = 4, source = "Drop", sourceDetail = "Broodlord Lashlayer (BWL)", class = "PALADIN" },
    [16955] = { name = "Judgement Crown", quality = 4, source = "Drop", sourceDetail = "Nefarian (Blackwing Lair)", class = "PALADIN" },
    [16956] = { name = "Judgement Legplates", quality = 4, source = "Drop", sourceDetail = "Ragnaros (MC)", class = "PALADIN" },
    [16957] = { name = "Judgement Breastplate", quality = 4, source = "Drop", sourceDetail = "Nefarian (BWL)", class = "PALADIN" },
    [16958] = { name = "Judgement Spaulders", quality = 4, source = "Drop", sourceDetail = "Chromaggus (BWL)", class = "PALADIN" },
    
    -- Tier 2: Dragonstalker (Hunter)
    [16935] = { name = "Dragonstalker's Belt", quality = 4, source = "Drop", sourceDetail = "Vaelastrasz (BWL)", class = "HUNTER" },
    [16936] = { name = "Dragonstalker's Bracers", quality = 4, source = "Drop", sourceDetail = "Razorgore (BWL)", class = "HUNTER" },
    [16937] = { name = "Dragonstalker's Gauntlets", quality = 4, source = "Drop", sourceDetail = "Firemaw/Ebonroc/Flamegor (BWL)", class = "HUNTER" },
    [16938] = { name = "Dragonstalker's Greaves", quality = 4, source = "Drop", sourceDetail = "Broodlord Lashlayer (BWL)", class = "HUNTER" },
    [16939] = { name = "Dragonstalker's Helm", quality = 4, source = "Drop", sourceDetail = "Nefarian (Blackwing Lair)", class = "HUNTER" },
    [16940] = { name = "Dragonstalker's Legguards", quality = 4, source = "Drop", sourceDetail = "Ragnaros (MC)", class = "HUNTER" },
    [16941] = { name = "Dragonstalker's Breastplate", quality = 4, source = "Drop", sourceDetail = "Nefarian (BWL)", class = "HUNTER" },
    [16942] = { name = "Dragonstalker's Spaulders", quality = 4, source = "Drop", sourceDetail = "Chromaggus (BWL)", class = "HUNTER" },
    
    -- Tier 2: Wrath (Warrior)
    [16959] = { name = "Waistband of Wrath", quality = 4, source = "Drop", sourceDetail = "Vaelastrasz (BWL)", class = "WARRIOR" },
    [16960] = { name = "Bracelets of Wrath", quality = 4, source = "Drop", sourceDetail = "Razorgore (BWL)", class = "WARRIOR" },
    [16961] = { name = "Gauntlets of Wrath", quality = 4, source = "Drop", sourceDetail = "Firemaw/Ebonroc/Flamegor (BWL)", class = "WARRIOR" },
    [16962] = { name = "Sabatons of Wrath", quality = 4, source = "Drop", sourceDetail = "Broodlord Lashlayer (BWL)", class = "WARRIOR" },
    [16963] = { name = "Helm of Wrath", quality = 4, source = "Drop", sourceDetail = "Nefarian (Blackwing Lair)", class = "WARRIOR" },
    [16964] = { name = "Legplates of Wrath", quality = 4, source = "Drop", sourceDetail = "Ragnaros (MC)", class = "WARRIOR" },
    [16965] = { name = "Breastplate of Wrath", quality = 4, source = "Drop", sourceDetail = "Nefarian (BWL)", class = "WARRIOR" },
    [16966] = { name = "Pauldrons of Wrath", quality = 4, source = "Drop", sourceDetail = "Chromaggus (BWL)", class = "WARRIOR" },
    
    -- BWL Weapons and Special Drops
    [19364] = { name = "Ashkandi, Greatsword of the Brotherhood", quality = 4, source = "Drop", sourceDetail = "Nefarian (Blackwing Lair)" },
    [19363] = { name = "Crul'shorukh, Edge of Chaos", quality = 4, source = "Drop", sourceDetail = "Nefarian (Blackwing Lair)" },
    [19361] = { name = "Ashjre'thul, Crossbow of Smiting", quality = 4, source = "Drop", sourceDetail = "Chromaggus (Blackwing Lair)" },
    [19360] = { name = "Lok'amir il Romathis", quality = 4, source = "Drop", sourceDetail = "Chromaggus (Blackwing Lair)" },
    [19375] = { name = "Mish'undare, Circlet of the Mind Flayer", quality = 4, source = "Drop", sourceDetail = "Nefarian (Blackwing Lair)" },
    [19377] = { name = "Prestor's Talisman of Connivery", quality = 4, source = "Drop", sourceDetail = "Nefarian (Blackwing Lair)" },
    [19378] = { name = "Cloak of the Brood Lord", quality = 4, source = "Drop", sourceDetail = "Nefarian (Blackwing Lair)" },
    [19002] = { name = "Head of Nefarian", quality = 4, source = "Drop", sourceDetail = "Nefarian (Blackwing Lair)" },
    [19003] = { name = "Head of Nefarian", quality = 4, source = "Drop", sourceDetail = "Nefarian (Blackwing Lair)" },
    [19376] = { name = "Archimtiros' Ring of Reckoning", quality = 4, source = "Drop", sourceDetail = "Nefarian (BWL)" },
    [19379] = { name = "Neltharion's Tear", quality = 4, source = "Drop", sourceDetail = "Nefarian (BWL)" },
    [19380] = { name = "Therazane's Link", quality = 4, source = "Drop", sourceDetail = "Nefarian (BWL)" },
    [19381] = { name = "Boots of the Shadow Flame", quality = 4, source = "Drop", sourceDetail = "Nefarian (BWL)" },
    [19387] = { name = "Chromatic Boots", quality = 4, source = "Drop", sourceDetail = "Chromaggus (Blackwing Lair)" },
    [19385] = { name = "Empowered Leggings", quality = 4, source = "Drop", sourceDetail = "Chromaggus (Blackwing Lair)" },
    [19388] = { name = "Angelista's Grasp", quality = 4, source = "Drop", sourceDetail = "Chromaggus (Blackwing Lair)" },
    [19389] = { name = "Taut Dragonhide Shoulderpads", quality = 4, source = "Drop", sourceDetail = "Chromaggus (BWL)" },
    [19390] = { name = "Taut Dragonhide Gloves", quality = 4, source = "Drop", sourceDetail = "Chromaggus (BWL)" },
    [19391] = { name = "Shimmering Geta", quality = 4, source = "Drop", sourceDetail = "Chromaggus (BWL)" },
    [19392] = { name = "Girdle of the Fallen Crusader", quality = 4, source = "Drop", sourceDetail = "Chromaggus (BWL)" },
    [19393] = { name = "Primalist's Linked Waistguard", quality = 4, source = "Drop", sourceDetail = "Chromaggus (BWL)" },
    [19394] = { name = "Drake Talon Pauldrons", quality = 4, source = "Drop", sourceDetail = "Chromaggus (BWL)" },
    [19395] = { name = "Rejuvenating Gem", quality = 4, source = "Drop", sourceDetail = "Chromaggus (BWL)" },
    [19396] = { name = "Taut Dragonhide Belt", quality = 4, source = "Drop", sourceDetail = "Vaelastrasz (BWL)" },
    [19397] = { name = "Ring of Blackrock", quality = 4, source = "Drop", sourceDetail = "Vaelastrasz (BWL)" },
    [19398] = { name = "Cloak of Firemaw", quality = 4, source = "Drop", sourceDetail = "Firemaw (BWL)" },
    [19399] = { name = "Black Ash Robe", quality = 4, source = "Drop", sourceDetail = "Firemaw (BWL)" },
    [19400] = { name = "Firemaw's Clutch", quality = 4, source = "Drop", sourceDetail = "Firemaw (BWL)" },
    [19401] = { name = "Primalist's Linked Legguards", quality = 4, source = "Drop", sourceDetail = "Firemaw (BWL)" },
    [19402] = { name = "Legguards of the Fallen Crusader", quality = 4, source = "Drop", sourceDetail = "Firemaw (BWL)" },
    [19403] = { name = "Band of Forced Concentration", quality = 4, source = "Drop", sourceDetail = "Ebonroc (BWL)" },
    [19404] = { name = "Malfurion's Blessed Bulwark", quality = 4, source = "Drop", sourceDetail = "Ebonroc (BWL)" },
    [19405] = { name = "Ebony Flame Gloves", quality = 4, source = "Drop", sourceDetail = "Ebonroc (BWL)" },
    [19406] = { name = "Drake Fang Talisman", quality = 4, source = "Drop", sourceDetail = "Ebonroc (BWL)" },
    [19407] = { name = "Ebony Flame Gloves", quality = 4, source = "Drop", sourceDetail = "Ebonroc (BWL)" },
    [19430] = { name = "Shroud of Pure Thought", quality = 4, source = "Drop", sourceDetail = "Flamegor (BWL)" },
    [19431] = { name = "Styleen's Impeding Scarab", quality = 4, source = "Drop", sourceDetail = "Flamegor (BWL)" },
    [19432] = { name = "Circle of Applied Force", quality = 4, source = "Drop", sourceDetail = "Flamegor (BWL)" },
    [19433] = { name = "Emberweave Leggings", quality = 4, source = "Drop", sourceDetail = "Flamegor (BWL)" },
    [19334] = { name = "The Untamed Blade", quality = 4, source = "Drop", sourceDetail = "Razorgore (BWL)" },
    [19335] = { name = "Spineshatter", quality = 4, source = "Drop", sourceDetail = "Razorgore (BWL)" },
    [19336] = { name = "Arcane Infused Gem", quality = 4, source = "Drop", sourceDetail = "Razorgore (BWL)" },
    [19337] = { name = "The Black Book", quality = 4, source = "Drop", sourceDetail = "Razorgore (BWL)" },
    [19339] = { name = "Mind Tear Buckler", quality = 4, source = "Drop", sourceDetail = "Razorgore (BWL)" },
    [19340] = { name = "Rune of Metamorphosis", quality = 4, source = "Drop", sourceDetail = "Razorgore (BWL)" },
    [19341] = { name = "Lifegiving Gem", quality = 4, source = "Drop", sourceDetail = "Razorgore (BWL)" },
    [19342] = { name = "Venomous Totem", quality = 4, source = "Drop", sourceDetail = "Broodlord Lashlayer (BWL)" },
    [19343] = { name = "Scrolls of Blinding Light", quality = 4, source = "Drop", sourceDetail = "Broodlord Lashlayer (BWL)" },
    [19344] = { name = "Natural Alignment Crystal", quality = 4, source = "Drop", sourceDetail = "Broodlord Lashlayer (BWL)" },
    [19345] = { name = "Aegis of Preservation", quality = 4, source = "Drop", sourceDetail = "Broodlord Lashlayer (BWL)" },
    [19346] = { name = "Dragonfang Blade", quality = 4, source = "Drop", sourceDetail = "Broodlord Lashlayer (BWL)" },
    [19347] = { name = "Claw of Chromaggus", quality = 4, source = "Drop", sourceDetail = "Chromaggus (BWL)" },
    [19348] = { name = "Red Dragonscale Protector", quality = 4, source = "Drop", sourceDetail = "Vaelastrasz (BWL)" },
    [19349] = { name = "Heartstriker", quality = 4, source = "Drop", sourceDetail = "Vaelastrasz (BWL)" },
    [19350] = { name = "Dragonfang Blade", quality = 4, source = "Drop", sourceDetail = "Vaelastrasz (BWL)" },
    [19351] = { name = "Maladath, Runed Blade of the Black Flight", quality = 4, source = "Drop", sourceDetail = "Broodlord Lashlayer (BWL)" },
    [19352] = { name = "Chromatically Tempered Sword", quality = 4, source = "Drop", sourceDetail = "Chromaggus (BWL)" },
    [19353] = { name = "Drake Talon Cleaver", quality = 4, source = "Drop", sourceDetail = "Firemaw/Ebonroc/Flamegor (BWL)" },
    [19354] = { name = "Draconic Avenger", quality = 4, source = "Drop", sourceDetail = "Firemaw/Ebonroc/Flamegor (BWL)" },
    [19355] = { name = "Shadow Wing Focus Staff", quality = 4, source = "Drop", sourceDetail = "Firemaw/Ebonroc/Flamegor (BWL)" },
    [19356] = { name = "Staff of the Shadow Flame", quality = 4, source = "Drop", sourceDetail = "Nefarian (BWL)" },
    [19357] = { name = "Herald of Woe", quality = 4, source = "Drop", sourceDetail = "Firemaw/Ebonroc/Flamegor (BWL)" },
    [19358] = { name = "Draconic Maul", quality = 4, source = "Drop", sourceDetail = "Firemaw/Ebonroc/Flamegor (BWL)" },
    [19362] = { name = "Doom's Edge", quality = 4, source = "Drop", sourceDetail = "Chromaggus (BWL)" },
    [19365] = { name = "Claw of the Black Drake", quality = 4, source = "Drop", sourceDetail = "Razorgore (BWL)" },
    [19367] = { name = "Dragon's Touch", quality = 4, source = "Drop", sourceDetail = "Razorgore (BWL)" },
    [19368] = { name = "Dragonbreath Hand Cannon", quality = 4, source = "Drop", sourceDetail = "Firemaw/Ebonroc/Flamegor (BWL)" },
    [19369] = { name = "Gloves of Rapid Evolution", quality = 4, source = "Drop", sourceDetail = "Razorgore (BWL)" },
    [19370] = { name = "Mantle of the Blackwing Cabal", quality = 4, source = "Drop", sourceDetail = "Razorgore (BWL)" },
    [19371] = { name = "Pendant of the Fallen Dragon", quality = 4, source = "Drop", sourceDetail = "Vaelastrasz (BWL)" },
    [19372] = { name = "Helm of Endless Rage", quality = 4, source = "Drop", sourceDetail = "Vaelastrasz (BWL)" },
    [19373] = { name = "Black Brood Pauldrons", quality = 4, source = "Drop", sourceDetail = "Broodlord Lashlayer (BWL)" },
    [19374] = { name = "Bracers of Arcane Accuracy", quality = 4, source = "Drop", sourceDetail = "Broodlord Lashlayer (BWL)" },
    
    -- ============================================================================
    --                         ONYXIA'S LAIR
    -- ============================================================================
    [18422] = { name = "Head of Onyxia", quality = 4, source = "Drop", sourceDetail = "Onyxia (Onyxia's Lair)" },
    [18705] = { name = "Mature Black Dragon Sinew", quality = 4, source = "Drop", sourceDetail = "Onyxia (Onyxia's Lair)" },
    [18423] = { name = "Head of Onyxia", quality = 4, source = "Drop", sourceDetail = "Onyxia (Onyxia's Lair)" },
    [17078] = { name = "Sapphiron Drape", quality = 4, source = "Drop", sourceDetail = "Onyxia (Onyxia's Lair)" },
    [18205] = { name = "Eskhandar's Collar", quality = 4, source = "Drop", sourceDetail = "Onyxia (Onyxia's Lair)" },
    [17068] = { name = "Deathbringer", quality = 4, source = "Drop", sourceDetail = "Onyxia (Onyxia's Lair)" },
    [17075] = { name = "Vis'kag the Bloodletter", quality = 4, source = "Drop", sourceDetail = "Onyxia (Onyxia's Lair)" },
    [18813] = { name = "Ring of Binding", quality = 4, source = "Drop", sourceDetail = "Onyxia (Onyxia's Lair)" },
    [18404] = { name = "Onyxia Hide Backpack", quality = 4, source = "Drop", sourceDetail = "Onyxia (Onyxia's Lair)" },
    [18406] = { name = "Onyxia Tooth Pendant", quality = 4, source = "Quest", sourceDetail = "Victory for the Alliance/Horde" },
    [18403] = { name = "Dragonslayer's Signet", quality = 4, source = "Quest", sourceDetail = "Victory for the Alliance/Horde" },
    
    -- ============================================================================
    --                          ZUL'GURUB
    -- ============================================================================
    -- Hakkar
    [19854] = { name = "Zin'rokh, Destroyer of Worlds", quality = 4, source = "Drop", sourceDetail = "Hakkar (Zul'Gurub)" },
    [19852] = { name = "Ancient Hakkari Manslayer", quality = 4, source = "Drop", sourceDetail = "Hakkar (Zul'Gurub)" },
    [19864] = { name = "Bloodcaller", quality = 4, source = "Drop", sourceDetail = "Hakkar (Zul'Gurub)" },
    [19865] = { name = "Warblade of the Hakkari", quality = 4, source = "Drop", sourceDetail = "Hakkar (Zul'Gurub)" },
    [19866] = { name = "Warblade of the Hakkari (OH)", quality = 4, source = "Drop", sourceDetail = "Hakkar (Zul'Gurub)" },
    [19857] = { name = "Cloak of Consumption", quality = 4, source = "Drop", sourceDetail = "Hakkar (Zul'Gurub)" },
    [19876] = { name = "Soul Corrupter's Necklace", quality = 4, source = "Drop", sourceDetail = "Hakkar (Zul'Gurub)" },
    [19856] = { name = "The Eye of Hakkar", quality = 4, source = "Drop", sourceDetail = "Hakkar (Zul'Gurub)" },
    [19853] = { name = "Gurubashi Dwarf Destroyer", quality = 4, source = "Drop", sourceDetail = "Hakkar (Zul'Gurub)" },
    [19855] = { name = "Bloodsoaked Legplates", quality = 4, source = "Drop", sourceDetail = "Hakkar (Zul'Gurub)" },
    [19858] = { name = "Fang of the Faceless", quality = 4, source = "Drop", sourceDetail = "Hakkar (Zul'Gurub)" },
    [19859] = { name = "Fang of the Faceless", quality = 4, source = "Drop", sourceDetail = "Hakkar (Zul'Gurub)" },
    [19860] = { name = "Touch of Chaos", quality = 4, source = "Drop", sourceDetail = "Hakkar (Zul'Gurub)" },
    [19862] = { name = "Aegis of the Blood God", quality = 4, source = "Drop", sourceDetail = "Hakkar (Zul'Gurub)" },
    [19863] = { name = "Primalist's Band", quality = 4, source = "Drop", sourceDetail = "Hakkar (Zul'Gurub)" },
    
    -- ZG Mounts
    [19872] = { name = "Swift Zulian Tiger", quality = 4, source = "Drop", sourceDetail = "High Priest Thekal (Zul'Gurub)" },
    [19902] = { name = "Swift Razzashi Raptor", quality = 4, source = "Drop", sourceDetail = "Bloodlord Mandokir (Zul'Gurub)" },
    
    -- High Priests
    [19874] = { name = "Halberd of Smiting", quality = 4, source = "Drop", sourceDetail = "High Priest Thekal (ZG)" },
    [19875] = { name = "Lashings of the Hakkari", quality = 4, source = "Drop", sourceDetail = "High Priest Venoxis (ZG)" },
    [19878] = { name = "Bloodstained Coif", quality = 4, source = "Drop", sourceDetail = "Bloodlord Mandokir (ZG)" },
    [19884] = { name = "Jin'do's Bag of Whammies", quality = 4, source = "Drop", sourceDetail = "Jin'do the Hexxer (ZG)" },
    [19885] = { name = "Jin'do's Evil Eye", quality = 4, source = "Drop", sourceDetail = "Jin'do the Hexxer (ZG)" },
    [19886] = { name = "The Hexxer's Cover", quality = 4, source = "Drop", sourceDetail = "Jin'do the Hexxer (ZG)" },
    [19888] = { name = "Overlord's Crimson Band", quality = 4, source = "Drop", sourceDetail = "High Priestess Mar'li (ZG)" },
    [19889] = { name = "Blooddrenched Leggings", quality = 4, source = "Drop", sourceDetail = "High Priestess Jeklik (ZG)" },
    [19890] = { name = "Jin'do's Hexxer", quality = 4, source = "Drop", sourceDetail = "Jin'do the Hexxer (ZG)" },
    [19891] = { name = "Jeklik's Crusher", quality = 4, source = "Drop", sourceDetail = "High Priestess Jeklik (ZG)" },
    [19893] = { name = "Zulian Hacker", quality = 4, source = "Drop", sourceDetail = "High Priestess Arlokk (ZG)" },
    [19894] = { name = "Bloodsoaked Pauldrons", quality = 4, source = "Drop", sourceDetail = "High Priestess Arlokk (ZG)" },
    [19897] = { name = "Betrayer's Boots", quality = 4, source = "Drop", sourceDetail = "Edge of Madness (ZG)" },
    [19901] = { name = "Zulian Stone Axe", quality = 4, source = "Drop", sourceDetail = "Edge of Madness (ZG)" },
    [19903] = { name = "Frostbite", quality = 4, source = "Drop", sourceDetail = "Gahz'ranka (ZG)" },
    [19904] = { name = "Nat Pagle's Fish Terminator", quality = 4, source = "Drop", sourceDetail = "Gahz'ranka (ZG)" },
    
    -- ZG Armor Sets (Coins/Bijous turn-ins)
    [19609] = { name = "Bloodvine Vest", quality = 4, source = "Crafted", sourceDetail = "Tailoring (ZG Recipe)" },
    [19610] = { name = "Bloodvine Leggings", quality = 4, source = "Crafted", sourceDetail = "Tailoring (ZG Recipe)" },
    [19611] = { name = "Bloodvine Boots", quality = 4, source = "Crafted", sourceDetail = "Tailoring (ZG Recipe)" },
    [19682] = { name = "Bloodsoaked Greaves", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (ZG Recipe)" },
    [19683] = { name = "Bloodsoul Breastplate", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (ZG Recipe)" },
    [19684] = { name = "Bloodsoul Shoulders", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (ZG Recipe)" },
    [19685] = { name = "Bloodsoul Gauntlets", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (ZG Recipe)" },
    [19686] = { name = "Primal Batskin Bracers", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (ZG Recipe)" },
    [19687] = { name = "Primal Batskin Gloves", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (ZG Recipe)" },
    [19688] = { name = "Primal Batskin Jerkin", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (ZG Recipe)" },
    [19872] = { name = "Swift Zulian Tiger", quality = 4, source = "Drop", sourceDetail = "High Priest Thekal (Zul'Gurub)", dropRate = 1 },
    [19902] = { name = "Swift Razzashi Raptor", quality = 4, source = "Drop", sourceDetail = "Bloodlord Mandokir (Zul'Gurub)", dropRate = 1 },
    
    -- ZG Class Tokens (Primal Hakkari Items)
    [19716] = { name = "Primal Hakkari Kossack", quality = 4, source = "Drop", sourceDetail = "ZG Bosses (Rogue/Druid)" },
    [19717] = { name = "Primal Hakkari Shawl", quality = 4, source = "Drop", sourceDetail = "ZG Bosses (Mage/Priest)" },
    [19718] = { name = "Primal Hakkari Bindings", quality = 4, source = "Drop", sourceDetail = "ZG Bosses (Hunter/Warrior)" },
    [19719] = { name = "Primal Hakkari Girdle", quality = 4, source = "Drop", sourceDetail = "ZG Bosses (Shaman/Warlock)" },
    [19720] = { name = "Primal Hakkari Sash", quality = 4, source = "Drop", sourceDetail = "ZG Bosses (Paladin)" },
    [19721] = { name = "Primal Hakkari Stanchion", quality = 4, source = "Drop", sourceDetail = "ZG Bosses (All Classes)" },
    [19722] = { name = "Primal Hakkari Tabard", quality = 4, source = "Drop", sourceDetail = "ZG Bosses (All Classes)" },
    [19723] = { name = "Primal Hakkari Aegis", quality = 4, source = "Drop", sourceDetail = "ZG Bosses (All Classes)" },
    [19724] = { name = "Primal Hakkari Idol", quality = 4, source = "Drop", sourceDetail = "ZG Bosses (All Classes)" },
    [19802] = { name = "Heart of Hakkar", quality = 4, source = "Drop", sourceDetail = "Hakkar (Quest Item)" },
    
    -- ZG Enchants (Head/Leg)
    [19782] = { name = "Presence of Sight", quality = 3, source = "Reputation", sourceDetail = "Zandalar (Libram of Focus)" },
    [19783] = { name = "Falcon's Call", quality = 3, source = "Reputation", sourceDetail = "Zandalar (Libram of Rapidity)" },
    [19784] = { name = "Prophetic Aura", quality = 3, source = "Reputation", sourceDetail = "Zandalar (Libram of Protection)" },
    [19785] = { name = "Vodouisant's Vigilant Embrace", quality = 3, source = "Reputation", sourceDetail = "Zandalar (Libram of Constitution)" },
    [19786] = { name = "Death's Embrace", quality = 3, source = "Reputation", sourceDetail = "Zandalar (Libram of Voracity)" },
    [19787] = { name = "Presence of Might", quality = 3, source = "Reputation", sourceDetail = "Zandalar (Libram of Tenacity)" },
    [19788] = { name = "Hoodoo Hex", quality = 3, source = "Reputation", sourceDetail = "Zandalar (Libram of Resilience)" },
    [19789] = { name = "Animist's Caress", quality = 3, source = "Reputation", sourceDetail = "Zandalar (Libram of Rumination)" },
    
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
    [11815] = { name = "Hand of Justice", quality = 4, source = "Drop", sourceDetail = "General Angerforge (BRD)" },
    [11819] = { name = "Second Wind", quality = 4, source = "Drop", sourceDetail = "Golem Lord Argelmach (BRD)" },
    [11810] = { name = "Force of Will", quality = 4, source = "Drop", sourceDetail = "Emperor Dagran Thaurissan (BRD)" },
    [11832] = { name = "Burst of Knowledge", quality = 4, source = "Drop", sourceDetail = "Ambassador Flamelash (BRD)" },
    [11820] = { name = "Smoking Heart of the Mountain", quality = 4, source = "Quest", sourceDetail = "BRD Quest (Kharan Mighthammer)" },
    [11822] = { name = "Battleforged Legplates", quality = 3, source = "Drop", sourceDetail = "Emperor Dagran Thaurissan (BRD)" },
    [11823] = { name = "Luminary Kilt", quality = 3, source = "Drop", sourceDetail = "Emperor Dagran Thaurissan (BRD)" },
    [11824] = { name = "Cyclopean Band", quality = 3, source = "Drop", sourceDetail = "Emperor Dagran Thaurissan (BRD)" },
    [11812] = { name = "Arbiter's Blade", quality = 3, source = "Drop", sourceDetail = "High Interrogator Gerstahn (BRD)" },
    [11813] = { name = "Dregmetal Spaulders", quality = 3, source = "Drop", sourceDetail = "Plugger Spazzring (BRD)" },
    [11814] = { name = "Blisterbane Wrap", quality = 3, source = "Drop", sourceDetail = "Ribbly Screwspigot (BRD)" },
    [11816] = { name = "Flamescarred Girdle", quality = 3, source = "Drop", sourceDetail = "Incendius (BRD)" },
    [11817] = { name = "Lord General's Sword", quality = 4, source = "Drop", sourceDetail = "General Angerforge (BRD)" },
    [11785] = { name = "Rock Golem Bulwark", quality = 3, source = "Drop", sourceDetail = "Phalanx (BRD)" },
    [11786] = { name = "Stone of the Earth", quality = 3, source = "Drop", sourceDetail = "Phalanx (BRD)" },
    [11679] = { name = "Spritecaster Cape", quality = 3, source = "Drop", sourceDetail = "Ribbly Screwspigot (BRD)" },
    [11678] = { name = "Olaf's All Purpose Shield", quality = 3, source = "Drop", sourceDetail = "Hurley Blackbreath (BRD)" },
    [11745] = { name = "Fists of Phalanx", quality = 3, source = "Drop", sourceDetail = "Phalanx (BRD)" },
    [11665] = { name = "Naglering", quality = 3, source = "Drop", sourceDetail = "Golem Lord Argelmach (BRD)" },
    [11669] = { name = "Flame Wrath", quality = 3, source = "Drop", sourceDetail = "Pyromancer Loregrain (BRD)" },
    [11741] = { name = "Stonegrip Gauntlets", quality = 3, source = "Drop", sourceDetail = "Fineous Darkvire (BRD)" },
    [11742] = { name = "Warstrife Leggings", quality = 3, source = "Drop", sourceDetail = "Fineous Darkvire (BRD)" },
    [11748] = { name = "Pyric Caduceus", quality = 3, source = "Drop", sourceDetail = "Incendius (BRD)" },
    [11749] = { name = "Kindling Stave", quality = 3, source = "Drop", sourceDetail = "Incendius (BRD)" },
    [11750] = { name = "Cinder Bindings", quality = 3, source = "Drop", sourceDetail = "Incendius (BRD)" },
    [11744] = { name = "Bloodfist", quality = 3, source = "Drop", sourceDetail = "Verek (BRD)" },
    [11634] = { name = "Sash of the Grand Hunt", quality = 4, source = "Drop", sourceDetail = "BRD Rare Bosses" },
    [11802] = { name = "Lavacrest Leggings", quality = 3, source = "Drop", sourceDetail = "Magmus (BRD)" },
    [11803] = { name = "Hyper Radiance Generator", quality = 3, source = "Drop", sourceDetail = "Golem Lord Argelmach (BRD)" },
    [11804] = { name = "Mask of the Unforgiven", quality = 3, source = "Drop", sourceDetail = "Ambassador Flamelash (BRD)" },
    [11930] = { name = "The Emperor's New Cape", quality = 3, source = "Drop", sourceDetail = "Emperor Dagran Thaurissan (BRD)" },
    [11931] = { name = "Swiftwalker Boots", quality = 3, source = "Drop", sourceDetail = "Plugger Spazzring (BRD)" },
    [11932] = { name = "Guiding Stave of Wisdom", quality = 3, source = "Drop", sourceDetail = "Princess Moira Bronzebeard (BRD)" },
    [11933] = { name = "Imperial Jewel", quality = 3, source = "Drop", sourceDetail = "Emperor Dagran Thaurissan (BRD)" },
    [11934] = { name = "Emperor's Seal", quality = 3, source = "Drop", sourceDetail = "Emperor Dagran Thaurissan (BRD)" },
    [11935] = { name = "Magmus Stone", quality = 3, source = "Drop", sourceDetail = "Magmus (BRD)" },
    
    -- ==================== ZUL'FARRAK ====================
    [9372] = { name = "Sul'thraze the Lasher", quality = 4, source = "Crafted", sourceDetail = "Combine Sang'thraze + Jang'thraze (ZF)" },
    [9379] = { name = "Sang'thraze the Deflector", quality = 3, source = "Drop", sourceDetail = "Chief Ukorz Sandscalp (ZF)" },
    [9478] = { name = "Ripsaw", quality = 3, source = "Drop", sourceDetail = "Antu'sul (ZF)" },
    [9479] = { name = "Embrace of the Lycan", quality = 3, source = "Drop", sourceDetail = "Antu'sul (ZF)" },
    [9480] = { name = "Eyegouger", quality = 3, source = "Drop", sourceDetail = "Antu'sul (ZF)" },
    [9481] = { name = "The Hand of Antu'sul", quality = 3, source = "Drop", sourceDetail = "Antu'sul (ZF)" },
    [9484] = { name = "Spellshock Leggings", quality = 3, source = "Drop", sourceDetail = "Witch Doctor Zum'rah (ZF)" },
    [9483] = { name = "Flaming Incinerator", quality = 3, source = "Drop", sourceDetail = "Theka the Martyr (ZF)" },
    [9511] = { name = "Bloodletter Scalpel", quality = 3, source = "Drop", sourceDetail = "Sergeant Bly (ZF)" },
    [9512] = { name = "Jinxed Hoodoo Kilt", quality = 3, source = "Drop", sourceDetail = "Witch Doctor Zum'rah (ZF)" },
    [9513] = { name = "Gahz'rilla Scale Armor", quality = 3, source = "Drop", sourceDetail = "Gahz'rilla (ZF)" },
    [9514] = { name = "Gahz'rilla Fang", quality = 3, source = "Drop", sourceDetail = "Gahz'rilla (ZF)" },
    [9527] = { name = "Mallet of Zul'Farrak", quality = 3, source = "Quest", sourceDetail = "Sacred Mallet Quest" },
    [9243] = { name = "Shriveled Heart", quality = 3, source = "Drop", sourceDetail = "Theka the Martyr (ZF)" },
    [9370] = { name = "Chief's Enforcer", quality = 3, source = "Drop", sourceDetail = "Chief Ukorz Sandscalp (ZF)" },
    [9371] = { name = "Vice Grips", quality = 3, source = "Drop", sourceDetail = "Nekrum Gutchewer (ZF)" },
    [9375] = { name = "Expert Goldminer's Helmet", quality = 3, source = "Drop", sourceDetail = "Hydromancer Velratha (ZF)" },
    [9246] = { name = "Jang'thraze the Protector", quality = 3, source = "Drop", sourceDetail = "Chief Ukorz Sandscalp (ZF)" },
    [18083] = { name = "Jumanza Grips", quality = 3, source = "Drop", sourceDetail = "Nekrum Gutchewer (ZF)" },
    [18082] = { name = "Zum'rah's Vexing Cane", quality = 3, source = "Drop", sourceDetail = "Witch Doctor Zum'rah (ZF)" },
    [18084] = { name = "Shadowrend Longblade", quality = 3, source = "Drop", sourceDetail = "Ruuzlu (ZF)" },
    [18085] = { name = "Gazrilla's Scale Plate", quality = 3, source = "Drop", sourceDetail = "Gahz'rilla (ZF)" },
    [18086] = { name = "Deep Woods Cloak", quality = 3, source = "Drop", sourceDetail = "Nekrum Gutchewer (ZF)" },
    [18087] = { name = "Jinxed Hoodoo Skin", quality = 3, source = "Drop", sourceDetail = "Witch Doctor Zum'rah (ZF)" },
    
    -- ==================== RAZORFEN DOWNS ====================
    [10776] = { name = "Glutton's Cleaver", quality = 3, source = "Drop", sourceDetail = "Glutton (RFD)" },
    [10777] = { name = "Arachnid Gloves", quality = 3, source = "Drop", sourceDetail = "Tuten'kash (RFD)" },
    [10778] = { name = "Carapace Helm", quality = 3, source = "Drop", sourceDetail = "Tuten'kash (RFD)" },
    [10779] = { name = "Night Reaver", quality = 4, source = "Drop", sourceDetail = "Random Boss (RFD)" },
    [10780] = { name = "Mark of the Chosen", quality = 3, source = "Drop", sourceDetail = "Mordresh Fire Eye (RFD)" },
    [10781] = { name = "Bonefingers", quality = 3, source = "Drop", sourceDetail = "Mordresh Fire Eye (RFD)" },
    [10767] = { name = "Savage Boar's Guard", quality = 3, source = "Drop", sourceDetail = "Aggem Thorncurse (RFD)" },
    [10768] = { name = "Boar Champion's Belt", quality = 3, source = "Drop", sourceDetail = "Aggem Thorncurse (RFD)" },
    [10769] = { name = "Glowing Eye of Mordresh", quality = 3, source = "Drop", sourceDetail = "Mordresh Fire Eye (RFD)" },
    [10771] = { name = "Deathmage Sash", quality = 3, source = "Drop", sourceDetail = "Amnennar the Coldbringer (RFD)" },
    [10772] = { name = "Glutton's Apron", quality = 3, source = "Drop", sourceDetail = "Glutton (RFD)" },
    [10773] = { name = "Halberd of Smiting", quality = 4, source = "Drop", sourceDetail = "Amnennar the Coldbringer (RFD)" },
    [10766] = { name = "Plaguerot Sprig", quality = 3, source = "Drop", sourceDetail = "Plaguemaw the Rotting (RFD)" },
    [10761] = { name = "Coldrage Dagger", quality = 3, source = "Drop", sourceDetail = "Amnennar the Coldbringer (RFD)" },
    [10762] = { name = "Robes of the Lich", quality = 3, source = "Drop", sourceDetail = "Amnennar the Coldbringer (RFD)" },
    [10763] = { name = "Icemetal Barbute", quality = 3, source = "Drop", sourceDetail = "Amnennar the Coldbringer (RFD)" },
    [10764] = { name = "Deathchill Armor", quality = 3, source = "Drop", sourceDetail = "Amnennar the Coldbringer (RFD)" },
    [10765] = { name = "Boneslasher", quality = 3, source = "Drop", sourceDetail = "Amnennar the Coldbringer (RFD)" },
    
    -- ==================== RAZORFEN KRAUL ====================
    [6679] = { name = "Armor of the Fang", quality = 3, source = "Drop", sourceDetail = "Lady Anacondra (RFK)" },
    [6681] = { name = "Sword of the Fang", quality = 3, source = "Drop", sourceDetail = "Razorfen Kraul" },
    [6680] = { name = "Leggings of the Fang", quality = 3, source = "Drop", sourceDetail = "Razorfen Kraul" },
    [6682] = { name = "Venomstrike", quality = 3, source = "Drop", sourceDetail = "Razorfen Kraul" },
    [6687] = { name = "Cloak of the Everliving", quality = 3, source = "Drop", sourceDetail = "Charlga Razorflank (RFK)" },
    [6688] = { name = "Lavishly Jeweled Ring", quality = 3, source = "Drop", sourceDetail = "Charlga Razorflank (RFK)" },
    [6689] = { name = "Ferine Leggings", quality = 3, source = "Drop", sourceDetail = "Overlord Ramtusk (RFK)" },
    [6690] = { name = "Feathered Breastplate", quality = 3, source = "Drop", sourceDetail = "Agathelos the Raging (RFK)" },
    [6691] = { name = "Swinetusk Shank", quality = 3, source = "Drop", sourceDetail = "Overlord Ramtusk (RFK)" },
    [6692] = { name = "Tusken Helm", quality = 3, source = "Drop", sourceDetail = "Overlord Ramtusk (RFK)" },
    [6693] = { name = "Agamaggan's Clutch", quality = 3, source = "Drop", sourceDetail = "Agathelos the Raging (RFK)" },
    [6694] = { name = "Heart of Agamaggan", quality = 3, source = "Drop", sourceDetail = "Charlga Razorflank (RFK)" },

    -- ==================== WAILING CAVERNS ====================
    [6472] = { name = "Stinging Viper", quality = 3, source = "Drop", sourceDetail = "Lady Anacondra (WC)" },
    [6473] = { name = "Robe of the Moccasin", quality = 3, source = "Drop", sourceDetail = "Lord Serpentis (WC)" },
    [6469] = { name = "Venomstrike", quality = 3, source = "Drop", sourceDetail = "Lord Pythas (WC)" },
    [6459] = { name = "Savage Trodders", quality = 3, source = "Drop", sourceDetail = "Skum (WC)" },
    [6460] = { name = "Cobrahn's Grasp", quality = 3, source = "Drop", sourceDetail = "Lord Cobrahn (WC)" },
    [6461] = { name = "Slime-Encrusted Pads", quality = 3, source = "Drop", sourceDetail = "Mutanus the Devourer (WC)" },
    [6463] = { name = "Deep Fathom Ring", quality = 3, source = "Drop", sourceDetail = "Mutanus the Devourer (WC)" },
    [6627] = { name = "Mutant Scale Breastplate", quality = 3, source = "Drop", sourceDetail = "Mutanus the Devourer (WC)" },
    [6630] = { name = "Seedcloud Buckler", quality = 3, source = "Drop", sourceDetail = "Verdan the Everliving (WC)" },
    [6631] = { name = "Living Root", quality = 3, source = "Drop", sourceDetail = "Verdan the Everliving (WC)" },
    [10410] = { name = "Leggings of the Fang", quality = 3, source = "Drop", sourceDetail = "Wailing Caverns" },
    [10411] = { name = "Belt of the Fang", quality = 3, source = "Drop", sourceDetail = "Wailing Caverns" },
    [10412] = { name = "Gloves of the Fang", quality = 3, source = "Drop", sourceDetail = "Wailing Caverns" },
    [10413] = { name = "Footpads of the Fang", quality = 3, source = "Drop", sourceDetail = "Wailing Caverns" },
    [6622] = { name = "Sword of the Fang", quality = 3, source = "Drop", sourceDetail = "Wailing Caverns Bosses" },
    [6623] = { name = "Armor of the Fang", quality = 3, source = "Drop", sourceDetail = "Wailing Caverns Bosses" },
    [6480] = { name = "Wings of Wailing", quality = 3, source = "Drop", sourceDetail = "Skum (WC)" },
    [5243] = { name = "Firebelcher", quality = 3, source = "Drop", sourceDetail = "Skum (WC)" },
    [10413] = { name = "Gloves of the Fang", quality = 3, source = "Drop", sourceDetail = "Wailing Caverns" },
    
    -- ==================== GNOMEREGAN ====================
    [9446] = { name = "Electrocutioner Leg", quality = 3, source = "Drop", sourceDetail = "Electrocutioner 6000 (Gnomeregan)" },
    [9447] = { name = "Electrocutioner Lagnut", quality = 3, source = "Drop", sourceDetail = "Electrocutioner 6000 (Gnomeregan)" },
    [9449] = { name = "Manual Crowd Pummeler", quality = 3, source = "Drop", sourceDetail = "Crowd Pummeler 9-60 (Gnomeregan)" },
    [9450] = { name = "Gnomebot Operating Boots", quality = 3, source = "Drop", sourceDetail = "Mekgineer Thermaplugg (Gnomeregan)" },
    [9451] = { name = "Thermaplugg's Central Core", quality = 3, source = "Drop", sourceDetail = "Mekgineer Thermaplugg (Gnomeregan)" },
    [9452] = { name = "Thermaplugg's Left Arm", quality = 3, source = "Drop", sourceDetail = "Mekgineer Thermaplugg (Gnomeregan)" },
    [9453] = { name = "Toxic Revenger", quality = 3, source = "Drop", sourceDetail = "Viscous Fallout (Gnomeregan)" },
    [9456] = { name = "Glass Shooter", quality = 3, source = "Drop", sourceDetail = "Crowd Pummeler 9-60 (Gnomeregan)" },
    [9458] = { name = "Thermotastic Egg Timer", quality = 3, source = "Drop", sourceDetail = "Mekgineer Thermaplugg (Gnomeregan)" },
    [9459] = { name = "Charged Gear", quality = 3, source = "Drop", sourceDetail = "Electrocutioner 6000 (Gnomeregan)" },
    [9461] = { name = "Shoni's Disarming Tool", quality = 3, source = "Quest", sourceDetail = "Gnomeregan Quest" },
    [9445] = { name = "Mechbuilder's Overalls", quality = 3, source = "Drop", sourceDetail = "Mekgineer Thermaplugg (Gnomeregan)" },
    [9455] = { name = "Emissary Cuffs", quality = 3, source = "Drop", sourceDetail = "Dark Iron Ambassador (Gnomeregan)" },
    [9457] = { name = "Royal Diplomatic Scepter", quality = 3, source = "Drop", sourceDetail = "Dark Iron Ambassador (Gnomeregan)" },
    
    -- ==================== THE STOCKADE ====================
    [1929] = { name = "Silk-Threaded Trousers", quality = 3, source = "Drop", sourceDetail = "Dextren Ward (Stockade)" },
    [1930] = { name = "Hannya Mask", quality = 3, source = "Drop", sourceDetail = "Hogger (Stockade)" },
    [1935] = { name = "Assassin's Blade", quality = 3, source = "Drop", sourceDetail = "Bazil Thredd (Stockade)" },
    [1934] = { name = "Defiasis Pauldrons", quality = 3, source = "Drop", sourceDetail = "Kam Deepfury (Stockade)" },
    [2033] = { name = "Ambassadors Boots", quality = 3, source = "Drop", sourceDetail = "Bruegal Ironknuckle (Stockade)" },
    
    -- ==================== RAGEFIRE CHASM ====================
    [14149] = { name = "Subterranean Cape", quality = 3, source = "Drop", sourceDetail = "Taragaman the Hungerer (RFC)" },
    [14148] = { name = "Crystalline Cuffs", quality = 3, source = "Drop", sourceDetail = "Jergosh the Invoker (RFC)" },
    [14145] = { name = "Chanting Blade", quality = 3, source = "Drop", sourceDetail = "Jergosh the Invoker (RFC)" },
    [14147] = { name = "Cursed Felblade", quality = 3, source = "Drop", sourceDetail = "Taragaman the Hungerer (RFC)" },
    [14146] = { name = "Bloodied Leather Gloves", quality = 3, source = "Drop", sourceDetail = "Oggleflint (RFC)" },
    
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
    [7714] = { name = "Ravager", quality = 3, source = "Drop", sourceDetail = "Herod (SM Armory)" },
    [7718] = { name = "Herod's Raging Berserker", quality = 3, source = "Drop", sourceDetail = "Herod (SM Armory)" },
    [7717] = { name = "Raging Berserker's Helm", quality = 3, source = "Drop", sourceDetail = "Herod (SM Armory)" },
    [10332] = { name = "Scarlet Wristguards", quality = 3, source = "Drop", sourceDetail = "Scarlet Monastery" },
    [10329] = { name = "Scarlet Belt", quality = 3, source = "Drop", sourceDetail = "Scarlet Monastery" },
    [10330] = { name = "Scarlet Boots", quality = 3, source = "Drop", sourceDetail = "Scarlet Monastery" },
    [10331] = { name = "Scarlet Chestpiece", quality = 3, source = "Drop", sourceDetail = "Scarlet Monastery" },
    [10333] = { name = "Scarlet Gauntlets", quality = 3, source = "Drop", sourceDetail = "Scarlet Monastery" },
    [10328] = { name = "Scarlet Leggings", quality = 3, source = "Drop", sourceDetail = "Scarlet Monastery" },
    [5756] = { name = "Sliverblade", quality = 3, source = "Drop", sourceDetail = "Houndmaster Loksey (SM Library)" },
    [5819] = { name = "Sunblaze Coif", quality = 3, source = "Drop", sourceDetail = "Arcanist Doan (SM Library)" },
    [7755] = { name = "Flaming Incinerator", quality = 3, source = "Drop", sourceDetail = "Arcanist Doan (SM Library)" },
    [7710] = { name = "Hypnotic Blade", quality = 3, source = "Drop", sourceDetail = "Arcanist Doan (SM Library)" },
    [7712] = { name = "Illusionary Rod", quality = 3, source = "Drop", sourceDetail = "Arcanist Doan (SM Library)" },
    [7713] = { name = "Robe of Doan", quality = 3, source = "Drop", sourceDetail = "Arcanist Doan (SM Library)" },
    [7711] = { name = "Mantle of Doan", quality = 3, source = "Drop", sourceDetail = "Arcanist Doan (SM Library)" },
    [7752] = { name = "Dreamslayer", quality = 3, source = "Drop", sourceDetail = "Interrogator Vishas (SM Graveyard)" },
    [7753] = { name = "Bloody Brass Knuckles", quality = 3, source = "Drop", sourceDetail = "Interrogator Vishas (SM Graveyard)" },
    [7754] = { name = "Torturing Poker", quality = 3, source = "Drop", sourceDetail = "Interrogator Vishas (SM Graveyard)" },
    [7759] = { name = "Archon Chestpiece", quality = 3, source = "Drop", sourceDetail = "Scarlet Champion (SM Cathedral)" },
    [7760] = { name = "Warchief Kilt", quality = 3, source = "Drop", sourceDetail = "High Inquisitor Fairbanks (SM Cathedral)" },
    [7761] = { name = "Inquisitor's Shawl", quality = 3, source = "Drop", sourceDetail = "High Inquisitor Fairbanks (SM Cathedral)" },
    
    -- ==================== SHADOWFANG KEEP TWINK ITEMS ====================
    [6315] = { name = "Assassin's Blade", quality = 3, source = "Drop", sourceDetail = "Deathsworn Captain (SFK)" },
    [6641] = { name = "Haunting Blade", quality = 3, source = "Drop", sourceDetail = "Shadowfang Keep (Rare)" },
    [1482] = { name = "Shadowfang", quality = 4, source = "Drop", sourceDetail = "Shadowfang Keep (World Drop)" },
    [1935] = { name = "Assassin's Blade", quality = 3, source = "Drop", sourceDetail = "Shadowfang Keep (Rare)" },
    [6642] = { name = "Phantom Armor", quality = 3, source = "Drop", sourceDetail = "Shadowfang Keep (Rare)" },
    [2205] = { name = "Duskbringer", quality = 3, source = "Drop", sourceDetail = "Fenrus the Devourer (SFK)" },
    [3194] = { name = "Black Malice", quality = 3, source = "Drop", sourceDetail = "Shadowfang Keep (World Drop)" },
    [6392] = { name = "Belt of Arugal", quality = 3, source = "Drop", sourceDetail = "Archmage Arugal (SFK)" },
    [6632] = { name = "Feystick of Fiery Vision", quality = 3, source = "Drop", sourceDetail = "Shadowfang Keep Bosses" },
    [6633] = { name = "Gloomshroud Armor", quality = 3, source = "Drop", sourceDetail = "Shadowfang Keep Bosses" },
    
    -- ==================== ULDAMAN ====================
    [9382] = { name = "Archaedic Stone", quality = 3, source = "Drop", sourceDetail = "Archaedas (Uldaman)" },
    [9379] = { name = "Stoneslayer", quality = 3, source = "Drop", sourceDetail = "Archaedas (Uldaman)" },
    [9381] = { name = "Earthborn Kilt", quality = 3, source = "Drop", sourceDetail = "Ironaya (Uldaman)" },
    [9407] = { name = "Grimlok's Charge", quality = 3, source = "Drop", sourceDetail = "Grimlok (Uldaman)" },
    [9408] = { name = "Grimlok's Tribal Vestments", quality = 3, source = "Drop", sourceDetail = "Grimlok (Uldaman)" },
    [9409] = { name = "Grimlok's Tribal Necklace", quality = 3, source = "Drop", sourceDetail = "Grimlok (Uldaman)" },
    [9418] = { name = "Galgann's Fireblaster", quality = 3, source = "Drop", sourceDetail = "Galgann Firehammer (Uldaman)" },
    [9419] = { name = "Galgann's Firehammer", quality = 3, source = "Drop", sourceDetail = "Galgann Firehammer (Uldaman)" },
    [9411] = { name = "Rockshard Pauldrons", quality = 3, source = "Drop", sourceDetail = "Archaedas (Uldaman)" },
    [9412] = { name = "Galgann's Stormbreaker", quality = 3, source = "Drop", sourceDetail = "Galgann Firehammer (Uldaman)" },
    [9386] = { name = "Stoneskin Gargoyle Cape", quality = 3, source = "Drop", sourceDetail = "Obsidian Sentinel (Uldaman)" },
    [9387] = { name = "Revelosh's Spaulders", quality = 3, source = "Drop", sourceDetail = "Revelosh (Uldaman)" },
    [9388] = { name = "Revelosh's Armguards", quality = 3, source = "Drop", sourceDetail = "Revelosh (Uldaman)" },
    [9389] = { name = "Revelosh's Gloves", quality = 3, source = "Drop", sourceDetail = "Revelosh (Uldaman)" },
    [9391] = { name = "Revelosh's Boots", quality = 3, source = "Drop", sourceDetail = "Revelosh (Uldaman)" },
    [9393] = { name = "Beacon of Hope", quality = 3, source = "Quest", sourceDetail = "Uldaman Quest" },
    [9420] = { name = "Adventurer's Pith Helmet", quality = 3, source = "Quest", sourceDetail = "Uldaman Quest" },
    [9422] = { name = "Shadowforge Bushmaster", quality = 3, source = "Drop", sourceDetail = "Shadowforge Darkcaster (Uldaman)" },
    [9424] = { name = "Ginn-su Sword", quality = 3, source = "Drop", sourceDetail = "Uldaman Trash" },
    [9425] = { name = "Pendulum of Doom", quality = 4, source = "Drop", sourceDetail = "Uldaman Trash (Very Rare)" },
    [9426] = { name = "Monolithic Bow", quality = 3, source = "Drop", sourceDetail = "Ironaya (Uldaman)" },
    [9428] = { name = "Unearthed Bands", quality = 3, source = "Drop", sourceDetail = "Uldaman Trash" },
    [9429] = { name = "Miner's Hat of the Deep", quality = 3, source = "Drop", sourceDetail = "Obsidian Sentinel (Uldaman)" },
    [9431] = { name = "Rockshard Axe", quality = 3, source = "Drop", sourceDetail = "Galgann Firehammer (Uldaman)" },
    [9384] = { name = "Stonevault Shiv", quality = 3, source = "Drop", sourceDetail = "Ancient Stone Keeper (Uldaman)" },
    [9383] = { name = "Obsidian Power Source", quality = 3, source = "Drop", sourceDetail = "Obsidian Sentinel (Uldaman)" },
    
    -- ==================== MARAUDON ====================
    [17780] = { name = "Blade of Eternal Darkness", quality = 4, source = "Drop", sourceDetail = "Princess Theradras (Maraudon)" },
    [17710] = { name = "Charstone Dirk", quality = 3, source = "Drop", sourceDetail = "Landslide (Maraudon)" },
    [17711] = { name = "Elemental Rockridge Leggings", quality = 3, source = "Drop", sourceDetail = "Landslide (Maraudon)" },
    [17712] = { name = "Glaive of the Stone Giant", quality = 3, source = "Drop", sourceDetail = "Landslide (Maraudon)" },
    [17715] = { name = "Eye of Theradras", quality = 3, source = "Drop", sourceDetail = "Princess Theradras (Maraudon)" },
    [17713] = { name = "Blackstone Ring", quality = 3, source = "Drop", sourceDetail = "Princess Theradras (Maraudon)" },
    [17714] = { name = "Bracers of the Stone Princess", quality = 3, source = "Drop", sourceDetail = "Princess Theradras (Maraudon)" },
    [17705] = { name = "Thrash Blade", quality = 3, source = "Quest", sourceDetail = "Maraudon Quest (Princess Theradras)" },
    [17736] = { name = "Ramstein's Lightning Bolts", quality = 3, source = "Drop", sourceDetail = "Razorlash (Maraudon)" },
    [17738] = { name = "Chloromesh Girdle", quality = 3, source = "Drop", sourceDetail = "Noxxion (Maraudon)" },
    [17739] = { name = "Heart of Noxxion", quality = 3, source = "Drop", sourceDetail = "Noxxion (Maraudon)" },
    [17740] = { name = "Noxious Shooter", quality = 3, source = "Drop", sourceDetail = "Noxxion (Maraudon)" },
    [17742] = { name = "Satyr's Lash", quality = 3, source = "Drop", sourceDetail = "Lord Vyletongue (Maraudon)" },
    [17743] = { name = "Resurgence Rod", quality = 3, source = "Drop", sourceDetail = "Tinkerer Gizlock (Maraudon)" },
    [17745] = { name = "Gyromatic Micro-Adjustor", quality = 3, source = "Drop", sourceDetail = "Tinkerer Gizlock (Maraudon)" },
    [17746] = { name = "Inventor's Focal Sword", quality = 3, source = "Drop", sourceDetail = "Tinkerer Gizlock (Maraudon)" },
    [17748] = { name = "Vinerot Sandals", quality = 3, source = "Drop", sourceDetail = "Celebras the Cursed (Maraudon)" },
    [17749] = { name = "Claw of Celebras", quality = 3, source = "Drop", sourceDetail = "Celebras the Cursed (Maraudon)" },
    [17750] = { name = "Soothsayer's Headdress", quality = 3, source = "Drop", sourceDetail = "Meshlok the Harvester (Maraudon)" },
    [17752] = { name = "Rotgrip Mantle", quality = 3, source = "Drop", sourceDetail = "Rotgrip (Maraudon)" },
    [17733] = { name = "Fist of Stone", quality = 3, source = "Drop", sourceDetail = "Landslide (Maraudon)" },
    [17737] = { name = "Grovekeeper's Drape", quality = 3, source = "Drop", sourceDetail = "Razorlash (Maraudon)" },
    [17768] = { name = "Mindtap Talisman", quality = 3, source = "Drop", sourceDetail = "Tinkerer Gizlock (Maraudon)" },
    
    -- ==================== SUNKEN TEMPLE ====================
    [10835] = { name = "Bone Golem Shoulders", quality = 3, source = "Drop", sourceDetail = "Sunken Temple Trash" },
    [10836] = { name = "Wildheart Boots", quality = 3, source = "Drop", sourceDetail = "Sunken Temple Bosses" },
    [10837] = { name = "Atal'ai Robe of Shadows", quality = 3, source = "Drop", sourceDetail = "Sunken Temple Bosses" },
    [10842] = { name = "Featherskin Cape", quality = 3, source = "Drop", sourceDetail = "Sunken Temple Bosses" },
    [10843] = { name = "Featherbeard Bracers", quality = 3, source = "Drop", sourceDetail = "Sunken Temple Bosses" },
    [10844] = { name = "Drakeclaw Band", quality = 3, source = "Drop", sourceDetail = "Sunken Temple Bosses" },
    [10846] = { name = "Bloodshot Greaves", quality = 3, source = "Drop", sourceDetail = "Sunken Temple Bosses" },
    [10833] = { name = "Horns of Eranikus", quality = 3, source = "Drop", sourceDetail = "Shade of Eranikus (ST)" },
    [10831] = { name = "Dawnbringer Shoulders", quality = 3, source = "Drop", sourceDetail = "Jammal'an the Prophet (ST)" },
    [10828] = { name = "Fist of the Damned", quality = 3, source = "Drop", sourceDetail = "Jammal'an the Prophet (ST)" },
    [10829] = { name = "Dragon's Call", quality = 4, source = "Drop", sourceDetail = "Shade of Eranikus (ST)" },
    [10834] = { name = "Crest of Supremacy", quality = 3, source = "Drop", sourceDetail = "Shade of Eranikus (ST)" },
    [10830] = { name = "Blade of the Prophets", quality = 3, source = "Drop", sourceDetail = "Jammal'an the Prophet (ST)" },
    [10838] = { name = "Might of Hakkar", quality = 3, source = "Drop", sourceDetail = "Avatar of Hakkar (ST)" },
    [10839] = { name = "Enchanted Azsharite Felbane Sword", quality = 3, source = "Quest", sourceDetail = "Sunken Temple Quest" },
    [10840] = { name = "Enchanted Azsharite Felbane Staff", quality = 3, source = "Quest", sourceDetail = "Sunken Temple Quest" },
    [10841] = { name = "Enchanted Azsharite Felbane Dagger", quality = 3, source = "Quest", sourceDetail = "Sunken Temple Quest" },
    [10854] = { name = "Ogre Forged Hauberk", quality = 3, source = "Quest", sourceDetail = "Sunken Temple Quest" },
    [10856] = { name = "Embrace of the Lycan", quality = 4, source = "Drop", sourceDetail = "Morphaz/Hazzas (ST)" },
    [10857] = { name = "Atal'ai Spaulders", quality = 3, source = "Drop", sourceDetail = "Sunken Temple Bosses" },
    [10858] = { name = "Atal'ai Breastplate", quality = 3, source = "Drop", sourceDetail = "Sunken Temple Bosses" },
    [10859] = { name = "Atal'ai Leggings", quality = 3, source = "Drop", sourceDetail = "Sunken Temple Bosses" },
    [10802] = { name = "Darkwater Bracers", quality = 3, source = "Drop", sourceDetail = "Morphaz (ST)" },
    [10803] = { name = "Blade of the Wretched", quality = 3, source = "Drop", sourceDetail = "Morphaz (ST)" },
    [10804] = { name = "Fetter of the Fallen", quality = 3, source = "Drop", sourceDetail = "Hazzas (ST)" },
    [10806] = { name = "Vestments of the Atal'ai Prophet", quality = 3, source = "Drop", sourceDetail = "Jammal'an the Prophet (ST)" },
    [10845] = { name = "Warrior's Embrace", quality = 3, source = "Drop", sourceDetail = "Sunken Temple Bosses" },
    
    -- ==================== BLACKFATHOM DEEPS ====================
    [6907] = { name = "Rod of the Sleepwalker", quality = 3, source = "Drop", sourceDetail = "Twilight Lord Kelris (BFD)" },
    [6904] = { name = "Bite of Serra'kis", quality = 3, source = "Drop", sourceDetail = "Old Serra'kis (BFD)" },
    [6905] = { name = "Reef Axe", quality = 3, source = "Drop", sourceDetail = "Baron Aquanis (BFD)" },
    [6908] = { name = "Ghamoo-Ra's Bind", quality = 3, source = "Drop", sourceDetail = "Ghamoo-Ra (BFD)" },
    [6910] = { name = "Tortoise Armor", quality = 3, source = "Drop", sourceDetail = "Ghamoo-Ra (BFD)" },
    [6911] = { name = "Moss Cinch", quality = 3, source = "Drop", sourceDetail = "Lady Sarevess (BFD)" },
    [6903] = { name = "Toxic Revenger", quality = 3, source = "Drop", sourceDetail = "Aku'mai (BFD)" },
    [6906] = { name = "Algae Fists", quality = 3, source = "Drop", sourceDetail = "Old Serra'kis (BFD)" },
    [6909] = { name = "Strike of the Hydra", quality = 3, source = "Drop", sourceDetail = "Aku'mai (BFD)" },
    [6901] = { name = "Glowing Thresher Cape", quality = 3, source = "Drop", sourceDetail = "Old Serra'kis (BFD)" },
    [6902] = { name = "Bands of Serra'kis", quality = 3, source = "Drop", sourceDetail = "Old Serra'kis (BFD)" },

    -- ============================================================================
    --                          WORLD BOSSES
    -- ============================================================================
    -- Lord Kazzak
    [18546] = { name = "Infernal Headcage", quality = 4, source = "Drop", sourceDetail = "Lord Kazzak (Blasted Lands)" },
    [17111] = { name = "Blazefury Medallion", quality = 4, source = "Drop", sourceDetail = "Lord Kazzak (Blasted Lands)" },
    [17113] = { name = "Amberseal Keeper", quality = 4, source = "Drop", sourceDetail = "Lord Kazzak (Blasted Lands)" },
    [18543] = { name = "Ring of Entropy", quality = 4, source = "Drop", sourceDetail = "Lord Kazzak (Blasted Lands)" },
    [18544] = { name = "Doomhide Gauntlets", quality = 4, source = "Drop", sourceDetail = "Lord Kazzak (Blasted Lands)" },
    [18545] = { name = "Leggings of Arcane Supremacy", quality = 4, source = "Drop", sourceDetail = "Lord Kazzak (Blasted Lands)" },
    [17112] = { name = "Empyrean Demolisher", quality = 4, source = "Drop", sourceDetail = "Lord Kazzak (Blasted Lands)" },
    
    -- Azuregos
    [18204] = { name = "Eskhandar's Pelt", quality = 4, source = "Drop", sourceDetail = "Azuregos (Azshara)" },
    [18202] = { name = "Eskhandar's Left Claw", quality = 4, source = "Drop", sourceDetail = "Azuregos (Azshara)" },
    [17070] = { name = "Fang of the Mystics", quality = 4, source = "Drop", sourceDetail = "Azuregos (Azshara)" },
    [18541] = { name = "Puissant Cape", quality = 4, source = "Drop", sourceDetail = "Azuregos (Azshara)" },
    [18542] = { name = "Typhoon", quality = 4, source = "Drop", sourceDetail = "Azuregos (Azshara)" },
    [19131] = { name = "Snowblind Shoes", quality = 4, source = "Drop", sourceDetail = "Azuregos (Azshara)" },
    [19130] = { name = "Cold Snap", quality = 4, source = "Drop", sourceDetail = "Azuregos (Azshara)" },
    [18547] = { name = "Unmelting Ice Girdle", quality = 4, source = "Drop", sourceDetail = "Azuregos (Azshara)" },
    
    -- Dragons of Nightmare
    [18208] = { name = "Dragonheart Necklace", quality = 4, source = "Drop", sourceDetail = "Dragons of Nightmare" },
    [20644] = { name = "Nightmare Engulfed Object", quality = 4, source = "Drop", sourceDetail = "Dragons of Nightmare" },
    [20580] = { name = "Hammer of Bestial Fury", quality = 4, source = "Drop", sourceDetail = "Dragons of Nightmare" },
    [20581] = { name = "Staff of Rampant Growth", quality = 4, source = "Drop", sourceDetail = "Dragons of Nightmare" },
    [20579] = { name = "Green Dragonskin Cloak", quality = 4, source = "Drop", sourceDetail = "Dragons of Nightmare" },
    [20615] = { name = "Dragonspur Wraps", quality = 4, source = "Drop", sourceDetail = "Dragons of Nightmare" },
    [20616] = { name = "Dragonbone Wristguards", quality = 4, source = "Drop", sourceDetail = "Dragons of Nightmare" },
    [20617] = { name = "Ancient Corroded Leggings", quality = 4, source = "Drop", sourceDetail = "Dragons of Nightmare" },
    [20618] = { name = "Gloves of Delusional Power", quality = 4, source = "Drop", sourceDetail = "Dragons of Nightmare" },
    [20619] = { name = "Acid Inscribed Greaves", quality = 4, source = "Drop", sourceDetail = "Dragons of Nightmare" },
    [20621] = { name = "Boots of the Endless Moor", quality = 4, source = "Drop", sourceDetail = "Emeriss" },
    [20622] = { name = "Dragonhide Mantle", quality = 4, source = "Drop", sourceDetail = "Emeriss" },
    [20623] = { name = "Circlet of Restless Dreams", quality = 4, source = "Drop", sourceDetail = "Taerar" },
    [20624] = { name = "Ring of the Unliving", quality = 4, source = "Drop", sourceDetail = "Taerar" },
    [20625] = { name = "Belt of the Dark Bog", quality = 4, source = "Drop", sourceDetail = "Lethon" },
    [20626] = { name = "Black Bark Wristbands", quality = 4, source = "Drop", sourceDetail = "Lethon" },
    [20627] = { name = "Dark Heart Pants", quality = 4, source = "Drop", sourceDetail = "Ysondre" },
    [20628] = { name = "Deviate Growth Cap", quality = 4, source = "Drop", sourceDetail = "Ysondre" },
    
    -- ============================================================================
    --                    RUINS OF AHN'QIRAJ (AQ20)
    -- ============================================================================
    [21802] = { name = "The Eye of Hakkar", quality = 4, source = "Drop", sourceDetail = "Moam (AQ20)" },
    [21800] = { name = "Silithid Claw", quality = 4, source = "Drop", sourceDetail = "AQ20 Trash" },
    [21801] = { name = "Antenna of Invigoration", quality = 4, source = "Drop", sourceDetail = "AQ20 Trash" },
    [21803] = { name = "Helm of the Holy Avenger", quality = 4, source = "Drop", sourceDetail = "Buru the Gorger (AQ20)" },
    [21804] = { name = "Gloves of the Fallen Prophet", quality = 4, source = "Drop", sourceDetail = "Ossirian (AQ20)" },
    [21805] = { name = "Boots of the Fallen Prophet", quality = 4, source = "Drop", sourceDetail = "Ossirian (AQ20)" },
    [21806] = { name = "Gavel of Qiraji Authority", quality = 4, source = "Drop", sourceDetail = "Ossirian (AQ20)" },
    [21807] = { name = "Runic Stone Shoulders", quality = 4, source = "Drop", sourceDetail = "AQ20 Bosses" },
    [21808] = { name = "Scaled Bracers of the Gorger", quality = 4, source = "Drop", sourceDetail = "Buru the Gorger (AQ20)" },
    [21809] = { name = "Fury of the Forgotten Swarm", quality = 4, source = "Drop", sourceDetail = "Ayamiss the Hunter (AQ20)" },
    [21810] = { name = "Treads of the Wandering Nomad", quality = 4, source = "Drop", sourceDetail = "AQ20 Bosses" },
    [21456] = { name = "Mana Channeling Wand", quality = 3, source = "Drop", sourceDetail = "Ayamiss the Hunter (AQ20)" },
    [21457] = { name = "Cloak of Veiled Shadows", quality = 3, source = "Drop", sourceDetail = "Kurinnaxx (AQ20)" },
    [21458] = { name = "Scaled Sand Reaver Leggings", quality = 4, source = "Drop", sourceDetail = "Kurinnaxx (AQ20)" },
    [21459] = { name = "Crossbow of Imminent Doom", quality = 4, source = "Drop", sourceDetail = "General Rajaxx (AQ20)" },
    [21460] = { name = "Helm of Regrowth", quality = 4, source = "Drop", sourceDetail = "General Rajaxx (AQ20)" },
    [21461] = { name = "Leggings of the Black Blizzard", quality = 4, source = "Drop", sourceDetail = "General Rajaxx (AQ20)" },
    [21462] = { name = "Gloves of Dark Wisdom", quality = 4, source = "Drop", sourceDetail = "AQ20 Bosses" },
    [21463] = { name = "Ossirian's Binding", quality = 4, source = "Drop", sourceDetail = "Ossirian (AQ20)" },
    [21464] = { name = "Shrieker's Bow", quality = 4, source = "Drop", sourceDetail = "Ayamiss the Hunter (AQ20)" },
    [21465] = { name = "Band of Veiled Shadows", quality = 4, source = "Drop", sourceDetail = "AQ20 Bosses" },
    [21466] = { name = "Stinger of Ayamiss", quality = 4, source = "Drop", sourceDetail = "Ayamiss the Hunter (AQ20)" },
    [21467] = { name = "Thick Qirajihide Belt", quality = 4, source = "Drop", sourceDetail = "Buru the Gorger (AQ20)" },
    [21468] = { name = "Mantle of Maz'Nadir", quality = 4, source = "Drop", sourceDetail = "Moam (AQ20)" },
    [21469] = { name = "Gauntlets of the Immovable", quality = 4, source = "Drop", sourceDetail = "Moam (AQ20)" },
    [21470] = { name = "Cloak of the Savior", quality = 4, source = "Drop", sourceDetail = "Moam (AQ20)" },
    [21471] = { name = "Talon of Furious Concentration", quality = 4, source = "Drop", sourceDetail = "Moam (AQ20)" },
    [21472] = { name = "Dustwind Turban", quality = 4, source = "Drop", sourceDetail = "Buru the Gorger (AQ20)" },
    [21473] = { name = "Eye of Moam", quality = 4, source = "Drop", sourceDetail = "Moam (AQ20)" },
    [21474] = { name = "Chitinous Shoulderguards", quality = 4, source = "Drop", sourceDetail = "Buru the Gorger (AQ20)" },
    [21475] = { name = "Legplates of the Qiraji Command", quality = 4, source = "Drop", sourceDetail = "General Rajaxx (AQ20)" },
    [21476] = { name = "Obsidian Scaled Leggings", quality = 4, source = "Drop", sourceDetail = "Moam (AQ20)" },
    [21477] = { name = "Ring of Fury", quality = 4, source = "Drop", sourceDetail = "General Rajaxx (AQ20)" },
    [21478] = { name = "Bow of Taut Sinew", quality = 4, source = "Drop", sourceDetail = "Ossirian (AQ20)" },
    [21479] = { name = "Gauntlets of New Life", quality = 4, source = "Drop", sourceDetail = "Ossirian (AQ20)" },
    [21480] = { name = "Sand Polished Hammer", quality = 4, source = "Drop", sourceDetail = "Ossirian (AQ20)" },
    
    -- ============================================================================
    --                    TEMPLE OF AHN'QIRAJ (AQ40)
    -- ============================================================================
    -- C'Thun
    [21126] = { name = "Death's Sting", quality = 4, source = "Drop", sourceDetail = "C'Thun (Temple of Ahn'Qiraj)" },
    [21134] = { name = "Dark Edge of Insanity", quality = 4, source = "Drop", sourceDetail = "C'Thun (Temple of Ahn'Qiraj)" },
    [21135] = { name = "Dark Storm Gauntlets", quality = 4, source = "Drop", sourceDetail = "C'Thun (Temple of Ahn'Qiraj)" },
    [21139] = { name = "Eyestalk Waist Cord", quality = 4, source = "Drop", sourceDetail = "C'Thun (Temple of Ahn'Qiraj)" },
    [21221] = { name = "Eye of C'Thun", quality = 4, source = "Drop", sourceDetail = "C'Thun (Temple of Ahn'Qiraj)" },
    [20928] = { name = "Carapace of the Old God", quality = 4, source = "Drop", sourceDetail = "C'Thun (Temple of Ahn'Qiraj)" },
    [20929] = { name = "Carapace of the Old God", quality = 4, source = "Drop", sourceDetail = "C'Thun (Temple of Ahn'Qiraj)" },
    [20933] = { name = "Husk of the Old God", quality = 4, source = "Drop", sourceDetail = "C'Thun (Temple of Ahn'Qiraj)" },
    [21583] = { name = "Cloak of Clarity", quality = 4, source = "Drop", sourceDetail = "C'Thun (AQ40)" },
    [21585] = { name = "Dark Cloak of Shadows", quality = 4, source = "Drop", sourceDetail = "C'Thun (AQ40)" },
    [21586] = { name = "Belt of Never-ending Agony", quality = 4, source = "Drop", sourceDetail = "C'Thun (AQ40)" },
    [21710] = { name = "Cloak of the Devoured", quality = 4, source = "Drop", sourceDetail = "C'Thun (AQ40)" },
    
    -- Twin Emperors
    [20926] = { name = "Vek'nilash's Circlet", quality = 4, source = "Drop", sourceDetail = "Twin Emperors (Temple of Ahn'Qiraj)" },
    [20930] = { name = "Vek'lor's Diadem", quality = 4, source = "Drop", sourceDetail = "Twin Emperors (Temple of Ahn'Qiraj)" },
    [21599] = { name = "Vek'lor's Gloves of Devastation", quality = 4, source = "Drop", sourceDetail = "Twin Emperors (AQ40)" },
    [21598] = { name = "Royal Qiraji Belt", quality = 4, source = "Drop", sourceDetail = "Twin Emperors (AQ40)" },
    [21600] = { name = "Boots of Epiphany", quality = 4, source = "Drop", sourceDetail = "Twin Emperors (AQ40)" },
    [21601] = { name = "Ring of Emperor Vek'lor", quality = 4, source = "Drop", sourceDetail = "Twin Emperors (AQ40)" },
    [21602] = { name = "Qiraji Execution Bracers", quality = 4, source = "Drop", sourceDetail = "Twin Emperors (AQ40)" },
    [21603] = { name = "Wand of Qiraji Nobility", quality = 4, source = "Drop", sourceDetail = "Twin Emperors (AQ40)" },
    [21604] = { name = "Bracelets of Royal Redemption", quality = 4, source = "Drop", sourceDetail = "Twin Emperors (AQ40)" },
    [21605] = { name = "Gloves of the Hidden Temple", quality = 4, source = "Drop", sourceDetail = "Twin Emperors (AQ40)" },
    [21606] = { name = "Belt of the Fallen Emperor", quality = 4, source = "Drop", sourceDetail = "Twin Emperors (AQ40)" },
    [21607] = { name = "Grasp of the Fallen Emperor", quality = 4, source = "Drop", sourceDetail = "Twin Emperors (AQ40)" },
    [21608] = { name = "Amulet of Vek'nilash", quality = 4, source = "Drop", sourceDetail = "Twin Emperors (AQ40)" },
    [21609] = { name = "Regenerating Belt of Vek'nilash", quality = 4, source = "Drop", sourceDetail = "Twin Emperors (AQ40)" },
    [21679] = { name = "Kri'tak, Imperial Scepter of the Swarm", quality = 4, source = "Drop", sourceDetail = "Twin Emperors (AQ40)" },
    
    -- Ouro
    [20927] = { name = "Ouro's Intact Hide", quality = 4, source = "Drop", sourceDetail = "Ouro (Temple of Ahn'Qiraj)" },
    [20932] = { name = "Skin of the Great Sandworm", quality = 4, source = "Drop", sourceDetail = "Ouro (Temple of Ahn'Qiraj)" },
    [21611] = { name = "Burrower Bracers", quality = 4, source = "Drop", sourceDetail = "Ouro (AQ40)" },
    [21615] = { name = "Don Rigoberto's Lost Hat", quality = 4, source = "Drop", sourceDetail = "Ouro (AQ40)" },
    [21617] = { name = "Wormscale Blocker", quality = 4, source = "Drop", sourceDetail = "Ouro (AQ40)" },
    [21618] = { name = "Hive Defiler Wristguards", quality = 4, source = "Drop", sourceDetail = "Ouro (AQ40)" },
    [21619] = { name = "Gloves of the Messiah", quality = 4, source = "Drop", sourceDetail = "Ouro (AQ40)" },
    [21620] = { name = "Ring of the Godslayer", quality = 4, source = "Drop", sourceDetail = "Ouro (AQ40)" },
    [21621] = { name = "Cloak of the Unseen Path", quality = 4, source = "Drop", sourceDetail = "Ouro (AQ40)" },
    [21622] = { name = "Sharpened Silithid Femur", quality = 4, source = "Drop", sourceDetail = "Ouro (AQ40)" },
    [23558] = { name = "The Burrower's Shell", quality = 4, source = "Drop", sourceDetail = "Ouro (AQ40)" },
    
    -- Other AQ40 Bosses
    [21232] = { name = "Imperial Qiraji Armaments", quality = 4, source = "Drop", sourceDetail = "Temple of Ahn'Qiraj Trash" },
    [21237] = { name = "Imperial Qiraji Regalia", quality = 4, source = "Drop", sourceDetail = "Temple of Ahn'Qiraj Trash" },
    [21650] = { name = "Ancient Qiraji Ripper", quality = 4, source = "Quest", sourceDetail = "Imperial Qiraji Armaments" },
    [21651] = { name = "Blessed Qiraji Warhammer", quality = 4, source = "Quest", sourceDetail = "Imperial Qiraji Armaments" },
    [21652] = { name = "Blessed Qiraji Bulwark", quality = 4, source = "Quest", sourceDetail = "Imperial Qiraji Armaments" },
    [21653] = { name = "Blessed Qiraji Acolyte Staff", quality = 4, source = "Quest", sourceDetail = "Imperial Qiraji Regalia" },
    [21654] = { name = "Blessed Qiraji Augur Staff", quality = 4, source = "Quest", sourceDetail = "Imperial Qiraji Regalia" },
    [21655] = { name = "Blessed Qiraji Musket", quality = 4, source = "Quest", sourceDetail = "Imperial Qiraji Regalia" },
    [21656] = { name = "Blessed Qiraji Pugio", quality = 4, source = "Quest", sourceDetail = "Imperial Qiraji Armaments" },
    [21663] = { name = "Robes of the Guardian Saint", quality = 4, source = "Drop", sourceDetail = "Prophet Skeram (AQ40)" },
    [21664] = { name = "Barbed Choker", quality = 4, source = "Drop", sourceDetail = "Fankriss the Unyielding (AQ40)" },
    [21665] = { name = "Mantle of Wicked Revenge", quality = 4, source = "Drop", sourceDetail = "Battleguard Sartura (AQ40)" },
    [21666] = { name = "Sartura's Might", quality = 4, source = "Drop", sourceDetail = "Battleguard Sartura (AQ40)" },
    [21667] = { name = "Legplates of Blazing Light", quality = 4, source = "Drop", sourceDetail = "Battleguard Sartura (AQ40)" },
    [21668] = { name = "Scaled Leggings of Qiraji Fury", quality = 4, source = "Drop", sourceDetail = "Battleguard Sartura (AQ40)" },
    [21669] = { name = "Creeping Vine Helm", quality = 4, source = "Drop", sourceDetail = "Princess Huhuran (AQ40)" },
    [21670] = { name = "Badge of the Swarmguard", quality = 4, source = "Drop", sourceDetail = "Battleguard Sartura (AQ40)" },
    [21671] = { name = "Robes of the Battleguard", quality = 4, source = "Drop", sourceDetail = "Battleguard Sartura (AQ40)" },
    [21672] = { name = "Gloves of Ebru", quality = 4, source = "Drop", sourceDetail = "Princess Huhuran (AQ40)" },
    [21673] = { name = "Silithid Claw", quality = 4, source = "Drop", sourceDetail = "AQ40 Trash" },
    [21674] = { name = "Gauntlets of Kalimdor", quality = 4, source = "Drop", sourceDetail = "Princess Huhuran (AQ40)" },
    [21675] = { name = "Thick Silithid Chestguard", quality = 4, source = "Drop", sourceDetail = "Fankriss the Unyielding (AQ40)" },
    [21676] = { name = "Leggings of the Festering Swarm", quality = 4, source = "Drop", sourceDetail = "Princess Huhuran (AQ40)" },
    [21677] = { name = "Ring of the Qiraji Fury", quality = 4, source = "Drop", sourceDetail = "Princess Huhuran (AQ40)" },
    [21678] = { name = "Necklace of Purity", quality = 4, source = "Drop", sourceDetail = "Princess Huhuran (AQ40)" },
    [21680] = { name = "Vest of Swift Execution", quality = 4, source = "Drop", sourceDetail = "Princess Huhuran (AQ40)" },
    [21681] = { name = "Ring of the Devoured", quality = 4, source = "Drop", sourceDetail = "Fankriss the Unyielding (AQ40)" },
    [21682] = { name = "Bile-Covered Gauntlets", quality = 4, source = "Drop", sourceDetail = "Viscidus (AQ40)" },
    [21683] = { name = "Mantle of the Desert's Fury", quality = 4, source = "Drop", sourceDetail = "Fankriss the Unyielding (AQ40)" },
    [21684] = { name = "Mantle of the Desert Crusade", quality = 4, source = "Drop", sourceDetail = "Fankriss the Unyielding (AQ40)" },
    [21685] = { name = "Petrified Scarab", quality = 4, source = "Drop", sourceDetail = "Viscidus (AQ40)" },
    [21686] = { name = "Mantle of Phrenic Power", quality = 4, source = "Drop", sourceDetail = "Fankriss the Unyielding (AQ40)" },
    [21687] = { name = "Ukko's Ring of Darkness", quality = 4, source = "Drop", sourceDetail = "Fankriss the Unyielding (AQ40)" },
    [21688] = { name = "Boots of the Fallen Hero", quality = 4, source = "Drop", sourceDetail = "Fankriss the Unyielding (AQ40)" },
    [21689] = { name = "Gloves of Infinite Wisdom", quality = 4, source = "Drop", sourceDetail = "Prophet Skeram (AQ40)" },
    [21690] = { name = "Angelista's Charm", quality = 4, source = "Drop", sourceDetail = "Prophet Skeram (AQ40)" },
    [21691] = { name = "Ooze-covered Ring", quality = 4, source = "Drop", sourceDetail = "Viscidus (AQ40)" },
    [21692] = { name = "Triad Girdle", quality = 4, source = "Drop", sourceDetail = "Bug Trio (AQ40)" },
    [21693] = { name = "Guise of the Devourer", quality = 4, source = "Drop", sourceDetail = "Bug Trio (AQ40)" },
    [21694] = { name = "Ternary Mantle", quality = 4, source = "Drop", sourceDetail = "Bug Trio (AQ40)" },
    [21695] = { name = "Angelista's Touch", quality = 4, source = "Drop", sourceDetail = "Bug Trio (AQ40)" },
    [21696] = { name = "Robes of the Triumvirate", quality = 4, source = "Drop", sourceDetail = "Bug Trio (AQ40)" },
    
    -- AQ40 Tier 2.5 Tokens
    [20876] = { name = "Idol of Death", quality = 4, source = "Drop", sourceDetail = "AQ40 Bosses" },
    [20877] = { name = "Idol of Life", quality = 4, source = "Drop", sourceDetail = "AQ40 Bosses" },
    [20878] = { name = "Idol of Night", quality = 4, source = "Drop", sourceDetail = "AQ40 Bosses" },
    [20879] = { name = "Idol of the Sage", quality = 4, source = "Drop", sourceDetail = "AQ40 Bosses" },
    [20880] = { name = "Idol of the Sun", quality = 4, source = "Drop", sourceDetail = "AQ40 Bosses" },
    [20881] = { name = "Idol of Strife", quality = 4, source = "Drop", sourceDetail = "AQ40 Bosses" },
    [20882] = { name = "Idol of War", quality = 4, source = "Drop", sourceDetail = "AQ40 Bosses" },
    [20883] = { name = "Idol of Rebirth", quality = 4, source = "Drop", sourceDetail = "AQ40 Bosses" },
    [20884] = { name = "Qiraji Bindings of Dominance", quality = 4, source = "Drop", sourceDetail = "AQ40 Bosses" },
    [20885] = { name = "Qiraji Bindings of Command", quality = 4, source = "Drop", sourceDetail = "AQ40 Bosses" },
    [20886] = { name = "Qiraji Martial Drape", quality = 4, source = "Drop", sourceDetail = "AQ40 Bosses" },
    [20888] = { name = "Qiraji Regal Drape", quality = 4, source = "Drop", sourceDetail = "AQ40 Bosses" },
    [20889] = { name = "Qiraji Ornate Hilt", quality = 4, source = "Drop", sourceDetail = "AQ40 Bosses" },
    [20890] = { name = "Qiraji Spiked Hilt", quality = 4, source = "Drop", sourceDetail = "AQ40 Bosses" },
    
    -- ============================================================================
    --                          NAXXRAMAS
    -- ============================================================================
    -- Kel'Thuzad
    [22691] = { name = "Corrupted Ashbringer", quality = 4, source = "Drop", sourceDetail = "The Four Horsemen (Naxxramas)" },
    [23054] = { name = "Gressil, Dawn of Ruin", quality = 4, source = "Drop", sourceDetail = "Kel'Thuzad (Naxxramas)" },
    [23056] = { name = "Hammer of the Twisting Nether", quality = 4, source = "Drop", sourceDetail = "Kel'Thuzad (Naxxramas)" },
    [23577] = { name = "The Hungering Cold", quality = 4, source = "Drop", sourceDetail = "Kel'Thuzad (Naxxramas)" },
    [22798] = { name = "Might of Menethil", quality = 4, source = "Drop", sourceDetail = "Kel'Thuzad (Naxxramas)" },
    [22799] = { name = "Soulseeker", quality = 4, source = "Drop", sourceDetail = "Kel'Thuzad (Naxxramas)" },
    [22802] = { name = "Kingsfall", quality = 4, source = "Drop", sourceDetail = "Kel'Thuzad (Naxxramas)" },
    [22812] = { name = "Nerubian Slavemaker", quality = 4, source = "Drop", sourceDetail = "Kel'Thuzad (Naxxramas)" },
    [22520] = { name = "The Phylactery of Kel'Thuzad", quality = 4, source = "Drop", sourceDetail = "Kel'Thuzad (Naxxramas)" },
    [22821] = { name = "Doomfinger", quality = 4, source = "Drop", sourceDetail = "Kel'Thuzad (Naxxramas)" },
    [22819] = { name = "Shield of Condemnation", quality = 4, source = "Drop", sourceDetail = "Kel'Thuzad (Naxxramas)" },
    [22820] = { name = "Wand of the Whispering Dead", quality = 4, source = "Drop", sourceDetail = "Kel'Thuzad (Naxxramas)" },
    [23057] = { name = "Gem of Trapped Innocents", quality = 4, source = "Drop", sourceDetail = "Kel'Thuzad (Naxxramas)" },
    [23059] = { name = "Ring of Faith", quality = 4, source = "Drop", sourceDetail = "Kel'Thuzad (Naxxramas)" },
    [23060] = { name = "Bonescythe Ring", quality = 4, source = "Drop", sourceDetail = "Kel'Thuzad (Naxxramas)" },
    [23061] = { name = "Ring of the Dreamwalker", quality = 4, source = "Drop", sourceDetail = "Kel'Thuzad (Naxxramas)" },
    [23062] = { name = "Frostfire Ring", quality = 4, source = "Drop", sourceDetail = "Kel'Thuzad (Naxxramas)" },
    [23063] = { name = "Plagueheart Ring", quality = 4, source = "Drop", sourceDetail = "Kel'Thuzad (Naxxramas)" },
    [23064] = { name = "Ring of the Earthshatterer", quality = 4, source = "Drop", sourceDetail = "Kel'Thuzad (Naxxramas)" },
    [23065] = { name = "Ring of Redemption", quality = 4, source = "Drop", sourceDetail = "Kel'Thuzad (Naxxramas)" },
    [23066] = { name = "Ring of the Cryptstalker", quality = 4, source = "Drop", sourceDetail = "Kel'Thuzad (Naxxramas)" },
    [23067] = { name = "Ring of the Dreadnaught", quality = 4, source = "Drop", sourceDetail = "Kel'Thuzad (Naxxramas)" },
    
    -- The Four Horsemen
    [22667] = { name = "Leggings of Apocalypse", quality = 4, source = "Drop", sourceDetail = "Four Horsemen (Naxxramas)" },
    [22668] = { name = "Shoulderpads of Faith", quality = 4, source = "Drop", sourceDetail = "Four Horsemen (Naxxramas)" },
    [22670] = { name = "Plagueheart Sandals", quality = 4, source = "Drop", sourceDetail = "Four Horsemen (Naxxramas)" },
    [22671] = { name = "Frostfire Sandals", quality = 4, source = "Drop", sourceDetail = "Four Horsemen (Naxxramas)" },
    [22672] = { name = "Earthshatter Handguards", quality = 4, source = "Drop", sourceDetail = "Four Horsemen (Naxxramas)" },
    [22673] = { name = "Cryptstalker Handguards", quality = 4, source = "Drop", sourceDetail = "Four Horsemen (Naxxramas)" },
    [22674] = { name = "Redemption Handguards", quality = 4, source = "Drop", sourceDetail = "Four Horsemen (Naxxramas)" },
    [22675] = { name = "Dreamwalker Handguards", quality = 4, source = "Drop", sourceDetail = "Four Horsemen (Naxxramas)" },
    [22690] = { name = "Nax'ramas Tome", quality = 4, source = "Drop", sourceDetail = "Four Horsemen (Naxxramas)" },
    [22809] = { name = "Maul of the Redeemed Crusader", quality = 4, source = "Drop", sourceDetail = "Four Horsemen (Naxxramas)" },
    [22811] = { name = "Soulstring", quality = 4, source = "Drop", sourceDetail = "Four Horsemen (Naxxramas)" },
    
    -- Sapphiron
    [23039] = { name = "The Face of Death", quality = 4, source = "Drop", sourceDetail = "Sapphiron (Naxxramas)" },
    [23040] = { name = "Glyph of Deflection", quality = 4, source = "Drop", sourceDetail = "Sapphiron (Naxxramas)" },
    [23041] = { name = "Slayer's Crest", quality = 4, source = "Drop", sourceDetail = "Sapphiron (Naxxramas)" },
    [23042] = { name = "Loatheb's Reflection", quality = 4, source = "Drop", sourceDetail = "Sapphiron (Naxxramas)" },
    [23043] = { name = "The Restrained Essence of Sapphiron", quality = 4, source = "Drop", sourceDetail = "Sapphiron (Naxxramas)" },
    [23045] = { name = "Shroud of Dominion", quality = 4, source = "Drop", sourceDetail = "Sapphiron (Naxxramas)" },
    [23046] = { name = "The Glacial Devourer", quality = 4, source = "Drop", sourceDetail = "Sapphiron (Naxxramas)" },
    [23047] = { name = "Eye of the Dead", quality = 4, source = "Drop", sourceDetail = "Sapphiron (Naxxramas)" },
    [23048] = { name = "Sapphiron's Right Eye", quality = 4, source = "Drop", sourceDetail = "Sapphiron (Naxxramas)" },
    [23049] = { name = "Sapphiron's Left Eye", quality = 4, source = "Drop", sourceDetail = "Sapphiron (Naxxramas)" },
    [23050] = { name = "Cloak of the Necropolis", quality = 4, source = "Drop", sourceDetail = "Sapphiron (Naxxramas)" },
    
    -- Other Naxxramas Bosses
    [22353] = { name = "Kel'Thuzad's Staff of Domination", quality = 4, source = "Quest", sourceDetail = "Atiesh Quest" },
    [22354] = { name = "Atiesh, Greatstaff of the Guardian (Mage)", quality = 5, source = "Quest", sourceDetail = "40 Splinters (Naxxramas)" },
    [22355] = { name = "Atiesh, Greatstaff of the Guardian (Warlock)", quality = 5, source = "Quest", sourceDetail = "40 Splinters (Naxxramas)" },
    [22356] = { name = "Atiesh, Greatstaff of the Guardian (Priest)", quality = 5, source = "Quest", sourceDetail = "40 Splinters (Naxxramas)" },
    [22357] = { name = "Atiesh, Greatstaff of the Guardian (Druid)", quality = 5, source = "Quest", sourceDetail = "40 Splinters (Naxxramas)" },
    [22358] = { name = "Desecrated Pauldrons", quality = 4, source = "Drop", sourceDetail = "Patchwerk/Grobbulus/Gluth (Naxxramas)" },
    [22359] = { name = "Desecrated Spaulders", quality = 4, source = "Drop", sourceDetail = "Patchwerk/Grobbulus/Gluth (Naxxramas)" },
    [22360] = { name = "Desecrated Mantle", quality = 4, source = "Drop", sourceDetail = "Patchwerk/Grobbulus/Gluth (Naxxramas)" },
    [22361] = { name = "Desecrated Wristguards", quality = 4, source = "Drop", sourceDetail = "Noth/Heigan/Anub'Rekhan (Naxxramas)" },
    [22362] = { name = "Desecrated Bracers", quality = 4, source = "Drop", sourceDetail = "Noth/Heigan/Anub'Rekhan (Naxxramas)" },
    [22363] = { name = "Desecrated Bindings", quality = 4, source = "Drop", sourceDetail = "Noth/Heigan/Anub'Rekhan (Naxxramas)" },
    [22364] = { name = "Desecrated Waistguard", quality = 4, source = "Drop", sourceDetail = "Razuvious/Gothik/Faerlina (Naxxramas)" },
    [22365] = { name = "Desecrated Girdle", quality = 4, source = "Drop", sourceDetail = "Razuvious/Gothik/Faerlina (Naxxramas)" },
    [22366] = { name = "Desecrated Belt", quality = 4, source = "Drop", sourceDetail = "Razuvious/Gothik/Faerlina (Naxxramas)" },
    [22367] = { name = "Desecrated Gauntlets", quality = 4, source = "Drop", sourceDetail = "Maexxna/Thaddius (Naxxramas)" },
    [22368] = { name = "Desecrated Handguards", quality = 4, source = "Drop", sourceDetail = "Maexxna/Thaddius (Naxxramas)" },
    [22369] = { name = "Desecrated Gloves", quality = 4, source = "Drop", sourceDetail = "Maexxna/Thaddius (Naxxramas)" },
    
    -- Tier 3 Tokens
    [22349] = { name = "Desecrated Breastplate", quality = 4, source = "Drop", sourceDetail = "The Four Horsemen (Naxxramas)" },
    [22350] = { name = "Desecrated Tunic", quality = 4, source = "Drop", sourceDetail = "The Four Horsemen (Naxxramas)" },
    [22351] = { name = "Desecrated Robe", quality = 4, source = "Drop", sourceDetail = "The Four Horsemen (Naxxramas)" },
    [22352] = { name = "Desecrated Legplates", quality = 4, source = "Drop", sourceDetail = "Loatheb/Thaddius (Naxxramas)" },
    [22354] = { name = "Desecrated Leggings", quality = 4, source = "Drop", sourceDetail = "Loatheb/Thaddius (Naxxramas)" },
    [22370] = { name = "Desecrated Sabatons", quality = 4, source = "Drop", sourceDetail = "Maexxna/Thaddius (Naxxramas)" },
    [22371] = { name = "Desecrated Boots", quality = 4, source = "Drop", sourceDetail = "Maexxna/Thaddius (Naxxramas)" },
    [22372] = { name = "Desecrated Sandals", quality = 4, source = "Drop", sourceDetail = "Maexxna/Thaddius (Naxxramas)" },
    [22416] = { name = "Desecrated Circlet", quality = 4, source = "Drop", sourceDetail = "Kel'Thuzad (Naxxramas)" },
    [22417] = { name = "Desecrated Headpiece", quality = 4, source = "Drop", sourceDetail = "Kel'Thuzad (Naxxramas)" },
    [22418] = { name = "Desecrated Helmet", quality = 4, source = "Drop", sourceDetail = "Kel'Thuzad (Naxxramas)" },
    [22419] = { name = "Desecrated Shoulderpads", quality = 4, source = "Drop", sourceDetail = "Loatheb/Thaddius (Naxxramas)" },
    [22420] = { name = "Desecrated Pauldrons", quality = 4, source = "Drop", sourceDetail = "Loatheb/Thaddius (Naxxramas)" },
    [22421] = { name = "Desecrated Legguards", quality = 4, source = "Drop", sourceDetail = "Loatheb/Thaddius (Naxxramas)" },
    [22422] = { name = "Desecrated Legplates", quality = 4, source = "Drop", sourceDetail = "Loatheb/Thaddius (Naxxramas)" },
    [22423] = { name = "Desecrated Leg Armor", quality = 4, source = "Drop", sourceDetail = "Loatheb/Thaddius (Naxxramas)" },
    
    -- Naxxramas Weapons and Other Drops
    [22801] = { name = "Spire of Twilight", quality = 4, source = "Drop", sourceDetail = "Gothik the Harvester (Naxxramas)" },
    [22803] = { name = "Midnight Haze", quality = 4, source = "Drop", sourceDetail = "Maexxna (Naxxramas)" },
    [22804] = { name = "Maexxna's Fang", quality = 4, source = "Drop", sourceDetail = "Maexxna (Naxxramas)" },
    [22806] = { name = "Widow's Remorse", quality = 4, source = "Drop", sourceDetail = "Maexxna (Naxxramas)" },
    [22807] = { name = "Wraith Blade", quality = 4, source = "Drop", sourceDetail = "Maexxna (Naxxramas)" },
    [22808] = { name = "The Castigator", quality = 4, source = "Drop", sourceDetail = "Noth the Plaguebringer (Naxxramas)" },
    [22809] = { name = "Maul of the Redeemed Crusader", quality = 4, source = "Drop", sourceDetail = "The Four Horsemen (Naxxramas)" },
    [22810] = { name = "Toxin Injector", quality = 4, source = "Drop", sourceDetail = "Grobbulus (Naxxramas)" },
    [22815] = { name = "Severance", quality = 4, source = "Drop", sourceDetail = "Gothik the Harvester (Naxxramas)" },
    [22816] = { name = "Hatchet of Sundered Bone", quality = 4, source = "Drop", sourceDetail = "Patchwerk (Naxxramas)" },
    [22818] = { name = "The Plague Bearer", quality = 4, source = "Drop", sourceDetail = "Loatheb (Naxxramas)" },
    
    -- ============================================================================
    --                     TIER 0 DUNGEON SETS (5-man dungeons)
    -- ============================================================================
    -- Magister's (Mage)
    [16686] = { name = "Magister's Bindings", quality = 3, source = "Drop", sourceDetail = "LBRS/UBRS", class = "MAGE" },
    [16687] = { name = "Magister's Belt", quality = 3, source = "Drop", sourceDetail = "LBRS/UBRS", class = "MAGE" },
    [16688] = { name = "Magister's Boots", quality = 3, source = "Drop", sourceDetail = "Stratholme", class = "MAGE" },
    [16689] = { name = "Magister's Gloves", quality = 3, source = "Drop", sourceDetail = "Scholomance", class = "MAGE" },
    [16690] = { name = "Magister's Mantle", quality = 3, source = "Drop", sourceDetail = "UBRS", class = "MAGE" },
    [16691] = { name = "Magister's Leggings", quality = 3, source = "Drop", sourceDetail = "BRD", class = "MAGE" },
    [16692] = { name = "Magister's Robes", quality = 3, source = "Drop", sourceDetail = "BRD", class = "MAGE" },
    [16693] = { name = "Magister's Crown", quality = 3, source = "Drop", sourceDetail = "Scholomance", class = "MAGE" },
    
    -- Dreadmist (Warlock)
    [16700] = { name = "Dreadmist Bracers", quality = 3, source = "Drop", sourceDetail = "LBRS/UBRS", class = "WARLOCK" },
    [16701] = { name = "Dreadmist Belt", quality = 3, source = "Drop", sourceDetail = "LBRS/UBRS", class = "WARLOCK" },
    [16702] = { name = "Dreadmist Sandals", quality = 3, source = "Drop", sourceDetail = "Stratholme", class = "WARLOCK" },
    [16703] = { name = "Dreadmist Wraps", quality = 3, source = "Drop", sourceDetail = "Scholomance", class = "WARLOCK" },
    [16704] = { name = "Dreadmist Mantle", quality = 3, source = "Drop", sourceDetail = "UBRS", class = "WARLOCK" },
    [16705] = { name = "Dreadmist Leggings", quality = 3, source = "Drop", sourceDetail = "BRD", class = "WARLOCK" },
    [16706] = { name = "Dreadmist Robe", quality = 3, source = "Drop", sourceDetail = "BRD", class = "WARLOCK" },
    [16707] = { name = "Dreadmist Mask", quality = 3, source = "Drop", sourceDetail = "Scholomance", class = "WARLOCK" },
    
    -- Devout (Priest)
    [16693] = { name = "Devout Bracers", quality = 3, source = "Drop", sourceDetail = "LBRS/UBRS", class = "PRIEST" },
    [16694] = { name = "Devout Belt", quality = 3, source = "Drop", sourceDetail = "LBRS/UBRS", class = "PRIEST" },
    [16695] = { name = "Devout Sandals", quality = 3, source = "Drop", sourceDetail = "Stratholme", class = "PRIEST" },
    [16696] = { name = "Devout Gloves", quality = 3, source = "Drop", sourceDetail = "Scholomance", class = "PRIEST" },
    [16697] = { name = "Devout Mantle", quality = 3, source = "Drop", sourceDetail = "UBRS", class = "PRIEST" },
    [16698] = { name = "Devout Skirt", quality = 3, source = "Drop", sourceDetail = "BRD", class = "PRIEST" },
    [16699] = { name = "Devout Robe", quality = 3, source = "Drop", sourceDetail = "BRD", class = "PRIEST" },
    [16663] = { name = "Devout Crown", quality = 3, source = "Drop", sourceDetail = "Scholomance", class = "PRIEST" },
    
    -- Shadowcraft (Rogue)
    [16708] = { name = "Shadowcraft Bracers", quality = 3, source = "Drop", sourceDetail = "LBRS/UBRS", class = "ROGUE" },
    [16709] = { name = "Shadowcraft Belt", quality = 3, source = "Drop", sourceDetail = "LBRS/UBRS", class = "ROGUE" },
    [16710] = { name = "Shadowcraft Boots", quality = 3, source = "Drop", sourceDetail = "Stratholme", class = "ROGUE" },
    [16711] = { name = "Shadowcraft Gloves", quality = 3, source = "Drop", sourceDetail = "Scholomance", class = "ROGUE" },
    [16712] = { name = "Shadowcraft Spaulders", quality = 3, source = "Drop", sourceDetail = "UBRS", class = "ROGUE" },
    [16713] = { name = "Shadowcraft Pants", quality = 3, source = "Drop", sourceDetail = "BRD", class = "ROGUE" },
    [16714] = { name = "Shadowcraft Tunic", quality = 3, source = "Drop", sourceDetail = "BRD", class = "ROGUE" },
    [16715] = { name = "Shadowcraft Cap", quality = 3, source = "Drop", sourceDetail = "Scholomance", class = "ROGUE" },
    
    -- Wildheart (Druid)
    [16716] = { name = "Wildheart Bracers", quality = 3, source = "Drop", sourceDetail = "LBRS/UBRS", class = "DRUID" },
    [16717] = { name = "Wildheart Belt", quality = 3, source = "Drop", sourceDetail = "LBRS/UBRS", class = "DRUID" },
    [16718] = { name = "Wildheart Boots", quality = 3, source = "Drop", sourceDetail = "Stratholme", class = "DRUID" },
    [16719] = { name = "Wildheart Gloves", quality = 3, source = "Drop", sourceDetail = "Scholomance", class = "DRUID" },
    [16720] = { name = "Wildheart Spaulders", quality = 3, source = "Drop", sourceDetail = "UBRS", class = "DRUID" },
    [16721] = { name = "Wildheart Kilt", quality = 3, source = "Drop", sourceDetail = "BRD", class = "DRUID" },
    [16722] = { name = "Wildheart Vest", quality = 3, source = "Drop", sourceDetail = "BRD", class = "DRUID" },
    [16723] = { name = "Wildheart Cowl", quality = 3, source = "Drop", sourceDetail = "Scholomance", class = "DRUID" },
    
    -- Beaststalker (Hunter)
    [16672] = { name = "Beaststalker's Bindings", quality = 3, source = "Drop", sourceDetail = "LBRS/UBRS", class = "HUNTER" },
    [16673] = { name = "Beaststalker's Belt", quality = 3, source = "Drop", sourceDetail = "LBRS/UBRS", class = "HUNTER" },
    [16674] = { name = "Beaststalker's Boots", quality = 3, source = "Drop", sourceDetail = "Stratholme", class = "HUNTER" },
    [16675] = { name = "Beaststalker's Gloves", quality = 3, source = "Drop", sourceDetail = "Scholomance", class = "HUNTER" },
    [16676] = { name = "Beaststalker's Mantle", quality = 3, source = "Drop", sourceDetail = "UBRS", class = "HUNTER" },
    [16677] = { name = "Beaststalker's Pants", quality = 3, source = "Drop", sourceDetail = "BRD", class = "HUNTER" },
    [16678] = { name = "Beaststalker's Tunic", quality = 3, source = "Drop", sourceDetail = "BRD", class = "HUNTER" },
    [16679] = { name = "Beaststalker's Cap", quality = 3, source = "Drop", sourceDetail = "Scholomance", class = "HUNTER" },
    
    -- The Elements (Shaman)
    [16669] = { name = "Bindings of Elements", quality = 3, source = "Drop", sourceDetail = "LBRS/UBRS", class = "SHAMAN" },
    [16670] = { name = "Cord of Elements", quality = 3, source = "Drop", sourceDetail = "LBRS/UBRS", class = "SHAMAN" },
    [16668] = { name = "Boots of Elements", quality = 3, source = "Drop", sourceDetail = "Stratholme", class = "SHAMAN" },
    [16671] = { name = "Gauntlets of Elements", quality = 3, source = "Drop", sourceDetail = "Scholomance", class = "SHAMAN" },
    [16666] = { name = "Pauldrons of Elements", quality = 3, source = "Drop", sourceDetail = "UBRS", class = "SHAMAN" },
    [16667] = { name = "Kilt of Elements", quality = 3, source = "Drop", sourceDetail = "BRD", class = "SHAMAN" },
    [16665] = { name = "Vest of Elements", quality = 3, source = "Drop", sourceDetail = "BRD", class = "SHAMAN" },
    [16664] = { name = "Coif of Elements", quality = 3, source = "Drop", sourceDetail = "Scholomance", class = "SHAMAN" },
    
    -- Lightforge (Paladin)
    [16724] = { name = "Lightforge Bracers", quality = 3, source = "Drop", sourceDetail = "LBRS/UBRS", class = "PALADIN" },
    [16725] = { name = "Lightforge Belt", quality = 3, source = "Drop", sourceDetail = "LBRS/UBRS", class = "PALADIN" },
    [16726] = { name = "Lightforge Boots", quality = 3, source = "Drop", sourceDetail = "Stratholme", class = "PALADIN" },
    [16727] = { name = "Lightforge Gauntlets", quality = 3, source = "Drop", sourceDetail = "Scholomance", class = "PALADIN" },
    [16728] = { name = "Lightforge Spaulders", quality = 3, source = "Drop", sourceDetail = "UBRS", class = "PALADIN" },
    [16729] = { name = "Lightforge Legplates", quality = 3, source = "Drop", sourceDetail = "BRD", class = "PALADIN" },
    [16730] = { name = "Lightforge Breastplate", quality = 3, source = "Drop", sourceDetail = "BRD", class = "PALADIN" },
    [16731] = { name = "Lightforge Helm", quality = 3, source = "Drop", sourceDetail = "Scholomance", class = "PALADIN" },
    
    -- Valor (Warrior)
    [16680] = { name = "Bracers of Valor", quality = 3, source = "Drop", sourceDetail = "LBRS/UBRS", class = "WARRIOR" },
    [16681] = { name = "Belt of Valor", quality = 3, source = "Drop", sourceDetail = "LBRS/UBRS", class = "WARRIOR" },
    [16682] = { name = "Boots of Valor", quality = 3, source = "Drop", sourceDetail = "Stratholme", class = "WARRIOR" },
    [16683] = { name = "Gauntlets of Valor", quality = 3, source = "Drop", sourceDetail = "Scholomance", class = "WARRIOR" },
    [16684] = { name = "Spaulders of Valor", quality = 3, source = "Drop", sourceDetail = "UBRS", class = "WARRIOR" },
    [16685] = { name = "Legplates of Valor", quality = 3, source = "Drop", sourceDetail = "BRD", class = "WARRIOR" },
    [16732] = { name = "Breastplate of Valor", quality = 3, source = "Drop", sourceDetail = "BRD", class = "WARRIOR" },
    [16733] = { name = "Helm of Valor", quality = 3, source = "Drop", sourceDetail = "Scholomance", class = "WARRIOR" },
    
    -- ============================================================================
    --                              MOUNTS
    -- ============================================================================
    -- Alliance Mounts
    [2411] = { name = "Black Stallion Bridle", quality = 3, source = "Vendor", sourceDetail = "Katie Hunter (Elwynn Forest)" },
    [2414] = { name = "Pinto Bridle", quality = 3, source = "Vendor", sourceDetail = "Katie Hunter (Elwynn Forest)" },
    [5655] = { name = "Chestnut Mare Bridle", quality = 3, source = "Vendor", sourceDetail = "Katie Hunter (Elwynn Forest)" },
    [5656] = { name = "Brown Horse Bridle", quality = 3, source = "Vendor", sourceDetail = "Katie Hunter (Elwynn Forest)" },
    [18776] = { name = "Swift Palomino", quality = 4, source = "Vendor", sourceDetail = "Katie Hunter (Elwynn Forest)" },
    [18777] = { name = "Swift Brown Steed", quality = 4, source = "Vendor", sourceDetail = "Katie Hunter (Elwynn Forest)" },
    [18778] = { name = "Swift White Steed", quality = 4, source = "Vendor", sourceDetail = "Katie Hunter (Elwynn Forest)" },
    [8629] = { name = "Reins of the Striped Nightsaber", quality = 3, source = "Vendor", sourceDetail = "Lelanai (Darnassus)" },
    [8631] = { name = "Reins of the Striped Frostsaber", quality = 3, source = "Vendor", sourceDetail = "Lelanai (Darnassus)" },
    [8632] = { name = "Reins of the Spotted Frostsaber", quality = 3, source = "Vendor", sourceDetail = "Lelanai (Darnassus)" },
    [18766] = { name = "Reins of the Swift Frostsaber", quality = 4, source = "Vendor", sourceDetail = "Lelanai (Darnassus)" },
    [18767] = { name = "Reins of the Swift Mistsaber", quality = 4, source = "Vendor", sourceDetail = "Lelanai (Darnassus)" },
    [18902] = { name = "Reins of the Swift Stormsaber", quality = 4, source = "Vendor", sourceDetail = "Lelanai (Darnassus)" },
    [5872] = { name = "Brown Ram", quality = 3, source = "Vendor", sourceDetail = "Veron Amberstill (Dun Morogh)" },
    [5873] = { name = "Gray Ram", quality = 3, source = "Vendor", sourceDetail = "Veron Amberstill (Dun Morogh)" },
    [5864] = { name = "White Ram", quality = 3, source = "Vendor", sourceDetail = "Veron Amberstill (Dun Morogh)" },
    [18785] = { name = "Swift White Ram", quality = 4, source = "Vendor", sourceDetail = "Veron Amberstill (Dun Morogh)" },
    [18786] = { name = "Swift Brown Ram", quality = 4, source = "Vendor", sourceDetail = "Veron Amberstill (Dun Morogh)" },
    [18787] = { name = "Swift Gray Ram", quality = 4, source = "Vendor", sourceDetail = "Veron Amberstill (Dun Morogh)" },
    [18241] = { name = "Green Mechanostrider", quality = 3, source = "Vendor", sourceDetail = "Milli Featherwhistle (Dun Morogh)" },
    [18242] = { name = "Unpainted Mechanostrider", quality = 3, source = "Vendor", sourceDetail = "Milli Featherwhistle (Dun Morogh)" },
    [13321] = { name = "Blue Mechanostrider", quality = 3, source = "Vendor", sourceDetail = "Milli Featherwhistle (Dun Morogh)" },
    [13322] = { name = "Red & Blue Mechanostrider", quality = 3, source = "Vendor", sourceDetail = "Milli Featherwhistle (Dun Morogh)" },
    [18772] = { name = "Swift Green Mechanostrider", quality = 4, source = "Vendor", sourceDetail = "Milli Featherwhistle (Dun Morogh)" },
    [18773] = { name = "Swift White Mechanostrider", quality = 4, source = "Vendor", sourceDetail = "Milli Featherwhistle (Dun Morogh)" },
    [18774] = { name = "Swift Yellow Mechanostrider", quality = 4, source = "Vendor", sourceDetail = "Milli Featherwhistle (Dun Morogh)" },
    
    -- Horde Mounts
    [5665] = { name = "Dire Wolf", quality = 3, source = "Vendor", sourceDetail = "Ogunaro Wolfrunner (Orgrimmar)" },
    [5668] = { name = "Brown Wolf", quality = 3, source = "Vendor", sourceDetail = "Ogunaro Wolfrunner (Orgrimmar)" },
    [5667] = { name = "Timber Wolf", quality = 3, source = "Vendor", sourceDetail = "Ogunaro Wolfrunner (Orgrimmar)" },
    [18796] = { name = "Swift Brown Wolf", quality = 4, source = "Vendor", sourceDetail = "Ogunaro Wolfrunner (Orgrimmar)" },
    [18797] = { name = "Swift Timber Wolf", quality = 4, source = "Vendor", sourceDetail = "Ogunaro Wolfrunner (Orgrimmar)" },
    [18798] = { name = "Swift Gray Wolf", quality = 4, source = "Vendor", sourceDetail = "Ogunaro Wolfrunner (Orgrimmar)" },
    [8586] = { name = "Whistle of the Emerald Raptor", quality = 3, source = "Vendor", sourceDetail = "Zjolnir (Sen'jin Village)" },
    [8588] = { name = "Whistle of the Turquoise Raptor", quality = 3, source = "Vendor", sourceDetail = "Zjolnir (Sen'jin Village)" },
    [8591] = { name = "Whistle of the Violet Raptor", quality = 3, source = "Vendor", sourceDetail = "Zjolnir (Sen'jin Village)" },
    [18788] = { name = "Swift Blue Raptor", quality = 4, source = "Vendor", sourceDetail = "Zjolnir (Sen'jin Village)" },
    [18789] = { name = "Swift Olive Raptor", quality = 4, source = "Vendor", sourceDetail = "Zjolnir (Sen'jin Village)" },
    [18790] = { name = "Swift Orange Raptor", quality = 4, source = "Vendor", sourceDetail = "Zjolnir (Sen'jin Village)" },
    [15277] = { name = "Gray Kodo", quality = 3, source = "Vendor", sourceDetail = "Harb Clawhoof (Mulgore)" },
    [15290] = { name = "Brown Kodo", quality = 3, source = "Vendor", sourceDetail = "Harb Clawhoof (Mulgore)" },
    [18793] = { name = "Great White Kodo", quality = 4, source = "Vendor", sourceDetail = "Harb Clawhoof (Mulgore)" },
    [18794] = { name = "Great Brown Kodo", quality = 4, source = "Vendor", sourceDetail = "Harb Clawhoof (Mulgore)" },
    [18795] = { name = "Great Gray Kodo", quality = 4, source = "Vendor", sourceDetail = "Harb Clawhoof (Mulgore)" },
    [13317] = { name = "Blue Skeletal Horse", quality = 3, source = "Vendor", sourceDetail = "Zachariah Post (Brill)" },
    [13331] = { name = "Green Skeletal Warhorse", quality = 4, source = "Vendor", sourceDetail = "Zachariah Post (Brill)" },
    [13332] = { name = "Red Skeletal Horse", quality = 3, source = "Vendor", sourceDetail = "Zachariah Post (Brill)" },
    [13333] = { name = "Brown Skeletal Horse", quality = 3, source = "Vendor", sourceDetail = "Zachariah Post (Brill)" },
    [18791] = { name = "Purple Skeletal Warhorse", quality = 4, source = "Vendor", sourceDetail = "Zachariah Post (Brill)" },
    
    -- Rare Mounts
    [13335] = { name = "Deathcharger's Reins", quality = 4, source = "Drop", sourceDetail = "Baron Rivendare (Stratholme)" },
    [19029] = { name = "Reins of the Winterspring Frostsaber", quality = 4, source = "Reputation", sourceDetail = "Winterspring Frostsaber Trainers (Exalted)" },
    [21176] = { name = "Black Qiraji Resonating Crystal", quality = 5, source = "Quest", sourceDetail = "Scepter of the Shifting Sands" },
    [21321] = { name = "Red Qiraji Resonating Crystal", quality = 4, source = "Drop", sourceDetail = "AQ40 Trash" },
    [21323] = { name = "Green Qiraji Resonating Crystal", quality = 4, source = "Drop", sourceDetail = "AQ40 Trash" },
    [21324] = { name = "Yellow Qiraji Resonating Crystal", quality = 4, source = "Drop", sourceDetail = "AQ40 Trash" },
    [21218] = { name = "Blue Qiraji Resonating Crystal", quality = 4, source = "Drop", sourceDetail = "AQ40 Trash" },
    
    -- ============================================================================
    --                         PVP RANK 14 GEAR
    -- ============================================================================
    -- Alliance Grand Marshal Weapons
    [18825] = { name = "Grand Marshal's Longsword", quality = 4, source = "PvP", sourceDetail = "Rank 14 (Grand Marshal)" },
    [18826] = { name = "Grand Marshal's Dirk", quality = 4, source = "PvP", sourceDetail = "Rank 14 (Grand Marshal)" },
    [18828] = { name = "Grand Marshal's Handaxe", quality = 4, source = "PvP", sourceDetail = "Rank 14 (Grand Marshal)" },
    [18836] = { name = "Grand Marshal's Hand Cannon", quality = 4, source = "PvP", sourceDetail = "Rank 14 (Grand Marshal)" },
    [18847] = { name = "Grand Marshal's Left Hand Blade", quality = 4, source = "PvP", sourceDetail = "Rank 14 (Grand Marshal)" },
    [18855] = { name = "Grand Marshal's Right Hand Blade", quality = 4, source = "PvP", sourceDetail = "Rank 14 (Grand Marshal)" },
    [18862] = { name = "Grand Marshal's Claymore", quality = 4, source = "PvP", sourceDetail = "Rank 14 (Grand Marshal)" },
    [18865] = { name = "Grand Marshal's Bullseye", quality = 4, source = "PvP", sourceDetail = "Rank 14 (Grand Marshal)" },
    [18866] = { name = "Grand Marshal's Repeater", quality = 4, source = "PvP", sourceDetail = "Rank 14 (Grand Marshal)" },
    [18867] = { name = "Grand Marshal's Demolisher", quality = 4, source = "PvP", sourceDetail = "Rank 14 (Grand Marshal)" },
    [18869] = { name = "Grand Marshal's Swiftblade", quality = 4, source = "PvP", sourceDetail = "Rank 14 (Grand Marshal)" },
    [18873] = { name = "Grand Marshal's Stave", quality = 4, source = "PvP", sourceDetail = "Rank 14 (Grand Marshal)" },
    [18874] = { name = "Grand Marshal's Sunderer", quality = 4, source = "PvP", sourceDetail = "Rank 14 (Grand Marshal)" },
    [18876] = { name = "Grand Marshal's Tome of Restoration", quality = 4, source = "PvP", sourceDetail = "Rank 14 (Grand Marshal)" },
    [18877] = { name = "Grand Marshal's Tome of Power", quality = 4, source = "PvP", sourceDetail = "Rank 14 (Grand Marshal)" },
    [23451] = { name = "Grand Marshal's Mageblade", quality = 4, source = "PvP", sourceDetail = "Rank 14 (Grand Marshal)" },
    [23452] = { name = "Grand Marshal's Warhammer", quality = 4, source = "PvP", sourceDetail = "Rank 14 (Grand Marshal)" },
    [23455] = { name = "Grand Marshal's Punisher", quality = 4, source = "PvP", sourceDetail = "Rank 14 (Grand Marshal)" },
    [23456] = { name = "Grand Marshal's Aegis", quality = 4, source = "PvP", sourceDetail = "Rank 14 (Grand Marshal)" },
    
    -- Horde High Warlord Weapons
    [18829] = { name = "High Warlord's Blade", quality = 4, source = "PvP", sourceDetail = "Rank 14 (High Warlord)" },
    [18830] = { name = "High Warlord's Quickblade", quality = 4, source = "PvP", sourceDetail = "Rank 14 (High Warlord)" },
    [18831] = { name = "High Warlord's Cleaver", quality = 4, source = "PvP", sourceDetail = "Rank 14 (High Warlord)" },
    [18833] = { name = "High Warlord's Razor", quality = 4, source = "PvP", sourceDetail = "Rank 14 (High Warlord)" },
    [18834] = { name = "High Warlord's War Staff", quality = 4, source = "PvP", sourceDetail = "Rank 14 (High Warlord)" },
    [18835] = { name = "High Warlord's Pig Sticker", quality = 4, source = "PvP", sourceDetail = "Rank 14 (High Warlord)" },
    [18838] = { name = "High Warlord's Crossbow", quality = 4, source = "PvP", sourceDetail = "Rank 14 (High Warlord)" },
    [18840] = { name = "High Warlord's Recurve", quality = 4, source = "PvP", sourceDetail = "Rank 14 (High Warlord)" },
    [18843] = { name = "High Warlord's Bludgeon", quality = 4, source = "PvP", sourceDetail = "Rank 14 (High Warlord)" },
    [18844] = { name = "High Warlord's Battle Mace", quality = 4, source = "PvP", sourceDetail = "Rank 14 (High Warlord)" },
    [18848] = { name = "High Warlord's Left Claw", quality = 4, source = "PvP", sourceDetail = "Rank 14 (High Warlord)" },
    [18856] = { name = "High Warlord's Right Claw", quality = 4, source = "PvP", sourceDetail = "Rank 14 (High Warlord)" },
    [18860] = { name = "High Warlord's Battle Axe", quality = 4, source = "PvP", sourceDetail = "Rank 14 (High Warlord)" },
    [18861] = { name = "High Warlord's Greatsword", quality = 4, source = "PvP", sourceDetail = "Rank 14 (High Warlord)" },
    [18864] = { name = "High Warlord's Street Sweeper", quality = 4, source = "PvP", sourceDetail = "Rank 14 (High Warlord)" },
    [18868] = { name = "High Warlord's Pulverizer", quality = 4, source = "PvP", sourceDetail = "Rank 14 (High Warlord)" },
    [23466] = { name = "High Warlord's Spellblade", quality = 4, source = "PvP", sourceDetail = "Rank 14 (High Warlord)" },
    [23467] = { name = "High Warlord's Battle Hammer", quality = 4, source = "PvP", sourceDetail = "Rank 14 (High Warlord)" },
    [23468] = { name = "High Warlord's Destroyer", quality = 4, source = "PvP", sourceDetail = "Rank 14 (High Warlord)" },
    [23469] = { name = "High Warlord's Shield Wall", quality = 4, source = "PvP", sourceDetail = "Rank 14 (High Warlord)" },
    
    -- PvP Trinkets
    [18854] = { name = "Insignia of the Alliance", quality = 4, source = "PvP", sourceDetail = "PvP Vendor" },
    [18845] = { name = "Insignia of the Horde", quality = 4, source = "PvP", sourceDetail = "PvP Vendor" },
    
    -- ============================================================================
    --               MARAUDON / SUNKEN TEMPLE / ULDAMAN / RFK / RFD
    -- ============================================================================
    -- Maraudon
    [17738] = { name = "Thrash Blade", quality = 3, source = "Quest", sourceDetail = "Corruption of Earth and Seed" },
    [17739] = { name = "Resurgence Rod", quality = 3, source = "Quest", sourceDetail = "Corruption of Earth and Seed" },
    [17740] = { name = "Mages' Cudgel of Intellect", quality = 3, source = "Quest", sourceDetail = "Corruption of Earth and Seed" },
    [17710] = { name = "Charstone Dirk", quality = 3, source = "Drop", sourceDetail = "Princess Theradras (Maraudon)" },
    [17705] = { name = "Blackstone Ring", quality = 3, source = "Drop", sourceDetail = "Princess Theradras (Maraudon)" },
    [17707] = { name = "Gemshard Heart", quality = 3, source = "Drop", sourceDetail = "Princess Theradras (Maraudon)" },
    [17780] = { name = "Blade of Eternal Darkness", quality = 4, source = "Drop", sourceDetail = "Princess Theradras (Maraudon)" },
    [18500] = { name = "Theradras' Stone Cudgel", quality = 3, source = "Drop", sourceDetail = "Princess Theradras (Maraudon)" },
    
    -- Sunken Temple
    [10828] = { name = "Dire Nail", quality = 3, source = "Drop", sourceDetail = "Shade of Eranikus (Sunken Temple)" },
    [10829] = { name = "Dragon's Call", quality = 3, source = "Drop", sourceDetail = "Shade of Eranikus (Sunken Temple)" },
    [10833] = { name = "Horns of Eranikus", quality = 3, source = "Drop", sourceDetail = "Shade of Eranikus (Sunken Temple)" },
    [10835] = { name = "Crest of Supremacy", quality = 3, source = "Drop", sourceDetail = "Shade of Eranikus (Sunken Temple)" },
    [10838] = { name = "Might of Hakkar", quality = 3, source = "Drop", sourceDetail = "Avatar of Hakkar (Sunken Temple)" },
    [10842] = { name = "Windshrieker Pauldrons", quality = 3, source = "Drop", sourceDetail = "Dreamscythe/Weaver (Sunken Temple)" },
    
    -- Uldaman
    [9372] = { name = "Sul'thraze the Lasher", quality = 4, source = "Crafted", sourceDetail = "Combine Sang'thraze + Jang'thraze (Uldaman)" },
    [9379] = { name = "Sang'thraze the Deflector", quality = 3, source = "Drop", sourceDetail = "Sandarr Dunereaver (Uldaman)" },
    [11086] = { name = "Jang'thraze the Protector", quality = 3, source = "Drop", sourceDetail = "Chief Archaeologist Arivaar (Uldaman)" },
    [9393] = { name = "The Rockpounder", quality = 3, source = "Drop", sourceDetail = "Archaedas (Uldaman)" },
    [9392] = { name = "Stoneslayer", quality = 3, source = "Drop", sourceDetail = "Archaedas (Uldaman)" },
    [11118] = { name = "Archaedic Stone", quality = 3, source = "Drop", sourceDetail = "Archaedas (Uldaman)" },
    
    -- Razorfen Kraul/Downs
    [6679] = { name = "Corpsemaker", quality = 3, source = "Drop", sourceDetail = "Overlord Ramtusk (Razorfen Kraul)" },
    [6681] = { name = "Thornspike", quality = 3, source = "Drop", sourceDetail = "Death Speaker Jargba (Razorfen Kraul)" },
    [6686] = { name = "Swinetusk Shank", quality = 3, source = "Drop", sourceDetail = "Agathelos the Raging (Razorfen Kraul)" },
    [10761] = { name = "Coldrage Dagger", quality = 3, source = "Drop", sourceDetail = "Amnennar the Coldbringer (Razorfen Downs)" },
    [10762] = { name = "Robes of the Lich", quality = 3, source = "Drop", sourceDetail = "Amnennar the Coldbringer (Razorfen Downs)" },
    [10763] = { name = "Icemetal Barbute", quality = 3, source = "Drop", sourceDetail = "Amnennar the Coldbringer (Razorfen Downs)" },
    
    -- ============================================================================
    --                    WAILING CAVERNS / GNOMEREGAN
    -- ============================================================================
    -- Wailing Caverns
    [6622] = { name = "Sword of the Severed Hand", quality = 3, source = "Drop", sourceDetail = "Verdan the Everliving (Wailing Caverns)" },
    [6629] = { name = "Fang of Venoxis", quality = 3, source = "Drop", sourceDetail = "Lady Anacondra (Wailing Caverns)" },
    [6630] = { name = "Seedcloud Buckler", quality = 3, source = "Drop", sourceDetail = "Lord Pythas (Wailing Caverns)" },
    [6631] = { name = "Living Root", quality = 3, source = "Drop", sourceDetail = "Lord Pythas (Wailing Caverns)" },
    [6632] = { name = "Feyscale Cloak", quality = 3, source = "Drop", sourceDetail = "Lady Anacondra (Wailing Caverns)" },
    [10410] = { name = "Leggings of the Fang", quality = 3, source = "Drop", sourceDetail = "Lord Cobrahn (Wailing Caverns)" },
    [10411] = { name = "Belt of the Fang", quality = 3, source = "Drop", sourceDetail = "Kresh (Wailing Caverns)" },
    [10413] = { name = "Gloves of the Fang", quality = 3, source = "Drop", sourceDetail = "Lady Anacondra (Wailing Caverns)" },
    
    -- Gnomeregan
    [9449] = { name = "Manual Crowd Pummeler", quality = 3, source = "Drop", sourceDetail = "Crowd Pummeler 9-60 (Gnomeregan)" },
    [9446] = { name = "Electrocutioner Leg", quality = 3, source = "Drop", sourceDetail = "Electrocutioner 6000 (Gnomeregan)" },
    [9445] = { name = "Spidertank Oilrag", quality = 3, source = "Drop", sourceDetail = "Mekgineer Thermaplugg (Gnomeregan)" },
    [9456] = { name = "Glass Shooter", quality = 3, source = "Drop", sourceDetail = "Dark Iron Ambassador (Gnomeregan)" },
    [9453] = { name = "Toxic Revenger", quality = 3, source = "Drop", sourceDetail = "Viscous Fallout (Gnomeregan)" },
    [9490] = { name = "Gizmotron Megachopper", quality = 3, source = "Drop", sourceDetail = "Mekgineer Thermaplugg (Gnomeregan)" },
    [9492] = { name = "Electromagnetic Gigaflux Reactivator", quality = 3, source = "Drop", sourceDetail = "Mekgineer Thermaplugg (Gnomeregan)" },
    
    -- ============================================================================
    --                    TIER 0.5 DUNGEON SET 2 (Upgrade Quests)
    -- ============================================================================
    -- Sorcerer's Regalia (Mage - Upgraded Magister's)
    [22065] = { name = "Sorcerer's Crown", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "MAGE" },
    [22066] = { name = "Sorcerer's Robes", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "MAGE" },
    [22067] = { name = "Sorcerer's Leggings", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "MAGE" },
    [22068] = { name = "Sorcerer's Mantle", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "MAGE" },
    [22069] = { name = "Sorcerer's Gloves", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "MAGE" },
    [22070] = { name = "Sorcerer's Boots", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "MAGE" },
    [22071] = { name = "Sorcerer's Belt", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "MAGE" },
    [22072] = { name = "Sorcerer's Bindings", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "MAGE" },
    
    -- Deathmist Raiment (Warlock - Upgraded Dreadmist)
    [22073] = { name = "Deathmist Mask", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "WARLOCK" },
    [22074] = { name = "Deathmist Robe", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "WARLOCK" },
    [22075] = { name = "Deathmist Leggings", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "WARLOCK" },
    [22076] = { name = "Deathmist Mantle", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "WARLOCK" },
    [22077] = { name = "Deathmist Wraps", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "WARLOCK" },
    [22078] = { name = "Deathmist Sandals", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "WARLOCK" },
    [22079] = { name = "Deathmist Belt", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "WARLOCK" },
    [22080] = { name = "Deathmist Bracers", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "WARLOCK" },
    
    -- Virtuous Raiment (Priest - Upgraded Devout)
    [22079] = { name = "Virtuous Crown", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "PRIEST" },
    [22080] = { name = "Virtuous Robe", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "PRIEST" },
    [22081] = { name = "Virtuous Skirt", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "PRIEST" },
    [22082] = { name = "Virtuous Mantle", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "PRIEST" },
    [22083] = { name = "Virtuous Gloves", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "PRIEST" },
    [22084] = { name = "Virtuous Sandals", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "PRIEST" },
    [22085] = { name = "Virtuous Belt", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "PRIEST" },
    [22086] = { name = "Virtuous Bracers", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "PRIEST" },
    
    -- Darkmantle Armor (Rogue - Upgraded Shadowcraft)
    [22000] = { name = "Darkmantle Cap", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "ROGUE" },
    [22001] = { name = "Darkmantle Tunic", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "ROGUE" },
    [22002] = { name = "Darkmantle Pants", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "ROGUE" },
    [22003] = { name = "Darkmantle Spaulders", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "ROGUE" },
    [22004] = { name = "Darkmantle Gloves", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "ROGUE" },
    [22005] = { name = "Darkmantle Boots", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "ROGUE" },
    [22006] = { name = "Darkmantle Belt", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "ROGUE" },
    [22007] = { name = "Darkmantle Bracers", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "ROGUE" },
    
    -- Feralheart Raiment (Druid - Upgraded Wildheart)
    [22108] = { name = "Feralheart Cowl", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "DRUID" },
    [22109] = { name = "Feralheart Vest", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "DRUID" },
    [22110] = { name = "Feralheart Kilt", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "DRUID" },
    [22111] = { name = "Feralheart Spaulders", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "DRUID" },
    [22112] = { name = "Feralheart Gloves", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "DRUID" },
    [22113] = { name = "Feralheart Boots", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "DRUID" },
    [22114] = { name = "Feralheart Belt", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "DRUID" },
    [22115] = { name = "Feralheart Bracers", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "DRUID" },
    
    -- Beastmaster Armor (Hunter - Upgraded Beaststalker)
    [22010] = { name = "Beastmaster's Cap", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "HUNTER" },
    [22011] = { name = "Beastmaster's Tunic", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "HUNTER" },
    [22015] = { name = "Beastmaster's Pants", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "HUNTER" },
    [22016] = { name = "Beastmaster's Mantle", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "HUNTER" },
    [22012] = { name = "Beastmaster's Gloves", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "HUNTER" },
    [22013] = { name = "Beastmaster's Boots", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "HUNTER" },
    [22014] = { name = "Beastmaster's Belt", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "HUNTER" },
    [22017] = { name = "Beastmaster's Bindings", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "HUNTER" },
    
    -- The Five Thunders (Shaman - Upgraded Elements)
    [22095] = { name = "Coif of the Five Thunders", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "SHAMAN" },
    [22096] = { name = "Vest of the Five Thunders", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "SHAMAN" },
    [22097] = { name = "Kilt of the Five Thunders", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "SHAMAN" },
    [22098] = { name = "Pauldrons of the Five Thunders", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "SHAMAN" },
    [22099] = { name = "Gauntlets of the Five Thunders", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "SHAMAN" },
    [22100] = { name = "Boots of the Five Thunders", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "SHAMAN" },
    [22101] = { name = "Cord of the Five Thunders", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "SHAMAN" },
    [22102] = { name = "Bindings of the Five Thunders", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "SHAMAN" },
    
    -- Soulforge Armor (Paladin - Upgraded Lightforge)
    [22086] = { name = "Soulforge Helm", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "PALADIN" },
    [22087] = { name = "Soulforge Breastplate", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "PALADIN" },
    [22088] = { name = "Soulforge Legplates", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "PALADIN" },
    [22089] = { name = "Soulforge Spaulders", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "PALADIN" },
    [22090] = { name = "Soulforge Gauntlets", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "PALADIN" },
    [22091] = { name = "Soulforge Boots", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "PALADIN" },
    [22092] = { name = "Soulforge Belt", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "PALADIN" },
    [22093] = { name = "Soulforge Bracers", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "PALADIN" },
    
    -- Heroism Armor (Warrior - Upgraded Valor)
    [21994] = { name = "Helm of Heroism", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "WARRIOR" },
    [21995] = { name = "Breastplate of Heroism", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "WARRIOR" },
    [21996] = { name = "Legplates of Heroism", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "WARRIOR" },
    [21997] = { name = "Spaulders of Heroism", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "WARRIOR" },
    [21998] = { name = "Gauntlets of Heroism", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "WARRIOR" },
    [21999] = { name = "Boots of Heroism", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "WARRIOR" },
    [22000] = { name = "Belt of Heroism", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "WARRIOR" },
    [22001] = { name = "Bracers of Heroism", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade", class = "WARRIOR" },
    
    -- ============================================================================
    --                       REPUTATION REWARDS
    -- ============================================================================
    -- Argent Dawn
    [13209] = { name = "Seal of the Dawn", quality = 3, source = "Reputation", sourceDetail = "Argent Dawn (Honored)" },
    [13216] = { name = "Crown of the Penitent", quality = 3, source = "Reputation", sourceDetail = "Argent Dawn (Revered)" },
    [22401] = { name = "Arcane Mantle of the Dawn", quality = 3, source = "Reputation", sourceDetail = "Argent Dawn (Exalted)" },
    [22402] = { name = "Chromatic Mantle of the Dawn", quality = 3, source = "Reputation", sourceDetail = "Argent Dawn (Exalted)" },
    [22403] = { name = "Flame Mantle of the Dawn", quality = 3, source = "Reputation", sourceDetail = "Argent Dawn (Exalted)" },
    [22404] = { name = "Frost Mantle of the Dawn", quality = 3, source = "Reputation", sourceDetail = "Argent Dawn (Exalted)" },
    [22405] = { name = "Nature Mantle of the Dawn", quality = 3, source = "Reputation", sourceDetail = "Argent Dawn (Exalted)" },
    [22406] = { name = "Shadow Mantle of the Dawn", quality = 3, source = "Reputation", sourceDetail = "Argent Dawn (Exalted)" },
    [18169] = { name = "Flame Deflector", quality = 2, source = "Reputation", sourceDetail = "Argent Dawn (Friendly)" },
    [22636] = { name = "Blessed Wizard Oil", quality = 2, source = "Reputation", sourceDetail = "Argent Dawn (Revered)" },
    [22637] = { name = "Holy Water", quality = 1, source = "Reputation", sourceDetail = "Argent Dawn (Honored)" },
    
    -- Timbermaw Hold
    [21326] = { name = "Defender of the Timbermaw", quality = 4, source = "Reputation", sourceDetail = "Timbermaw Hold (Exalted)" },
    [19047] = { name = "Timbermaw Brawlers", quality = 3, source = "Reputation", sourceDetail = "Timbermaw Hold (Revered)" },
    [19049] = { name = "Wisdom of the Timbermaw", quality = 3, source = "Reputation", sourceDetail = "Timbermaw Hold (Honored)" },
    [19050] = { name = "Furbolg Medicine Pouch", quality = 3, source = "Reputation", sourceDetail = "Timbermaw Hold (Revered)" },
    [19051] = { name = "Furbolg Medicine Totem", quality = 3, source = "Reputation", sourceDetail = "Timbermaw Hold (Honored)" },
    [19052] = { name = "Timbermaw Ancestor", quality = 3, source = "Reputation", sourceDetail = "Timbermaw Hold (Honored)" },
    [19053] = { name = "Timbermaw Ancestor", quality = 3, source = "Reputation", sourceDetail = "Timbermaw Hold (Honored)" },
    [20253] = { name = "Pattern: Warbear Harness", quality = 3, source = "Reputation", sourceDetail = "Timbermaw Hold (Honored)" },
    [20254] = { name = "Pattern: Warbear Woolies", quality = 3, source = "Reputation", sourceDetail = "Timbermaw Hold (Honored)" },
    
    -- Thorium Brotherhood
    [17015] = { name = "Pattern: Corehound Boots", quality = 4, source = "Reputation", sourceDetail = "Thorium Brotherhood (Honored)" },
    [17022] = { name = "Pattern: Corehound Belt", quality = 4, source = "Reputation", sourceDetail = "Thorium Brotherhood (Friendly)" },
    [17025] = { name = "Pattern: Black Dragonscale Boots", quality = 4, source = "Reputation", sourceDetail = "Thorium Brotherhood (Honored)" },
    [18628] = { name = "Plans: Demon Forged Breastplate", quality = 4, source = "Reputation", sourceDetail = "Thorium Brotherhood (Exalted)" },
    [18629] = { name = "Plans: Fiery Chain Girdle", quality = 4, source = "Reputation", sourceDetail = "Thorium Brotherhood (Exalted)" },
    [18630] = { name = "Plans: Fiery Chain Shoulders", quality = 4, source = "Reputation", sourceDetail = "Thorium Brotherhood (Exalted)" },
    [18632] = { name = "Plans: Dark Iron Helm", quality = 4, source = "Reputation", sourceDetail = "Thorium Brotherhood (Honored)" },
    [18633] = { name = "Plans: Dark Iron Gauntlets", quality = 4, source = "Reputation", sourceDetail = "Thorium Brotherhood (Revered)" },
    [18634] = { name = "Plans: Dark Iron Destroyer", quality = 4, source = "Reputation", sourceDetail = "Thorium Brotherhood (Exalted)" },
    [18592] = { name = "Plans: Sulfuron Hammer", quality = 5, source = "Reputation", sourceDetail = "Thorium Brotherhood (Exalted)" },
    
    -- Cenarion Circle
    [22209] = { name = "Plans: Heavy Obsidian Belt", quality = 4, source = "Reputation", sourceDetail = "Cenarion Circle (Friendly)" },
    [22214] = { name = "Plans: Light Obsidian Belt", quality = 4, source = "Reputation", sourceDetail = "Cenarion Circle (Friendly)" },
    [22219] = { name = "Plans: Jagged Obsidian Shield", quality = 4, source = "Reputation", sourceDetail = "Cenarion Circle (Revered)" },
    [22221] = { name = "Plans: Obsidian Mail Tunic", quality = 4, source = "Reputation", sourceDetail = "Cenarion Circle (Revered)" },
    [22766] = { name = "Pattern: Bramblewood Helm", quality = 4, source = "Reputation", sourceDetail = "Cenarion Circle (Revered)" },
    [22769] = { name = "Pattern: Bramblewood Belt", quality = 4, source = "Reputation", sourceDetail = "Cenarion Circle (Friendly)" },
    [22770] = { name = "Pattern: Bramblewood Boots", quality = 4, source = "Reputation", sourceDetail = "Cenarion Circle (Honored)" },
    [22772] = { name = "Pattern: Sylvan Shoulders", quality = 4, source = "Reputation", sourceDetail = "Cenarion Circle (Exalted)" },
    [22773] = { name = "Pattern: Sylvan Crown", quality = 4, source = "Reputation", sourceDetail = "Cenarion Circle (Revered)" },
    [22683] = { name = "Pattern: Cenarion Herb Bag", quality = 3, source = "Reputation", sourceDetail = "Cenarion Circle (Revered)" },
    
    -- Hydraxian Waterlords
    [17333] = { name = "Aqual Quintessence", quality = 3, source = "Reputation", sourceDetail = "Hydraxian Waterlords (Revered)" },
    [22754] = { name = "Eternal Quintessence", quality = 3, source = "Reputation", sourceDetail = "Hydraxian Waterlords (Exalted)" },
    
    -- Brood of Nozdormu
    [21205] = { name = "Signet Ring of the Bronze Dragonflight", quality = 4, source = "Reputation", sourceDetail = "Brood of Nozdormu (Exalted)" },
    [21206] = { name = "Signet Ring of the Bronze Dragonflight", quality = 4, source = "Reputation", sourceDetail = "Brood of Nozdormu (Revered)" },
    [21207] = { name = "Signet Ring of the Bronze Dragonflight", quality = 4, source = "Reputation", sourceDetail = "Brood of Nozdormu (Honored)" },
    [21208] = { name = "Signet Ring of the Bronze Dragonflight", quality = 4, source = "Reputation", sourceDetail = "Brood of Nozdormu (Friendly)" },
    [21209] = { name = "Signet Ring of the Bronze Dragonflight", quality = 4, source = "Reputation", sourceDetail = "Brood of Nozdormu (Neutral)" },
    
    -- Zandalar Tribe
    [19820] = { name = "Zandalar Signet of Might", quality = 4, source = "Reputation", sourceDetail = "Zandalar Tribe (Exalted)" },
    [19821] = { name = "Zandalar Signet of Mojo", quality = 4, source = "Reputation", sourceDetail = "Zandalar Tribe (Exalted)" },
    [19822] = { name = "Zandalar Signet of Serenity", quality = 4, source = "Reputation", sourceDetail = "Zandalar Tribe (Exalted)" },
    [19948] = { name = "Zandalarian Hero Badge", quality = 4, source = "Reputation", sourceDetail = "Zandalar Tribe (Exalted)" },
    [19949] = { name = "Zandalarian Hero Medallion", quality = 4, source = "Reputation", sourceDetail = "Zandalar Tribe (Exalted)" },
    [19950] = { name = "Zandalarian Hero Charm", quality = 4, source = "Reputation", sourceDetail = "Zandalar Tribe (Exalted)" },
    
    -- Wintersaber Trainers
    [13086] = { name = "Winterspring Frostsaber", quality = 4, source = "Reputation", sourceDetail = "Wintersaber Trainers (Exalted)" },
    
    -- ============================================================================
    --                      BATTLEGROUND REPUTATION REWARDS
    -- ============================================================================
    -- Alterac Valley (Stormpike/Frostwolf)
    [19104] = { name = "Ice Barbed Spear", quality = 4, source = "Reputation", sourceDetail = "Alterac Valley (Exalted)" },
    [19106] = { name = "Ice Threaded Arrow", quality = 3, source = "Reputation", sourceDetail = "Alterac Valley (Honored)" },
    [19107] = { name = "Ice Threaded Bullet", quality = 3, source = "Reputation", sourceDetail = "Alterac Valley (Honored)" },
    [19084] = { name = "Stormpike Battle Charger", quality = 4, source = "Reputation", sourceDetail = "Stormpike Guard (Exalted)" },
    [19029] = { name = "Frostwolf Howler", quality = 4, source = "Reputation", sourceDetail = "Frostwolf Clan (Exalted)" },
    [19030] = { name = "Stormpike Battle Tabard", quality = 3, source = "Reputation", sourceDetail = "Stormpike Guard (Exalted)" },
    [19031] = { name = "Frostwolf Battle Tabard", quality = 3, source = "Reputation", sourceDetail = "Frostwolf Clan (Exalted)" },
    [19315] = { name = "Lei of the Lifegiver", quality = 4, source = "Reputation", sourceDetail = "Alterac Valley (Exalted)" },
    [19312] = { name = "Lei of the Lifegiver", quality = 4, source = "Reputation", sourceDetail = "Alterac Valley (Exalted)" },
    [19308] = { name = "Tome of Arcane Domination", quality = 4, source = "Reputation", sourceDetail = "Alterac Valley (Exalted)" },
    [19309] = { name = "Tome of Shadow Force", quality = 4, source = "Reputation", sourceDetail = "Alterac Valley (Exalted)" },
    [19310] = { name = "Tome of Fiery Arcana", quality = 4, source = "Reputation", sourceDetail = "Alterac Valley (Exalted)" },
    [19311] = { name = "Tome of the Ice Lord", quality = 4, source = "Reputation", sourceDetail = "Alterac Valley (Exalted)" },
    [19321] = { name = "The Unstoppable Force", quality = 4, source = "Reputation", sourceDetail = "Alterac Valley (Exalted)" },
    [19323] = { name = "The Immovable Object", quality = 4, source = "Reputation", sourceDetail = "Alterac Valley (Exalted)" },
    [19324] = { name = "The Lobotomizer", quality = 4, source = "Reputation", sourceDetail = "Alterac Valley (Exalted)" },
    [19325] = { name = "Don Julio's Band", quality = 4, source = "Reputation", sourceDetail = "Alterac Valley (Exalted)" },
    
    -- Warsong Gulch (Silverwing Sentinels/Warsong Outriders)
    [19578] = { name = "Berserker Bracers", quality = 3, source = "Reputation", sourceDetail = "Warsong Gulch (Friendly)" },
    [19583] = { name = "Windtalker's Wristguards", quality = 3, source = "Reputation", sourceDetail = "Warsong Gulch (Friendly)" },
    [19587] = { name = "Forest Stalker's Bracers", quality = 3, source = "Reputation", sourceDetail = "Warsong Gulch (Honored)" },
    [19597] = { name = "Dryad's Wrist Bindings", quality = 3, source = "Reputation", sourceDetail = "Warsong Gulch (Revered)" },
    [20428] = { name = "Caretaker's Cape", quality = 3, source = "Reputation", sourceDetail = "Warsong Gulch (Revered)" },
    [20431] = { name = "Lorekeeper's Ring", quality = 3, source = "Reputation", sourceDetail = "Warsong Gulch (Revered)" },
    [20434] = { name = "Legionnaire's Band", quality = 3, source = "Reputation", sourceDetail = "Warsong Gulch (Revered)" },
    [19505] = { name = "Warsong Battle Tabard", quality = 3, source = "Reputation", sourceDetail = "Warsong Outriders (Exalted)" },
    [19506] = { name = "Silverwing Battle Tabard", quality = 3, source = "Reputation", sourceDetail = "Silverwing Sentinels (Exalted)" },
    
    -- Arathi Basin (Defilers/League of Arathor)
    [20061] = { name = "Highlander's Cloth Girdle", quality = 3, source = "Reputation", sourceDetail = "Arathi Basin (Exalted)" },
    [20068] = { name = "Highlander's Leather Girdle", quality = 3, source = "Reputation", sourceDetail = "Arathi Basin (Exalted)" },
    [20073] = { name = "Highlander's Chain Girdle", quality = 3, source = "Reputation", sourceDetail = "Arathi Basin (Exalted)" },
    [20078] = { name = "Highlander's Plate Girdle", quality = 3, source = "Reputation", sourceDetail = "Arathi Basin (Exalted)" },
    [20089] = { name = "Highlander's Cloth Boots", quality = 3, source = "Reputation", sourceDetail = "Arathi Basin (Exalted)" },
    [20088] = { name = "Highlander's Leather Boots", quality = 3, source = "Reputation", sourceDetail = "Arathi Basin (Exalted)" },
    [20087] = { name = "Highlander's Chain Greaves", quality = 3, source = "Reputation", sourceDetail = "Arathi Basin (Exalted)" },
    [20086] = { name = "Highlander's Lamellar Greaves", quality = 3, source = "Reputation", sourceDetail = "Arathi Basin (Exalted)" },
    [21119] = { name = "Defiler's Chain Girdle", quality = 3, source = "Reputation", sourceDetail = "Arathi Basin (Exalted)" },
    [21330] = { name = "Defiler's Leather Girdle", quality = 3, source = "Reputation", sourceDetail = "Arathi Basin (Exalted)" },
    [21331] = { name = "Defiler's Plate Girdle", quality = 3, source = "Reputation", sourceDetail = "Arathi Basin (Exalted)" },
    [21332] = { name = "Defiler's Cloth Girdle", quality = 3, source = "Reputation", sourceDetail = "Arathi Basin (Exalted)" },
    [21120] = { name = "Defiler's Mail Pauldrons", quality = 4, source = "Reputation", sourceDetail = "Arathi Basin (Exalted)" },
    [21121] = { name = "Defiler's Leather Shoulders", quality = 4, source = "Reputation", sourceDetail = "Arathi Basin (Exalted)" },
    [21122] = { name = "Defiler's Plate Spaulders", quality = 4, source = "Reputation", sourceDetail = "Arathi Basin (Exalted)" },
    [21123] = { name = "Defiler's Cloth Shoulders", quality = 4, source = "Reputation", sourceDetail = "Arathi Basin (Exalted)" },

    -- ============================================================================
    --                      RARE WORLD DROP BLUES (TWINK/LEVELING)
    -- ============================================================================
    -- Level 19 Twink Items
    [6612] = { name = "Sage's Robe", quality = 2, source = "World Drop", sourceDetail = "World Drop (Level 16-20)" },
    [6613] = { name = "Sage's Mantle", quality = 2, source = "World Drop", sourceDetail = "World Drop (Level 17-21)" },
    [6559] = { name = "Bard's Bracers", quality = 2, source = "World Drop", sourceDetail = "World Drop (Level 14-19)" },
    [6556] = { name = "Bard's Belt", quality = 2, source = "World Drop", sourceDetail = "World Drop (Level 15-20)" },
    [7413] = { name = "Infiltrator Cloak", quality = 2, source = "World Drop", sourceDetail = "World Drop (Level 16-21)" },
    [7364] = { name = "Gryphon Mail Breastplate", quality = 2, source = "World Drop", sourceDetail = "World Drop (Level 16-21)" },
    [5317] = { name = "Lucky Fishing Hat", quality = 3, source = "Drop", sourceDetail = "Fishing Extravaganza (Sunday)" },
    [9799] = { name = "Eyepatch of Plunder", quality = 3, source = "Drop", sourceDetail = "Midsummer Fire Festival" },
    
    -- Level 29 Twink Items
    [4450] = { name = "Nightscape Tunic", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [7420] = { name = "Phalanx Spaulders", quality = 2, source = "World Drop", sourceDetail = "World Drop (Level 25-30)" },
    [9762] = { name = "Caverndeep Trudgers", quality = 3, source = "Drop", sourceDetail = "Gnomeregan" },
    [9767] = { name = "Mechbuilder's Overalls", quality = 3, source = "Drop", sourceDetail = "Gnomeregan" },
    [9781] = { name = "Gearloose Sweater", quality = 3, source = "Drop", sourceDetail = "Gnomeregan" },
    
    -- Level 39 Twink Items
    [9393] = { name = "Beacon of Hope", quality = 3, source = "Quest", sourceDetail = "Uldaman Quest" },
    [9420] = { name = "Adventurer's Pith Helmet", quality = 3, source = "Quest", sourceDetail = "Uldaman Quest" },
    [10404] = { name = "Durable Hat", quality = 2, source = "World Drop", sourceDetail = "World Drop (Level 32-40)" },
    [7466] = { name = "Sentinel Girdle", quality = 2, source = "World Drop", sourceDetail = "World Drop (Level 34-39)" },
    [7467] = { name = "Sentinel Shoulders", quality = 2, source = "World Drop", sourceDetail = "World Drop (Level 35-40)" },
    
    -- Level 49 Twink Items
    [12996] = { name = "Band of Flesh", quality = 3, source = "Drop", sourceDetail = "Zul'Farrak/Maraudon" },
    [12982] = { name = "Silver-Linked Footguards", quality = 3, source = "Drop", sourceDetail = "Zul'Farrak/Maraudon" },
    [12545] = { name = "Indomitable Leggings", quality = 2, source = "World Drop", sourceDetail = "World Drop (Level 46-50)" },
    [12544] = { name = "Thorbia's Gauntlets", quality = 2, source = "World Drop", sourceDetail = "World Drop (Level 46-50)" },
    
    -- Level 59/Pre-Raid BiS
    [18500] = { name = "Tarnished Elven Ring", quality = 3, source = "Drop", sourceDetail = "Dire Maul" },
    [18322] = { name = "Satyr's Bow", quality = 3, source = "Drop", sourceDetail = "Dire Maul (Zevrim Thornhoof)" },
    [18465] = { name = "Royal Seal of Eldre'Thalas", quality = 3, source = "Drop", sourceDetail = "Dire Maul (Tribute Run)" },
    [18469] = { name = "Royal Seal of Eldre'Thalas", quality = 3, source = "Drop", sourceDetail = "Dire Maul (Tribute Run)" },
    
    -- ============================================================================
    --                      EPIC WORLD DROPS
    -- ============================================================================
    [14551] = { name = "Edgemaster's Handguards", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 52-60)" },
    [867] = { name = "Gloves of Holy Might", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 53-60)" },
    [940] = { name = "Robes of Insight", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 53-60)" },
    [868] = { name = "Ardent Custodian", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 54-60)" },
    [1169] = { name = "Blackskull Shield", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 53-60)" },
    [1980] = { name = "Underworld Band", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 52-60)" },
    [1982] = { name = "Nightblade", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 53-60)" },
    [1991] = { name = "Shadowblade", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 53-60)" },
    [1992] = { name = "Swiftwind", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 52-60)" },
    [1993] = { name = "Stealthblade", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 54-60)" },
    [1998] = { name = "Bloodrazor", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 55-60)" },
    [1999] = { name = "Slicer", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 53-60)" },
    [2000] = { name = "Archeus", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 51-60)" },
    [2099] = { name = "Dwarven Hand Cannon", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 49-60)" },
    [2164] = { name = "Gut Ripper", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 42-50)" },
    [2244] = { name = "Krol Blade", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 51-60)" },
    [2801] = { name = "Blade of the Titans", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 48-58)" },
    [2824] = { name = "Hurricane", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 49-58)" },
    [2825] = { name = "Bow of Searing Arrows", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 50-60)" },
    [3475] = { name = "Cloak of Flames", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 47-56)" },
    [14549] = { name = "Boots of Avoidance", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 52-60)" },
    [14550] = { name = "Stockade Pauldrons", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 48-57)" },
    [14552] = { name = "Alcor's Sunrazor", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 45-55)" },
    [14553] = { name = "Sash of Mercy", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 48-58)" },
    [14554] = { name = "Cloudkeeper Legplates", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 56-60)" },
    [14555] = { name = "Alcor's Sunrazor", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 45-55)" },
    [17012] = { name = "Flurry Axe", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 42-51)" },
    [17069] = { name = "Striker's Mark", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 48-58)" },
    [18665] = { name = "The Eye of Shadow", quality = 4, source = "World Drop", sourceDetail = "Lord Kazzak / Elite Demons (Blasted Lands)" },
    [18703] = { name = "Ancient Petrified Leaf", quality = 4, source = "Drop", sourceDetail = "Majordomo Executus (Molten Core)" },
    [19138] = { name = "Band of Sulfuras", quality = 4, source = "Drop", sourceDetail = "Ragnaros (Molten Core)" },
    
    -- Teebu's Blazing Longsword and other famous world drops
    [1728] = { name = "Teebu's Blazing Longsword", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 52-60)" },
    [1168] = { name = "Skullflame Shield", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 53-60)" },
    [943] = { name = "Warden Staff", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 50-60)" },
    [944] = { name = "Elemental Mage Staff", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 51-60)" },
    [810] = { name = "Staff of Jordan", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 35-45)" },
    [809] = { name = "Bloodrazor", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 45-54)" },
    [811] = { name = "Glowing Brightwood Staff", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 48-58)" },
    [942] = { name = "Freezing Band", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 52-60)" },
    [1315] = { name = "Lei of the Lifegiver", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 55-60)" },
    [869] = { name = "Dazzling Longsword", quality = 4, source = "World Drop", sourceDetail = "World Drop (Level 50-59)" },
    
    -- ============================================================================
    --                      CRAFTED EPIC ITEMS
    -- ============================================================================
    -- Blacksmithing
    [12640] = { name = "Lionheart Helm", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Armorsmithing)" },
    [12639] = { name = "Stronghold Gauntlets", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Weaponsmithing)" },
    [12636] = { name = "Helm of the Great Chief", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Armorsmithing)" },
    [12632] = { name = "Storm Gauntlets", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Armorsmithing)" },
    [12641] = { name = "Invulnerable Mail", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Armorsmithing)" },
    [12644] = { name = "Helm of the Fireguard", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing" },
    [12631] = { name = "Fiery Plate Gauntlets", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Armorsmithing)" },
    [12618] = { name = "Enchanted Thorium Breastplate", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing" },
    [12619] = { name = "Enchanted Thorium Leggings", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing" },
    [12620] = { name = "Enchanted Thorium Helm", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing" },
    [12782] = { name = "Corruption", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Swordsmithing)" },
    [12784] = { name = "Arcanite Reaper", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Axesmithing)" },
    [12792] = { name = "Volcanic Hammer", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Hammersmithing)" },
    [12797] = { name = "Frostguard", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Swordsmithing)" },
    [12798] = { name = "Annihilator", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Axesmithing)" },
    [12794] = { name = "Masterwork Stormhammer", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Hammersmithing)" },
    [17193] = { name = "Sulfuron Hammer", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (300)" },
    [19166] = { name = "Black Amnesty", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Swordsmithing)" },
    [19167] = { name = "Blackfury", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Swordsmithing)" },
    [19168] = { name = "Blackguard", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Swordsmithing)" },
    [19169] = { name = "Nightfall", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Axesmithing)" },
    [22383] = { name = "Sageblade", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Swordsmithing)" },
    [22384] = { name = "Persuader", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Hammersmithing)" },
    [22385] = { name = "Titanic Leggings", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Armorsmithing)" },
    [22194] = { name = "Black Grasp of the Destroyer", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing" },
    [22191] = { name = "Obsidian Mail Tunic", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing" },
    
    -- Leatherworking
    [19149] = { name = "Chromatic Gauntlets", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (Dragonscale)" },
    [19157] = { name = "Chromatic Cloak", quality = 4, source = "Crafted", sourceDetail = "Leatherworking" },
    [19162] = { name = "Corehound Boots", quality = 4, source = "Crafted", sourceDetail = "Leatherworking" },
    [19163] = { name = "Molten Belt", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (Elemental)" },
    [19148] = { name = "Black Dragonscale Boots", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (Dragonscale)" },
    [20380] = { name = "Dreamscale Breastplate", quality = 4, source = "Crafted", sourceDetail = "Leatherworking" },
    [20382] = { name = "Polar Bracers", quality = 4, source = "Crafted", sourceDetail = "Leatherworking" },
    [20385] = { name = "Icy Scale Bracers", quality = 4, source = "Crafted", sourceDetail = "Leatherworking" },
    [19685] = { name = "Primal Batskin Jerkin", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (Tribal)" },
    [19051] = { name = "Girdle of the Dawn", quality = 4, source = "Crafted", sourceDetail = "Leatherworking" },
    [19052] = { name = "Dawn Treaders", quality = 4, source = "Crafted", sourceDetail = "Leatherworking" },
    [20476] = { name = "Sandstalker Bracers", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (Tribal)" },
    [20477] = { name = "Sandstalker Gauntlets", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (Tribal)" },
    [20478] = { name = "Sandstalker Breastplate", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (Tribal)" },
    [20479] = { name = "Spitfire Bracers", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (Elemental)" },
    [20480] = { name = "Spitfire Gauntlets", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (Elemental)" },
    [20481] = { name = "Spitfire Breastplate", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (Elemental)" },
    
    -- Tailoring
    [14152] = { name = "Robe of the Archmage", quality = 4, source = "Crafted", sourceDetail = "Tailoring" },
    [14153] = { name = "Robe of the Void", quality = 4, source = "Crafted", sourceDetail = "Tailoring (Shadoweave)" },
    [14154] = { name = "Truefaith Vestments", quality = 4, source = "Crafted", sourceDetail = "Tailoring" },
    [18405] = { name = "Belt of the Archmage", quality = 4, source = "Crafted", sourceDetail = "Tailoring" },
    [18407] = { name = "Felcloth Gloves", quality = 4, source = "Crafted", sourceDetail = "Tailoring" },
    [18408] = { name = "Inferno Gloves", quality = 4, source = "Crafted", sourceDetail = "Tailoring" },
    [18409] = { name = "Mooncloth Gloves", quality = 4, source = "Crafted", sourceDetail = "Tailoring" },
    [18486] = { name = "Mooncloth Robe", quality = 4, source = "Crafted", sourceDetail = "Tailoring" },
    [19682] = { name = "Bloodvine Vest", quality = 4, source = "Crafted", sourceDetail = "Tailoring (ZG Reputation)" },
    [20539] = { name = "Robe of the Winter Night", quality = 4, source = "Crafted", sourceDetail = "Tailoring (Frostwolf Rep)" },
    [22658] = { name = "Glacial Cloak", quality = 4, source = "Crafted", sourceDetail = "Tailoring (Naxx)" },
    [22654] = { name = "Glacial Vest", quality = 4, source = "Crafted", sourceDetail = "Tailoring (Naxx)" },
    [22655] = { name = "Glacial Gloves", quality = 4, source = "Crafted", sourceDetail = "Tailoring (Naxx)" },
    [22652] = { name = "Glacial Wrists", quality = 4, source = "Crafted", sourceDetail = "Tailoring (Naxx)" },
    
    -- Engineering
    [18168] = { name = "Force Reactive Disk", quality = 4, source = "Crafted", sourceDetail = "Engineering" },
    [19999] = { name = "Bloodvine Goggles", quality = 4, source = "Crafted", sourceDetail = "Engineering" },
    [19998] = { name = "Bloodvine Lens", quality = 4, source = "Crafted", sourceDetail = "Engineering" },
    [19794] = { name = "Flash Bomb", quality = 3, source = "Crafted", sourceDetail = "Engineering" },
    [10645] = { name = "Gnomish Death Ray", quality = 3, source = "Crafted", sourceDetail = "Engineering (Gnomish)" },
    [10716] = { name = "Gnomish Shrink Ray", quality = 3, source = "Crafted", sourceDetail = "Engineering (Gnomish)" },
    [10577] = { name = "Goblin Mortar", quality = 3, source = "Crafted", sourceDetail = "Engineering (Goblin)" },
    [10727] = { name = "Goblin Rocket Helmet", quality = 3, source = "Crafted", sourceDetail = "Engineering (Goblin)" },
    [10543] = { name = "Goblin Jumper Cables XL", quality = 3, source = "Crafted", sourceDetail = "Engineering (Goblin)" },
    
    -- ============================================================================
    --                      HOLIDAY EVENT ITEMS
    -- ============================================================================
    -- Lunar Festival
    [21100] = { name = "Coin of Ancestry", quality = 3, source = "Holiday", sourceDetail = "Lunar Festival" },
    [21745] = { name = "Elder's Moonstone", quality = 3, source = "Holiday", sourceDetail = "Lunar Festival" },
    [21747] = { name = "Festival Firecracker", quality = 1, source = "Holiday", sourceDetail = "Lunar Festival" },
    [21713] = { name = "Elune's Lantern", quality = 3, source = "Holiday", sourceDetail = "Lunar Festival" },
    [21154] = { name = "Festival Dress", quality = 2, source = "Holiday", sourceDetail = "Lunar Festival" },
    [21157] = { name = "Festive Blue Pant Suit", quality = 2, source = "Holiday", sourceDetail = "Lunar Festival" },
    [21538] = { name = "Festive Teal Pant Suit", quality = 2, source = "Holiday", sourceDetail = "Lunar Festival" },
    [21539] = { name = "Festive Black Pant Suit", quality = 2, source = "Holiday", sourceDetail = "Lunar Festival" },
    [21541] = { name = "Festive Purple Dress", quality = 2, source = "Holiday", sourceDetail = "Lunar Festival" },
    [21544] = { name = "Festive Pink Dress", quality = 2, source = "Holiday", sourceDetail = "Lunar Festival" },
    
    -- Love is in the Air
    [22200] = { name = "Silver Shafted Arrow", quality = 2, source = "Holiday", sourceDetail = "Love is in the Air" },
    [22235] = { name = "Truesilver Shafted Arrow", quality = 3, source = "Holiday", sourceDetail = "Love is in the Air" },
    [22261] = { name = "Love Fool", quality = 3, source = "Holiday", sourceDetail = "Love is in the Air" },
    [22218] = { name = "Handful of Rose Petals", quality = 1, source = "Holiday", sourceDetail = "Love is in the Air" },
    [21813] = { name = "Bag of Heart Candies", quality = 1, source = "Holiday", sourceDetail = "Love is in the Air" },
    [22279] = { name = "Lovely Black Dress", quality = 2, source = "Holiday", sourceDetail = "Love is in the Air" },
    [22276] = { name = "Lovely Red Dress", quality = 2, source = "Holiday", sourceDetail = "Love is in the Air" },
    [22278] = { name = "Lovely Blue Dress", quality = 2, source = "Holiday", sourceDetail = "Love is in the Air" },
    [22280] = { name = "Lovely Purple Dress", quality = 2, source = "Holiday", sourceDetail = "Love is in the Air" },
    
    -- Noblegarden
    [19028] = { name = "Elegant Dress", quality = 2, source = "Holiday", sourceDetail = "Noblegarden" },
    [6833] = { name = "White Tuxedo Shirt", quality = 2, source = "Holiday", sourceDetail = "Noblegarden" },
    [6835] = { name = "Black Tuxedo Pants", quality = 2, source = "Holiday", sourceDetail = "Noblegarden" },
    
    -- Children's Week
    [23007] = { name = "Piglet's Collar", quality = 3, source = "Holiday", sourceDetail = "Children's Week" },
    [23015] = { name = "Rat Cage", quality = 3, source = "Holiday", sourceDetail = "Children's Week" },
    [23002] = { name = "Turtle Box", quality = 3, source = "Holiday", sourceDetail = "Children's Week" },
    [23083] = { name = "Sleepy Willy", quality = 3, source = "Holiday", sourceDetail = "Children's Week" },
    [23713] = { name = "Curmudgeon's Payoff", quality = 3, source = "Holiday", sourceDetail = "Children's Week" },
    
    -- Midsummer Fire Festival
    [23083] = { name = "Captured Flame", quality = 3, source = "Holiday", sourceDetail = "Midsummer Fire Festival" },
    [23211] = { name = "Toasting Goblet", quality = 2, source = "Holiday", sourceDetail = "Midsummer Fire Festival" },
    [23215] = { name = "Flaming Torch", quality = 1, source = "Holiday", sourceDetail = "Midsummer Fire Festival" },
    [23246] = { name = "Fiery Festival Brew", quality = 2, source = "Holiday", sourceDetail = "Midsummer Fire Festival" },
    [23247] = { name = "Burning Blossom", quality = 1, source = "Holiday", sourceDetail = "Midsummer Fire Festival" },
    [23324] = { name = "Crown of the Fire Festival", quality = 3, source = "Holiday", sourceDetail = "Midsummer Fire Festival" },
    [23323] = { name = "Mantle of the Fire Festival", quality = 3, source = "Holiday", sourceDetail = "Midsummer Fire Festival" },
    [23379] = { name = "Vestment of Summer", quality = 2, source = "Holiday", sourceDetail = "Midsummer Fire Festival" },
    
    -- Hallow's End
    [18633] = { name = "Hallowed Wand - Bat", quality = 2, source = "Holiday", sourceDetail = "Hallow's End" },
    [18634] = { name = "Hallowed Wand - Ghost", quality = 2, source = "Holiday", sourceDetail = "Hallow's End" },
    [18635] = { name = "Hallowed Wand - Leper Gnome", quality = 2, source = "Holiday", sourceDetail = "Hallow's End" },
    [18636] = { name = "Hallowed Wand - Ninja", quality = 2, source = "Holiday", sourceDetail = "Hallow's End" },
    [18637] = { name = "Hallowed Wand - Pirate", quality = 2, source = "Holiday", sourceDetail = "Hallow's End" },
    [18638] = { name = "Hallowed Wand - Random", quality = 2, source = "Holiday", sourceDetail = "Hallow's End" },
    [18639] = { name = "Hallowed Wand - Skeleton", quality = 2, source = "Holiday", sourceDetail = "Hallow's End" },
    [18640] = { name = "Hallowed Wand - Wisp", quality = 2, source = "Holiday", sourceDetail = "Hallow's End" },
    [20400] = { name = "Pumpkin Bag", quality = 2, source = "Holiday", sourceDetail = "Hallow's End" },
    [20557] = { name = "Hallow's End Pumpkin Treat", quality = 1, source = "Holiday", sourceDetail = "Hallow's End" },
    
    -- Feast of Winter Veil
    [17712] = { name = "Winter Veil Disguise Kit", quality = 2, source = "Holiday", sourceDetail = "Winter Veil" },
    [17202] = { name = "Snowball", quality = 1, source = "Holiday", sourceDetail = "Winter Veil" },
    [17303] = { name = "Blue Ribboned Wrapping Paper", quality = 1, source = "Holiday", sourceDetail = "Winter Veil" },
    [17344] = { name = "Candy Cane", quality = 1, source = "Holiday", sourceDetail = "Winter Veil" },
    [17724] = { name = "Pattern: Green Winter Clothes", quality = 2, source = "Holiday", sourceDetail = "Winter Veil" },
    [17725] = { name = "Pattern: Red Winter Clothes", quality = 2, source = "Holiday", sourceDetail = "Winter Veil" },
    [17706] = { name = "Plans: Edge of Winter", quality = 3, source = "Holiday", sourceDetail = "Winter Veil" },
    [17722] = { name = "Pattern: Gloves of the Greatfather", quality = 3, source = "Holiday", sourceDetail = "Winter Veil" },
    [21525] = { name = "Green Winter Hat", quality = 2, source = "Holiday", sourceDetail = "Winter Veil" },
    [21524] = { name = "Red Winter Hat", quality = 2, source = "Holiday", sourceDetail = "Winter Veil" },
    
    -- Darkmoon Faire
    [19228] = { name = "Darkmoon Card: Blue Dragon", quality = 4, source = "Event", sourceDetail = "Darkmoon Faire (Blue Dragon Deck)" },
    [19229] = { name = "Darkmoon Card: Maelstrom", quality = 4, source = "Event", sourceDetail = "Darkmoon Faire (Elementals Deck)" },
    [19230] = { name = "Darkmoon Card: Twisting Nether", quality = 4, source = "Event", sourceDetail = "Darkmoon Faire (Portals Deck)" },
    [19254] = { name = "Darkmoon Card: Heroism", quality = 4, source = "Event", sourceDetail = "Darkmoon Faire (Warlords Deck)" },
    [19422] = { name = "Darkmoon Faire Prize Ticket", quality = 1, source = "Event", sourceDetail = "Darkmoon Faire" },
    [19291] = { name = "Darkmoon Flower", quality = 2, source = "Event", sourceDetail = "Darkmoon Faire (750 tickets)" },
    [19292] = { name = "Last Month's Mutton", quality = 2, source = "Event", sourceDetail = "Darkmoon Faire (50 tickets)" },
    [19293] = { name = "Darkmoon Storage Box", quality = 2, source = "Event", sourceDetail = "Darkmoon Faire (50 tickets)" },
    [19295] = { name = "Darkmoon Firework", quality = 2, source = "Event", sourceDetail = "Darkmoon Faire (40 tickets)" },
    [19296] = { name = "Greater Darkmoon Prize", quality = 3, source = "Event", sourceDetail = "Darkmoon Faire (40 tickets)" },
    [19298] = { name = "Lesser Darkmoon Prize", quality = 3, source = "Event", sourceDetail = "Darkmoon Faire (12 tickets)" },
    [19302] = { name = "Darkmoon Faire Fortune", quality = 1, source = "Event", sourceDetail = "Darkmoon Faire" },
    [19303] = { name = "Darkmoon Necklace", quality = 3, source = "Event", sourceDetail = "Darkmoon Faire (1200 tickets)" },
    [19426] = { name = "Orb of the Darkmoon", quality = 3, source = "Event", sourceDetail = "Darkmoon Faire (1200 tickets)" },
    [19425] = { name = "Amulet of the Darkmoon", quality = 3, source = "Event", sourceDetail = "Darkmoon Faire (1200 tickets)" },
    
    -- ============================================================================
    --                      KEY QUEST REWARDS
    -- ============================================================================
    -- Class Quests
    [18715] = { name = "Lok'delar, Stave of the Ancient Keepers", quality = 4, source = "Quest", sourceDetail = "Hunter Class Quest (Rhok'delar)" },
    [18713] = { name = "Rhok'delar, Longbow of the Ancient Keepers", quality = 4, source = "Quest", sourceDetail = "Hunter Class Quest (Ancient Petrified Leaf)" },
    [18608] = { name = "Benediction", quality = 4, source = "Quest", sourceDetail = "Priest Class Quest (Eye of Divinity)" },
    [18609] = { name = "Anathema", quality = 4, source = "Quest", sourceDetail = "Priest Class Quest (Eye of Shadow)" },
    [13262] = { name = "Ashbringer", quality = 4, source = "Quest", sourceDetail = "Corrupted Ashbringer Event (Naxxramas)" },
    
    -- Famous Quest Rewards
    [17966] = { name = "Onyxia Scale Cloak", quality = 4, source = "Quest", sourceDetail = "Onyxia Scale Cloak Quest" },
    [18404] = { name = "Onyxia Blood Talisman", quality = 4, source = "Quest", sourceDetail = "Onyxia Attunement (Horde)" },
    [18403] = { name = "Dragonslayer's Signet", quality = 4, source = "Quest", sourceDetail = "Head of Onyxia Turn-in" },
    [18406] = { name = "Onyxia Tooth Pendant", quality = 4, source = "Quest", sourceDetail = "Head of Onyxia Turn-in" },
    [19383] = { name = "Master Dragonslayer's Orb", quality = 4, source = "Quest", sourceDetail = "Head of Nefarian Turn-in" },
    [19366] = { name = "Master Dragonslayer's Medallion", quality = 4, source = "Quest", sourceDetail = "Head of Nefarian Turn-in" },
    [19384] = { name = "Master Dragonslayer's Ring", quality = 4, source = "Quest", sourceDetail = "Head of Nefarian Turn-in" },
    
    -- Attunement Quest Items
    [12344] = { name = "Seal of Ascension", quality = 4, source = "Quest", sourceDetail = "UBRS Key Quest" },
    [7733] = { name = "Staff of Prehistoria", quality = 3, source = "Quest", sourceDetail = "Uldaman Staff Quest" },
    [6893] = { name = "Workshop Key", quality = 2, source = "Quest", sourceDetail = "Gnomeregan Key Quest" },
    [17191] = { name = "Scepter of Celebras", quality = 3, source = "Quest", sourceDetail = "Maraudon Key Quest" },
    [11000] = { name = "Shadowforge Key", quality = 2, source = "Quest", sourceDetail = "BRD Key Quest" },
    [12382] = { name = "Key to the City", quality = 2, source = "Quest", sourceDetail = "Stratholme Key Quest" },
    [13307] = { name = "Skeleton Key", quality = 2, source = "Quest", sourceDetail = "Scholomance Key Quest" },
    [18266] = { name = "Crescent Key", quality = 2, source = "Quest", sourceDetail = "Dire Maul Key Quest" },
    
    -- UBRS/LBRS Quest Rewards
    [12590] = { name = "Felstriker", quality = 4, source = "Drop", sourceDetail = "Warchief Rend Blackhand (UBRS)" },
    [13965] = { name = "Blackhand's Breadth", quality = 4, source = "Quest", sourceDetail = "General Drakkisath's Demise" },
    [13966] = { name = "Mark of Tyranny", quality = 4, source = "Quest", sourceDetail = "General Drakkisath's Demise" },
    [13968] = { name = "Eye of the Beast", quality = 4, source = "Quest", sourceDetail = "General Drakkisath's Demise" },
    [12352] = { name = "Draconic Infused Emblem", quality = 4, source = "Quest", sourceDetail = "The Only Prescription" },
    
    -- Class Quest Trinkets (Level 50)
    [11810] = { name = "Diamond Flask", quality = 3, source = "Quest", sourceDetail = "Warrior Sunken Temple Quest" },
    [11832] = { name = "Rune of the Guard Captain", quality = 3, source = "Quest", sourceDetail = "Hinterlands Quest (Alliance)" },
    [11904] = { name = "Rune of the Guard Captain", quality = 3, source = "Quest", sourceDetail = "Hinterlands Quest (Horde)" },
    [20130] = { name = "Diamond Flask", quality = 4, source = "Quest", sourceDetail = "Warrior Sunken Temple Quest (Upgrade)" },
    
    -- Maraudon Princess Quest Rewards
    [17705] = { name = "Thrash Blade", quality = 3, source = "Quest", sourceDetail = "Princess Theradras Quest (Maraudon)" },
    [17710] = { name = "Blade of Eternal Darkness", quality = 4, source = "Drop", sourceDetail = "Princess Theradras (Maraudon Rare)" },
    [17732] = { name = "Megashot Rifle", quality = 3, source = "Quest", sourceDetail = "Princess Theradras Quest (Maraudon)" },
    [17733] = { name = "Fist of Stone", quality = 3, source = "Quest", sourceDetail = "Princess Theradras Quest (Maraudon)" },
    
    -- Sunken Temple Quest Rewards
    [10749] = { name = "Atal'ai Spear", quality = 4, source = "Quest", sourceDetail = "Sunken Temple Class Quest" },
    [10750] = { name = "Blessed Prayer Beads", quality = 4, source = "Quest", sourceDetail = "Sunken Temple Class Quest" },
    [10751] = { name = "Drakeclaw Band", quality = 4, source = "Quest", sourceDetail = "Sunken Temple Class Quest" },
    [10752] = { name = "Gloomstave", quality = 4, source = "Quest", sourceDetail = "Sunken Temple Class Quest" },
    [10753] = { name = "Hakkari Urn", quality = 4, source = "Quest", sourceDetail = "Sunken Temple Class Quest" },
    [10754] = { name = "Soulcatcher Halo", quality = 4, source = "Quest", sourceDetail = "Sunken Temple Class Quest" },
    [10755] = { name = "Drakestone of Frozen Wrath", quality = 4, source = "Quest", sourceDetail = "Sunken Temple Class Quest" },
    [10756] = { name = "Drakefire Amulet", quality = 4, source = "Quest", sourceDetail = "Onyxia Attunement" },
    
    -- Epic Quest Lines
    [21138] = { name = "Red Scepter Shard", quality = 4, source = "Quest", sourceDetail = "Scepter of the Shifting Sands (Red)" },
    [21139] = { name = "Green Scepter Shard", quality = 4, source = "Quest", sourceDetail = "Scepter of the Shifting Sands (Green)" },
    [21140] = { name = "Blue Scepter Shard", quality = 4, source = "Quest", sourceDetail = "Scepter of the Shifting Sands (Blue)" },
    [21175] = { name = "Scepter of the Shifting Sands", quality = 4, source = "Quest", sourceDetail = "Scepter of the Shifting Sands (Complete)" },
    
    -- ============================================================================
    --                      UTILITY ITEMS & MOUNT SPEED
    -- ============================================================================
    -- Mount Speed Items
    [11122] = { name = "Carrot on a Stick", quality = 3, source = "Quest", sourceDetail = "Gahz'rilla (Zul'Farrak)" },
    [7969] = { name = "Mithril Spurs", quality = 2, source = "Crafted", sourceDetail = "Blacksmithing" },
    [19029] = { name = "Mistyreed Boots of Swiftness", quality = 2, source = "World Drop", sourceDetail = "Level 50-60 (Rare)" },
    [2459] = { name = "Swiftness Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    
    -- Gurubashi Arena
    [19024] = { name = "Arena Grand Master", quality = 4, source = "Event", sourceDetail = "Gurubashi Arena (12 Arena Master Trinkets)" },
    [18709] = { name = "Arena Master", quality = 2, source = "Event", sourceDetail = "Gurubashi Arena Chest" },
    [18710] = { name = "Arena Wristguards", quality = 3, source = "Event", sourceDetail = "Gurubashi Arena Chest" },
    [18711] = { name = "Arena Bracers", quality = 3, source = "Event", sourceDetail = "Gurubashi Arena Chest" },
    [18712] = { name = "Arena Bands", quality = 3, source = "Event", sourceDetail = "Gurubashi Arena Chest" },
    
    -- Fishing Items
    [19979] = { name = "Hook of the Master Angler", quality = 3, source = "Event", sourceDetail = "Stranglethorn Fishing Extravaganza" },
    [19970] = { name = "Arcanite Fishing Pole", quality = 4, source = "Event", sourceDetail = "Stranglethorn Fishing Extravaganza" },
    [19972] = { name = "Lucky Fishing Hat", quality = 2, source = "Event", sourceDetail = "Stranglethorn Fishing Extravaganza" },
    [19969] = { name = "Nat Pagle's Extreme Anglin' Boots", quality = 2, source = "Event", sourceDetail = "Stranglethorn Fishing Extravaganza" },
    [6365] = { name = "Strong Fishing Pole", quality = 1, source = "Vendor", sourceDetail = "Fishing Suppliers" },
    [6366] = { name = "Darkwood Fishing Pole", quality = 2, source = "Quest", sourceDetail = "Horde Fishing Quest" },
    [6367] = { name = "Big Iron Fishing Pole", quality = 2, source = "Drop", sourceDetail = "Shellfish Traps (Desolace)" },
    [12225] = { name = "Blump Family Fishing Pole", quality = 2, source = "Quest", sourceDetail = "Alliance Fishing Quest" },
    [19022] = { name = "Nat Pagle's Extreme Angler FC-5000", quality = 3, source = "Quest", sourceDetail = "Nat Pagle Quest" },
    [6256] = { name = "Fishing Pole", quality = 1, source = "Vendor", sourceDetail = "General Goods" },
    
    -- Rare World Trinkets
    [1490] = { name = "Guardian Talisman", quality = 3, source = "World Drop", sourceDetail = "Level 40-50" },
    [17774] = { name = "Mark of the Chosen", quality = 3, source = "Quest", sourceDetail = "Maraudon Quest" },
    [6657] = { name = "Savory Deviate Delight", quality = 1, source = "Crafted", sourceDetail = "Cooking (Recipe from Wailing Caverns)" },
    [6657] = { name = "Recipe: Savory Deviate Delight", quality = 2, source = "Drop", sourceDetail = "Wailing Caverns" },
    [10506] = { name = "Deepdive Helmet", quality = 2, source = "Crafted", sourceDetail = "Engineering" },
    [10518] = { name = "Parachute Cloak", quality = 2, source = "Crafted", sourceDetail = "Engineering" },
    [10721] = { name = "Gnomish Harm Prevention Belt", quality = 2, source = "Crafted", sourceDetail = "Gnomish Engineering" },
    
    -- Bags
    [4500] = { name = "Traveler's Backpack", quality = 2, source = "Drop", sourceDetail = "Various (Level 45+)" },
    [14156] = { name = "Bottomless Bag", quality = 4, source = "Crafted", sourceDetail = "Tailoring (Rare Pattern)" },
    [17966] = { name = "Onyxia Hide Backpack", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (Onyxia Hide)" },
    [21341] = { name = "Core Felcloth Bag", quality = 4, source = "Crafted", sourceDetail = "Tailoring" },
    [21342] = { name = "Big Bag of Enchantment", quality = 4, source = "Crafted", sourceDetail = "Tailoring" },
    [21340] = { name = "Soul Pouch", quality = 2, source = "Crafted", sourceDetail = "Tailoring (Warlock)" },
    [21371] = { name = "Core Felcloth Bag", quality = 4, source = "Crafted", sourceDetail = "Tailoring" },
    [21872] = { name = "Ebon Shadowbag", quality = 4, source = "Crafted", sourceDetail = "Tailoring (Warlock)" },
    [22246] = { name = "Satchel of Cenarius", quality = 4, source = "Crafted", sourceDetail = "Tailoring" },
    [22248] = { name = "Enchanted Mageweave Pouch", quality = 2, source = "Crafted", sourceDetail = "Tailoring" },
    [22249] = { name = "Enchanted Runecloth Bag", quality = 3, source = "Crafted", sourceDetail = "Tailoring" },
    [22250] = { name = "Cenarion Herb Bag", quality = 3, source = "Crafted", sourceDetail = "Tailoring" },
    [22251] = { name = "Satchel of Cenarius", quality = 4, source = "Crafted", sourceDetail = "Tailoring" },
    [22252] = { name = "Big Bag of Enchantment", quality = 4, source = "Crafted", sourceDetail = "Tailoring" },
    
    -- Keys and Lockboxes
    [5759] = { name = "Thorium Lockbox", quality = 2, source = "World Drop", sourceDetail = "Level 50+" },
    [5760] = { name = "Eternium Lockbox", quality = 3, source = "World Drop", sourceDetail = "Level 55+" },
    [4632] = { name = "Ornate Bronze Lockbox", quality = 2, source = "World Drop", sourceDetail = "Level 20-30" },
    [4633] = { name = "Heavy Bronze Lockbox", quality = 2, source = "World Drop", sourceDetail = "Level 25-35" },
    [4634] = { name = "Iron Lockbox", quality = 2, source = "World Drop", sourceDetail = "Level 30-40" },
    [4636] = { name = "Strong Iron Lockbox", quality = 2, source = "World Drop", sourceDetail = "Level 35-45" },
    [4637] = { name = "Steel Lockbox", quality = 2, source = "World Drop", sourceDetail = "Level 40-50" },
    [4638] = { name = "Reinforced Steel Lockbox", quality = 2, source = "World Drop", sourceDetail = "Level 45-55" },
    [5758] = { name = "Mithril Lockbox", quality = 2, source = "World Drop", sourceDetail = "Level 45-55" },
    
    -- Important Consumables
    [13442] = { name = "Mighty Rage Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [13443] = { name = "Superior Mana Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [13444] = { name = "Major Mana Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [13446] = { name = "Major Healing Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [13447] = { name = "Elixir of the Sages", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [13452] = { name = "Elixir of the Mongoose", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [13453] = { name = "Elixir of Brute Force", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [13454] = { name = "Greater Arcane Elixir", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [13455] = { name = "Greater Stoneshield Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [13457] = { name = "Greater Fire Protection Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [13458] = { name = "Greater Nature Protection Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [13459] = { name = "Greater Shadow Protection Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [13460] = { name = "Greater Arcane Protection Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [13461] = { name = "Greater Frost Protection Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [13462] = { name = "Purification Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [20007] = { name = "Mageblood Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [20008] = { name = "Living Action Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [20079] = { name = "Spirit of Zanza", quality = 1, source = "Vendor", sourceDetail = "Zandalar Tribe (Revered)" },
    [20080] = { name = "Sheen of Zanza", quality = 1, source = "Vendor", sourceDetail = "Zandalar Tribe (Revered)" },
    [20081] = { name = "Swiftness of Zanza", quality = 1, source = "Vendor", sourceDetail = "Zandalar Tribe (Honored)" },
    [12820] = { name = "Winterfall Firewater", quality = 1, source = "Drop", sourceDetail = "Winterfall Furbolgs (Winterspring)" },
    [12451] = { name = "Juju Flurry", quality = 1, source = "Drop", sourceDetail = "Winterspring Furbolgs" },
    [12450] = { name = "Juju Power", quality = 1, source = "Drop", sourceDetail = "Winterspring Furbolgs" },
    [12457] = { name = "Juju Might", quality = 1, source = "Drop", sourceDetail = "Winterspring Furbolgs" },
    [12460] = { name = "Juju Ember", quality = 1, source = "Drop", sourceDetail = "Winterspring Furbolgs" },
    [12455] = { name = "Juju Chill", quality = 1, source = "Drop", sourceDetail = "Winterspring Furbolgs" },
    [12458] = { name = "Juju Guile", quality = 1, source = "Drop", sourceDetail = "Winterspring Furbolgs" },
    [12459] = { name = "Juju Escape", quality = 1, source = "Drop", sourceDetail = "Winterspring Furbolgs" },
    
    -- Resistance Gear (Crafted)
    [16059] = { name = "Green Dragonscale Breastplate", quality = 3, source = "Crafted", sourceDetail = "Leatherworking (Dragonscale)" },
    [16060] = { name = "Green Dragonscale Leggings", quality = 3, source = "Crafted", sourceDetail = "Leatherworking (Dragonscale)" },
    [20295] = { name = "Green Dragonscale Gauntlets", quality = 3, source = "Crafted", sourceDetail = "Leatherworking (Dragonscale)" },
    [15047] = { name = "Red Dragonscale Breastplate", quality = 3, source = "Crafted", sourceDetail = "Leatherworking (Dragonscale)" },
    [19157] = { name = "Onyxia Scale Breastplate", quality = 4, source = "Crafted", sourceDetail = "Leatherworking" },
    [19162] = { name = "Corehound Boots", quality = 4, source = "Crafted", sourceDetail = "Leatherworking" },
    [19163] = { name = "Molten Helm", quality = 4, source = "Crafted", sourceDetail = "Leatherworking" },
    [19164] = { name = "Black Dragonscale Shoulders", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (Dragonscale)" },
    [19165] = { name = "Black Dragonscale Leggings", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (Dragonscale)" },
    [19166] = { name = "Black Dragonscale Breastplate", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (Dragonscale)" },
    [22663] = { name = "Polar Tunic", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (Naxxramas)" },
    [22664] = { name = "Polar Gloves", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (Naxxramas)" },
    [22665] = { name = "Polar Bracers", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (Naxxramas)" },
    [22661] = { name = "Icy Scale Breastplate", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (Naxxramas)" },
    [22662] = { name = "Icy Scale Gauntlets", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (Naxxramas)" },
    [22666] = { name = "Icy Scale Bracers", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (Naxxramas)" },
    [22758] = { name = "Glacial Cloak", quality = 4, source = "Crafted", sourceDetail = "Tailoring (Naxxramas)" },
    [22654] = { name = "Glacial Vest", quality = 4, source = "Crafted", sourceDetail = "Tailoring (Naxxramas)" },
    [22655] = { name = "Glacial Gloves", quality = 4, source = "Crafted", sourceDetail = "Tailoring (Naxxramas)" },
    [22656] = { name = "Glacial Wrists", quality = 4, source = "Crafted", sourceDetail = "Tailoring (Naxxramas)" },
    [22669] = { name = "Icebane Breastplate", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Naxxramas)" },
    [22670] = { name = "Icebane Gauntlets", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Naxxramas)" },
    [22671] = { name = "Icebane Bracers", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Naxxramas)" },
    
    -- Nature Resistance
    [22275] = { name = "Sandstalker Bracers", quality = 3, source = "Crafted", sourceDetail = "Leatherworking (AQ)" },
    [22276] = { name = "Sandstalker Gauntlets", quality = 3, source = "Crafted", sourceDetail = "Leatherworking (AQ)" },
    [22277] = { name = "Sandstalker Breastplate", quality = 3, source = "Crafted", sourceDetail = "Leatherworking (AQ)" },
    [22278] = { name = "Spitfire Bracers", quality = 3, source = "Crafted", sourceDetail = "Leatherworking (AQ)" },
    [22279] = { name = "Spitfire Gauntlets", quality = 3, source = "Crafted", sourceDetail = "Leatherworking (AQ)" },
    [22280] = { name = "Spitfire Breastplate", quality = 3, source = "Crafted", sourceDetail = "Leatherworking (AQ)" },
    [22246] = { name = "Sylvan Shoulders", quality = 4, source = "Crafted", sourceDetail = "Tailoring (AQ)" },
    [22248] = { name = "Sylvan Crown", quality = 4, source = "Crafted", sourceDetail = "Tailoring (AQ)" },
    [22251] = { name = "Sylvan Vest", quality = 4, source = "Crafted", sourceDetail = "Tailoring (AQ)" },
    [22196] = { name = "Thick Obsidian Breastplate", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (AQ)" },
    [22191] = { name = "Obsidian Mail Tunic", quality = 3, source = "Crafted", sourceDetail = "Blacksmithing (AQ)" },
    [22195] = { name = "Light Obsidian Belt", quality = 3, source = "Crafted", sourceDetail = "Blacksmithing (AQ)" },
    [22194] = { name = "Heavy Obsidian Belt", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (AQ)" },
    [22197] = { name = "Jagged Obsidian Shield", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (AQ)" },
    
    -- ============================================================================
    --                      WORLD DROP GREENS - "Of the Eagle" Suffix
    -- ============================================================================
    [6562] = { name = "Shimmering Boots of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [6563] = { name = "Shimmering Bracers of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [6564] = { name = "Shimmering Cloak of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [6565] = { name = "Shimmering Gloves of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [6566] = { name = "Shimmering Armor of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [6567] = { name = "Shimmering Trousers of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [6568] = { name = "Shimmering Sash of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [6604] = { name = "Battleforge Boots of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 20-25" },
    [6605] = { name = "Battleforge Armor of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 20-25" },
    [6606] = { name = "Battleforge Gauntlets of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 20-25" },
    [6607] = { name = "Battleforge Legguards of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 20-25" },
    [6608] = { name = "Battleforge Girdle of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 20-25" },
    [6609] = { name = "Battleforge Shoulderguards of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 20-25" },
    [6610] = { name = "Battleforge Wristguards of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 20-25" },
    [7414] = { name = "Phalanx Boots of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    [7415] = { name = "Phalanx Bracers of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    [7416] = { name = "Phalanx Breastplate of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    [7417] = { name = "Phalanx Cloak of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    [7418] = { name = "Phalanx Gauntlets of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    [7419] = { name = "Phalanx Girdle of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    [7420] = { name = "Phalanx Headguard of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    [7421] = { name = "Phalanx Leggings of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    [7422] = { name = "Phalanx Spaulders of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    
    -- ============================================================================
    --                      WORLD DROP GREENS - "Of the Bear" Suffix
    -- ============================================================================
    [6570] = { name = "Shimmering Boots of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [6571] = { name = "Shimmering Bracers of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [6572] = { name = "Shimmering Cloak of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [6573] = { name = "Shimmering Gloves of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [6574] = { name = "Shimmering Armor of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [6575] = { name = "Shimmering Trousers of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [6576] = { name = "Shimmering Sash of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [6611] = { name = "Battleforge Boots of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 20-25" },
    [6612] = { name = "Battleforge Armor of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 20-25" },
    [6613] = { name = "Battleforge Gauntlets of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 20-25" },
    [6614] = { name = "Battleforge Legguards of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 20-25" },
    [6615] = { name = "Battleforge Girdle of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 20-25" },
    [6616] = { name = "Battleforge Shoulderguards of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 20-25" },
    [6617] = { name = "Battleforge Wristguards of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 20-25" },
    [7430] = { name = "Phalanx Boots of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    [7431] = { name = "Phalanx Bracers of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    [7432] = { name = "Phalanx Breastplate of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    [7433] = { name = "Phalanx Cloak of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    [7434] = { name = "Phalanx Gauntlets of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    [7435] = { name = "Phalanx Girdle of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    [7436] = { name = "Phalanx Headguard of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    [7437] = { name = "Phalanx Leggings of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    [7438] = { name = "Phalanx Spaulders of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    
    -- ============================================================================
    --                      WORLD DROP GREENS - "Of the Monkey" Suffix
    -- ============================================================================
    [6580] = { name = "Shimmering Boots of the Monkey", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [6581] = { name = "Shimmering Bracers of the Monkey", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [6582] = { name = "Shimmering Cloak of the Monkey", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [6583] = { name = "Shimmering Gloves of the Monkey", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [6584] = { name = "Shimmering Armor of the Monkey", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [6585] = { name = "Shimmering Trousers of the Monkey", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [6586] = { name = "Shimmering Sash of the Monkey", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [6618] = { name = "Battleforge Boots of the Monkey", quality = 2, source = "World Drop", sourceDetail = "Level 20-25" },
    [6619] = { name = "Battleforge Armor of the Monkey", quality = 2, source = "World Drop", sourceDetail = "Level 20-25" },
    [6620] = { name = "Battleforge Gauntlets of the Monkey", quality = 2, source = "World Drop", sourceDetail = "Level 20-25" },
    [6621] = { name = "Battleforge Legguards of the Monkey", quality = 2, source = "World Drop", sourceDetail = "Level 20-25" },
    [6622] = { name = "Battleforge Girdle of the Monkey", quality = 2, source = "World Drop", sourceDetail = "Level 20-25" },
    [6623] = { name = "Battleforge Shoulderguards of the Monkey", quality = 2, source = "World Drop", sourceDetail = "Level 20-25" },
    [6624] = { name = "Battleforge Wristguards of the Monkey", quality = 2, source = "World Drop", sourceDetail = "Level 20-25" },
    
    -- ============================================================================
    --                      WORLD DROP GREENS - "Of the Whale" Suffix
    -- ============================================================================
    [6590] = { name = "Shimmering Boots of the Whale", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [6591] = { name = "Shimmering Bracers of the Whale", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [6592] = { name = "Shimmering Cloak of the Whale", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [6593] = { name = "Shimmering Gloves of the Whale", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [6594] = { name = "Shimmering Armor of the Whale", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [6595] = { name = "Shimmering Trousers of the Whale", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [6596] = { name = "Shimmering Sash of the Whale", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    
    -- ============================================================================
    --                      WORLD DROP GREENS - High Level Sets (45-60)
    -- ============================================================================
    -- Bloodforged Plate
    [14947] = { name = "Bloodforged Bindings", quality = 2, source = "World Drop", sourceDetail = "Level 45-50" },
    [14948] = { name = "Bloodforged Belt", quality = 2, source = "World Drop", sourceDetail = "Level 45-50" },
    [14949] = { name = "Bloodforged Chestpiece", quality = 2, source = "World Drop", sourceDetail = "Level 45-50" },
    [14950] = { name = "Bloodforged Gauntlets", quality = 2, source = "World Drop", sourceDetail = "Level 45-50" },
    [14951] = { name = "Bloodforged Helmet", quality = 2, source = "World Drop", sourceDetail = "Level 45-50" },
    [14952] = { name = "Bloodforged Legplates", quality = 2, source = "World Drop", sourceDetail = "Level 45-50" },
    [14953] = { name = "Bloodforged Sabatons", quality = 2, source = "World Drop", sourceDetail = "Level 45-50" },
    [14954] = { name = "Bloodforged Shoulder Pads", quality = 2, source = "World Drop", sourceDetail = "Level 45-50" },
    
    -- Jade Plate
    [14955] = { name = "Jade Bracers", quality = 2, source = "World Drop", sourceDetail = "Level 48-53" },
    [14956] = { name = "Jade Belt", quality = 2, source = "World Drop", sourceDetail = "Level 48-53" },
    [14957] = { name = "Jade Breastplate", quality = 2, source = "World Drop", sourceDetail = "Level 48-53" },
    [14958] = { name = "Jade Gauntlets", quality = 2, source = "World Drop", sourceDetail = "Level 48-53" },
    [14959] = { name = "Jade Circlet", quality = 2, source = "World Drop", sourceDetail = "Level 48-53" },
    [14960] = { name = "Jade Legplates", quality = 2, source = "World Drop", sourceDetail = "Level 48-53" },
    [14961] = { name = "Jade Greaves", quality = 2, source = "World Drop", sourceDetail = "Level 48-53" },
    [14962] = { name = "Jade Epaulets", quality = 2, source = "World Drop", sourceDetail = "Level 48-53" },
    
    -- Lofty Plate
    [14963] = { name = "Lofty Armguards", quality = 2, source = "World Drop", sourceDetail = "Level 51-56" },
    [14964] = { name = "Lofty Belt", quality = 2, source = "World Drop", sourceDetail = "Level 51-56" },
    [14965] = { name = "Lofty Breastplate", quality = 2, source = "World Drop", sourceDetail = "Level 51-56" },
    [14966] = { name = "Lofty Gauntlets", quality = 2, source = "World Drop", sourceDetail = "Level 51-56" },
    [14967] = { name = "Lofty Helm", quality = 2, source = "World Drop", sourceDetail = "Level 51-56" },
    [14968] = { name = "Lofty Legguards", quality = 2, source = "World Drop", sourceDetail = "Level 51-56" },
    [14969] = { name = "Lofty Sabatons", quality = 2, source = "World Drop", sourceDetail = "Level 51-56" },
    [14970] = { name = "Lofty Shoulder Pads", quality = 2, source = "World Drop", sourceDetail = "Level 51-56" },
    
    -- Glorious Plate
    [14971] = { name = "Glorious Bindings", quality = 2, source = "World Drop", sourceDetail = "Level 54-59" },
    [14972] = { name = "Glorious Belt", quality = 2, source = "World Drop", sourceDetail = "Level 54-59" },
    [14973] = { name = "Glorious Breastplate", quality = 2, source = "World Drop", sourceDetail = "Level 54-59" },
    [14974] = { name = "Glorious Gauntlets", quality = 2, source = "World Drop", sourceDetail = "Level 54-59" },
    [14975] = { name = "Glorious Headdress", quality = 2, source = "World Drop", sourceDetail = "Level 54-59" },
    [14976] = { name = "Glorious Legplates", quality = 2, source = "World Drop", sourceDetail = "Level 54-59" },
    [14977] = { name = "Glorious Sabatons", quality = 2, source = "World Drop", sourceDetail = "Level 54-59" },
    [14978] = { name = "Glorious Shoulder Pads", quality = 2, source = "World Drop", sourceDetail = "Level 54-59" },
    
    -- Vanguard Plate
    [14979] = { name = "Vanguard Vambraces", quality = 2, source = "World Drop", sourceDetail = "Level 57-60" },
    [14980] = { name = "Vanguard Girdle", quality = 2, source = "World Drop", sourceDetail = "Level 57-60" },
    [14981] = { name = "Vanguard Breastplate", quality = 2, source = "World Drop", sourceDetail = "Level 57-60" },
    [14982] = { name = "Vanguard Gauntlets", quality = 2, source = "World Drop", sourceDetail = "Level 57-60" },
    [14983] = { name = "Vanguard Headdress", quality = 2, source = "World Drop", sourceDetail = "Level 57-60" },
    [14984] = { name = "Vanguard Legplates", quality = 2, source = "World Drop", sourceDetail = "Level 57-60" },
    [14985] = { name = "Vanguard Sabatons", quality = 2, source = "World Drop", sourceDetail = "Level 57-60" },
    [14986] = { name = "Vanguard Pauldrons", quality = 2, source = "World Drop", sourceDetail = "Level 57-60" },
    
    -- ============================================================================
    --                      WORLD DROP GREENS - Cloth Sets (45-60)
    -- ============================================================================
    -- Runecloth
    [14342] = { name = "Felcloth Hood", quality = 2, source = "World Drop", sourceDetail = "Level 52-57" },
    [14343] = { name = "Felcloth Robe", quality = 2, source = "World Drop", sourceDetail = "Level 52-57" },
    [14344] = { name = "Felcloth Pants", quality = 2, source = "World Drop", sourceDetail = "Level 52-57" },
    [14345] = { name = "Felcloth Boots", quality = 2, source = "World Drop", sourceDetail = "Level 52-57" },
    [14346] = { name = "Felcloth Gloves", quality = 2, source = "World Drop", sourceDetail = "Level 52-57" },
    [14347] = { name = "Felcloth Shoulders", quality = 2, source = "World Drop", sourceDetail = "Level 52-57" },
    
    -- Dreamweave
    [10019] = { name = "Dreamweave Gloves", quality = 2, source = "Crafted", sourceDetail = "Tailoring" },
    [10021] = { name = "Dreamweave Vest", quality = 2, source = "Crafted", sourceDetail = "Tailoring" },
    [10020] = { name = "Dreamweave Circlet", quality = 2, source = "Crafted", sourceDetail = "Tailoring" },
    
    -- Runecloth Armor
    [13867] = { name = "Runecloth Boots", quality = 2, source = "Crafted", sourceDetail = "Tailoring" },
    [13866] = { name = "Runecloth Pants", quality = 2, source = "Crafted", sourceDetail = "Tailoring" },
    [13868] = { name = "Runecloth Shoulders", quality = 2, source = "Crafted", sourceDetail = "Tailoring" },
    [13869] = { name = "Frostweave Gloves", quality = 2, source = "Crafted", sourceDetail = "Tailoring" },
    [13870] = { name = "Frostweave Pants", quality = 2, source = "Crafted", sourceDetail = "Tailoring" },
    [13871] = { name = "Frostweave Robe", quality = 2, source = "Crafted", sourceDetail = "Tailoring" },
    [13872] = { name = "Frostweave Tunic", quality = 2, source = "Crafted", sourceDetail = "Tailoring" },
    
    -- ============================================================================
    --                      WORLD DROP GREENS - Leather Sets (45-60)
    -- ============================================================================
    -- Wicked Leather
    [15062] = { name = "Wicked Leather Bracers", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [15063] = { name = "Wicked Leather Gauntlets", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [15064] = { name = "Wicked Leather Pants", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [15065] = { name = "Wicked Leather Armor", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [15066] = { name = "Wicked Leather Belt", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [15067] = { name = "Wicked Leather Boots", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [15068] = { name = "Wicked Leather Headband", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    
    -- Runic Leather
    [15090] = { name = "Runic Leather Armor", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [15091] = { name = "Runic Leather Gauntlets", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [15092] = { name = "Runic Leather Bracers", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [15093] = { name = "Runic Leather Belt", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [15094] = { name = "Runic Leather Headband", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [15095] = { name = "Runic Leather Pants", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [15096] = { name = "Runic Leather Shoulders", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    
    -- Chimeric Leather
    [15074] = { name = "Chimeric Gloves", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [15075] = { name = "Chimeric Boots", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [15076] = { name = "Chimeric Leggings", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [15077] = { name = "Chimeric Vest", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    
    -- ============================================================================
    --                      WORLD DROP GREENS - Mail Sets (45-60)
    -- ============================================================================
    -- Heavy Scorpid Armor
    [15082] = { name = "Heavy Scorpid Bracers", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [15083] = { name = "Heavy Scorpid Vest", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [15084] = { name = "Heavy Scorpid Belt", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [15085] = { name = "Heavy Scorpid Helm", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [15086] = { name = "Heavy Scorpid Leggings", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [15087] = { name = "Heavy Scorpid Gauntlets", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [15088] = { name = "Heavy Scorpid Shoulders", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    
    -- Volcanic Armor
    [15053] = { name = "Volcanic Breastplate", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [15054] = { name = "Volcanic Leggings", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [15055] = { name = "Volcanic Shoulders", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    
    -- ============================================================================
    --                      WORLD DROP BLUES - Rare Items
    -- ============================================================================
    -- Blue Weapons
    [1935] = { name = "Assassin's Blade", quality = 3, source = "World Drop", sourceDetail = "Level 22-27" },
    [1937] = { name = "Buzz Saw", quality = 3, source = "World Drop", sourceDetail = "Level 23-28" },
    [1943] = { name = "Sword of the Night Sky", quality = 3, source = "World Drop", sourceDetail = "Level 35-40" },
    [1944] = { name = "Dagger of the Night Sky", quality = 3, source = "World Drop", sourceDetail = "Level 36-41" },
    [1973] = { name = "Orb of Power", quality = 3, source = "World Drop", sourceDetail = "Level 30-35" },
    [1974] = { name = "Mindthrust Bracers", quality = 3, source = "World Drop", sourceDetail = "Level 31-36" },
    [1975] = { name = "Pysan's Old Greatsword", quality = 3, source = "World Drop", sourceDetail = "Level 33-38" },
    [1976] = { name = "Soulkeeper", quality = 3, source = "World Drop", sourceDetail = "Level 44-49" },
    [1977] = { name = "Magus Long Staff", quality = 3, source = "World Drop", sourceDetail = "Level 24-29" },
    [1978] = { name = "Wolfclaw Gloves", quality = 3, source = "World Drop", sourceDetail = "Level 28-33" },
    [1979] = { name = "Wall of the Dead", quality = 3, source = "World Drop", sourceDetail = "Level 35-40" },
    [1981] = { name = "Icemail Jerkin", quality = 3, source = "World Drop", sourceDetail = "Level 33-38" },
    [1983] = { name = "Duskbringer", quality = 3, source = "World Drop", sourceDetail = "Level 36-41" },
    [1984] = { name = "Deepfury Bracers", quality = 3, source = "World Drop", sourceDetail = "Level 26-31" },
    [1985] = { name = "Black Steel Greatsword", quality = 3, source = "World Drop", sourceDetail = "Level 37-42" },
    [1986] = { name = "Gutrender", quality = 3, source = "World Drop", sourceDetail = "Level 38-43" },
    [1987] = { name = "Gutterblade", quality = 3, source = "World Drop", sourceDetail = "Level 40-45" },
    [1988] = { name = "Chief Brigadier Gauntlets", quality = 3, source = "World Drop", sourceDetail = "Level 39-44" },
    [1990] = { name = "Rage Reaver", quality = 3, source = "World Drop", sourceDetail = "Level 45-50" },
    [1994] = { name = "Ebonclaw Reaver", quality = 3, source = "World Drop", sourceDetail = "Level 48-53" },
    [1995] = { name = "Murloc Skin Bag", quality = 3, source = "World Drop", sourceDetail = "Level 25-30" },
    [1996] = { name = "Vile Fin Battle Axe", quality = 3, source = "World Drop", sourceDetail = "Level 20-25" },
    [1997] = { name = "Stormwind Guard Leggings", quality = 3, source = "World Drop", sourceDetail = "Level 18-23" },
    [2017] = { name = "Dragonclaw Ring", quality = 3, source = "World Drop", sourceDetail = "Level 55-60" },
    [2018] = { name = "Stretched Leather Pants", quality = 3, source = "World Drop", sourceDetail = "Level 18-23" },
    [2019] = { name = "Wolfpack Claws", quality = 3, source = "World Drop", sourceDetail = "Level 35-40" },
    [2020] = { name = "Footpads of the Fang", quality = 3, source = "World Drop", sourceDetail = "Level 19-24" },
    [2059] = { name = "Sentry Cloak", quality = 3, source = "World Drop", sourceDetail = "Level 20-25" },
    [2060] = { name = "Fern-Laced Boots", quality = 3, source = "World Drop", sourceDetail = "Level 22-27" },
    [2078] = { name = "Neophyte's Robe", quality = 3, source = "World Drop", sourceDetail = "Level 1-5" },
    [2079] = { name = "Sergeant's Cloak", quality = 3, source = "World Drop", sourceDetail = "Level 25-30" },
    [2080] = { name = "Spikelash Dagger", quality = 3, source = "World Drop", sourceDetail = "Level 22-27" },
    [2089] = { name = "Scrimshaw Dagger", quality = 3, source = "World Drop", sourceDetail = "Level 30-35" },
    [2090] = { name = "Gem-studded Leather Belt", quality = 3, source = "World Drop", sourceDetail = "Level 35-40" },
    [2091] = { name = "Magic Dust", quality = 3, source = "World Drop", sourceDetail = "Level 30-35" },
    [2092] = { name = "High Priestess Belt", quality = 3, source = "World Drop", sourceDetail = "Level 40-45" },
    [2093] = { name = "Gloves of Spell Mastery", quality = 3, source = "World Drop", sourceDetail = "Level 50-55" },
    [2094] = { name = "Mountaineer's Belt", quality = 3, source = "World Drop", sourceDetail = "Level 40-45" },
    [2095] = { name = "Rod of Molten Fire", quality = 3, source = "World Drop", sourceDetail = "Level 45-50" },
    [2096] = { name = "Knightbane", quality = 3, source = "World Drop", sourceDetail = "Level 38-43" },
    [2097] = { name = "Thunderbrow Ring", quality = 3, source = "World Drop", sourceDetail = "Level 40-45" },
    [2098] = { name = "Double Link Tunic", quality = 3, source = "World Drop", sourceDetail = "Level 38-43" },
    [2100] = { name = "Briarwood Reed", quality = 3, source = "World Drop", sourceDetail = "Level 42-47" },
    
    -- High-Level Blue World Drops
    [14528] = { name = "Bonecaster's Boots", quality = 3, source = "World Drop", sourceDetail = "Level 52-57" },
    [14529] = { name = "Bonecaster's Gloves", quality = 3, source = "World Drop", sourceDetail = "Level 52-57" },
    [14530] = { name = "Bonecaster's Sarong", quality = 3, source = "World Drop", sourceDetail = "Level 52-57" },
    [14531] = { name = "Bonecaster's Spaulders", quality = 3, source = "World Drop", sourceDetail = "Level 52-57" },
    [14532] = { name = "Bonecaster's Belt", quality = 3, source = "World Drop", sourceDetail = "Level 52-57" },
    [14533] = { name = "Bonecaster's Bindings", quality = 3, source = "World Drop", sourceDetail = "Level 52-57" },
    [14534] = { name = "Bonecaster's Crown", quality = 3, source = "World Drop", sourceDetail = "Level 52-57" },
    [14535] = { name = "Bonecaster's Vest", quality = 3, source = "World Drop", sourceDetail = "Level 52-57" },
    
    -- Bloodmail
    [14536] = { name = "Bloodmail Boots", quality = 3, source = "World Drop", sourceDetail = "Level 55-60" },
    [14537] = { name = "Bloodmail Gauntlets", quality = 3, source = "World Drop", sourceDetail = "Level 55-60" },
    [14538] = { name = "Bloodmail Legguards", quality = 3, source = "World Drop", sourceDetail = "Level 55-60" },
    [14539] = { name = "Bloodmail Belt", quality = 3, source = "World Drop", sourceDetail = "Level 55-60" },
    [14540] = { name = "Bloodmail Hauberk", quality = 3, source = "World Drop", sourceDetail = "Level 55-60" },
    [14541] = { name = "Bloodmail Bindings", quality = 3, source = "World Drop", sourceDetail = "Level 55-60" },
    
    -- Deathbone
    [14542] = { name = "Deathbone Sabatons", quality = 3, source = "World Drop", sourceDetail = "Level 57-60" },
    [14543] = { name = "Deathbone Gauntlets", quality = 3, source = "World Drop", sourceDetail = "Level 57-60" },
    [14544] = { name = "Deathbone Legguards", quality = 3, source = "World Drop", sourceDetail = "Level 57-60" },
    [14545] = { name = "Deathbone Girdle", quality = 3, source = "World Drop", sourceDetail = "Level 57-60" },
    [14546] = { name = "Deathbone Chestplate", quality = 3, source = "World Drop", sourceDetail = "Level 57-60" },
    [14547] = { name = "Deathbone Bracers", quality = 3, source = "World Drop", sourceDetail = "Level 57-60" },
    
    -- ============================================================================
    --                      QUEST REWARDS - Eastern Kingdoms
    -- ============================================================================
    -- Elwynn Forest / Westfall Quests
    [1388] = { name = "Seal of Wrynn", quality = 2, source = "Quest", sourceDetail = "The Missing Diplomat (Alliance)" },
    [1440] = { name = "Trader's Ring", quality = 2, source = "Quest", sourceDetail = "Elmore's Task (Alliance)" },
    [1254] = { name = "Lesser Belt of the Spire", quality = 2, source = "Quest", sourceDetail = "Oh Brother... (Alliance)" },
    [1265] = { name = "Worn Leather Belt", quality = 2, source = "Quest", sourceDetail = "Protect the Frontier (Alliance)" },
    [1306] = { name = "Riveted Gauntlets", quality = 2, source = "Quest", sourceDetail = "The Defias Brotherhood (Alliance)" },
    [2033] = { name = "Ambassador's Boots", quality = 2, source = "Quest", sourceDetail = "An Ambassador of Evil (Alliance)" },
    [2037] = { name = "Dusty Robes", quality = 2, source = "Quest", sourceDetail = "The Collector (Alliance)" },
    [2038] = { name = "Burrowing Shovel", quality = 2, source = "Quest", sourceDetail = "Digging Through the Ooze (Alliance)" },
    [2039] = { name = "Plains Ring", quality = 2, source = "Quest", sourceDetail = "Red Leather Bandanas (Alliance)" },
    [2040] = { name = "Troll Chopper", quality = 2, source = "Quest", sourceDetail = "Troll Necklace Bounty (Alliance)" },
    [2041] = { name = "Tunic of Westfall", quality = 3, source = "Quest", sourceDetail = "The Defias Brotherhood (Alliance)" },
    [2042] = { name = "Staff of Westfall", quality = 3, source = "Quest", sourceDetail = "The Defias Brotherhood (Alliance)" },
    [2089] = { name = "Mace of Righteous Might", quality = 2, source = "Quest", sourceDetail = "The Brotherhood of Light (Alliance)" },
    
    -- Duskwood Quests
    [2872] = { name = "Vile Fin Oracle Staff", quality = 2, source = "Quest", sourceDetail = "Gather the Cargo (Duskwood)" },
    [3400] = { name = "Lucine Longsword", quality = 2, source = "Quest", sourceDetail = "Worgen in the Woods (Duskwood)" },
    [3401] = { name = "Staff of Nobles", quality = 2, source = "Quest", sourceDetail = "The Night Watch (Duskwood)" },
    [3563] = { name = "Seafarer's Pantaloons", quality = 2, source = "Quest", sourceDetail = "Raven Hill (Duskwood)" },
    [3567] = { name = "Duskwoven Bracers", quality = 2, source = "Quest", sourceDetail = "Mor'Ladim (Duskwood)" },
    [3570] = { name = "Bonebiter", quality = 3, source = "Quest", sourceDetail = "Mor'Ladim (Duskwood)" },
    [4534] = { name = "Steel-Toed Boots", quality = 2, source = "Quest", sourceDetail = "Wolves at Our Heels (Duskwood)" },
    [6196] = { name = "Leggings of the Lost Light", quality = 2, source = "Quest", sourceDetail = "The Legend of Stalvan (Duskwood)" },
    [6197] = { name = "Gauntlets of the Lost Light", quality = 2, source = "Quest", sourceDetail = "The Legend of Stalvan (Duskwood)" },
    [6198] = { name = "Juggernaut Leggings", quality = 2, source = "Quest", sourceDetail = "The Legend of Stalvan (Duskwood)" },
    
    -- Redridge Mountains Quests
    [1434] = { name = "Gloves of Brawn", quality = 2, source = "Quest", sourceDetail = "Wanted: Lieutenant Fangore (Redridge)" },
    [1275] = { name = "Deputy Chain", quality = 2, source = "Quest", sourceDetail = "Blackrock Menace (Redridge)" },
    [1276] = { name = "Fire-Hardened Leggings", quality = 2, source = "Quest", sourceDetail = "Blackrock Bounty (Redridge)" },
    [2911] = { name = "Keller's Girdle", quality = 2, source = "Quest", sourceDetail = "Wanted: Gath'Ilzogg (Redridge)" },
    
    -- Stranglethorn Vale Quests
    [4113] = { name = "Berylline Pads", quality = 2, source = "Quest", sourceDetail = "Bloodscalp Ears (STV)" },
    [4114] = { name = "Darkmoon Necklace", quality = 2, source = "Quest", sourceDetail = "The Green Hills of Stranglethorn (STV)" },
    [4115] = { name = "Jungle Band", quality = 2, source = "Quest", sourceDetail = "Some Assembly Required (STV)" },
    [4116] = { name = "Olmann's Leash", quality = 2, source = "Quest", sourceDetail = "The Bloodsail Buccaneers (STV)" },
    [4128] = { name = "Jungle Boots", quality = 2, source = "Quest", sourceDetail = "Big Game Hunter (STV)" },
    [4129] = { name = "Jungle Stave", quality = 2, source = "Quest", sourceDetail = "Mok'thardin's Enchantment (STV)" },
    [4130] = { name = "Smotts' Compass", quality = 3, source = "Quest", sourceDetail = "The Curse of the Tides (STV)" },
    [4138] = { name = "Goblin Fishing Pole", quality = 3, source = "Quest", sourceDetail = "Venture Company Mining (STV)" },
    [4139] = { name = "Jungle Pendant", quality = 2, source = "Quest", sourceDetail = "Raptor Mastery (STV)" },
    [4140] = { name = "Panther Hunter Leggings", quality = 2, source = "Quest", sourceDetail = "Panther Mastery (STV)" },
    [4141] = { name = "Tiger Hunter Gloves", quality = 2, source = "Quest", sourceDetail = "Tiger Mastery (STV)" },
    
    -- Burning Steppes / Searing Gorge Quests
    [10824] = { name = "Amberglow Talisman", quality = 2, source = "Quest", sourceDetail = "Forging the Shaft (Burning Steppes)" },
    [10825] = { name = "Carved Stone Idol", quality = 2, source = "Quest", sourceDetail = "Forging the Shaft (Burning Steppes)" },
    [15854] = { name = "Chromatic Carapace", quality = 4, source = "Quest", sourceDetail = "The Demon-Forged Breastplate (BS Quest)" },
    [12066] = { name = "Sharpened Silithid Femur", quality = 3, source = "Quest", sourceDetail = "In the Name of the Light (Searing Gorge)" },
    
    -- Eastern Plaguelands / Western Plaguelands
    [13534] = { name = "Brimstone Staff", quality = 3, source = "Quest", sourceDetail = "Demon Dogs (EPL)" },
    [13535] = { name = "Coldstone Slippers", quality = 3, source = "Quest", sourceDetail = "Demon Dogs (EPL)" },
    [15411] = { name = "Mark of Resolution", quality = 3, source = "Quest", sourceDetail = "Auntie Marlene (WPL)" },
    [15412] = { name = "Ghoul Skin Leggings", quality = 3, source = "Quest", sourceDetail = "The Battle of Darrowshire (EPL)" },
    [15413] = { name = "Argent Dawn Valor Token", quality = 3, source = "Quest", sourceDetail = "Brother Carlin (EPL)" },
    [18537] = { name = "Noth's Special Brew", quality = 3, source = "Quest", sourceDetail = "Noth's Special Brew (WPL)" },
    [18538] = { name = "Cauldron Stirrer", quality = 2, source = "Quest", sourceDetail = "Target: Gahrron's Withering (WPL)" },
    
    -- ============================================================================
    --                      QUEST REWARDS - Kalimdor
    -- ============================================================================
    -- Darkshore / Ashenvale Quests
    [5587] = { name = "Thornroot Club", quality = 2, source = "Quest", sourceDetail = "The Sleeper Has Awakened (Darkshore)" },
    [5588] = { name = "Thornroot Staff", quality = 2, source = "Quest", sourceDetail = "The Master's Glaive (Darkshore)" },
    [5589] = { name = "Foul Cloak", quality = 2, source = "Quest", sourceDetail = "The Fall of Ameth'Aran (Darkshore)" },
    [5590] = { name = "Owl Talon Staff", quality = 2, source = "Quest", sourceDetail = "Grove of the Ancients (Darkshore)" },
    [5591] = { name = "Rain Song", quality = 3, source = "Quest", sourceDetail = "Deep Ocean, Vast Sea (Darkshore)" },
    [6318] = { name = "Orcish War Chain", quality = 2, source = "Quest", sourceDetail = "Warsong Supplies (Ashenvale)" },
    [6319] = { name = "Healing Sting", quality = 2, source = "Quest", sourceDetail = "Satyr Horns (Ashenvale)" },
    [6320] = { name = "Commander's Crest", quality = 2, source = "Quest", sourceDetail = "The Ashenvale Hunt (Ashenvale)" },
    [6321] = { name = "Silverwing Defender", quality = 2, source = "Quest", sourceDetail = "The Silverwing Sentinel (Ashenvale)" },
    [6723] = { name = "Medal of Courage", quality = 2, source = "Quest", sourceDetail = "Je'neu of the Earthen Ring (Ashenvale)" },
    [6724] = { name = "Enchanted Adamantite Breastplate", quality = 3, source = "Quest", sourceDetail = "Fallen Sky Lake (Ashenvale)" },
    
    -- Feralas / Thousand Needles Quests
    [9520] = { name = "Emerald Encrusted Chest", quality = 3, source = "Quest", sourceDetail = "Rhapsody's Tale (Feralas)" },
    [9521] = { name = "Mistscape Gloves", quality = 2, source = "Quest", sourceDetail = "A New Cloak's Sheen (Feralas)" },
    [9522] = { name = "Energized Stone Circle", quality = 2, source = "Quest", sourceDetail = "Freedom for All Creatures (Feralas)" },
    [9523] = { name = "Greenweave Cloak", quality = 2, source = "Quest", sourceDetail = "Feral Scar Yetis (Feralas)" },
    [9528] = { name = "Elven Spirit Claws", quality = 3, source = "Quest", sourceDetail = "The Giant Guardian (Feralas)" },
    [9529] = { name = "Quickdraw Gloves", quality = 3, source = "Quest", sourceDetail = "Gordunni Cobalt (Feralas)" },
    [9530] = { name = "Horn of Hatetalon", quality = 2, source = "Quest", sourceDetail = "War on the Woodpaw (Feralas)" },
    
    -- Tanaris / Un'Goro Crater Quests
    [9638] = { name = "Nogg's Gold Ring", quality = 2, source = "Quest", sourceDetail = "Cuergo's Gold (Tanaris)" },
    [9639] = { name = "Bonelink Armor", quality = 3, source = "Quest", sourceDetail = "Gahz'ridian (Tanaris)" },
    [9640] = { name = "Vice Grips", quality = 2, source = "Quest", sourceDetail = "The Thirsty Goblin (Tanaris)" },
    [9641] = { name = "Band of Icy Depths", quality = 2, source = "Quest", sourceDetail = "Pirate Hats Ahoy! (Tanaris)" },
    [9651] = { name = "Gryphon Rider's Stormhammer", quality = 3, source = "Quest", sourceDetail = "Handle With Care (Tanaris)" },
    [9652] = { name = "Gloves of Insight", quality = 3, source = "Quest", sourceDetail = "The Secret of Un'Goro (Un'Goro)" },
    [9653] = { name = "Speedy Racer Goggles", quality = 2, source = "Quest", sourceDetail = "Shizzle's Flyer (Un'Goro)" },
    [11173] = { name = "Linken's Boomerang", quality = 3, source = "Quest", sourceDetail = "It's Dangerous to Go Alone (Un'Goro)" },
    [11174] = { name = "Linken's Sword of Mastery", quality = 4, source = "Quest", sourceDetail = "It's Dangerous to Go Alone (Un'Goro)" },
    
    -- Silithus Quests
    [20726] = { name = "Cenarion Circle Cache", quality = 3, source = "Quest", sourceDetail = "Hive in the Tower (Silithus)" },
    [20727] = { name = "Sharpened Silithid Femur", quality = 3, source = "Quest", sourceDetail = "Hive in the Tower (Silithus)" },
    [20728] = { name = "Savannah Bracers", quality = 2, source = "Quest", sourceDetail = "Deadly Desert Venom (Silithus)" },
    [20729] = { name = "Earthclasp Barrier", quality = 2, source = "Quest", sourceDetail = "Cenarion Battlegear (Silithus)" },
    [20730] = { name = "Cenarion Reservist's Legplates", quality = 3, source = "Quest", sourceDetail = "Cenarion Reservist's Leggings (Silithus)" },
    
    -- Twilight Cultist Gear (Silithus Summoning)
    [20408] = { name = "Twilight Cultist Cowl", quality = 2, source = "Drop", sourceDetail = "Twilight Cultists (Silithus)" },
    [20406] = { name = "Twilight Cultist Mantle", quality = 2, source = "Drop", sourceDetail = "Twilight Cultists (Silithus)" },
    [20407] = { name = "Twilight Cultist Robe", quality = 2, source = "Drop", sourceDetail = "Twilight Cultists (Silithus)" },
    [20422] = { name = "Twilight Cultist Medallion of Station", quality = 2, source = "Drop", sourceDetail = "Twilight Prophet (Silithus)" },
    [20451] = { name = "Twilight Cultist Ring of Lordship", quality = 2, source = "Drop", sourceDetail = "Twilight Lord (Silithus)" },
    [20513] = { name = "Abyssal Crest", quality = 2, source = "Drop", sourceDetail = "Abyssal Templar (Silithus)" },
    [20514] = { name = "Abyssal Signet", quality = 2, source = "Drop", sourceDetail = "Abyssal Duke (Silithus)" },
    [20515] = { name = "Abyssal Scepter", quality = 2, source = "Drop", sourceDetail = "Abyssal Lord (Silithus)" },
    
    -- Abyssal Council Summoned Boss Rewards
    [20655] = { name = "Abyssal Cloth Handwraps", quality = 3, source = "Drop", sourceDetail = "Abyssal Templar (Silithus)" },
    [20656] = { name = "Abyssal Cloth Sash", quality = 3, source = "Drop", sourceDetail = "Abyssal Templar (Silithus)" },
    [20657] = { name = "Abyssal Cloth Slippers", quality = 3, source = "Drop", sourceDetail = "Abyssal Templar (Silithus)" },
    [20658] = { name = "Abyssal Leather Gloves", quality = 3, source = "Drop", sourceDetail = "Abyssal Templar (Silithus)" },
    [20659] = { name = "Abyssal Leather Belt", quality = 3, source = "Drop", sourceDetail = "Abyssal Templar (Silithus)" },
    [20660] = { name = "Abyssal Leather Boots", quality = 3, source = "Drop", sourceDetail = "Abyssal Templar (Silithus)" },
    [20661] = { name = "Abyssal Mail Clutches", quality = 3, source = "Drop", sourceDetail = "Abyssal Duke (Silithus)" },
    [20662] = { name = "Abyssal Mail Cinch", quality = 3, source = "Drop", sourceDetail = "Abyssal Duke (Silithus)" },
    [20663] = { name = "Abyssal Mail Sabatons", quality = 3, source = "Drop", sourceDetail = "Abyssal Duke (Silithus)" },
    [20664] = { name = "Abyssal Plate Gauntlets", quality = 3, source = "Drop", sourceDetail = "Abyssal Lord (Silithus)" },
    [20665] = { name = "Abyssal Plate Girdle", quality = 3, source = "Drop", sourceDetail = "Abyssal Lord (Silithus)" },
    [20666] = { name = "Abyssal Plate Greaves", quality = 3, source = "Drop", sourceDetail = "Abyssal Lord (Silithus)" },
    [20686] = { name = "Abyssal Leather Leggings", quality = 4, source = "Drop", sourceDetail = "Abyssal Duke (Silithus)" },
    [20687] = { name = "Abyssal Cloth Pants", quality = 4, source = "Drop", sourceDetail = "Abyssal Duke (Silithus)" },
    [20688] = { name = "Abyssal Mail Legguards", quality = 4, source = "Drop", sourceDetail = "Abyssal Duke (Silithus)" },
    [20689] = { name = "Abyssal Plate Legplates", quality = 4, source = "Drop", sourceDetail = "Abyssal Duke (Silithus)" },
    [20691] = { name = "Abyssal Cloth Amice", quality = 4, source = "Drop", sourceDetail = "Abyssal Lord (Silithus)" },
    [20692] = { name = "Abyssal Leather Shoulders", quality = 4, source = "Drop", sourceDetail = "Abyssal Lord (Silithus)" },
    [20693] = { name = "Abyssal Mail Pauldrons", quality = 4, source = "Drop", sourceDetail = "Abyssal Lord (Silithus)" },
    [20694] = { name = "Abyssal Plate Epaulets", quality = 4, source = "Drop", sourceDetail = "Abyssal Lord (Silithus)" },

    -- Winterspring Quests
    [12384] = { name = "Snowblind Shoes", quality = 2, source = "Quest", sourceDetail = "Are We There, Yeti? (Winterspring)" },
    [12385] = { name = "Fractured Elemental Bracer", quality = 2, source = "Quest", sourceDetail = "Luck Be With You (Winterspring)" },
    [12386] = { name = "Winterfall Firewater", quality = 2, source = "Quest", sourceDetail = "Winterfall Activity (Winterspring)" },
    [12387] = { name = "Chromatic Sword", quality = 3, source = "Quest", sourceDetail = "Shy-Rotam (Winterspring)" },
    [12388] = { name = "Soulstealer Mantle", quality = 3, source = "Quest", sourceDetail = "Ursius (Winterspring)" },
    [12389] = { name = "Rage of Mugamba", quality = 3, source = "Quest", sourceDetail = "Brumeran (Winterspring)" },
    
    -- ============================================================================
    --                      QUEST REWARDS - Horde Starting Areas
    -- ============================================================================
    -- Durotar / Barrens Quests
    [4941] = { name = "Thrall's Resolve", quality = 2, source = "Quest", sourceDetail = "Hidden Enemies (Durotar)" },
    [4942] = { name = "Fury of Razorfen", quality = 2, source = "Quest", sourceDetail = "Razorfen Downs" },
    [4943] = { name = "Robes of the Lich", quality = 3, source = "Quest", sourceDetail = "Bring the End (RFD)" },
    [4959] = { name = "Reigelord's Sword", quality = 2, source = "Quest", sourceDetail = "An Angry Horde (Barrens)" },
    [4960] = { name = "Crochet Boots", quality = 2, source = "Quest", sourceDetail = "Disrupt the Attacks (Barrens)" },
    [4961] = { name = "Flightblade Throwing Axe", quality = 2, source = "Quest", sourceDetail = "Eggs of Ironforge (Barrens)" },
    [4962] = { name = "Deathstalker's Dagger", quality = 2, source = "Quest", sourceDetail = "Crossroads Conscription (Barrens)" },
    [4971] = { name = "Skeletal Gauntlets", quality = 2, source = "Quest", sourceDetail = "Apothecary Zamah (Barrens)" },
    [4972] = { name = "Gloves of Karsh", quality = 2, source = "Quest", sourceDetail = "The Angry Scytheclaws (Barrens)" },
    [4973] = { name = "Tundra Boots", quality = 2, source = "Quest", sourceDetail = "Consumed by Hatred (Barrens)" },
    
    -- Tirisfal Glades / Silverpine Forest Quests
    [3324] = { name = "Ghostweave Belt", quality = 2, source = "Quest", sourceDetail = "A Rogue's Deal (Tirisfal)" },
    [3325] = { name = "Vile Fin Battle Axe", quality = 2, source = "Quest", sourceDetail = "Prove Your Worth (Tirisfal)" },
    [3326] = { name = "Ghostly Mantle", quality = 2, source = "Quest", sourceDetail = "A New Plague (Tirisfal)" },
    [3327] = { name = "Rattlecage Buckler", quality = 2, source = "Quest", sourceDetail = "Proof of Demise (Tirisfal)" },
    [6326] = { name = "Befouled Bloodstone Orb", quality = 3, source = "Quest", sourceDetail = "Arugal's Folly (Silverpine)" },
    [6327] = { name = "Leggings of the Darkness", quality = 2, source = "Quest", sourceDetail = "Border Crossings (Silverpine)" },
    [6328] = { name = "Fenrus' Hide", quality = 3, source = "Quest", sourceDetail = "Fenrus the Devourer (Shadowfang Keep)" },
    [6829] = { name = "Seal of Sylvanas", quality = 3, source = "Quest", sourceDetail = "The Dark Lady (Silverpine)" },
    
    -- Mulgore / Stonetalon Quests  
    [4907] = { name = "Loch Croc Hide Bag", quality = 2, source = "Quest", sourceDetail = "A Hunter's Boast (Mulgore)" },
    [4908] = { name = "Rainwalker Boots", quality = 2, source = "Quest", sourceDetail = "Dangers of the Windfury (Mulgore)" },
    [4909] = { name = "Kodo Hunter's Leggings", quality = 2, source = "Quest", sourceDetail = "The Kodo's Return (Mulgore)" },
    [4910] = { name = "Tribal Warrior's Shield", quality = 2, source = "Quest", sourceDetail = "Rite of Vision (Mulgore)" },
    [6742] = { name = "Stonefist Girdle", quality = 2, source = "Quest", sourceDetail = "Boulderslide Ravine (Stonetalon)" },
    [6743] = { name = "Sustaining Ring", quality = 2, source = "Quest", sourceDetail = "Bloodfury Bloodline (Stonetalon)" },
    [6744] = { name = "Windweaver Staff", quality = 3, source = "Quest", sourceDetail = "Elemental War (Stonetalon)" },
    [6745] = { name = "Bastion of Stonetalon", quality = 2, source = "Quest", sourceDetail = "Cycle of Rebirth (Stonetalon)" },
    
    -- ============================================================================
    --                      VENDOR ITEMS - Food & Drinks
    -- ============================================================================
    [117] = { name = "Tough Jerky", quality = 1, source = "Vendor", sourceDetail = "General Goods (Starting Areas)" },
    [159] = { name = "Refreshing Spring Water", quality = 1, source = "Vendor", sourceDetail = "Innkeepers" },
    [414] = { name = "Dalaran Sharp", quality = 1, source = "Vendor", sourceDetail = "Cheese Vendors" },
    [422] = { name = "Dwarven Mild", quality = 1, source = "Vendor", sourceDetail = "Cheese Vendors" },
    [787] = { name = "Slitherskin Mackerel", quality = 1, source = "Vendor", sourceDetail = "Fishing Vendors" },
    [1179] = { name = "Ice Cold Milk", quality = 1, source = "Vendor", sourceDetail = "Innkeepers" },
    [1205] = { name = "Melon Juice", quality = 1, source = "Vendor", sourceDetail = "Innkeepers" },
    [1645] = { name = "Moonberry Juice", quality = 1, source = "Vendor", sourceDetail = "Innkeepers" },
    [1708] = { name = "Sweet Nectar", quality = 1, source = "Vendor", sourceDetail = "Innkeepers" },
    [2287] = { name = "Haunch of Meat", quality = 1, source = "Vendor", sourceDetail = "General Goods" },
    [2594] = { name = "Flagon of Mead", quality = 1, source = "Vendor", sourceDetail = "Innkeepers" },
    [2595] = { name = "Jug of Bourbon", quality = 1, source = "Vendor", sourceDetail = "Innkeepers" },
    [3770] = { name = "Mutton Chop", quality = 1, source = "Vendor", sourceDetail = "General Goods" },
    [3771] = { name = "Wild Hog Shank", quality = 1, source = "Vendor", sourceDetail = "General Goods" },
    [4599] = { name = "Cured Ham Steak", quality = 1, source = "Vendor", sourceDetail = "General Goods" },
    [4601] = { name = "Soft Banana Bread", quality = 1, source = "Vendor", sourceDetail = "General Goods" },
    [4540] = { name = "Tough Hunk of Bread", quality = 1, source = "Vendor", sourceDetail = "General Goods (Starting Areas)" },
    [4541] = { name = "Freshly Baked Bread", quality = 1, source = "Vendor", sourceDetail = "General Goods" },
    [4542] = { name = "Moist Cornbread", quality = 1, source = "Vendor", sourceDetail = "General Goods" },
    [4544] = { name = "Mulgore Spice Bread", quality = 1, source = "Vendor", sourceDetail = "General Goods (Mulgore)" },
    [4594] = { name = "Rockscale Cod", quality = 1, source = "Vendor", sourceDetail = "Fishing Vendors" },
    [4602] = { name = "Moon Harvest Pumpkin", quality = 1, source = "Vendor", sourceDetail = "General Goods" },
    [4608] = { name = "Raw Black Truffle", quality = 1, source = "Vendor", sourceDetail = "Special Vendors" },
    [8766] = { name = "Morning Glory Dew", quality = 1, source = "Vendor", sourceDetail = "Innkeepers" },
    [8932] = { name = "Alterac Swiss", quality = 1, source = "Vendor", sourceDetail = "Cheese Vendors" },
    [8948] = { name = "Dried King Bolete", quality = 1, source = "Vendor", sourceDetail = "General Goods" },
    [8950] = { name = "Homemade Cherry Pie", quality = 1, source = "Vendor", sourceDetail = "General Goods" },
    [8952] = { name = "Roasted Quail", quality = 1, source = "Vendor", sourceDetail = "General Goods" },
    [8953] = { name = "Deep Fried Plantains", quality = 1, source = "Vendor", sourceDetail = "General Goods" },
    [13724] = { name = "Enriched Manna Biscuit", quality = 1, source = "Vendor", sourceDetail = "Argent Dawn" },
    [18255] = { name = "Runn Tum Tuber Surprise", quality = 1, source = "Drop", sourceDetail = "Pusillin (Dire Maul East)" },
    [19301] = { name = "Alterac Manna Biscuit", quality = 1, source = "Vendor", sourceDetail = "Alterac Valley" },
    [19300] = { name = "Bottled Alterac Spring Water", quality = 1, source = "Vendor", sourceDetail = "Alterac Valley" },
    
    -- ============================================================================
    --                      VENDOR ITEMS - Reagents & Consumables
    -- ============================================================================
    [17020] = { name = "Arcane Powder", quality = 1, source = "Vendor", sourceDetail = "Reagent Vendors (Mage)" },
    [17021] = { name = "Wild Berries", quality = 1, source = "Vendor", sourceDetail = "Reagent Vendors (Druid)" },
    [17026] = { name = "Wild Thornroot", quality = 1, source = "Vendor", sourceDetail = "Reagent Vendors (Druid)" },
    [17028] = { name = "Holy Candle", quality = 1, source = "Vendor", sourceDetail = "Reagent Vendors (Priest)" },
    [17029] = { name = "Sacred Candle", quality = 1, source = "Vendor", sourceDetail = "Reagent Vendors (Priest)" },
    [17030] = { name = "Ankh", quality = 1, source = "Vendor", sourceDetail = "Reagent Vendors (Shaman)" },
    [17031] = { name = "Rune of Teleportation", quality = 1, source = "Vendor", sourceDetail = "Reagent Vendors (Mage)" },
    [17032] = { name = "Rune of Portals", quality = 1, source = "Vendor", sourceDetail = "Reagent Vendors (Mage)" },
    [17033] = { name = "Symbol of Divinity", quality = 1, source = "Vendor", sourceDetail = "Reagent Vendors (Paladin)" },
    [17034] = { name = "Maple Seed", quality = 1, source = "Vendor", sourceDetail = "Reagent Vendors (Druid)" },
    [17035] = { name = "Stranglethorn Seed", quality = 1, source = "Vendor", sourceDetail = "Reagent Vendors (Druid)" },
    [17036] = { name = "Ashwood Seed", quality = 1, source = "Vendor", sourceDetail = "Reagent Vendors (Druid)" },
    [17037] = { name = "Hornbeam Seed", quality = 1, source = "Vendor", sourceDetail = "Reagent Vendors (Druid)" },
    [17038] = { name = "Ironwood Seed", quality = 1, source = "Vendor", sourceDetail = "Reagent Vendors (Druid)" },
    [5060] = { name = "Thieves' Tools", quality = 1, source = "Vendor", sourceDetail = "Reagent Vendors (Rogue)" },
    [5140] = { name = "Flash Powder", quality = 1, source = "Vendor", sourceDetail = "Reagent Vendors (Rogue)" },
    [5173] = { name = "Deathweed", quality = 1, source = "Vendor", sourceDetail = "Reagent Vendors (Rogue)" },
    [5565] = { name = "Infernal Stone", quality = 1, source = "Vendor", sourceDetail = "Reagent Vendors (Warlock)" },
    [16583] = { name = "Demonic Figurine", quality = 1, source = "Vendor", sourceDetail = "Reagent Vendors (Warlock)" },
    [6265] = { name = "Soul Shard", quality = 1, source = "Drop", sourceDetail = "Warlock Drain Soul" },
    [5500] = { name = "Iridescent Pearl", quality = 2, source = "Drop", sourceDetail = "Clams (Shellfish Trap)" },
    [7971] = { name = "Black Pearl", quality = 2, source = "Drop", sourceDetail = "Clams (High Level)" },
    [13926] = { name = "Golden Pearl", quality = 3, source = "Drop", sourceDetail = "Clams (High Level)" },
    
    -- ============================================================================
    --                      VENDOR ITEMS - Profession Materials
    -- ============================================================================
    -- Leatherworking
    [2320] = { name = "Coarse Thread", quality = 1, source = "Vendor", sourceDetail = "Trade Goods Vendors" },
    [2321] = { name = "Fine Thread", quality = 1, source = "Vendor", sourceDetail = "Trade Goods Vendors" },
    [4340] = { name = "Gray Dye", quality = 1, source = "Vendor", sourceDetail = "Trade Goods Vendors" },
    [4341] = { name = "Yellow Dye", quality = 1, source = "Vendor", sourceDetail = "Trade Goods Vendors" },
    [4342] = { name = "Purple Dye", quality = 1, source = "Vendor", sourceDetail = "Trade Goods Vendors" },
    [6260] = { name = "Blue Dye", quality = 1, source = "Vendor", sourceDetail = "Trade Goods Vendors" },
    [6261] = { name = "Orange Dye", quality = 1, source = "Vendor", sourceDetail = "Trade Goods Vendors" },
    [2324] = { name = "Bleach", quality = 1, source = "Vendor", sourceDetail = "Trade Goods Vendors" },
    [2325] = { name = "Black Dye", quality = 1, source = "Vendor", sourceDetail = "Trade Goods Vendors" },
    [4289] = { name = "Salt", quality = 1, source = "Vendor", sourceDetail = "Trade Goods Vendors" },
    [7005] = { name = "Skinning Knife", quality = 1, source = "Vendor", sourceDetail = "Trade Goods Vendors" },
    [8343] = { name = "Heavy Silken Thread", quality = 1, source = "Vendor", sourceDetail = "Trade Goods Vendors" },
    [14341] = { name = "Rune Thread", quality = 1, source = "Vendor", sourceDetail = "Trade Goods Vendors" },
    
    -- Blacksmithing
    [2880] = { name = "Weak Flux", quality = 1, source = "Vendor", sourceDetail = "Trade Goods Vendors" },
    [3466] = { name = "Strong Flux", quality = 1, source = "Vendor", sourceDetail = "Trade Goods Vendors" },
    [3857] = { name = "Coal", quality = 1, source = "Vendor", sourceDetail = "Trade Goods Vendors" },
    [5956] = { name = "Blacksmith Hammer", quality = 1, source = "Vendor", sourceDetail = "Trade Goods Vendors" },
    
    -- Alchemy
    [3371] = { name = "Empty Vial", quality = 1, source = "Vendor", sourceDetail = "Trade Goods Vendors" },
    [3372] = { name = "Leaded Vial", quality = 1, source = "Vendor", sourceDetail = "Trade Goods Vendors" },
    [8925] = { name = "Crystal Vial", quality = 1, source = "Vendor", sourceDetail = "Trade Goods Vendors" },
    
    -- Enchanting
    [6217] = { name = "Copper Rod", quality = 1, source = "Vendor", sourceDetail = "Trade Goods Vendors" },
    [16207] = { name = "Runed Arcanite Rod", quality = 1, source = "Crafted", sourceDetail = "Enchanting" },
    [11291] = { name = "Star Wood", quality = 1, source = "Vendor", sourceDetail = "Trade Goods Vendors (Enchanting)" },
    
    -- ============================================================================
    --                      COMMON/TRASH ITEMS - Grey Quality
    -- ============================================================================
    [729] = { name = "Stringy Wolf Meat", quality = 0, source = "Drop", sourceDetail = "Wolves" },
    [730] = { name = "Murloc Eye", quality = 0, source = "Drop", sourceDetail = "Murlocs" },
    [731] = { name = "Goretusk Liver", quality = 0, source = "Drop", sourceDetail = "Goretusks" },
    [732] = { name = "Chunks of Boar Meat", quality = 0, source = "Drop", sourceDetail = "Boars" },
    [769] = { name = "Chunk of Boar Meat", quality = 0, source = "Drop", sourceDetail = "Boars" },
    [774] = { name = "Malachite", quality = 2, source = "Drop", sourceDetail = "Mining/Prospecting" },
    [818] = { name = "Tigerseye", quality = 2, source = "Drop", sourceDetail = "Mining/Prospecting" },
    [1288] = { name = "Large Venom Sac", quality = 0, source = "Drop", sourceDetail = "Spiders" },
    [1468] = { name = "Murloc Fin", quality = 0, source = "Drop", sourceDetail = "Murlocs" },
    [1475] = { name = "Small Venom Sac", quality = 0, source = "Drop", sourceDetail = "Spiders" },
    [1529] = { name = "Jade", quality = 2, source = "Drop", sourceDetail = "Mining/Prospecting" },
    [1705] = { name = "Lesser Moonstone", quality = 2, source = "Drop", sourceDetail = "Mining/Prospecting" },
    [2318] = { name = "Light Leather", quality = 1, source = "Drop", sourceDetail = "Skinning" },
    [2319] = { name = "Medium Leather", quality = 1, source = "Drop", sourceDetail = "Skinning" },
    [4232] = { name = "Medium Hide", quality = 1, source = "Drop", sourceDetail = "Skinning" },
    [4233] = { name = "Light Hide", quality = 1, source = "Drop", sourceDetail = "Skinning" },
    [4234] = { name = "Heavy Leather", quality = 1, source = "Drop", sourceDetail = "Skinning" },
    [4235] = { name = "Heavy Hide", quality = 1, source = "Drop", sourceDetail = "Skinning" },
    [4236] = { name = "Cured Heavy Hide", quality = 1, source = "Crafted", sourceDetail = "Leatherworking" },
    [4304] = { name = "Thick Leather", quality = 1, source = "Drop", sourceDetail = "Skinning" },
    [8169] = { name = "Thick Hide", quality = 1, source = "Drop", sourceDetail = "Skinning" },
    [8170] = { name = "Rugged Leather", quality = 1, source = "Drop", sourceDetail = "Skinning" },
    [8171] = { name = "Rugged Hide", quality = 1, source = "Drop", sourceDetail = "Skinning" },
    [2770] = { name = "Copper Ore", quality = 1, source = "Drop", sourceDetail = "Mining" },
    [2771] = { name = "Tin Ore", quality = 1, source = "Drop", sourceDetail = "Mining" },
    [2772] = { name = "Iron Ore", quality = 1, source = "Drop", sourceDetail = "Mining" },
    [2775] = { name = "Silver Ore", quality = 2, source = "Drop", sourceDetail = "Mining" },
    [2776] = { name = "Gold Ore", quality = 2, source = "Drop", sourceDetail = "Mining" },
    [3858] = { name = "Mithril Ore", quality = 1, source = "Drop", sourceDetail = "Mining" },
    [7911] = { name = "Truesilver Ore", quality = 2, source = "Drop", sourceDetail = "Mining" },
    [10620] = { name = "Thorium Ore", quality = 1, source = "Drop", sourceDetail = "Mining" },
    [12364] = { name = "Huge Emerald", quality = 3, source = "Drop", sourceDetail = "Mining (Thorium)" },
    [12363] = { name = "Arcane Crystal", quality = 3, source = "Drop", sourceDetail = "Mining (Rich Thorium)" },
    [12800] = { name = "Azerothian Diamond", quality = 3, source = "Drop", sourceDetail = "Mining (Thorium)" },
    [12799] = { name = "Large Opal", quality = 3, source = "Drop", sourceDetail = "Mining (Thorium)" },
    [12361] = { name = "Blue Sapphire", quality = 3, source = "Drop", sourceDetail = "Mining (Thorium)" },
    [12360] = { name = "Arcanite Bar", quality = 3, source = "Crafted", sourceDetail = "Alchemy (Transmute)" },
    [2449] = { name = "Earthroot", quality = 1, source = "Drop", sourceDetail = "Herbalism" },
    [2450] = { name = "Briarthorn", quality = 1, source = "Drop", sourceDetail = "Herbalism" },
    [2452] = { name = "Swiftthistle", quality = 1, source = "Drop", sourceDetail = "Herbalism" },
    [2453] = { name = "Bruiseweed", quality = 1, source = "Drop", sourceDetail = "Herbalism" },
    [3355] = { name = "Wild Steelbloom", quality = 1, source = "Drop", sourceDetail = "Herbalism" },
    [3356] = { name = "Kingsblood", quality = 1, source = "Drop", sourceDetail = "Herbalism" },
    [3357] = { name = "Liferoot", quality = 1, source = "Drop", sourceDetail = "Herbalism" },
    [3358] = { name = "Khadgar's Whisker", quality = 1, source = "Drop", sourceDetail = "Herbalism" },
    [3369] = { name = "Grave Moss", quality = 1, source = "Drop", sourceDetail = "Herbalism" },
    [3818] = { name = "Fadeleaf", quality = 1, source = "Drop", sourceDetail = "Herbalism" },
    [3819] = { name = "Wintersbite", quality = 1, source = "Drop", sourceDetail = "Herbalism" },
    [3820] = { name = "Stranglekelp", quality = 1, source = "Drop", sourceDetail = "Herbalism" },
    [3821] = { name = "Goldthorn", quality = 1, source = "Drop", sourceDetail = "Herbalism" },
    [4625] = { name = "Firebloom", quality = 1, source = "Drop", sourceDetail = "Herbalism" },
    [8831] = { name = "Purple Lotus", quality = 1, source = "Drop", sourceDetail = "Herbalism" },
    [8836] = { name = "Arthas' Tears", quality = 1, source = "Drop", sourceDetail = "Herbalism" },
    [8838] = { name = "Sungrass", quality = 1, source = "Drop", sourceDetail = "Herbalism" },
    [8839] = { name = "Blindweed", quality = 1, source = "Drop", sourceDetail = "Herbalism" },
    [8845] = { name = "Ghost Mushroom", quality = 1, source = "Drop", sourceDetail = "Herbalism" },
    [8846] = { name = "Gromsblood", quality = 1, source = "Drop", sourceDetail = "Herbalism" },
    [13463] = { name = "Dreamfoil", quality = 1, source = "Drop", sourceDetail = "Herbalism" },
    [13464] = { name = "Golden Sansam", quality = 1, source = "Drop", sourceDetail = "Herbalism" },
    [13465] = { name = "Mountain Silversage", quality = 1, source = "Drop", sourceDetail = "Herbalism" },
    [13466] = { name = "Plaguebloom", quality = 1, source = "Drop", sourceDetail = "Herbalism" },
    [13467] = { name = "Icecap", quality = 1, source = "Drop", sourceDetail = "Herbalism" },
    [13468] = { name = "Black Lotus", quality = 3, source = "Drop", sourceDetail = "Herbalism (Rare)" },
    
    -- Cloth
    [2589] = { name = "Linen Cloth", quality = 1, source = "Drop", sourceDetail = "Humanoids (Level 1-15)" },
    [2592] = { name = "Wool Cloth", quality = 1, source = "Drop", sourceDetail = "Humanoids (Level 15-30)" },
    [4306] = { name = "Silk Cloth", quality = 1, source = "Drop", sourceDetail = "Humanoids (Level 25-40)" },
    [4338] = { name = "Mageweave Cloth", quality = 1, source = "Drop", sourceDetail = "Humanoids (Level 35-50)" },
    [14047] = { name = "Runecloth", quality = 1, source = "Drop", sourceDetail = "Humanoids (Level 50-60)" },
    [14256] = { name = "Felcloth", quality = 2, source = "Drop", sourceDetail = "Felguards / Demons" },
    [14342] = { name = "Mooncloth", quality = 3, source = "Crafted", sourceDetail = "Tailoring (Moonwell)" },
    
    -- Enchanting Materials
    [10938] = { name = "Lesser Magic Essence", quality = 2, source = "Crafted", sourceDetail = "Enchanting (Disenchant)" },
    [10939] = { name = "Greater Magic Essence", quality = 2, source = "Crafted", sourceDetail = "Enchanting (Disenchant)" },
    [10940] = { name = "Strange Dust", quality = 1, source = "Crafted", sourceDetail = "Enchanting (Disenchant)" },
    [10978] = { name = "Small Glimmering Shard", quality = 3, source = "Crafted", sourceDetail = "Enchanting (Disenchant)" },
    [10998] = { name = "Lesser Astral Essence", quality = 2, source = "Crafted", sourceDetail = "Enchanting (Disenchant)" },
    [11082] = { name = "Greater Astral Essence", quality = 2, source = "Crafted", sourceDetail = "Enchanting (Disenchant)" },
    [11083] = { name = "Soul Dust", quality = 1, source = "Crafted", sourceDetail = "Enchanting (Disenchant)" },
    [11084] = { name = "Large Glimmering Shard", quality = 3, source = "Crafted", sourceDetail = "Enchanting (Disenchant)" },
    [11134] = { name = "Lesser Mystic Essence", quality = 2, source = "Crafted", sourceDetail = "Enchanting (Disenchant)" },
    [11135] = { name = "Greater Mystic Essence", quality = 2, source = "Crafted", sourceDetail = "Enchanting (Disenchant)" },
    [11137] = { name = "Vision Dust", quality = 1, source = "Crafted", sourceDetail = "Enchanting (Disenchant)" },
    [11138] = { name = "Small Glowing Shard", quality = 3, source = "Crafted", sourceDetail = "Enchanting (Disenchant)" },
    [11139] = { name = "Large Glowing Shard", quality = 3, source = "Crafted", sourceDetail = "Enchanting (Disenchant)" },
    [11174] = { name = "Lesser Nether Essence", quality = 2, source = "Crafted", sourceDetail = "Enchanting (Disenchant)" },
    [11175] = { name = "Greater Nether Essence", quality = 2, source = "Crafted", sourceDetail = "Enchanting (Disenchant)" },
    [11176] = { name = "Dream Dust", quality = 1, source = "Crafted", sourceDetail = "Enchanting (Disenchant)" },
    [11177] = { name = "Small Radiant Shard", quality = 3, source = "Crafted", sourceDetail = "Enchanting (Disenchant)" },
    [11178] = { name = "Large Radiant Shard", quality = 3, source = "Crafted", sourceDetail = "Enchanting (Disenchant)" },
    [16202] = { name = "Lesser Eternal Essence", quality = 2, source = "Crafted", sourceDetail = "Enchanting (Disenchant)" },
    [16203] = { name = "Greater Eternal Essence", quality = 2, source = "Crafted", sourceDetail = "Enchanting (Disenchant)" },
    [16204] = { name = "Illusion Dust", quality = 1, source = "Crafted", sourceDetail = "Enchanting (Disenchant)" },
    [14343] = { name = "Small Brilliant Shard", quality = 3, source = "Crafted", sourceDetail = "Enchanting (Disenchant)" },
    [14344] = { name = "Large Brilliant Shard", quality = 3, source = "Crafted", sourceDetail = "Enchanting (Disenchant)" },
    [20725] = { name = "Nexus Crystal", quality = 4, source = "Crafted", sourceDetail = "Enchanting (Disenchant Epic)" },
    
    -- ============================================================================
    --                      WORLD DROP GREENS - "Of the Tiger" Suffix (Str+Agi)
    -- ============================================================================
    [9795] = { name = "Ivycloth Cloak of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 22-27" },
    [9796] = { name = "Ivycloth Mantle of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 22-27" },
    [9797] = { name = "Ivycloth Tunic of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 22-27" },
    [9798] = { name = "Ivycloth Pants of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 22-27" },
    [9799] = { name = "Ivycloth Bracelets of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 22-27" },
    [9800] = { name = "Ivycloth Sash of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 22-27" },
    [9801] = { name = "Superior Boots of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    [9802] = { name = "Superior Bracers of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    [9803] = { name = "Superior Gloves of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    [9804] = { name = "Superior Leggings of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    [9805] = { name = "Superior Tunic of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    [9806] = { name = "Superior Shoulders of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    [9807] = { name = "Superior Belt of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    [9810] = { name = "Fortified Boots of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [9811] = { name = "Fortified Bracers of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [9812] = { name = "Fortified Cloak of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [9813] = { name = "Fortified Gauntlets of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [9814] = { name = "Fortified Leggings of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [9815] = { name = "Fortified Chain of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [9816] = { name = "Fortified Spaulders of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [9817] = { name = "Fortified Belt of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [9820] = { name = "Durable Boots of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 31-36" },
    [9821] = { name = "Durable Bracers of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 31-36" },
    [9822] = { name = "Durable Cape of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 31-36" },
    [9823] = { name = "Durable Gloves of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 31-36" },
    [9824] = { name = "Durable Pants of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 31-36" },
    [9825] = { name = "Durable Tunic of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 31-36" },
    [9826] = { name = "Durable Shoulders of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 31-36" },
    [9827] = { name = "Durable Belt of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 31-36" },
    
    -- ============================================================================
    --                      WORLD DROP GREENS - "Of the Owl" Suffix (Int+Spi)
    -- ============================================================================
    [9830] = { name = "Scaled Leather Boots of the Owl", quality = 2, source = "World Drop", sourceDetail = "Level 34-39" },
    [9831] = { name = "Scaled Leather Bracers of the Owl", quality = 2, source = "World Drop", sourceDetail = "Level 34-39" },
    [9832] = { name = "Scaled Cloak of the Owl", quality = 2, source = "World Drop", sourceDetail = "Level 34-39" },
    [9833] = { name = "Scaled Leather Gloves of the Owl", quality = 2, source = "World Drop", sourceDetail = "Level 34-39" },
    [9834] = { name = "Scaled Leather Leggings of the Owl", quality = 2, source = "World Drop", sourceDetail = "Level 34-39" },
    [9835] = { name = "Scaled Leather Tunic of the Owl", quality = 2, source = "World Drop", sourceDetail = "Level 34-39" },
    [9836] = { name = "Scaled Leather Shoulders of the Owl", quality = 2, source = "World Drop", sourceDetail = "Level 34-39" },
    [9837] = { name = "Scaled Leather Belt of the Owl", quality = 2, source = "World Drop", sourceDetail = "Level 34-39" },
    [9840] = { name = "Banded Boots of the Owl", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    [9841] = { name = "Banded Bracers of the Owl", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    [9842] = { name = "Banded Cloak of the Owl", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    [9843] = { name = "Banded Gauntlets of the Owl", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    [9844] = { name = "Banded Leggings of the Owl", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    [9845] = { name = "Banded Armor of the Owl", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    [9846] = { name = "Banded Pauldrons of the Owl", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    [9847] = { name = "Banded Girdle of the Owl", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    [9850] = { name = "Adventurer's Boots of the Owl", quality = 2, source = "World Drop", sourceDetail = "Level 40-45" },
    [9851] = { name = "Adventurer's Bracers of the Owl", quality = 2, source = "World Drop", sourceDetail = "Level 40-45" },
    [9852] = { name = "Adventurer's Cape of the Owl", quality = 2, source = "World Drop", sourceDetail = "Level 40-45" },
    [9853] = { name = "Adventurer's Gloves of the Owl", quality = 2, source = "World Drop", sourceDetail = "Level 40-45" },
    [9854] = { name = "Adventurer's Legguards of the Owl", quality = 2, source = "World Drop", sourceDetail = "Level 40-45" },
    [9855] = { name = "Adventurer's Tunic of the Owl", quality = 2, source = "World Drop", sourceDetail = "Level 40-45" },
    [9856] = { name = "Adventurer's Shoulders of the Owl", quality = 2, source = "World Drop", sourceDetail = "Level 40-45" },
    [9857] = { name = "Adventurer's Belt of the Owl", quality = 2, source = "World Drop", sourceDetail = "Level 40-45" },
    
    -- ============================================================================
    --                      WORLD DROP GREENS - "Of the Falcon" Suffix (Agi+Int)
    -- ============================================================================
    [9860] = { name = "Raider's Boots of the Falcon", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [9861] = { name = "Raider's Bracers of the Falcon", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [9862] = { name = "Raider's Cloak of the Falcon", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [9863] = { name = "Raider's Gauntlets of the Falcon", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [9864] = { name = "Raider's Legguards of the Falcon", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [9865] = { name = "Raider's Chestpiece of the Falcon", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [9866] = { name = "Raider's Shoulderpads of the Falcon", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [9867] = { name = "Raider's Belt of the Falcon", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [9870] = { name = "Huntsman's Boots of the Falcon", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    [9871] = { name = "Huntsman's Bands of the Falcon", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    [9872] = { name = "Huntsman's Cape of the Falcon", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    [9873] = { name = "Huntsman's Gloves of the Falcon", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    [9874] = { name = "Huntsman's Leggings of the Falcon", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    [9875] = { name = "Huntsman's Armor of the Falcon", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    [9876] = { name = "Huntsman's Shoulders of the Falcon", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    [9877] = { name = "Huntsman's Belt of the Falcon", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    
    -- ============================================================================
    --                      WORLD DROP GREENS - "Of the Gorilla" Suffix (Str+Int)
    -- ============================================================================
    [9880] = { name = "Ranger Boots of the Gorilla", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [9881] = { name = "Ranger Wristguards of the Gorilla", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [9882] = { name = "Ranger Cloak of the Gorilla", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [9883] = { name = "Ranger Gloves of the Gorilla", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [9884] = { name = "Ranger Leggings of the Gorilla", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [9885] = { name = "Ranger Tunic of the Gorilla", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [9886] = { name = "Ranger Shoulders of the Gorilla", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [9887] = { name = "Ranger Cord of the Gorilla", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [9890] = { name = "Scouting Boots of the Gorilla", quality = 2, source = "World Drop", sourceDetail = "Level 31-36" },
    [9891] = { name = "Scouting Bracers of the Gorilla", quality = 2, source = "World Drop", sourceDetail = "Level 31-36" },
    [9892] = { name = "Scouting Cloak of the Gorilla", quality = 2, source = "World Drop", sourceDetail = "Level 31-36" },
    [9893] = { name = "Scouting Gloves of the Gorilla", quality = 2, source = "World Drop", sourceDetail = "Level 31-36" },
    [9894] = { name = "Scouting Trousers of the Gorilla", quality = 2, source = "World Drop", sourceDetail = "Level 31-36" },
    [9895] = { name = "Scouting Tunic of the Gorilla", quality = 2, source = "World Drop", sourceDetail = "Level 31-36" },
    [9896] = { name = "Scouting Spaulders of the Gorilla", quality = 2, source = "World Drop", sourceDetail = "Level 31-36" },
    [9897] = { name = "Scouting Belt of the Gorilla", quality = 2, source = "World Drop", sourceDetail = "Level 31-36" },
    
    -- ============================================================================
    --                      WORLD DROP GREENS - "Of Power" Suffix (Str only)
    -- ============================================================================
    [9900] = { name = "Jazeraint Boots of Power", quality = 2, source = "World Drop", sourceDetail = "Level 34-39" },
    [9901] = { name = "Jazeraint Bracers of Power", quality = 2, source = "World Drop", sourceDetail = "Level 34-39" },
    [9902] = { name = "Jazeraint Cloak of Power", quality = 2, source = "World Drop", sourceDetail = "Level 34-39" },
    [9903] = { name = "Jazeraint Gauntlets of Power", quality = 2, source = "World Drop", sourceDetail = "Level 34-39" },
    [9904] = { name = "Jazeraint Leggings of Power", quality = 2, source = "World Drop", sourceDetail = "Level 34-39" },
    [9905] = { name = "Jazeraint Chestguard of Power", quality = 2, source = "World Drop", sourceDetail = "Level 34-39" },
    [9906] = { name = "Jazeraint Pauldrons of Power", quality = 2, source = "World Drop", sourceDetail = "Level 34-39" },
    [9907] = { name = "Jazeraint Belt of Power", quality = 2, source = "World Drop", sourceDetail = "Level 34-39" },
    [9910] = { name = "Royal Boots of Power", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    [9911] = { name = "Royal Amice of Power", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    [9912] = { name = "Royal Cape of Power", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    [9913] = { name = "Royal Gloves of Power", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    [9914] = { name = "Royal Trousers of Power", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    [9915] = { name = "Royal Gown of Power", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    [9916] = { name = "Royal Sash of Power", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    [9917] = { name = "Royal Headband of Power", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    
    -- ============================================================================
    --                      WORLD DROP GREENS - "Of Stamina" Suffix
    -- ============================================================================
    [9920] = { name = "Tracker's Boots of Stamina", quality = 2, source = "World Drop", sourceDetail = "Level 40-45" },
    [9921] = { name = "Tracker's Wristguards of Stamina", quality = 2, source = "World Drop", sourceDetail = "Level 40-45" },
    [9922] = { name = "Tracker's Cloak of Stamina", quality = 2, source = "World Drop", sourceDetail = "Level 40-45" },
    [9923] = { name = "Tracker's Gloves of Stamina", quality = 2, source = "World Drop", sourceDetail = "Level 40-45" },
    [9924] = { name = "Tracker's Leggings of Stamina", quality = 2, source = "World Drop", sourceDetail = "Level 40-45" },
    [9925] = { name = "Tracker's Tunic of Stamina", quality = 2, source = "World Drop", sourceDetail = "Level 40-45" },
    [9926] = { name = "Tracker's Shoulderpads of Stamina", quality = 2, source = "World Drop", sourceDetail = "Level 40-45" },
    [9927] = { name = "Tracker's Belt of Stamina", quality = 2, source = "World Drop", sourceDetail = "Level 40-45" },
    [9930] = { name = "Brigade Boots of Stamina", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [9931] = { name = "Brigade Bracers of Stamina", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [9932] = { name = "Brigade Cloak of Stamina", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [9933] = { name = "Brigade Gauntlets of Stamina", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [9934] = { name = "Brigade Leggings of Stamina", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [9935] = { name = "Brigade Circlet of Stamina", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [9936] = { name = "Brigade Pauldrons of Stamina", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [9937] = { name = "Brigade Girdle of Stamina", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    
    -- ============================================================================
    --                      WORLD DROP GREENS - High Level (46-60)
    -- ============================================================================
    -- Gothic Plate
    [10100] = { name = "Gothic Plate Armor of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 46-51" },
    [10101] = { name = "Gothic Plate Gauntlets of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 46-51" },
    [10102] = { name = "Gothic Plate Girdle of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 46-51" },
    [10103] = { name = "Gothic Plate Helmet of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 46-51" },
    [10104] = { name = "Gothic Plate Leggings of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 46-51" },
    [10105] = { name = "Gothic Plate Spaulders of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 46-51" },
    [10106] = { name = "Gothic Plate Vambraces of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 46-51" },
    [10107] = { name = "Gothic Sabatons of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 46-51" },
    
    -- Ornate Mithril
    [10110] = { name = "Ornate Mithril Boots of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [10111] = { name = "Ornate Mithril Breastplate of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [10112] = { name = "Ornate Mithril Gloves of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [10113] = { name = "Ornate Mithril Helm of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [10114] = { name = "Ornate Mithril Pants of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [10115] = { name = "Ornate Mithril Shoulder of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    
    -- Engraved
    [10120] = { name = "Engraved Boots of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    [10121] = { name = "Engraved Bracers of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    [10122] = { name = "Engraved Breastplate of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    [10123] = { name = "Engraved Cape of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    [10124] = { name = "Engraved Gauntlets of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    [10125] = { name = "Engraved Girdle of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    [10126] = { name = "Engraved Helm of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    [10127] = { name = "Engraved Leggings of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    [10128] = { name = "Engraved Pauldrons of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    
    -- Warbringer's
    [10130] = { name = "Warbringer's Armsplints of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 52-57" },
    [10131] = { name = "Warbringer's Belt of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 52-57" },
    [10132] = { name = "Warbringer's Chestguard of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 52-57" },
    [10133] = { name = "Warbringer's Crown of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 52-57" },
    [10134] = { name = "Warbringer's Gauntlets of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 52-57" },
    [10135] = { name = "Warbringer's Legguards of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 52-57" },
    [10136] = { name = "Warbringer's Sabatons of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 52-57" },
    [10137] = { name = "Warbringer's Spaulders of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 52-57" },
    
    -- Tyrant's
    [10140] = { name = "Tyrant's Armguards of the Boar", quality = 2, source = "World Drop", sourceDetail = "Level 55-60" },
    [10141] = { name = "Tyrant's Belt of the Boar", quality = 2, source = "World Drop", sourceDetail = "Level 55-60" },
    [10142] = { name = "Tyrant's Chestpiece of the Boar", quality = 2, source = "World Drop", sourceDetail = "Level 55-60" },
    [10143] = { name = "Tyrant's Crown of the Boar", quality = 2, source = "World Drop", sourceDetail = "Level 55-60" },
    [10144] = { name = "Tyrant's Gauntlets of the Boar", quality = 2, source = "World Drop", sourceDetail = "Level 55-60" },
    [10145] = { name = "Tyrant's Greaves of the Boar", quality = 2, source = "World Drop", sourceDetail = "Level 55-60" },
    [10146] = { name = "Tyrant's Legplates of the Boar", quality = 2, source = "World Drop", sourceDetail = "Level 55-60" },
    [10147] = { name = "Tyrant's Epaulets of the Boar", quality = 2, source = "World Drop", sourceDetail = "Level 55-60" },
    
    -- ============================================================================
    --                      WORLD DROP GREENS - Cloth Sets (All Levels)
    -- ============================================================================
    -- Aboriginal
    [10150] = { name = "Aboriginal Footwraps of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 15-20" },
    [10151] = { name = "Aboriginal Gloves of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 15-20" },
    [10152] = { name = "Aboriginal Loincloth of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 15-20" },
    [10153] = { name = "Aboriginal Robe of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 15-20" },
    [10154] = { name = "Aboriginal Sash of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 15-20" },
    [10155] = { name = "Aboriginal Vest of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 15-20" },
    
    -- Abjurer's
    [10160] = { name = "Abjurer's Boots of the Owl", quality = 2, source = "World Drop", sourceDetail = "Level 46-51" },
    [10161] = { name = "Abjurer's Bands of the Owl", quality = 2, source = "World Drop", sourceDetail = "Level 46-51" },
    [10162] = { name = "Abjurer's Cloak of the Owl", quality = 2, source = "World Drop", sourceDetail = "Level 46-51" },
    [10163] = { name = "Abjurer's Gloves of the Owl", quality = 2, source = "World Drop", sourceDetail = "Level 46-51" },
    [10164] = { name = "Abjurer's Hood of the Owl", quality = 2, source = "World Drop", sourceDetail = "Level 46-51" },
    [10165] = { name = "Abjurer's Mantle of the Owl", quality = 2, source = "World Drop", sourceDetail = "Level 46-51" },
    [10166] = { name = "Abjurer's Pants of the Owl", quality = 2, source = "World Drop", sourceDetail = "Level 46-51" },
    [10167] = { name = "Abjurer's Robe of the Owl", quality = 2, source = "World Drop", sourceDetail = "Level 46-51" },
    [10168] = { name = "Abjurer's Sash of the Owl", quality = 2, source = "World Drop", sourceDetail = "Level 46-51" },
    
    -- Councillor's
    [10170] = { name = "Councillor's Boots of the Whale", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    [10171] = { name = "Councillor's Circlet of the Whale", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    [10172] = { name = "Councillor's Cloak of the Whale", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    [10173] = { name = "Councillor's Cuffs of the Whale", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    [10174] = { name = "Councillor's Gloves of the Whale", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    [10175] = { name = "Councillor's Pants of the Whale", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    [10176] = { name = "Councillor's Robes of the Whale", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    [10177] = { name = "Councillor's Sash of the Whale", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    [10178] = { name = "Councillor's Shoulders of the Whale", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    
    -- Elder's
    [10180] = { name = "Elder's Boots of Intellect", quality = 2, source = "World Drop", sourceDetail = "Level 52-57" },
    [10181] = { name = "Elder's Bracers of Intellect", quality = 2, source = "World Drop", sourceDetail = "Level 52-57" },
    [10182] = { name = "Elder's Cloak of Intellect", quality = 2, source = "World Drop", sourceDetail = "Level 52-57" },
    [10183] = { name = "Elder's Gloves of Intellect", quality = 2, source = "World Drop", sourceDetail = "Level 52-57" },
    [10184] = { name = "Elder's Hat of Intellect", quality = 2, source = "World Drop", sourceDetail = "Level 52-57" },
    [10185] = { name = "Elder's Mantle of Intellect", quality = 2, source = "World Drop", sourceDetail = "Level 52-57" },
    [10186] = { name = "Elder's Pants of Intellect", quality = 2, source = "World Drop", sourceDetail = "Level 52-57" },
    [10187] = { name = "Elder's Robe of Intellect", quality = 2, source = "World Drop", sourceDetail = "Level 52-57" },
    [10188] = { name = "Elder's Sash of Intellect", quality = 2, source = "World Drop", sourceDetail = "Level 52-57" },
    
    -- Highborne
    [10190] = { name = "Highborne Boots of Frozen Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 55-60" },
    [10191] = { name = "Highborne Bracelets of Frozen Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 55-60" },
    [10192] = { name = "Highborne Cloak of Frozen Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 55-60" },
    [10193] = { name = "Highborne Cord of Frozen Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 55-60" },
    [10194] = { name = "Highborne Crown of Frozen Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 55-60" },
    [10195] = { name = "Highborne Gloves of Frozen Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 55-60" },
    [10196] = { name = "Highborne Padded Armor of Frozen Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 55-60" },
    [10197] = { name = "Highborne Pauldrons of Frozen Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 55-60" },
    [10198] = { name = "Highborne Pants of Frozen Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 55-60" },
    
    -- ============================================================================
    --                      WORLD DROP GREEN WEAPONS
    -- ============================================================================
    -- Swords
    [15215] = { name = "Furious Falchion of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [15216] = { name = "Rune Sword of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 22-27" },
    [15217] = { name = "Widow Blade of the Monkey", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    [15218] = { name = "Crystal Sword of the Falcon", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [15219] = { name = "Gemmed Falchion of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 31-36" },
    [15220] = { name = "Glinting Steel Dagger of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 34-39" },
    [15221] = { name = "Holy War Sword of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    [15222] = { name = "Ivory Sword of the Monkey", quality = 2, source = "World Drop", sourceDetail = "Level 40-45" },
    [15223] = { name = "Jagged Blade of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [15224] = { name = "Kingly Axe of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 46-51" },
    [15225] = { name = "Lunar Sword of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    [15226] = { name = "Massive Battle Axe of the Boar", quality = 2, source = "World Drop", sourceDetail = "Level 52-57" },
    [15227] = { name = "Mighty Armsplints of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 55-60" },
    
    -- Axes
    [15230] = { name = "Splitting Hatchet of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [15231] = { name = "Heavy War Axe of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 22-27" },
    [15232] = { name = "Razor Axe of the Monkey", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    [15233] = { name = "Headstriker Sword of Power", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [15234] = { name = "Greater Scythe of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 31-36" },
    [15235] = { name = "Crescent Edge of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 34-39" },
    [15236] = { name = "Moon Cleaver of the Monkey", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    [15237] = { name = "Corpse Harvester of Stamina", quality = 2, source = "World Drop", sourceDetail = "Level 40-45" },
    [15238] = { name = "Warlord's Axe of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [15239] = { name = "Demon's Edge of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 46-51" },
    [15240] = { name = "Savage Axe of Power", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    
    -- Maces
    [15250] = { name = "Solid Iron Maul of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [15251] = { name = "Ghostwalker Bindings of the Monkey", quality = 2, source = "World Drop", sourceDetail = "Level 22-27" },
    [15252] = { name = "Smashing Star of Stamina", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    [15253] = { name = "Beheading Blade of Power", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [15254] = { name = "Gallant Flamberge of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 31-36" },
    [15255] = { name = "Grand Claymore of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 34-39" },
    [15256] = { name = "Outlaw Sabre of the Monkey", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    [15257] = { name = "Feral Blade of Stamina", quality = 2, source = "World Drop", sourceDetail = "Level 40-45" },
    [15258] = { name = "Headhunter's Armor of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [15259] = { name = "Beasthunter Dagger of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 46-51" },
    [15260] = { name = "Stone Hammer of the Gorilla", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    
    -- Staves
    [15270] = { name = "Arcane Staff of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [15271] = { name = "Barbed Staff of the Owl", quality = 2, source = "World Drop", sourceDetail = "Level 22-27" },
    [15272] = { name = "Blazing Wand of Fiery Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    [15273] = { name = "Death Speaker Scepter of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [15274] = { name = "Diviner Long Staff of the Owl", quality = 2, source = "World Drop", sourceDetail = "Level 31-36" },
    [15275] = { name = "Emberstone Staff of Fiery Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 34-39" },
    [15276] = { name = "Feral Staff of Nature's Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    [15277] = { name = "Glacial Spike of Frozen Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 40-45" },
    [15278] = { name = "Glowstar Rod of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [15279] = { name = "Heavy Gnoll War Club of the Owl", quality = 2, source = "World Drop", sourceDetail = "Level 46-51" },
    [15280] = { name = "Ivory Wand of Shadow Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    [15281] = { name = "Jadefinger Staff of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 52-57" },
    
    -- Daggers
    [15290] = { name = "Deadly Kris of the Monkey", quality = 2, source = "World Drop", sourceDetail = "Level 18-23" },
    [15291] = { name = "Bloodletter of Agility", quality = 2, source = "World Drop", sourceDetail = "Level 22-27" },
    [15292] = { name = "Carved Stone Dagger of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 25-30" },
    [15293] = { name = "Dreadblade of the Monkey", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [15294] = { name = "Felstone Reaver of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 31-36" },
    [15295] = { name = "Ghostwalker Blade of the Falcon", quality = 2, source = "World Drop", sourceDetail = "Level 34-39" },
    [15296] = { name = "Gleaming Claymore of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    [15297] = { name = "Headstrong Blade of Agility", quality = 2, source = "World Drop", sourceDetail = "Level 40-45" },
    [15298] = { name = "Ivory Dagger of the Monkey", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [15299] = { name = "Jademir Blade of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 46-51" },
    [15300] = { name = "Keenblade of the Falcon", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    [15301] = { name = "Lunar Dagger of Agility", quality = 2, source = "World Drop", sourceDetail = "Level 52-57" },
    
    -- ============================================================================
    --                      MORE QUEST REWARDS - Alliance
    -- ============================================================================
    -- Wetlands Quests
    [3680] = { name = "Bouquet of White Roses", quality = 2, source = "Quest", sourceDetail = "Young Crocolisk Skins (Wetlands)" },
    [3681] = { name = "Dunewalker's Feet", quality = 2, source = "Quest", sourceDetail = "Claws from the Deep (Wetlands)" },
    [3682] = { name = "Ironband's Ring", quality = 2, source = "Quest", sourceDetail = "Bingles' Missing Supplies (Wetlands)" },
    [3683] = { name = "Jutting Shoulderguards", quality = 2, source = "Quest", sourceDetail = "The Third Fleet (Wetlands)" },
    [3684] = { name = "Legplates of the Shattered Hand", quality = 3, source = "Quest", sourceDetail = "Report to Captain Stoutfist (Wetlands)" },
    [3685] = { name = "Necklace of Sanctuary", quality = 2, source = "Quest", sourceDetail = "Reclaiming Goods (Wetlands)" },
    
    -- Loch Modan Quests
    [2909] = { name = "Dwarven Fishing Pole", quality = 3, source = "Quest", sourceDetail = "Mountaineer Stormpike (Loch Modan)" },
    [2912] = { name = "Circle of the Crescent Moon", quality = 2, source = "Quest", sourceDetail = "Protecting the Shipment (Loch Modan)" },
    [2913] = { name = "Stonewood Hammer", quality = 2, source = "Quest", sourceDetail = "Report to Ironforge (Loch Modan)" },
    [2914] = { name = "Tunnel Rat Ear", quality = 0, source = "Quest", sourceDetail = "Rat Catching (Loch Modan)" },
    [2915] = { name = "Silver-Thread Sash", quality = 2, source = "Quest", sourceDetail = "Gathering Idols (Loch Modan)" },
    
    -- Arathi Highlands Quests
    [4468] = { name = "Stromgarde Cavalry Leggings", quality = 2, source = "Quest", sourceDetail = "Stromgarde Badges (Arathi)" },
    [4469] = { name = "Arathi War Ripper", quality = 2, source = "Quest", sourceDetail = "Call to Arms (Arathi)" },
    [4470] = { name = "Staff of the Curator", quality = 3, source = "Quest", sourceDetail = "Worth Its Weight in Gold (Arathi)" },
    [4471] = { name = "Raptor Hide Belt", quality = 2, source = "Quest", sourceDetail = "Raptor Mastery (Arathi)" },
    [4472] = { name = "Ogremind Ring", quality = 2, source = "Quest", sourceDetail = "Troll Temper (Arathi)" },
    [4473] = { name = "Rainbow Girdle", quality = 3, source = "Quest", sourceDetail = "The Real Threat (Arathi)" },
    [4474] = { name = "Razorsteel Shoulders", quality = 2, source = "Quest", sourceDetail = "The Traitor (Arathi)" },
    
    -- Hinterlands Quests
    [9612] = { name = "Avenguard Helm", quality = 3, source = "Quest", sourceDetail = "Skulk Rock Clean-up (Hinterlands)" },
    [9613] = { name = "Gorewood Bow", quality = 3, source = "Quest", sourceDetail = "Dark Vessels (Hinterlands)" },
    [9614] = { name = "Wildfire Leggings", quality = 2, source = "Quest", sourceDetail = "Vilebranch Hooligans (Hinterlands)" },
    [9615] = { name = "Thistlewood Cleaver", quality = 2, source = "Quest", sourceDetail = "Troll Necklace Bounty (Hinterlands)" },
    [9616] = { name = "Steel-Plated Pants", quality = 2, source = "Quest", sourceDetail = "Stalking the Stalkers (Hinterlands)" },
    [9617] = { name = "Tigerstrike Mantle", quality = 3, source = "Quest", sourceDetail = "Featherbeard's Endorsement (Hinterlands)" },
    [9618] = { name = "Huntsman's Band", quality = 2, source = "Quest", sourceDetail = "Gammerita, Mon! (Hinterlands)" },
    
    -- Badlands Quests
    [4977] = { name = "Mottled Boots", quality = 2, source = "Quest", sourceDetail = "Study of the Elements (Badlands)" },
    [4978] = { name = "Lesser Belt of the Spire", quality = 2, source = "Quest", sourceDetail = "Fiery Blaze Enchantments (Badlands)" },
    [4979] = { name = "Fire-Hardened Hauberk", quality = 3, source = "Quest", sourceDetail = "The Rise of the Machines (Badlands)" },
    [4980] = { name = "Swiftfoot Treads", quality = 2, source = "Quest", sourceDetail = "Martek the Exiled (Badlands)" },
    [4981] = { name = "Precision Bow", quality = 2, source = "Quest", sourceDetail = "Pearl Diving (Badlands)" },
    [4982] = { name = "Badlands Machete", quality = 2, source = "Quest", sourceDetail = "Barbecued Buzzard Wings (Badlands)" },
    
    -- ============================================================================
    --                      MORE QUEST REWARDS - Horde
    -- ============================================================================
    -- Hillsbrad Foothills Quests
    [3745] = { name = "Staff of Soran'ruk", quality = 3, source = "Quest", sourceDetail = "Helcular's Revenge (Hillsbrad)" },
    [3746] = { name = "Robe of the Keeper", quality = 3, source = "Quest", sourceDetail = "Elixir of Suffering (Hillsbrad)" },
    [3747] = { name = "Ring of the Underwood", quality = 2, source = "Quest", sourceDetail = "The Rescue (Hillsbrad)" },
    [3748] = { name = "Mighty Chain Pants", quality = 2, source = "Quest", sourceDetail = "Syndicate Assassins (Hillsbrad)" },
    [3749] = { name = "Soft Willow Cape", quality = 2, source = "Quest", sourceDetail = "Dangerous! (Hillsbrad)" },
    [3750] = { name = "Hunting Ammo Sack", quality = 2, source = "Quest", sourceDetail = "Battle of Hillsbrad (Hillsbrad)" },
    
    -- Thousand Needles Quests
    [5310] = { name = "Gem-set Signet", quality = 2, source = "Quest", sourceDetail = "Test of Endurance (Thousand Needles)" },
    [5311] = { name = "Razzeric's Tweaking Stick", quality = 2, source = "Quest", sourceDetail = "Hardened Shells (Thousand Needles)" },
    [5312] = { name = "Whip of the Rake", quality = 2, source = "Quest", sourceDetail = "Protect Kaya (Thousand Needles)" },
    [5313] = { name = "Totemic Clan Ring", quality = 2, source = "Quest", sourceDetail = "A Different Approach (Thousand Needles)" },
    [5314] = { name = "Grizzled Hide", quality = 2, source = "Quest", sourceDetail = "The Swarm Grows (Thousand Needles)" },
    [5315] = { name = "Pathfinder's Cap", quality = 2, source = "Quest", sourceDetail = "Alien Egg (Thousand Needles)" },
    
    -- Dustwallow Marsh Quests
    [5352] = { name = "Stormfire Gauntlets", quality = 3, source = "Quest", sourceDetail = "The Challenge (Dustwallow)" },
    [5353] = { name = "Glaredelve Ring", quality = 2, source = "Quest", sourceDetail = "Return to Krog (Dustwallow)" },
    [5354] = { name = "Runic Leather Armor", quality = 3, source = "Quest", sourceDetail = "Army of the Black Dragon (Dustwallow)" },
    [5355] = { name = "Sagehood Mantle", quality = 2, source = "Quest", sourceDetail = "The Theramore Docks (Dustwallow)" },
    [5356] = { name = "Talbar Mantle", quality = 2, source = "Quest", sourceDetail = "Hungry! (Dustwallow)" },
    [5357] = { name = "Wyrm Fang", quality = 2, source = "Quest", sourceDetail = "Lieutenant Paval Reethe (Dustwallow)" },
    
    -- Desolace Quests
    [5425] = { name = "Ghost-o-Matic Trap", quality = 2, source = "Quest", sourceDetail = "Ghost-o-plasm Round Up (Desolace)" },
    [5426] = { name = "Moonstone Ring", quality = 2, source = "Quest", sourceDetail = "Shadowprey Village (Desolace)" },
    [5427] = { name = "Woodsman Sword", quality = 2, source = "Quest", sourceDetail = "Kodo Roundup (Desolace)" },
    [5428] = { name = "Opaline Medallion", quality = 2, source = "Quest", sourceDetail = "Khan Jehn (Desolace)" },
    [5429] = { name = "Raptor Egg", quality = 1, source = "Quest", sourceDetail = "Bone Collector (Desolace)" },
    [5430] = { name = "Stinging Bow", quality = 2, source = "Quest", sourceDetail = "Gelkis Alliance (Desolace)" },
    
    -- Azshara Quests
    [12019] = { name = "Arcane Rune", quality = 3, source = "Quest", sourceDetail = "Arcane Runes (Azshara)" },
    [12020] = { name = "Thaurissan Family Ring", quality = 3, source = "Quest", sourceDetail = "A Meeting with the Master (Azshara)" },
    [12021] = { name = "Ravasaur Teeth Bracers", quality = 2, source = "Quest", sourceDetail = "Thalassian Base Camp (Azshara)" },
    [12022] = { name = "Volcanic Fury", quality = 3, source = "Quest", sourceDetail = "Kim'jael Indeed! (Azshara)" },
    [12023] = { name = "Dreadmist Wraps", quality = 3, source = "Quest", sourceDetail = "Spiritual Unrest (Azshara)" },
    [12024] = { name = "Sandsteel Drape", quality = 2, source = "Quest", sourceDetail = "A Land Filled with Hatred (Azshara)" },
    
    -- ============================================================================
    --                      COMMON GREY TRASH ITEMS
    -- ============================================================================
    [782] = { name = "Coyote Fang", quality = 0, source = "Drop", sourceDetail = "Coyotes" },
    [783] = { name = "Light Feather", quality = 1, source = "Drop", sourceDetail = "Birds" },
    [784] = { name = "Boar Tusk", quality = 0, source = "Drop", sourceDetail = "Boars" },
    [785] = { name = "Murloc Scale", quality = 0, source = "Drop", sourceDetail = "Murlocs" },
    [786] = { name = "Dust", quality = 0, source = "Drop", sourceDetail = "Various Mobs" },
    [791] = { name = "Gooey Spider Leg", quality = 0, source = "Drop", sourceDetail = "Spiders" },
    [792] = { name = "Knitted Sandals", quality = 0, source = "Drop", sourceDetail = "Humanoids" },
    [793] = { name = "Knitted Gloves", quality = 0, source = "Drop", sourceDetail = "Humanoids" },
    [794] = { name = "Knitted Pants", quality = 0, source = "Drop", sourceDetail = "Humanoids" },
    [795] = { name = "Knitted Tunic", quality = 0, source = "Drop", sourceDetail = "Humanoids" },
    [796] = { name = "Small Leather Collar", quality = 0, source = "Drop", sourceDetail = "Beasts" },
    [797] = { name = "Large Fang", quality = 0, source = "Drop", sourceDetail = "Beasts" },
    [805] = { name = "Small Knife", quality = 0, source = "Drop", sourceDetail = "Humanoids" },
    [813] = { name = "Broken Boar Tusk", quality = 0, source = "Drop", sourceDetail = "Boars" },
    [814] = { name = "Flask of Oil", quality = 1, source = "Drop", sourceDetail = "Mechanical / Various" },
    [818] = { name = "Tigerseye", quality = 2, source = "Drop", sourceDetail = "Mining/Prospecting" },
    [820] = { name = "Miner's Light", quality = 0, source = "Vendor", sourceDetail = "Mining Vendors" },
    [827] = { name = "Wolf Intestine", quality = 0, source = "Drop", sourceDetail = "Wolves" },
    [835] = { name = "Large Copper Nugget", quality = 0, source = "Drop", sourceDetail = "Mining" },
    [858] = { name = "Lesser Healing Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy / Vendor" },
    [929] = { name = "Healing Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [1710] = { name = "Greater Healing Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [3928] = { name = "Superior Healing Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [13446] = { name = "Major Healing Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [2454] = { name = "Elixir of Lion's Strength", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [2457] = { name = "Elixir of Minor Agility", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [2458] = { name = "Elixir of Minor Fortitude", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [3382] = { name = "Weak Troll's Blood Elixir", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [3383] = { name = "Elixir of Wisdom", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [3388] = { name = "Strong Troll's Blood Elixir", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [3389] = { name = "Elixir of Defense", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [3390] = { name = "Elixir of Lesser Agility", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [3391] = { name = "Elixir of Ogre's Strength", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [6373] = { name = "Elixir of Firepower", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [6662] = { name = "Elixir of Giant Growth", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [8949] = { name = "Elixir of Agility", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [8951] = { name = "Elixir of Greater Defense", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [9179] = { name = "Elixir of Greater Intellect", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [9206] = { name = "Elixir of Giants", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [9224] = { name = "Elixir of Demonslaying", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [13447] = { name = "Elixir of the Sages", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [13452] = { name = "Elixir of the Mongoose", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [13453] = { name = "Elixir of Brute Force", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [13454] = { name = "Greater Arcane Elixir", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    
    -- Flask Consumables
    [13510] = { name = "Flask of the Titans", quality = 1, source = "Crafted", sourceDetail = "Alchemy (300)" },
    [13511] = { name = "Flask of Distilled Wisdom", quality = 1, source = "Crafted", sourceDetail = "Alchemy (300)" },
    [13512] = { name = "Flask of Supreme Power", quality = 1, source = "Crafted", sourceDetail = "Alchemy (300)" },
    [13513] = { name = "Flask of Chromatic Resistance", quality = 1, source = "Crafted", sourceDetail = "Alchemy (300)" },
    [13506] = { name = "Flask of Petrification", quality = 1, source = "Crafted", sourceDetail = "Alchemy (300)" },
    
    -- Mana Potions
    [2455] = { name = "Minor Mana Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [3385] = { name = "Lesser Mana Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [3827] = { name = "Mana Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [6149] = { name = "Greater Mana Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [13443] = { name = "Superior Mana Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [13444] = { name = "Major Mana Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    
    -- Protection Potions
    [6048] = { name = "Shadow Protection Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [6050] = { name = "Frost Protection Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [6049] = { name = "Fire Protection Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [6052] = { name = "Nature Protection Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [13457] = { name = "Greater Arcane Protection Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [13459] = { name = "Greater Shadow Protection Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [13460] = { name = "Greater Fire Protection Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [13461] = { name = "Greater Frost Protection Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [13458] = { name = "Greater Nature Protection Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    
    -- Other Potions
    [5631] = { name = "Rage Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [5633] = { name = "Great Rage Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [5634] = { name = "Free Action Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [9144] = { name = "Wildvine Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [9172] = { name = "Invisibility Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [13455] = { name = "Greater Stoneshield Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [13456] = { name = "Purification Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [13462] = { name = "Mighty Rage Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [18253] = { name = "Major Rejuvenation Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    [20008] = { name = "Living Action Potion", quality = 1, source = "Crafted", sourceDetail = "Alchemy" },
    
    -- ============================================================================
    --                      BAGS
    -- ============================================================================
    [4498] = { name = "Brown Leather Satchel", quality = 1, source = "Vendor", sourceDetail = "General Goods Vendors" },
    [4499] = { name = "Huge Brown Sack", quality = 1, source = "Vendor", sourceDetail = "General Goods Vendors" },
    [4500] = { name = "Traveler's Backpack", quality = 2, source = "World Drop", sourceDetail = "Level 15-25" },
    [4496] = { name = "Small Brown Pouch", quality = 1, source = "Quest/Vendor", sourceDetail = "Starting Areas" },
    [4497] = { name = "Heavy Brown Bag", quality = 1, source = "Quest/Vendor", sourceDetail = "General Goods Vendors" },
    [804] = { name = "Large Blue Sack", quality = 2, source = "World Drop", sourceDetail = "Level 20-30" },
    [805] = { name = "Large Green Sack", quality = 2, source = "World Drop", sourceDetail = "Level 25-35" },
    [856] = { name = "Blue Leather Bag", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [932] = { name = "Fel Steed Saddlebags", quality = 2, source = "World Drop", sourceDetail = "Level 45-55" },
    [1537] = { name = "Journeyman's Backpack", quality = 2, source = "World Drop", sourceDetail = "Level 35-45" },
    [1652] = { name = "Sturdy Leather Pack", quality = 1, source = "World Drop", sourceDetail = "Level 10-20" },
    [1725] = { name = "Large Knapsack", quality = 2, source = "World Drop", sourceDetail = "Level 40-50" },
    [4240] = { name = "Woolen Bag", quality = 1, source = "Crafted", sourceDetail = "Tailoring" },
    [4241] = { name = "Green Woolen Bag", quality = 1, source = "Crafted", sourceDetail = "Tailoring" },
    [4245] = { name = "Small Silk Pack", quality = 1, source = "Crafted", sourceDetail = "Tailoring" },
    [4246] = { name = "Mageweave Bag", quality = 1, source = "Crafted", sourceDetail = "Tailoring" },
    [10050] = { name = "Mageweave Bag", quality = 1, source = "Crafted", sourceDetail = "Tailoring" },
    [10051] = { name = "Red Mageweave Bag", quality = 1, source = "Crafted", sourceDetail = "Tailoring" },
    [14046] = { name = "Runecloth Bag", quality = 1, source = "Crafted", sourceDetail = "Tailoring" },
    [14155] = { name = "Mooncloth Bag", quality = 1, source = "Crafted", sourceDetail = "Tailoring (Mooncloth)" },
    [14156] = { name = "Bottomless Bag", quality = 3, source = "Crafted", sourceDetail = "Tailoring" },
    [21340] = { name = "Soul Pouch", quality = 2, source = "Crafted", sourceDetail = "Tailoring (Warlock)" },
    [21341] = { name = "Felcloth Bag", quality = 2, source = "Crafted", sourceDetail = "Tailoring (Warlock)" },
    [21342] = { name = "Core Felcloth Bag", quality = 3, source = "Crafted", sourceDetail = "Tailoring (Warlock)" },
    [11324] = { name = "Deathbed", quality = 2, source = "Drop", sourceDetail = "Various Mobs (Level 50+)" },
    
    -- Profession Bags
    [22246] = { name = "Enchanted Mageweave Pouch", quality = 2, source = "Crafted", sourceDetail = "Tailoring (Enchanting)" },
    [22248] = { name = "Enchanted Runecloth Bag", quality = 2, source = "Crafted", sourceDetail = "Tailoring (Enchanting)" },
    [22249] = { name = "Big Bag of Enchantment", quality = 3, source = "Crafted", sourceDetail = "Tailoring (Enchanting)" },
    [22251] = { name = "Cenarion Herb Bag", quality = 2, source = "Crafted", sourceDetail = "Tailoring (Herbalism)" },
    [22252] = { name = "Satchel of Cenarius", quality = 3, source = "Crafted", sourceDetail = "Tailoring (Herbalism)" },
    
    -- ============================================================================
    --                      RARE RECIPES/PATTERNS
    -- ============================================================================
    -- Blacksmithing Plans
    [12699] = { name = "Plans: Fiery Chain Girdle", quality = 3, source = "Drop", sourceDetail = "Molten Core" },
    [12700] = { name = "Plans: Fiery Chain Shoulders", quality = 3, source = "Drop", sourceDetail = "Molten Core" },
    [12701] = { name = "Plans: Dark Iron Bracers", quality = 3, source = "Drop", sourceDetail = "Blackrock Depths" },
    [12702] = { name = "Plans: Dark Iron Leggings", quality = 3, source = "Drop", sourceDetail = "Blackrock Depths" },
    [12703] = { name = "Plans: Dark Iron Reaver", quality = 3, source = "Drop", sourceDetail = "Molten Core" },
    [12704] = { name = "Plans: Dark Iron Destroyer", quality = 3, source = "Drop", sourceDetail = "Molten Core" },
    [12705] = { name = "Plans: Enchanted Thorium Helm", quality = 3, source = "Drop", sourceDetail = "World Drop" },
    [12706] = { name = "Plans: Enchanted Thorium Leggings", quality = 3, source = "Drop", sourceDetail = "World Drop" },
    [12707] = { name = "Plans: Enchanted Thorium Breastplate", quality = 3, source = "Drop", sourceDetail = "World Drop" },
    [12717] = { name = "Plans: Lionheart Helm", quality = 4, source = "Drop", sourceDetail = "World Drop (Rare)" },
    [12718] = { name = "Plans: Stronghold Gauntlets", quality = 4, source = "Drop", sourceDetail = "World Drop (Rare)" },
    [12719] = { name = "Plans: Invulnerable Mail", quality = 4, source = "Drop", sourceDetail = "World Drop (Rare)" },
    
    -- Leatherworking Patterns
    [15726] = { name = "Pattern: Green Dragonscale Leggings", quality = 3, source = "Drop", sourceDetail = "Sunken Temple" },
    [15727] = { name = "Pattern: Green Dragonscale Breastplate", quality = 3, source = "Drop", sourceDetail = "Sunken Temple" },
    [15728] = { name = "Pattern: Stormshroud Pants", quality = 3, source = "Drop", sourceDetail = "World Drop" },
    [15729] = { name = "Pattern: Stormshroud Armor", quality = 3, source = "Drop", sourceDetail = "World Drop" },
    [15730] = { name = "Pattern: Stormshroud Shoulders", quality = 3, source = "Drop", sourceDetail = "World Drop" },
    [15741] = { name = "Pattern: Living Leggings", quality = 3, source = "Drop", sourceDetail = "World Drop" },
    [15742] = { name = "Pattern: Living Breastplate", quality = 3, source = "Drop", sourceDetail = "World Drop" },
    [15743] = { name = "Pattern: Living Shoulders", quality = 3, source = "Drop", sourceDetail = "World Drop" },
    [15762] = { name = "Pattern: Devilsaur Gauntlets", quality = 3, source = "Drop", sourceDetail = "Un'Goro Crater" },
    [15763] = { name = "Pattern: Devilsaur Leggings", quality = 3, source = "Drop", sourceDetail = "Un'Goro Crater" },
    [15772] = { name = "Pattern: Hide of the Wild", quality = 4, source = "Drop", sourceDetail = "Dire Maul" },
    [15773] = { name = "Pattern: Wolfshead Helm", quality = 3, source = "Drop", sourceDetail = "Scholomance" },
    
    -- Tailoring Patterns
    [14508] = { name = "Pattern: Felcloth Robe", quality = 3, source = "Drop", sourceDetail = "Scholomance" },
    [14509] = { name = "Pattern: Felcloth Pants", quality = 3, source = "Drop", sourceDetail = "Scholomance" },
    [14510] = { name = "Pattern: Felcloth Shoulders", quality = 3, source = "Drop", sourceDetail = "Scholomance" },
    [14511] = { name = "Pattern: Felcloth Boots", quality = 3, source = "Drop", sourceDetail = "Scholomance" },
    [14512] = { name = "Pattern: Felcloth Hood", quality = 3, source = "Drop", sourceDetail = "Scholomance" },
    [14513] = { name = "Pattern: Robe of the Void", quality = 4, source = "Drop", sourceDetail = "Scholomance (Rare)" },
    [14514] = { name = "Pattern: Robe of the Archmage", quality = 4, source = "Drop", sourceDetail = "Stratholme (Rare)" },
    [14515] = { name = "Pattern: Truefaith Vestments", quality = 4, source = "Drop", sourceDetail = "Stratholme (Rare)" },
    [14516] = { name = "Pattern: Mooncloth Circlet", quality = 3, source = "Drop", sourceDetail = "World Drop" },
    [14517] = { name = "Pattern: Mooncloth Leggings", quality = 3, source = "Drop", sourceDetail = "World Drop" },
    [14518] = { name = "Pattern: Mooncloth Robe", quality = 3, source = "Drop", sourceDetail = "World Drop" },
    [14519] = { name = "Pattern: Mooncloth Shoulders", quality = 3, source = "Drop", sourceDetail = "World Drop" },
    [18487] = { name = "Pattern: Mooncloth Gloves", quality = 3, source = "Drop", sourceDetail = "Dire Maul" },
    
    -- Alchemy Recipes
    [13480] = { name = "Recipe: Flask of Petrification", quality = 3, source = "Drop", sourceDetail = "Scholomance" },
    [13481] = { name = "Recipe: Flask of the Titans", quality = 3, source = "Drop", sourceDetail = "Dire Maul" },
    [13482] = { name = "Recipe: Flask of Distilled Wisdom", quality = 3, source = "Drop", sourceDetail = "Dire Maul" },
    [13483] = { name = "Recipe: Flask of Supreme Power", quality = 3, source = "Drop", sourceDetail = "Blackwing Lair" },
    [13484] = { name = "Recipe: Flask of Chromatic Resistance", quality = 3, source = "Drop", sourceDetail = "World Drop (Dragons)" },
    [13493] = { name = "Recipe: Major Rejuvenation Potion", quality = 3, source = "Drop", sourceDetail = "Dire Maul" },
    [13494] = { name = "Recipe: Living Action Potion", quality = 3, source = "Drop", sourceDetail = "Stratholme (Rare)" },
    [13495] = { name = "Recipe: Mighty Rage Potion", quality = 3, source = "Drop", sourceDetail = "Stratholme (Rare)" },
    [13496] = { name = "Recipe: Major Mana Potion", quality = 3, source = "Drop", sourceDetail = "World Drop" },
    [13497] = { name = "Recipe: Major Healing Potion", quality = 3, source = "Drop", sourceDetail = "World Drop" },
    [13499] = { name = "Recipe: Greater Nature Protection Potion", quality = 3, source = "Drop", sourceDetail = "Felwood" },
    [13500] = { name = "Recipe: Greater Arcane Protection Potion", quality = 3, source = "Drop", sourceDetail = "Winterspring" },
    [13501] = { name = "Recipe: Greater Fire Protection Potion", quality = 3, source = "Drop", sourceDetail = "Burning Steppes" },
    [13502] = { name = "Recipe: Greater Frost Protection Potion", quality = 3, source = "Drop", sourceDetail = "Winterspring" },
    [13503] = { name = "Recipe: Greater Shadow Protection Potion", quality = 3, source = "Drop", sourceDetail = "Felwood" },
    
    -- Enchanting Formulas
    [16220] = { name = "Formula: Enchant Boots - Spirit", quality = 3, source = "Drop", sourceDetail = "World Drop" },
    [16221] = { name = "Formula: Enchant Weapon - Spellpower", quality = 3, source = "Drop", sourceDetail = "World Drop (Rare)" },
    [16222] = { name = "Formula: Enchant Weapon - Healing Power", quality = 3, source = "Drop", sourceDetail = "World Drop (Rare)" },
    [16223] = { name = "Formula: Enchant Weapon - Crusader", quality = 3, source = "Drop", sourceDetail = "Scarlet Monastery" },
    [16224] = { name = "Formula: Enchant Weapon - Lifestealing", quality = 3, source = "Drop", sourceDetail = "Scholomance" },
    [16255] = { name = "Formula: Enchant 2H Weapon - Superior Impact", quality = 3, source = "Drop", sourceDetail = "Stratholme" },
    [16256] = { name = "Formula: Enchant Gloves - Superior Agility", quality = 3, source = "Drop", sourceDetail = "World Drop" },
    [16257] = { name = "Formula: Enchant Gloves - Threat", quality = 3, source = "Drop", sourceDetail = "Blackwing Lair" },
    [16258] = { name = "Formula: Enchant Gloves - Riding Skill", quality = 3, source = "Drop", sourceDetail = "Stratholme (Rare)" },
    
    -- ============================================================================
    --                      DUNGEON DROPS - Ragefire Chasm
    -- ============================================================================
    [14149] = { name = "Subterranean Cape", quality = 2, source = "Dungeon", sourceDetail = "Ragefire Chasm (Taragaman)" },
    [14148] = { name = "Cavedweller Bracers", quality = 2, source = "Dungeon", sourceDetail = "Ragefire Chasm (Taragaman)" },
    [14145] = { name = "Chanting Blade", quality = 2, source = "Dungeon", sourceDetail = "Ragefire Chasm (Jergosh)" },
    [14146] = { name = "Cursed Felblade", quality = 2, source = "Dungeon", sourceDetail = "Ragefire Chasm (Jergosh)" },
    
    -- ============================================================================
    --                      DUNGEON DROPS - Wailing Caverns
    -- ============================================================================
    [6472] = { name = "Stinging Viper", quality = 3, source = "Dungeon", sourceDetail = "Wailing Caverns (Lord Cobrahn)" },
    [6469] = { name = "Venomstrike", quality = 3, source = "Dungeon", sourceDetail = "Wailing Caverns (Lord Serpentis)" },
    [6476] = { name = "Pattern: Deviate Scale Belt", quality = 2, source = "Dungeon", sourceDetail = "Wailing Caverns" },
    [6449] = { name = "Glowing Lizardscale Cloak", quality = 2, source = "Dungeon", sourceDetail = "Wailing Caverns (Skum)" },
    [6461] = { name = "Slime-encrusted Pads", quality = 2, source = "Dungeon", sourceDetail = "Wailing Caverns (Mutanus)" },
    [6460] = { name = "Cobrahn's Grasp", quality = 2, source = "Dungeon", sourceDetail = "Wailing Caverns (Lord Cobrahn)" },
    [6459] = { name = "Savage Trodders", quality = 2, source = "Dungeon", sourceDetail = "Wailing Caverns (Lord Pythas)" },
    [6473] = { name = "Armor of the Fang", quality = 3, source = "Dungeon", sourceDetail = "Wailing Caverns (Druid of the Fang)" },
    [6474] = { name = "Pattern: Deviate Scale Gloves", quality = 2, source = "Dungeon", sourceDetail = "Wailing Caverns" },
    [6480] = { name = "Belt of the Fang", quality = 3, source = "Dungeon", sourceDetail = "Wailing Caverns (Lady Anacondra)" },
    [6481] = { name = "Gloves of the Fang", quality = 3, source = "Dungeon", sourceDetail = "Wailing Caverns (Lord Serpentis)" },
    [6448] = { name = "Tail Spike", quality = 2, source = "Dungeon", sourceDetail = "Wailing Caverns (Skum)" },
    [10413] = { name = "Gloves of the Fang", quality = 3, source = "Dungeon", sourceDetail = "Wailing Caverns (Lord Pythas)" },
    
    -- ============================================================================
    --                      DUNGEON DROPS - Deadmines
    -- ============================================================================
    [5191] = { name = "Crisp Basilisk Urethra", quality = 2, source = "Dungeon", sourceDetail = "Deadmines (Rhahk'Zor)" },
    [5193] = { name = "Cape of the Brotherhood", quality = 3, source = "Dungeon", sourceDetail = "Deadmines (VanCleef)" },
    [5196] = { name = "Smite's Mighty Hammer", quality = 3, source = "Dungeon", sourceDetail = "Deadmines (Mr. Smite)" },
    [5194] = { name = "Taskmaster Axe", quality = 3, source = "Dungeon", sourceDetail = "Deadmines (Sneed's Shredder)" },
    [5200] = { name = "Impaling Harpoon", quality = 3, source = "Dungeon", sourceDetail = "Deadmines (Captain Greenskin)" },
    [5201] = { name = "Emberstone Staff", quality = 3, source = "Dungeon", sourceDetail = "Deadmines (Gilnid)" },
    [5202] = { name = "Corsair's Overshirt", quality = 3, source = "Dungeon", sourceDetail = "Deadmines (VanCleef)" },
    [1937] = { name = "Blackened Defias Armor", quality = 3, source = "Dungeon", sourceDetail = "Deadmines (VanCleef)" },
    [1951] = { name = "Blackened Defias Belt", quality = 2, source = "Dungeon", sourceDetail = "Deadmines (VanCleef)" },
    [1156] = { name = "Lavishly Jeweled Ring", quality = 2, source = "Dungeon", sourceDetail = "Deadmines (Mr. Smite)" },
    [2169] = { name = "Buzzer Blade", quality = 3, source = "Dungeon", sourceDetail = "Deadmines (Sneed's Shredder)" },
    [2089] = { name = "Miner's Cape", quality = 2, source = "Dungeon", sourceDetail = "Deadmines (Rhahk'Zor)" },
    
    -- ============================================================================
    --                      DUNGEON DROPS - Shadowfang Keep
    -- ============================================================================
    [6321] = { name = "Silverlaine's Family Seal", quality = 3, source = "Dungeon", sourceDetail = "Shadowfang Keep (Baron Silverlaine)" },
    [6323] = { name = "Baron's Scepter", quality = 3, source = "Dungeon", sourceDetail = "Shadowfang Keep (Baron Silverlaine)" },
    [6318] = { name = "Odo's Ley Staff", quality = 3, source = "Dungeon", sourceDetail = "Shadowfang Keep (Odo the Blindwatcher)" },
    [6319] = { name = "Girdle of the Blindwatcher", quality = 2, source = "Dungeon", sourceDetail = "Shadowfang Keep (Odo the Blindwatcher)" },
    [6324] = { name = "Robes of Arugal", quality = 3, source = "Dungeon", sourceDetail = "Shadowfang Keep (Archmage Arugal)" },
    [6392] = { name = "Belt of Arugal", quality = 3, source = "Dungeon", sourceDetail = "Shadowfang Keep (Archmage Arugal)" },
    [3748] = { name = "Feline Mantle", quality = 2, source = "Dungeon", sourceDetail = "Shadowfang Keep (Wolf Master Nandos)" },
    [6314] = { name = "Wolfmaster Cape", quality = 2, source = "Dungeon", sourceDetail = "Shadowfang Keep (Wolf Master Nandos)" },
    [6315] = { name = "Graveyard Slasher", quality = 2, source = "Dungeon", sourceDetail = "Shadowfang Keep (Razorclaw the Butcher)" },
    [6316] = { name = "Butcher's Cleaver", quality = 2, source = "Dungeon", sourceDetail = "Shadowfang Keep (Razorclaw the Butcher)" },
    [6317] = { name = "Butcher's Slicer", quality = 2, source = "Dungeon", sourceDetail = "Shadowfang Keep (Razorclaw the Butcher)" },
    [6220] = { name = "Meteor Shard", quality = 3, source = "Dungeon", sourceDetail = "Shadowfang Keep (Fenrus the Devourer)" },
    
    -- ============================================================================
    --                      DUNGEON DROPS - Blackfathom Deeps
    -- ============================================================================
    [6907] = { name = "Tortoise Armor", quality = 3, source = "Dungeon", sourceDetail = "Blackfathom Deeps (Ghamoo-Ra)" },
    [6908] = { name = "Ghamoo-Ra's Bind", quality = 2, source = "Dungeon", sourceDetail = "Blackfathom Deeps (Ghamoo-Ra)" },
    [6903] = { name = "Gaze Dreamer Pants", quality = 2, source = "Dungeon", sourceDetail = "Blackfathom Deeps (Lady Sarevess)" },
    [6904] = { name = "Strike of the Hydra", quality = 2, source = "Dungeon", sourceDetail = "Blackfathom Deeps (Aku'mai)" },
    [6905] = { name = "Reef Axe", quality = 2, source = "Dungeon", sourceDetail = "Blackfathom Deeps (Kelris)" },
    [6906] = { name = "Naga Heartpiercer", quality = 3, source = "Dungeon", sourceDetail = "Blackfathom Deeps (Lady Sarevess)" },
    [6911] = { name = "Moss Cinch", quality = 2, source = "Dungeon", sourceDetail = "Blackfathom Deeps" },
    [6898] = { name = "Leech Pants", quality = 2, source = "Dungeon", sourceDetail = "Blackfathom Deeps (Lorgus Jett)" },
    [6899] = { name = "Thick Murloc Armor", quality = 2, source = "Dungeon", sourceDetail = "Blackfathom Deeps" },
    [6900] = { name = "Murloc Lurker Robe", quality = 2, source = "Dungeon", sourceDetail = "Blackfathom Deeps" },
    
    -- ============================================================================
    --                      DUNGEON DROPS - Stockade
    -- ============================================================================
    [2280] = { name = "Kam's Walking Stick", quality = 2, source = "Dungeon", sourceDetail = "Stockade (Kam Deepfury)" },
    [3643] = { name = "Punisher", quality = 3, source = "Dungeon", sourceDetail = "Stockade (Bruegal Ironknuckle)" },
    [2292] = { name = "Iron Knuckles", quality = 3, source = "Dungeon", sourceDetail = "Stockade (Bruegal Ironknuckle)" },
    
    -- ============================================================================
    --                      DUNGEON DROPS - Gnomeregan
    -- ============================================================================
    [9445] = { name = "Gnomebot Operating Boots", quality = 2, source = "Dungeon", sourceDetail = "Gnomeregan (Crowd Pummeler 9-60)" },
    [9446] = { name = "Electrocutioner Leg", quality = 3, source = "Dungeon", sourceDetail = "Gnomeregan (Electrocutioner 6000)" },
    [9447] = { name = "Electrocutioner Lagnut", quality = 2, source = "Dungeon", sourceDetail = "Gnomeregan (Electrocutioner 6000)" },
    [9449] = { name = "Manual Crowd Pummeler", quality = 3, source = "Dungeon", sourceDetail = "Gnomeregan (Crowd Pummeler 9-60)" },
    [9450] = { name = "Gnomish Shrink Ray", quality = 3, source = "Dungeon", sourceDetail = "Gnomeregan (Mekgineer Thermaplugg)" },
    [9456] = { name = "Glass Shooter", quality = 3, source = "Dungeon", sourceDetail = "Gnomeregan (Mekgineer Thermaplugg)" },
    [9457] = { name = "Thermaplugg's Central Core", quality = 4, source = "Dungeon", sourceDetail = "Gnomeregan (Mekgineer Thermaplugg)" },
    [9458] = { name = "Thermaplugg's Left Arm", quality = 3, source = "Dungeon", sourceDetail = "Gnomeregan (Mekgineer Thermaplugg)" },
    [9459] = { name = "Spellpower Goggles Xtreme", quality = 2, source = "Dungeon", sourceDetail = "Gnomeregan (Trash)" },
    [9460] = { name = "Gizmotron Megachopper", quality = 3, source = "Dungeon", sourceDetail = "Gnomeregan (Dark Iron Ambassador)" },
    [9461] = { name = "Charged Gear", quality = 2, source = "Dungeon", sourceDetail = "Gnomeregan (Viscous Fallout)" },
    [9462] = { name = "Miniature Platinum Discs", quality = 3, source = "Dungeon", sourceDetail = "Gnomeregan Quest" },
    
    -- ============================================================================
    --                      DUNGEON DROPS - Razorfen Kraul
    -- ============================================================================
    [6679] = { name = "Swinetusk Shank", quality = 3, source = "Dungeon", sourceDetail = "Razorfen Kraul (Aggem Thorncurse)" },
    [6680] = { name = "Thornspike", quality = 2, source = "Dungeon", sourceDetail = "Razorfen Kraul (Aggem Thorncurse)" },
    [6681] = { name = "Thorned Buckler", quality = 2, source = "Dungeon", sourceDetail = "Razorfen Kraul (Death Speaker Jargba)" },
    [6682] = { name = "Death Speaker Mantle", quality = 3, source = "Dungeon", sourceDetail = "Razorfen Kraul (Death Speaker Jargba)" },
    [6683] = { name = "Death Speaker Robes", quality = 3, source = "Dungeon", sourceDetail = "Razorfen Kraul (Death Speaker Jargba)" },
    [6684] = { name = "Corpsemaker", quality = 3, source = "Dungeon", sourceDetail = "Razorfen Kraul (Overlord Ramtusk)" },
    [6685] = { name = "Stoneweaver Leggings", quality = 2, source = "Dungeon", sourceDetail = "Razorfen Kraul (Roogug)" },
    [6686] = { name = "Tusken Helm", quality = 2, source = "Dungeon", sourceDetail = "Razorfen Kraul (Overlord Ramtusk)" },
    [6687] = { name = "Amethyst Amulet", quality = 2, source = "Dungeon", sourceDetail = "Razorfen Kraul (Charlga Razorflank)" },
    [6688] = { name = "Whisperwind Headdress", quality = 3, source = "Dungeon", sourceDetail = "Razorfen Kraul (Charlga Razorflank)" },
    [6689] = { name = "Heart of Agamaggan", quality = 3, source = "Dungeon", sourceDetail = "Razorfen Kraul (Charlga Razorflank)" },
    [6690] = { name = "Ferine Leggings", quality = 2, source = "Dungeon", sourceDetail = "Razorfen Kraul (Earthcaller Halmgar)" },
    [6691] = { name = "Slaghammer", quality = 3, source = "Dungeon", sourceDetail = "Razorfen Kraul (Earthcaller Halmgar)" },
    
    -- ============================================================================
    --                      DUNGEON DROPS - Scarlet Monastery (All Wings)
    -- ============================================================================
    -- Graveyard
    [7727] = { name = "Bloody Brass Knuckles", quality = 2, source = "Dungeon", sourceDetail = "SM Graveyard (Bloodmage Thalnos)" },
    [7728] = { name = "Orb of the Forgotten Seer", quality = 3, source = "Dungeon", sourceDetail = "SM Graveyard (Bloodmage Thalnos)" },
    [7729] = { name = "Chesterfall Musket", quality = 2, source = "Dungeon", sourceDetail = "SM Graveyard (Interrogator Vishas)" },
    [7730] = { name = "Interrogator's Gloves", quality = 2, source = "Dungeon", sourceDetail = "SM Graveyard (Interrogator Vishas)" },
    -- Library
    [7712] = { name = "Hypnotic Blade", quality = 3, source = "Dungeon", sourceDetail = "SM Library (Arcanist Doan)" },
    [7713] = { name = "Illusionary Rod", quality = 3, source = "Dungeon", sourceDetail = "SM Library (Arcanist Doan)" },
    [7714] = { name = "Mantle of Doan", quality = 3, source = "Dungeon", sourceDetail = "SM Library (Arcanist Doan)" },
    [7715] = { name = "Loksey's Training Stick", quality = 2, source = "Dungeon", sourceDetail = "SM Library (Houndmaster Loksey)" },
    [7717] = { name = "Dog Whistle", quality = 2, source = "Dungeon", sourceDetail = "SM Library (Houndmaster Loksey)" },
    -- Armory
    [7719] = { name = "Ravager", quality = 3, source = "Dungeon", sourceDetail = "SM Armory (Herod)" },
    [7718] = { name = "Herod's Shoulder", quality = 3, source = "Dungeon", sourceDetail = "SM Armory (Herod)" },
    [10330] = { name = "Scarlet Boots", quality = 2, source = "Dungeon", sourceDetail = "SM Armory (Herod)" },
    -- Cathedral
    [7720] = { name = "Whitemane's Chapeau", quality = 3, source = "Dungeon", sourceDetail = "SM Cathedral (High Inquisitor Whitemane)" },
    [7721] = { name = "Hand of Righteousness", quality = 3, source = "Dungeon", sourceDetail = "SM Cathedral (High Inquisitor Whitemane)" },
    [7722] = { name = "Triune Amulet", quality = 3, source = "Dungeon", sourceDetail = "SM Cathedral (High Inquisitor Whitemane)" },
    [7723] = { name = "Mograine's Might", quality = 3, source = "Dungeon", sourceDetail = "SM Cathedral (Scarlet Commander Mograine)" },
    [7724] = { name = "Gauntlets of Divinity", quality = 3, source = "Dungeon", sourceDetail = "SM Cathedral (Scarlet Commander Mograine)" },
    [7725] = { name = "Aegis of the Scarlet Commander", quality = 3, source = "Dungeon", sourceDetail = "SM Cathedral (Scarlet Commander Mograine)" },
    [7726] = { name = "Scarlet Crusade Helm", quality = 3, source = "Dungeon", sourceDetail = "SM Cathedral (Scarlet Commander Mograine)" },
    
    -- ============================================================================
    --                      DUNGEON DROPS - Razorfen Downs
    -- ============================================================================
    [10770] = { name = "Glutton's Cleaver", quality = 3, source = "Dungeon", sourceDetail = "Razorfen Downs (Glutton)" },
    [10771] = { name = "Fleshhide Shoulders", quality = 3, source = "Dungeon", sourceDetail = "Razorfen Downs (Glutton)" },
    [10772] = { name = "Glutton's Girdle", quality = 2, source = "Dungeon", sourceDetail = "Razorfen Downs (Glutton)" },
    [10776] = { name = "Silky Spider Cape", quality = 2, source = "Dungeon", sourceDetail = "Razorfen Downs (Tuten'kash)" },
    [10777] = { name = "Arachnid Gloves", quality = 2, source = "Dungeon", sourceDetail = "Razorfen Downs (Tuten'kash)" },
    [10778] = { name = "Carapace of Tuten'kash", quality = 3, source = "Dungeon", sourceDetail = "Razorfen Downs (Tuten'kash)" },
    [10779] = { name = "Amnennar's Big Wall", quality = 3, source = "Dungeon", sourceDetail = "Razorfen Downs (Amnennar the Coldbringer)" },
    [10780] = { name = "Icemetal Barbute", quality = 3, source = "Dungeon", sourceDetail = "Razorfen Downs (Amnennar the Coldbringer)" },
    [10781] = { name = "Robes of the Lich", quality = 3, source = "Dungeon", sourceDetail = "Razorfen Downs (Amnennar the Coldbringer)" },
    [10782] = { name = "Coldrage Dagger", quality = 3, source = "Dungeon", sourceDetail = "Razorfen Downs (Amnennar the Coldbringer)" },
    [10783] = { name = "Icy Tomb", quality = 2, source = "Dungeon", sourceDetail = "Razorfen Downs (Amnennar the Coldbringer)" },
    
    -- ============================================================================
    --                      DUNGEON DROPS - Uldaman
    -- ============================================================================
    [9386] = { name = "Excavator's Brand", quality = 3, source = "Dungeon", sourceDetail = "Uldaman (Revelosh)" },
    [9389] = { name = "Revelosh's Spaulders", quality = 3, source = "Dungeon", sourceDetail = "Uldaman (Revelosh)" },
    [9387] = { name = "Revelosh's Gloves", quality = 2, source = "Dungeon", sourceDetail = "Uldaman (Revelosh)" },
    [9388] = { name = "Revelosh's Armguards", quality = 2, source = "Dungeon", sourceDetail = "Uldaman (Revelosh)" },
    [9392] = { name = "Sash of the Windreaver", quality = 3, source = "Dungeon", sourceDetail = "Uldaman (Baelog)" },
    [9391] = { name = "The Shaft of Tsol", quality = 3, source = "Dungeon", sourceDetail = "Uldaman (Baelog)" },
    [9393] = { name = "Grimlok's Tribal Vestments", quality = 3, source = "Dungeon", sourceDetail = "Uldaman (Grimlok)" },
    [9395] = { name = "Grimlok's Charge", quality = 3, source = "Dungeon", sourceDetail = "Uldaman (Grimlok)" },
    [9394] = { name = "Oilskin Leggings", quality = 3, source = "Dungeon", sourceDetail = "Uldaman (Ironaya)" },
    [9407] = { name = "Stoneshatter Girdle", quality = 3, source = "Dungeon", sourceDetail = "Uldaman (Ironaya)" },
    [9408] = { name = "Ironaya's Bracers", quality = 2, source = "Dungeon", sourceDetail = "Uldaman (Ironaya)" },
    [9409] = { name = "Girdle of Khaz'mul", quality = 3, source = "Dungeon", sourceDetail = "Uldaman (Ancient Stone Keeper)" },
    [9410] = { name = "Stoneslayer", quality = 3, source = "Dungeon", sourceDetail = "Uldaman (Ancient Stone Keeper)" },
    [9411] = { name = "Rockshard Pellets", quality = 2, source = "Dungeon", sourceDetail = "Uldaman (Archaedas)" },
    [9412] = { name = "Archaedic Stone", quality = 3, source = "Dungeon", sourceDetail = "Uldaman (Archaedas)" },
    [9413] = { name = "The Rockpounder", quality = 3, source = "Dungeon", sourceDetail = "Uldaman (Archaedas)" },
    [9418] = { name = "Stoneshell Guard", quality = 2, source = "Dungeon", sourceDetail = "Uldaman (Archaedas)" },
    [9419] = { name = "Galgann's Fireblaster", quality = 3, source = "Dungeon", sourceDetail = "Uldaman (Galgann Firehammer)" },
    [9420] = { name = "Galgann's Firehammer", quality = 3, source = "Dungeon", sourceDetail = "Uldaman (Galgann Firehammer)" },
    
    -- ============================================================================
    --                      DUNGEON DROPS - Zul'Farrak
    -- ============================================================================
    [9474] = { name = "Crowbar Robes", quality = 2, source = "Dungeon", sourceDetail = "Zul'Farrak (Theka the Martyr)" },
    [9475] = { name = "Theka's Trapper", quality = 2, source = "Dungeon", sourceDetail = "Zul'Farrak (Theka the Martyr)" },
    [9477] = { name = "Big Bad Pauldrons", quality = 3, source = "Dungeon", sourceDetail = "Zul'Farrak (Chief Ukorz Sandscalp)" },
    [9478] = { name = "Ripsaw", quality = 2, source = "Dungeon", sourceDetail = "Zul'Farrak (Chief Ukorz Sandscalp)" },
    [9479] = { name = "Embrace of the Lycan", quality = 3, source = "Dungeon", sourceDetail = "Zul'Farrak (Shadowpriest Sezz'ziz)" },
    [9483] = { name = "Flaming Incinerator", quality = 3, source = "Dungeon", sourceDetail = "Zul'Farrak (Witch Doctor Zum'rah)" },
    [9484] = { name = "Zum'rah's Vexing Cane", quality = 3, source = "Dungeon", sourceDetail = "Zul'Farrak (Witch Doctor Zum'rah)" },
    [9487] = { name = "Jinxed Hoodoo Skin", quality = 2, source = "Dungeon", sourceDetail = "Zul'Farrak (Witch Doctor Zum'rah)" },
    [9490] = { name = "Bad Mojo Mask", quality = 3, source = "Dungeon", sourceDetail = "Zul'Farrak (Shadowpriest Sezz'ziz)" },
    [9491] = { name = "Jang'thraze the Protector", quality = 3, source = "Dungeon", sourceDetail = "Zul'Farrak (Chief Ukorz Sandscalp)" },
    [9492] = { name = "Sang'thraze the Deflector", quality = 3, source = "Dungeon", sourceDetail = "Zul'Farrak (Antu'sul)" },
    [9379] = { name = "Lifeblood Amulet", quality = 3, source = "Dungeon", sourceDetail = "Zul'Farrak (Antu'sul)" },
    [9243] = { name = "Vibrant Plume", quality = 2, source = "Dungeon", sourceDetail = "Zul'Farrak (Hydromancer Velratha)" },
    [11086] = { name = "Jang'thraze", quality = 4, source = "Crafted", sourceDetail = "Combines with Sang'thraze (Sul'thraze the Lasher)" },
    
    -- ============================================================================
    --                      DUNGEON DROPS - Maraudon
    -- ============================================================================
    [17738] = { name = "Maraudon Ring", quality = 2, source = "Dungeon", sourceDetail = "Maraudon (Noxxion)" },
    [17739] = { name = "Noxious Shooter", quality = 3, source = "Dungeon", sourceDetail = "Maraudon (Noxxion)" },
    [17740] = { name = "Heart of Noxxion", quality = 3, source = "Dungeon", sourceDetail = "Maraudon (Noxxion)" },
    [17715] = { name = "Elemental Rockridge Leggings", quality = 3, source = "Dungeon", sourceDetail = "Maraudon (Lord Vyletongue)" },
    [17707] = { name = "Vyletongue Mantle", quality = 2, source = "Dungeon", sourceDetail = "Maraudon (Lord Vyletongue)" },
    [17711] = { name = "Satyr's Lash", quality = 3, source = "Dungeon", sourceDetail = "Maraudon (Lord Vyletongue)" },
    [17703] = { name = "Satyrmane Sash", quality = 2, source = "Dungeon", sourceDetail = "Maraudon (Lord Vyletongue)" },
    [17680] = { name = "Fist of Stone", quality = 3, source = "Dungeon", sourceDetail = "Maraudon (Princess Theradras)" },
    [17683] = { name = "Bracers of the Stone Princess", quality = 3, source = "Dungeon", sourceDetail = "Maraudon (Princess Theradras)" },
    [17682] = { name = "Elemental Plate Girdle", quality = 3, source = "Dungeon", sourceDetail = "Maraudon (Princess Theradras)" },
    [17710] = { name = "Gaea's Embrace", quality = 3, source = "Dungeon", sourceDetail = "Maraudon (Princess Theradras)" },
    [17714] = { name = "Blakstone Ring", quality = 3, source = "Dungeon", sourceDetail = "Maraudon (Princess Theradras)" },
    [17745] = { name = "Girdle of the Stone Princess", quality = 3, source = "Dungeon", sourceDetail = "Maraudon (Princess Theradras)" },
    [17746] = { name = "Thrash Blade", quality = 3, source = "Dungeon", sourceDetail = "Maraudon Quest (Princess Saved!)" },
    
    -- ============================================================================
    --                      DUNGEON DROPS - Sunken Temple
    -- ============================================================================
    [10833] = { name = "Horns of Eranikus", quality = 3, source = "Dungeon", sourceDetail = "Sunken Temple (Shade of Eranikus)" },
    [10835] = { name = "Essence of Eranikus", quality = 3, source = "Dungeon", sourceDetail = "Sunken Temple (Shade of Eranikus)" },
    [10837] = { name = "Tooth of Eranikus", quality = 3, source = "Dungeon", sourceDetail = "Sunken Temple (Shade of Eranikus)" },
    [10838] = { name = "Claw of Eranikus", quality = 3, source = "Dungeon", sourceDetail = "Sunken Temple (Shade of Eranikus)" },
    [12462] = { name = "Embrace of the Wind Serpent", quality = 3, source = "Dungeon", sourceDetail = "Sunken Temple (Hazzas)" },
    [12463] = { name = "Drakestone", quality = 3, source = "Dungeon", sourceDetail = "Sunken Temple (Morphaz)" },
    [12465] = { name = "Nightfall Drape", quality = 3, source = "Dungeon", sourceDetail = "Sunken Temple (Jammal'an the Prophet)" },
    [12466] = { name = "Collar of Command", quality = 3, source = "Dungeon", sourceDetail = "Sunken Temple (Avatar of Hakkar)" },
    [10828] = { name = "Dire Nail", quality = 2, source = "Dungeon", sourceDetail = "Sunken Temple (Dreamscythe)" },
    [10829] = { name = "Dragon's Call", quality = 3, source = "Dungeon", sourceDetail = "Sunken Temple (Shade of Eranikus)" },
    
    -- ============================================================================
    --                      MORE WORLD DROP GREENS - Leather Sets
    -- ============================================================================
    -- Bandit Set
    [10200] = { name = "Bandit Boots of the Monkey", quality = 2, source = "World Drop", sourceDetail = "Level 15-20" },
    [10201] = { name = "Bandit Bracers of the Monkey", quality = 2, source = "World Drop", sourceDetail = "Level 15-20" },
    [10202] = { name = "Bandit Cinch of the Monkey", quality = 2, source = "World Drop", sourceDetail = "Level 15-20" },
    [10203] = { name = "Bandit Cloak of the Monkey", quality = 2, source = "World Drop", sourceDetail = "Level 15-20" },
    [10204] = { name = "Bandit Gloves of the Monkey", quality = 2, source = "World Drop", sourceDetail = "Level 15-20" },
    [10205] = { name = "Bandit Jerkin of the Monkey", quality = 2, source = "World Drop", sourceDetail = "Level 15-20" },
    [10206] = { name = "Bandit Pants of the Monkey", quality = 2, source = "World Drop", sourceDetail = "Level 15-20" },
    [10207] = { name = "Bandit Shoulders of the Monkey", quality = 2, source = "World Drop", sourceDetail = "Level 15-20" },
    
    -- Rageclaw Set
    [10210] = { name = "Rageclaw Boots of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [10211] = { name = "Rageclaw Bracers of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [10212] = { name = "Rageclaw Belt of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [10213] = { name = "Rageclaw Cloak of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [10214] = { name = "Rageclaw Gloves of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [10215] = { name = "Rageclaw Chestguard of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [10216] = { name = "Rageclaw Leggings of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [10217] = { name = "Rageclaw Shoulders of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [10218] = { name = "Rageclaw Helm of the Tiger", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    
    -- Pridelord Set
    [10220] = { name = "Pridelord Armor of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [10221] = { name = "Pridelord Bands of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [10222] = { name = "Pridelord Boots of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [10223] = { name = "Pridelord Cape of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [10224] = { name = "Pridelord Girdle of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [10225] = { name = "Pridelord Gloves of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [10226] = { name = "Pridelord Halo of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [10227] = { name = "Pridelord Pants of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [10228] = { name = "Pridelord Pauldrons of the Bear", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    
    -- Wicked Leather
    [10230] = { name = "Wicked Leather Armor of Stamina", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    [10231] = { name = "Wicked Leather Bracers of Stamina", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    [10232] = { name = "Wicked Leather Belt of Stamina", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    [10233] = { name = "Wicked Leather Gauntlets of Stamina", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    [10234] = { name = "Wicked Leather Headband of Stamina", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    [10235] = { name = "Wicked Leather Pants of Stamina", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    
    -- ============================================================================
    --                      MORE WORLD DROP GREENS - Mail Sets
    -- ============================================================================
    -- Sparkleshell Set
    [10240] = { name = "Sparkleshell Belt of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [10241] = { name = "Sparkleshell Boots of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [10242] = { name = "Sparkleshell Bracers of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [10243] = { name = "Sparkleshell Breastplate of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [10244] = { name = "Sparkleshell Gauntlets of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [10245] = { name = "Sparkleshell Headwrap of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [10246] = { name = "Sparkleshell Legguards of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [10247] = { name = "Sparkleshell Mantle of the Eagle", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    
    -- Brutish Set
    [10250] = { name = "Brutish Belt of the Boar", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    [10251] = { name = "Brutish Boots of the Boar", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    [10252] = { name = "Brutish Bracers of the Boar", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    [10253] = { name = "Brutish Breastplate of the Boar", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    [10254] = { name = "Brutish Gauntlets of the Boar", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    [10255] = { name = "Brutish Helmet of the Boar", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    [10256] = { name = "Brutish Legguards of the Boar", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    [10257] = { name = "Brutish Shoulders of the Boar", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    
    -- Champion's Set
    [10260] = { name = "Champion's Armor of Strength", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    [10261] = { name = "Champion's Bracers of Strength", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    [10262] = { name = "Champion's Girdle of Strength", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    [10263] = { name = "Champion's Gauntlets of Strength", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    [10264] = { name = "Champion's Helmet of Strength", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    [10265] = { name = "Champion's Leggings of Strength", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    [10266] = { name = "Champion's Greaves of Strength", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    [10267] = { name = "Champion's Pauldrons of Strength", quality = 2, source = "World Drop", sourceDetail = "Level 49-54" },
    
    -- ============================================================================
    --                      JEWELRY & TRINKETS
    -- ============================================================================
    [11810] = { name = "Force of Will", quality = 4, source = "Dungeon", sourceDetail = "Stratholme (Malor the Zealous)" },
    [11815] = { name = "Hand of Justice", quality = 4, source = "Dungeon", sourceDetail = "BRD (General Angerforge)" },
    [11816] = { name = "Mark of the Dragon Lord", quality = 3, source = "Dungeon", sourceDetail = "UBRS (Overlord Wyrmthalak)" },
    [11832] = { name = "Burst of Knowledge", quality = 4, source = "Dungeon", sourceDetail = "BRD (Ambassador Flamelash)" },
    [11819] = { name = "Second Wind", quality = 4, source = "Dungeon", sourceDetail = "BRD (Golem Lord Argelmach)" },
    [11820] = { name = "Ring of Binding", quality = 3, source = "Dungeon", sourceDetail = "BRD (Lord Incendius)" },
    [12543] = { name = "Blackstone Ring", quality = 3, source = "Dungeon", sourceDetail = "Maraudon (Princess Theradras)" },
    [12548] = { name = "Magni's Will", quality = 3, source = "Dungeon", sourceDetail = "BRD (Princess Moira Bronzebeard)" },
    [12925] = { name = "Briarwood Reed", quality = 3, source = "Dungeon", sourceDetail = "UBRS (Jed Runewatcher)" },
    [12926] = { name = "Flaming Band", quality = 3, source = "Dungeon", sourceDetail = "BRD (Ambassador Flamelash)" },
    [12930] = { name = "Brightly Glowing Stone", quality = 3, source = "Dungeon", sourceDetail = "LBRS" },
    [12945] = { name = "Bloodmoon Cloak", quality = 3, source = "Dungeon", sourceDetail = "Scholomance" },
    [13098] = { name = "Painweaver Band", quality = 4, source = "Dungeon", sourceDetail = "UBRS (General Drakkisath)" },
    [13141] = { name = "Tooth of Gnarr", quality = 3, source = "Dungeon", sourceDetail = "LBRS (Gnarr)" },
    [13142] = { name = "Mark of the Dragon", quality = 3, source = "Dungeon", sourceDetail = "UBRS (Overlord Wyrmthalak)" },
    [13178] = { name = "Rosewine Circle", quality = 3, source = "Dungeon", sourceDetail = "Stratholme (Baroness Anastari)" },
    [13243] = { name = "Argent Dawn Valor Token", quality = 2, source = "Reputation", sourceDetail = "Argent Dawn" },
    [13244] = { name = "Argent Crusader", quality = 3, source = "Reputation", sourceDetail = "Argent Dawn (Exalted)" },
    [17063] = { name = "Band of Accuria", quality = 4, source = "Raid", sourceDetail = "Molten Core (Ragnaros)" },
    [17782] = { name = "Talisman of Ephemeral Power", quality = 4, source = "Raid", sourceDetail = "Molten Core (Various)" },
    [18472] = { name = "Royal Seal of Eldre'Thalas", quality = 4, source = "Dungeon", sourceDetail = "Dire Maul" },
    [19140] = { name = "Cauterizing Band", quality = 4, source = "Raid", sourceDetail = "BWL (Nefarian)" },
    [19147] = { name = "Ring of Spell Power", quality = 4, source = "Raid", sourceDetail = "BWL (Nefarian)" },
    [19382] = { name = "Master Dragonslayer's Ring", quality = 4, source = "Quest", sourceDetail = "Onyxia's Lair Attunement" },
    
    -- ============================================================================
    --                      MORE RANGED WEAPONS
    -- ============================================================================
    [2099] = { name = "Dwarven Hand Cannon", quality = 3, source = "World Drop", sourceDetail = "Rare" },
    [8185] = { name = "Turtle Scale Helm", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [12651] = { name = "Blackcrow", quality = 3, source = "Dungeon", sourceDetail = "LBRS (Shadow Hunter Vosh'gajin)" },
    [12653] = { name = "Riphook", quality = 3, source = "Dungeon", sourceDetail = "LBRS (Halycon)" },
    [13037] = { name = "Tooth of Gnarr", quality = 3, source = "Dungeon", sourceDetail = "LBRS (Gnarr)" },
    [13038] = { name = "Swiftwind", quality = 3, source = "Dungeon", sourceDetail = "LBRS (Urok Doomhowl)" },
    [17072] = { name = "Blastershot Launcher", quality = 4, source = "Raid", sourceDetail = "Molten Core (Golemagg)" },
    [17069] = { name = "Striker's Mark", quality = 4, source = "Raid", sourceDetail = "Molten Core (Magmadar)" },
    [18480] = { name = "Kreeg's Mug", quality = 1, source = "Dungeon", sourceDetail = "Dire Maul North (Kreeg)" },
    [18737] = { name = "Blackhand's Breadth", quality = 4, source = "Quest", sourceDetail = "UBRS Attunement" },
    [19351] = { name = "Gurubashi Dwarf Destroyer", quality = 4, source = "Raid", sourceDetail = "Zul'Gurub (Jin'do)" },
    [19991] = { name = "Devilsaur Eye", quality = 4, source = "Raid", sourceDetail = "AQ20 (Ossirian)" },
    [21452] = { name = "Staff of the Ruins", quality = 4, source = "Raid", sourceDetail = "AQ20 (Ossirian)" },
    [21479] = { name = "Gauntlets of the Immovable", quality = 4, source = "Raid", sourceDetail = "AQ40 (Various)" },
    [22318] = { name = "Larvae of the Great Worm", quality = 4, source = "Raid", sourceDetail = "AQ40 (C'Thun)" },
    
    -- ============================================================================
    --                      MORE CRAFTED ITEMS
    -- ============================================================================
    -- Blacksmithing - Weapons
    [12773] = { name = "Persuader", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing" },
    [12777] = { name = "Blazing Rapier", quality = 3, source = "Crafted", sourceDetail = "Blacksmithing" },
    [12774] = { name = "Hammer of the Titans", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing" },
    [12775] = { name = "Enchanted Battlehammer", quality = 3, source = "Crafted", sourceDetail = "Blacksmithing" },
    [12776] = { name = "Volcanic Hammer", quality = 3, source = "Crafted", sourceDetail = "Blacksmithing" },
    [12781] = { name = "Heartseeker", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Weaponsmith)" },
    [12782] = { name = "Bonerender", quality = 3, source = "Crafted", sourceDetail = "Blacksmithing" },
    [12783] = { name = "Frostguard", quality = 3, source = "Crafted", sourceDetail = "Blacksmithing" },
    [12784] = { name = "Arcanite Reaper", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing" },
    [12790] = { name = "Arcanite Champion", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing" },
    [12792] = { name = "Masterwork Stormhammer", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing" },
    [12796] = { name = "Corruption", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Weaponsmith)" },
    [12797] = { name = "Frostbite", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing" },
    [19166] = { name = "Black Amnesty", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Weaponsmith)" },
    [19167] = { name = "Blackfury", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Swordsmith)" },
    [19168] = { name = "Blackguard", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Swordsmith)" },
    [19169] = { name = "Nightfall", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Axesmith)" },
    [19170] = { name = "Ebon Hand", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Hammersmith)" },
    
    -- Blacksmithing - Armor
    [12618] = { name = "Enchanted Thorium Breastplate", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Armorsmith)" },
    [12620] = { name = "Enchanted Thorium Helm", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Armorsmith)" },
    [12619] = { name = "Enchanted Thorium Leggings", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Armorsmith)" },
    [12611] = { name = "Whitesoul Helm", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Armorsmith)" },
    [12612] = { name = "Helm of the Great Chief", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing" },
    [12613] = { name = "Stronghold Gauntlets", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing" },
    [12614] = { name = "Lionheart Helm", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Armorsmith)" },
    [12636] = { name = "Demon Forged Breastplate", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing" },
    [12640] = { name = "Titanic Leggings", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing" },
    [12641] = { name = "Invulnerable Mail", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing" },
    [19051] = { name = "Girdle of the Dawn", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Argent Dawn)" },
    [19057] = { name = "Gloves of the Dawn", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Argent Dawn)" },
    
    -- Engineering Items
    [10645] = { name = "Gnomish Death Ray", quality = 3, source = "Crafted", sourceDetail = "Engineering (Gnomish)" },
    [10713] = { name = "Plans: Deadly Poison", quality = 2, source = "Crafted", sourceDetail = "Engineering" },
    [10716] = { name = "Gnomish Net-o-Matic Projector", quality = 2, source = "Crafted", sourceDetail = "Engineering (Gnomish)" },
    [10720] = { name = "Gnomish Harm Prevention Belt", quality = 3, source = "Crafted", sourceDetail = "Engineering (Gnomish)" },
    [10724] = { name = "Gnomish Rocket Boots", quality = 2, source = "Crafted", sourceDetail = "Engineering (Gnomish)" },
    [10725] = { name = "Gnomish Battle Chicken", quality = 2, source = "Crafted", sourceDetail = "Engineering (Gnomish)" },
    [10726] = { name = "Gnomish Mind Control Cap", quality = 3, source = "Crafted", sourceDetail = "Engineering (Gnomish)" },
    [10727] = { name = "Goblin Mortar", quality = 2, source = "Crafted", sourceDetail = "Engineering (Goblin)" },
    [10728] = { name = "Goblin Bomb Dispenser", quality = 2, source = "Crafted", sourceDetail = "Engineering (Goblin)" },
    [10740] = { name = "Gnomish Shrink Ray", quality = 2, source = "Crafted", sourceDetail = "Engineering (Gnomish)" },
    [10744] = { name = "Goblin Rocket Helmet", quality = 3, source = "Crafted", sourceDetail = "Engineering (Goblin)" },
    [10747] = { name = "Goblin Rocket Boots", quality = 2, source = "Crafted", sourceDetail = "Engineering (Goblin)" },
    [16006] = { name = "Delicate Arcanite Converter", quality = 2, source = "Crafted", sourceDetail = "Engineering" },
    [16007] = { name = "Arcanite Dragonling", quality = 3, source = "Crafted", sourceDetail = "Engineering" },
    [16008] = { name = "Thorium Shells", quality = 1, source = "Crafted", sourceDetail = "Engineering" },
    [16009] = { name = "Thorium Tube", quality = 1, source = "Crafted", sourceDetail = "Engineering" },
    [16023] = { name = "Ultra-Flash Shadow Reflector", quality = 3, source = "Crafted", sourceDetail = "Engineering" },
    [18984] = { name = "Dimensional Ripper - Everlook", quality = 2, source = "Crafted", sourceDetail = "Engineering (Goblin)" },
    [18986] = { name = "Ultrasafe Transporter: Gadgetzan", quality = 2, source = "Crafted", sourceDetail = "Engineering (Gnomish)" },
    [19999] = { name = "Bloodvine Goggles", quality = 4, source = "Crafted", sourceDetail = "Engineering (Zul'Gurub)" },
    [21277] = { name = "Gyrofreeze Ice Reflector", quality = 3, source = "Crafted", sourceDetail = "Engineering (Thorium Brotherhood)" },
    
    -- ============================================================================
    --                      COOKING RECIPES & OUTPUT
    -- ============================================================================
    [12218] = { name = "Monster Omelet", quality = 1, source = "Crafted", sourceDetail = "Cooking" },
    [12224] = { name = "Crispy Bat Wing", quality = 1, source = "Crafted", sourceDetail = "Cooking" },
    [12213] = { name = "Carrion Surprise", quality = 1, source = "Crafted", sourceDetail = "Cooking" },
    [12210] = { name = "Roast Raptor", quality = 1, source = "Crafted", sourceDetail = "Cooking" },
    [12215] = { name = "Heavy Kodo Stew", quality = 1, source = "Crafted", sourceDetail = "Cooking" },
    [12214] = { name = "Dragonbreath Chili", quality = 1, source = "Crafted", sourceDetail = "Cooking" },
    [13927] = { name = "Baked Salmon", quality = 1, source = "Crafted", sourceDetail = "Cooking" },
    [13928] = { name = "Grilled Squid", quality = 1, source = "Crafted", sourceDetail = "Cooking" },
    [13929] = { name = "Hot Smoked Bass", quality = 1, source = "Crafted", sourceDetail = "Cooking" },
    [13930] = { name = "Filet of Redgill", quality = 1, source = "Crafted", sourceDetail = "Cooking" },
    [13931] = { name = "Nightfin Soup", quality = 1, source = "Crafted", sourceDetail = "Cooking" },
    [13932] = { name = "Poached Sunscale Salmon", quality = 1, source = "Crafted", sourceDetail = "Cooking" },
    [13933] = { name = "Lobster Stew", quality = 1, source = "Crafted", sourceDetail = "Cooking" },
    [13934] = { name = "Mightfish Steak", quality = 1, source = "Crafted", sourceDetail = "Cooking" },
    [20452] = { name = "Smoked Desert Dumplings", quality = 1, source = "Crafted", sourceDetail = "Cooking (AQ)" },
    [21023] = { name = "Dirge's Kickin' Chimaerok Chops", quality = 1, source = "Crafted", sourceDetail = "Cooking (Epic Quest)" },
    [21217] = { name = "Runn Tum Tuber Surprise", quality = 1, source = "Crafted", sourceDetail = "Cooking (Dire Maul)" },
    
    -- ============================================================================
    --                      FISHING ITEMS
    -- ============================================================================
    [6256] = { name = "Fishing Pole", quality = 1, source = "Vendor", sourceDetail = "Trade Goods Vendors" },
    [6365] = { name = "Strong Fishing Pole", quality = 2, source = "Vendor", sourceDetail = "Fishing Vendors" },
    [6366] = { name = "Darkwood Fishing Pole", quality = 2, source = "World Drop", sourceDetail = "Fishing (Rare)" },
    [6367] = { name = "Big Iron Fishing Pole", quality = 2, source = "Dungeon", sourceDetail = "Shellfish Trap (STV)" },
    [12225] = { name = "Blump Family Fishing Pole", quality = 2, source = "Quest", sourceDetail = "Nat Pagle Fishing (Horde)" },
    [19022] = { name = "Nat Pagle's Extreme Angler FC-5000", quality = 3, source = "Quest", sourceDetail = "Nat Pagle (Dustwallow)" },
    [19970] = { name = "Arcanite Fishing Pole", quality = 4, source = "Contest", sourceDetail = "Stranglethorn Fishing Extravaganza" },
    [6529] = { name = "Shiny Bauble", quality = 1, source = "Vendor", sourceDetail = "Trade Goods Vendors" },
    [6530] = { name = "Nightcrawlers", quality = 1, source = "Vendor", sourceDetail = "Trade Goods Vendors" },
    [6532] = { name = "Bright Baubles", quality = 1, source = "Vendor", sourceDetail = "Trade Goods Vendors" },
    [6533] = { name = "Aquadynamic Fish Attractor", quality = 1, source = "Crafted", sourceDetail = "Engineering" },
    [6811] = { name = "Aquadynamic Fish Lens", quality = 2, source = "World Drop", sourceDetail = "Fishing" },
    [34109] = { name = "Weather-Beaten Journal", quality = 2, source = "Fishing", sourceDetail = "Contained in Crates" },
    
    -- ============================================================================
    --                      MORE DUNGEON DROPS - BRD
    -- ============================================================================
    [11684] = { name = "Ironfoe", quality = 4, source = "Dungeon", sourceDetail = "BRD (Emperor Dagran Thaurissan)" },
    [11685] = { name = "Force of Will", quality = 4, source = "Dungeon", sourceDetail = "BRD (General Angerforge)" },
    [11686] = { name = "Savage Hand", quality = 3, source = "Dungeon", sourceDetail = "BRD (Anub'shiah)" },
    [11662] = { name = "Ban'thok Sash", quality = 3, source = "Dungeon", sourceDetail = "BRD (Emperor Dagran Thaurissan)" },
    [11664] = { name = "Graverot Cape", quality = 3, source = "Dungeon", sourceDetail = "BRD (Grizzle)" },
    [11665] = { name = "Fist of Brutality", quality = 3, source = "Dungeon", sourceDetail = "BRD (Gorosh the Dervish)" },
    [11666] = { name = "Flamestrider Robes", quality = 3, source = "Dungeon", sourceDetail = "BRD (Lord Incendius)" },
    [11669] = { name = "Naglering", quality = 3, source = "Dungeon", sourceDetail = "BRD (Golem Lord Argelmach)" },
    [11670] = { name = "Dragonfury Blade", quality = 3, source = "Dungeon", sourceDetail = "BRD (Incendius)" },
    [11675] = { name = "Burst of Knowledge", quality = 4, source = "Dungeon", sourceDetail = "BRD (Ambassador Flamelash)" },
    [11677] = { name = "Ring of Binding", quality = 3, source = "Dungeon", sourceDetail = "BRD (Lord Incendius)" },
    [11679] = { name = "Searingscale Leggings", quality = 3, source = "Dungeon", sourceDetail = "BRD (Bael'Gar)" },
    [11702] = { name = "Grizzle's Skinner", quality = 3, source = "Dungeon", sourceDetail = "BRD (Grizzle)" },
    [11703] = { name = "Stonehand Gauntlets", quality = 3, source = "Dungeon", sourceDetail = "BRD (Fineous Darkvire)" },
    [11722] = { name = "Dreadforge Retaliator", quality = 3, source = "Dungeon", sourceDetail = "BRD (General Angerforge)" },
    [11723] = { name = "Luminary Kilt", quality = 3, source = "Dungeon", sourceDetail = "BRD (High Interrogator Gerstahn)" },
    [11726] = { name = "Savage Gladiator Chain", quality = 3, source = "Dungeon", sourceDetail = "BRD (Ring of Law)" },
    [11728] = { name = "Savage Gladiator Grips", quality = 3, source = "Dungeon", sourceDetail = "BRD (Ring of Law)" },
    [11729] = { name = "Savage Gladiator Helm", quality = 3, source = "Dungeon", sourceDetail = "BRD (Ring of Law)" },
    [11730] = { name = "Savage Gladiator Leggings", quality = 3, source = "Dungeon", sourceDetail = "BRD (Ring of Law)" },
    [11731] = { name = "Savage Gladiator Greaves", quality = 3, source = "Dungeon", sourceDetail = "BRD (Ring of Law)" },
    [11746] = { name = "Golem Skull Helm", quality = 3, source = "Dungeon", sourceDetail = "BRD (Golem Lord Argelmach)" },
    [11748] = { name = "Ribbly's Quiver", quality = 3, source = "Dungeon", sourceDetail = "BRD (Ribbly Screwspigot)" },
    [11749] = { name = "Girdle of Beastial Fury", quality = 3, source = "Dungeon", sourceDetail = "BRD (Bael'Gar)" },
    [11762] = { name = "Kindling Stave", quality = 3, source = "Dungeon", sourceDetail = "BRD (Panzor the Invincible)" },
    [11765] = { name = "Pyremail Legguards", quality = 3, source = "Dungeon", sourceDetail = "BRD (Fineous Darkvire)" },
    [11766] = { name = "Flameweave Cuffs", quality = 3, source = "Dungeon", sourceDetail = "BRD (Warder Stilgiss)" },
    [11782] = { name = "Sash of the Grand Hunt", quality = 3, source = "Dungeon", sourceDetail = "BRD (Lord Roccor)" },
    [11783] = { name = "Chillsteel Girdle", quality = 3, source = "Dungeon", sourceDetail = "BRD (Ok'thor the Breaker)" },
    [11786] = { name = "Crest of Supremacy", quality = 3, source = "Dungeon", sourceDetail = "BRD (General Angerforge)" },
    [11802] = { name = "Lavacrest Leggings", quality = 3, source = "Dungeon", sourceDetail = "BRD (Ambassador Flamelash)" },
    [11803] = { name = "Hyena Hide Belt", quality = 3, source = "Dungeon", sourceDetail = "BRD (Hedrum the Creeper)" },
    [11804] = { name = "Cinderhide Armsplints", quality = 3, source = "Dungeon", sourceDetail = "BRD (Ambassador Flamelash)" },
    [11805] = { name = "Senior Designer's Pantaloons", quality = 3, source = "Dungeon", sourceDetail = "BRD (Fineous Darkvire)" },
    [11807] = { name = "Circle of Flame", quality = 4, source = "Dungeon", sourceDetail = "BRD (Ambassador Flamelash)" },
    [11808] = { name = "Binding Swarmguard", quality = 3, source = "Dungeon", sourceDetail = "BRD (High Interrogator Gerstahn)" },
    [11809] = { name = "Flame Wrath", quality = 3, source = "Dungeon", sourceDetail = "BRD (Ambassador Flamelash)" },
    [11811] = { name = "Fordring's Seal", quality = 4, source = "Quest", sourceDetail = "BRD Quest (High Interrogator)" },
    [11812] = { name = "Searing Needle", quality = 3, source = "Dungeon", sourceDetail = "BRD (Lord Incendius)" },
    [11813] = { name = "Second Wind", quality = 4, source = "Dungeon", sourceDetail = "BRD (Golem Lord Argelmach)" },
    [11815] = { name = "Hand of Justice", quality = 4, source = "Dungeon", sourceDetail = "BRD (General Angerforge)" },
    [11817] = { name = "Blackguard", quality = 4, source = "Dungeon", sourceDetail = "BRD (Emperor Dagran Thaurissan)" },
    [11818] = { name = "Direbrew Hops", quality = 2, source = "Dungeon", sourceDetail = "BRD (Phalanx)" },
    [11820] = { name = "Smoking Heart of the Mountain", quality = 4, source = "Quest", sourceDetail = "BRD Quest (Kharan Mighthammer)" },
    [11821] = { name = "Plans: Fiery Plate Gauntlets", quality = 3, source = "Dungeon", sourceDetail = "BRD (Lord Incendius)" },
    [11823] = { name = "Blackguard", quality = 4, source = "Crafted", sourceDetail = "BRD Recipe" },
    [11832] = { name = "Burst of Knowledge", quality = 4, source = "Dungeon", sourceDetail = "BRD (Ambassador Flamelash)" },
    
    -- ============================================================================
    --                      MORE DUNGEON DROPS - LBRS
    -- ============================================================================
    [12550] = { name = "Serpentskin Spaulders", quality = 3, source = "Dungeon", sourceDetail = "LBRS (War Master Voone)" },
    [12551] = { name = "Keris of Zul'Serak", quality = 3, source = "Dungeon", sourceDetail = "LBRS (Highlord Omokk)" },
    [12552] = { name = "Fangshredder", quality = 3, source = "Dungeon", sourceDetail = "LBRS (War Master Voone)" },
    [12553] = { name = "Brazecore Armguards", quality = 3, source = "Dungeon", sourceDetail = "LBRS (Quartermaster Zigris)" },
    [12555] = { name = "Battlechaser's Greaves", quality = 3, source = "Dungeon", sourceDetail = "LBRS (Quartermaster Zigris)" },
    [12556] = { name = "Ring of the Stonescale", quality = 3, source = "Dungeon", sourceDetail = "LBRS (Urok Doomhowl)" },
    [12582] = { name = "Breastplate of Bloodthirst", quality = 3, source = "Dungeon", sourceDetail = "LBRS (Various)" },
    [12583] = { name = "Blackhand's Wrath", quality = 3, source = "Dungeon", sourceDetail = "LBRS (War Master Voone)" },
    [12584] = { name = "Skullplate Bracers", quality = 3, source = "Dungeon", sourceDetail = "LBRS (Highlord Omokk)" },
    [12585] = { name = "Tracker's Tunic", quality = 3, source = "Dungeon", sourceDetail = "LBRS (Halycon)" },
    [12586] = { name = "Vosh'gajin's Strand", quality = 3, source = "Dungeon", sourceDetail = "LBRS (Shadow Hunter Vosh'gajin)" },
    [12587] = { name = "Eye of Rend", quality = 3, source = "Dungeon", sourceDetail = "LBRS (Gyth)" },
    [12588] = { name = "Bonecrusher", quality = 3, source = "Dungeon", sourceDetail = "LBRS (Highlord Omokk)" },
    [12589] = { name = "Dustfeather Sash", quality = 3, source = "Dungeon", sourceDetail = "LBRS (Mother Smolderweb)" },
    [12590] = { name = "Felstriker", quality = 4, source = "Dungeon", sourceDetail = "LBRS (Warchief Rend Blackhand)" },
    [12591] = { name = "Blackhand's Breadth", quality = 4, source = "Quest", sourceDetail = "LBRS Attunement" },
    [12608] = { name = "Butcher's Apron", quality = 3, source = "Dungeon", sourceDetail = "LBRS (Halycon)" },
    [12609] = { name = "Polychromatic Visionwrap", quality = 3, source = "Dungeon", sourceDetail = "LBRS (Gizrul the Slavener)" },
    [12637] = { name = "Unyielding Maul", quality = 3, source = "Dungeon", sourceDetail = "LBRS (Overlord Wyrmthalak)" },
    [12640] = { name = "Lionheart Helm", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Armorsmith)" },
    [12649] = { name = "Riphook", quality = 3, source = "Dungeon", sourceDetail = "LBRS (Halycon)" },
    [12651] = { name = "Blackcrow", quality = 3, source = "Dungeon", sourceDetail = "LBRS (Shadow Hunter Vosh'gajin)" },
    [12652] = { name = "Vosh'gajin's Bow", quality = 3, source = "Dungeon", sourceDetail = "LBRS (Shadow Hunter Vosh'gajin)" },
    [12653] = { name = "Riphook", quality = 3, source = "Dungeon", sourceDetail = "LBRS (Halycon)" },
    [12654] = { name = "Doomshot", quality = 3, source = "Dungeon", sourceDetail = "LBRS (Quartermaster Zigris)" },
    [12939] = { name = "Dal'Rend's Tribal Guardian", quality = 4, source = "Dungeon", sourceDetail = "LBRS (Warchief Rend Blackhand)" },
    [12940] = { name = "Dal'Rend's Sacred Charge", quality = 4, source = "Dungeon", sourceDetail = "LBRS (Warchief Rend Blackhand)" },
    
    -- ============================================================================
    --                      MORE DUNGEON DROPS - UBRS
    -- ============================================================================
    [12927] = { name = "Truestrike Shoulders", quality = 4, source = "Dungeon", sourceDetail = "UBRS (Pyroguard Emberseer)" },
    [12928] = { name = "Rend Blackhand's Tabard", quality = 3, source = "Dungeon", sourceDetail = "UBRS (Warchief Rend Blackhand)" },
    [12929] = { name = "Trueflight Bow", quality = 4, source = "Dungeon", sourceDetail = "UBRS (General Drakkisath)" },
    [12935] = { name = "Vambraces of the Sadist", quality = 3, source = "Dungeon", sourceDetail = "UBRS (Various)" },
    [12936] = { name = "Battleborn Armbraces", quality = 3, source = "Dungeon", sourceDetail = "UBRS (Warchief Rend Blackhand)" },
    [12937] = { name = "Tooth of Gnarr", quality = 3, source = "Dungeon", sourceDetail = "UBRS (Gnarr)" },
    [12951] = { name = "Legguards of the Chromatic Defier", quality = 4, source = "Dungeon", sourceDetail = "UBRS (General Drakkisath)" },
    [12952] = { name = "Draconic Maul", quality = 4, source = "Dungeon", sourceDetail = "UBRS (General Drakkisath)" },
    [12953] = { name = "Painweaver Band", quality = 4, source = "Dungeon", sourceDetail = "UBRS (General Drakkisath)" },
    [12954] = { name = "Spiritshroud Leggings", quality = 3, source = "Dungeon", sourceDetail = "UBRS (The Beast)" },
    [12960] = { name = "Tribal War Feathers", quality = 4, source = "Dungeon", sourceDetail = "UBRS (War Master Voone)" },
    [12961] = { name = "Warchief's Blessing", quality = 4, source = "Quest", sourceDetail = "UBRS (Warchief Rend Blackhand)" },
    [12963] = { name = "Blademaster Leggings", quality = 3, source = "Dungeon", sourceDetail = "UBRS (Warchief Rend Blackhand)" },
    [12964] = { name = "Tristam Legguards", quality = 3, source = "Dungeon", sourceDetail = "UBRS (Jed Runewatcher)" },
    [12965] = { name = "Spiritshroud Leggings", quality = 3, source = "Dungeon", sourceDetail = "UBRS (Gyth)" },
    [12966] = { name = "Blackmist Armguards", quality = 3, source = "Dungeon", sourceDetail = "UBRS (The Beast)" },
    [12967] = { name = "Chromatic Carapace", quality = 4, source = "Dungeon", sourceDetail = "UBRS (General Drakkisath)" },
    [12977] = { name = "Serpentine Skuller", quality = 3, source = "Dungeon", sourceDetail = "UBRS (Various)" },
    [13098] = { name = "Painweaver Band", quality = 4, source = "Dungeon", sourceDetail = "UBRS (General Drakkisath)" },
    [13139] = { name = "Seeping Willow", quality = 4, source = "Dungeon", sourceDetail = "UBRS (General Drakkisath)" },
    [13140] = { name = "Blood Talon", quality = 3, source = "Dungeon", sourceDetail = "UBRS (Solakar Flamewreath)" },
    [13141] = { name = "Tooth of Gnarr", quality = 3, source = "Dungeon", sourceDetail = "LBRS (Gnarr)" },
    [16679] = { name = "Beaststalker's Boots", quality = 3, source = "Dungeon", sourceDetail = "UBRS (General Drakkisath)" },
    [16680] = { name = "Beaststalker's Gloves", quality = 3, source = "Dungeon", sourceDetail = "UBRS (The Beast)" },
    [16698] = { name = "Wildheart Bracers", quality = 3, source = "Dungeon", sourceDetail = "UBRS (Various)" },
    [16699] = { name = "Wildheart Vest", quality = 3, source = "Dungeon", sourceDetail = "UBRS (General Drakkisath)" },
    [16700] = { name = "Wildheart Boots", quality = 3, source = "Dungeon", sourceDetail = "UBRS (Various)" },
    [16701] = { name = "Wildheart Gloves", quality = 3, source = "Dungeon", sourceDetail = "UBRS (The Beast)" },
    [16717] = { name = "Shadowcraft Boots", quality = 3, source = "Dungeon", sourceDetail = "UBRS (Gyth)" },
    [16718] = { name = "Shadowcraft Tunic", quality = 3, source = "Dungeon", sourceDetail = "UBRS (General Drakkisath)" },
    [16719] = { name = "Shadowcraft Gloves", quality = 3, source = "Dungeon", sourceDetail = "UBRS (The Beast)" },
    [16723] = { name = "Devout Crown", quality = 3, source = "Dungeon", sourceDetail = "UBRS (General Drakkisath)" },
    [16724] = { name = "Devout Sandals", quality = 3, source = "Dungeon", sourceDetail = "UBRS (Gyth)" },
    [16725] = { name = "Devout Gloves", quality = 3, source = "Dungeon", sourceDetail = "UBRS (The Beast)" },
    [16730] = { name = "Magister's Crown", quality = 3, source = "Dungeon", sourceDetail = "UBRS (General Drakkisath)" },
    [16731] = { name = "Magister's Gloves", quality = 3, source = "Dungeon", sourceDetail = "UBRS (The Beast)" },
    [16737] = { name = "Dreadmist Mask", quality = 3, source = "Dungeon", sourceDetail = "UBRS (General Drakkisath)" },
    [16738] = { name = "Dreadmist Wraps", quality = 3, source = "Dungeon", sourceDetail = "UBRS (The Beast)" },
    [16744] = { name = "Elements Handguards", quality = 3, source = "Dungeon", sourceDetail = "UBRS (The Beast)" },
    [16745] = { name = "Elements Headpiece", quality = 3, source = "Dungeon", sourceDetail = "UBRS (General Drakkisath)" },
    [16728] = { name = "Lightforge Bracers", quality = 3, source = "Dungeon", sourceDetail = "UBRS (Various)" },
    [16729] = { name = "Lightforge Helm", quality = 3, source = "Dungeon", sourceDetail = "UBRS (General Drakkisath)" },
    [16665] = { name = "Valor Boots", quality = 3, source = "Dungeon", sourceDetail = "UBRS (Gyth)" },
    [16666] = { name = "Valor Gauntlets", quality = 3, source = "Dungeon", sourceDetail = "UBRS (The Beast)" },
    [16667] = { name = "Valor Crown", quality = 3, source = "Dungeon", sourceDetail = "UBRS (General Drakkisath)" },
    
    -- ============================================================================
    --                      MORE DUNGEON DROPS - Stratholme
    -- ============================================================================
    [13335] = { name = "Deathcharger's Reins", quality = 4, source = "Dungeon", sourceDetail = "Stratholme (Baron Rivendare)" },
    [13345] = { name = "Seal of Rivendare", quality = 4, source = "Dungeon", sourceDetail = "Stratholme (Baron Rivendare)" },
    [13346] = { name = "Runeblade of Baron Rivendare", quality = 4, source = "Dungeon", sourceDetail = "Stratholme (Baron Rivendare)" },
    [13349] = { name = "Scepter of the Unholy", quality = 3, source = "Dungeon", sourceDetail = "Stratholme (Baron Rivendare)" },
    [13359] = { name = "Husk of Nerub'enkan", quality = 3, source = "Dungeon", sourceDetail = "Stratholme (Nerub'enkan)" },
    [13360] = { name = "Gift of the Elven Magi", quality = 3, source = "Dungeon", sourceDetail = "Stratholme (Postmaster Malown)" },
    [13365] = { name = "Tome of Fiery Arcana", quality = 3, source = "Dungeon", sourceDetail = "Stratholme (Archivist Galford)" },
    [13368] = { name = "Chestguard of Vigilance", quality = 3, source = "Dungeon", sourceDetail = "Stratholme (Baron Rivendare)" },
    [13369] = { name = "Nerubian Slavemaker", quality = 3, source = "Dungeon", sourceDetail = "Stratholme (Nerub'enkan)" },
    [13370] = { name = "Fangdrip Runners", quality = 3, source = "Dungeon", sourceDetail = "Stratholme (Ramstein the Gorger)" },
    [13372] = { name = "Slavedriver's Cane", quality = 3, source = "Dungeon", sourceDetail = "Stratholme (Ramstein the Gorger)" },
    [13376] = { name = "Myrholt Harp", quality = 3, source = "Dungeon", sourceDetail = "Stratholme (Timmy the Cruel)" },
    [13378] = { name = "Songbird Blouse", quality = 3, source = "Dungeon", sourceDetail = "Stratholme (Timmy the Cruel)" },
    [13379] = { name = "Piccolo of the Flaming Fire", quality = 3, source = "Dungeon", sourceDetail = "Stratholme (Hearthsinger Forresten)" },
    [13380] = { name = "Willey's Portable Howitzer", quality = 3, source = "Dungeon", sourceDetail = "Stratholme (Cannon Master Willey)" },
    [13381] = { name = "Master Cannoneer Boots", quality = 3, source = "Dungeon", sourceDetail = "Stratholme (Cannon Master Willey)" },
    [13382] = { name = "Cannonball Runner", quality = 3, source = "Dungeon", sourceDetail = "Stratholme (Cannon Master Willey)" },
    [13400] = { name = "Ring of the Faith", quality = 3, source = "Dungeon", sourceDetail = "Stratholme (Archivist Galford)" },
    [13401] = { name = "Crimson Felt Hat", quality = 3, source = "Dungeon", sourceDetail = "Stratholme (Archivist Galford)" },
    [13402] = { name = "Tome of Knowledge", quality = 3, source = "Dungeon", sourceDetail = "Stratholme (Archivist Galford)" },
    [13403] = { name = "Crown of Tyranny", quality = 3, source = "Dungeon", sourceDetail = "Stratholme (Balnazzar)" },
    [13404] = { name = "Mask of the Unforgiven", quality = 3, source = "Dungeon", sourceDetail = "Stratholme (The Unforgiven)" },
    [13405] = { name = "Wailing Nightbane Pauldrons", quality = 3, source = "Dungeon", sourceDetail = "Stratholme (Maleki the Pallid)" },
    [13409] = { name = "Tearfall Bracers", quality = 3, source = "Dungeon", sourceDetail = "Stratholme (The Unforgiven)" },
    [13502] = { name = "Handcrafted Mastersmith Girdle", quality = 3, source = "Dungeon", sourceDetail = "Stratholme (Various)" },
    [13505] = { name = "Runeblade of Baron Rivendare", quality = 4, source = "Dungeon", sourceDetail = "Stratholme (Baron Rivendare)" },
    [18718] = { name = "Grand Crusader's Helm", quality = 3, source = "Dungeon", sourceDetail = "Stratholme (Malor the Zealous)" },
    [18719] = { name = "Shroud of Malorne", quality = 3, source = "Dungeon", sourceDetail = "Stratholme (Balnazzar)" },
    [18720] = { name = "Shroud of the Nathrezim", quality = 4, source = "Dungeon", sourceDetail = "Stratholme (Balnazzar)" },
    [18721] = { name = "Barrage Girdle", quality = 3, source = "Dungeon", sourceDetail = "Stratholme (Cannon Master Willey)" },
    [18722] = { name = "Death Grips", quality = 4, source = "Dungeon", sourceDetail = "Stratholme (Baroness Anastari)" },
    [18724] = { name = "Shadowy Laced Handwraps", quality = 3, source = "Dungeon", sourceDetail = "Stratholme (Various)" },
    [18725] = { name = "Peacemaker", quality = 3, source = "Dungeon", sourceDetail = "Stratholme (Hearthsinger Forresten)" },
    [18726] = { name = "Magistrate's Cuffs", quality = 3, source = "Dungeon", sourceDetail = "Stratholme (Various)" },
    [18727] = { name = "Crimson Shocker", quality = 4, source = "Dungeon", sourceDetail = "Stratholme (Cannon Master Willey)" },
    [18728] = { name = "Anastari Heirloom", quality = 3, source = "Dungeon", sourceDetail = "Stratholme (Baroness Anastari)" },
    [18729] = { name = "Screeching Bow", quality = 3, source = "Dungeon", sourceDetail = "Stratholme (Stonespine)" },
    [18730] = { name = "Shadowy Mail Greaves", quality = 3, source = "Dungeon", sourceDetail = "Stratholme (Baron Rivendare)" },
    
    -- ============================================================================
    --                      MORE DUNGEON DROPS - Scholomance
    -- ============================================================================
    [13524] = { name = "Ravenholdt Slicer", quality = 3, source = "Dungeon", sourceDetail = "Scholomance (Darkmaster Gandling)" },
    [13526] = { name = "Headmaster's Charge", quality = 4, source = "Dungeon", sourceDetail = "Scholomance (Darkmaster Gandling)" },
    [13528] = { name = "Mirah's Song", quality = 3, source = "Quest", sourceDetail = "Scholomance (Barov Family Fortune)" },
    [13531] = { name = "Spellbound Tome", quality = 3, source = "Dungeon", sourceDetail = "Scholomance (Darkmaster Gandling)" },
    [13534] = { name = "Blade of the New Moon", quality = 3, source = "Dungeon", sourceDetail = "Scholomance (Doctor Theolen Krastinov)" },
    [13535] = { name = "Coldtouch Phantom Wraps", quality = 3, source = "Dungeon", sourceDetail = "Scholomance (Ras Frostwhisper)" },
    [13538] = { name = "Bonecreeper Stylus", quality = 3, source = "Dungeon", sourceDetail = "Scholomance (Darkmaster Gandling)" },
    [13539] = { name = "Ectoplasmic Resonator", quality = 3, source = "Dungeon", sourceDetail = "Scholomance (Marduk Blackpool)" },
    [13545] = { name = "Headmaster's Charge", quality = 4, source = "Dungeon", sourceDetail = "Scholomance (Darkmaster Gandling)" },
    [13920] = { name = "Robe of the Lich", quality = 3, source = "Dungeon", sourceDetail = "Scholomance (Ras Frostwhisper)" },
    [14549] = { name = "Shadowy Tunic", quality = 3, source = "Dungeon", sourceDetail = "Scholomance (Various)" },
    [14550] = { name = "Cadaverous Armor", quality = 3, source = "Dungeon", sourceDetail = "Scholomance (Various)" },
    [14551] = { name = "Cadaverous Belt", quality = 3, source = "Dungeon", sourceDetail = "Scholomance (Various)" },
    [14552] = { name = "Cadaverous Gloves", quality = 3, source = "Dungeon", sourceDetail = "Scholomance (Various)" },
    [14553] = { name = "Cadaverous Leggings", quality = 3, source = "Dungeon", sourceDetail = "Scholomance (Various)" },
    [14554] = { name = "Cadaverous Walkers", quality = 3, source = "Dungeon", sourceDetail = "Scholomance (Various)" },
    [14567] = { name = "Stoneweave Gloves", quality = 3, source = "Dungeon", sourceDetail = "Scholomance (Various)" },
    [14568] = { name = "Bloodmail Legguards", quality = 3, source = "Dungeon", sourceDetail = "Scholomance (Various)" },
    [14579] = { name = "Bloodmail Boots", quality = 3, source = "Dungeon", sourceDetail = "Scholomance (Various)" },
    [14580] = { name = "Bloodmail Belt", quality = 3, source = "Dungeon", sourceDetail = "Scholomance (Various)" },
    [14611] = { name = "Necropile Cuffs", quality = 3, source = "Dungeon", sourceDetail = "Scholomance (Various)" },
    [14612] = { name = "Necropile Mantle", quality = 3, source = "Dungeon", sourceDetail = "Scholomance (Various)" },
    [14613] = { name = "Necropile Robe", quality = 3, source = "Dungeon", sourceDetail = "Scholomance (Various)" },
    [14614] = { name = "Necropile Boots", quality = 3, source = "Dungeon", sourceDetail = "Scholomance (Various)" },
    [14615] = { name = "Necropile Leggings", quality = 3, source = "Dungeon", sourceDetail = "Scholomance (Various)" },
    [18681] = { name = "Burial Shawl", quality = 3, source = "Dungeon", sourceDetail = "Scholomance (Kirtonos the Herald)" },
    [18682] = { name = "Ghoul Skin Leggings", quality = 3, source = "Dungeon", sourceDetail = "Scholomance (Doctor Theolen Krastinov)" },
    [18683] = { name = "Robe of the Void", quality = 4, source = "Crafted", sourceDetail = "Tailoring (Scholomance Pattern)" },
    [18684] = { name = "Dimly Opalescent Ring", quality = 3, source = "Dungeon", sourceDetail = "Scholomance (Marduk Blackpool)" },
    [18685] = { name = "Alanna's Embrace", quality = 4, source = "Dungeon", sourceDetail = "Scholomance (Kirtonos the Herald)" },
    [18686] = { name = "Bone Golem Shoulders", quality = 3, source = "Dungeon", sourceDetail = "Scholomance (Rattlegore)" },
    [18687] = { name = "Ravenholdt Slicer", quality = 3, source = "Dungeon", sourceDetail = "Scholomance (Lorekeeper Polkelt)" },
    [18688] = { name = "Gloves of the Windwalker", quality = 3, source = "Dungeon", sourceDetail = "Scholomance (Lord Alexei Barov)" },
    [18689] = { name = "Phantasmal Cloak", quality = 3, source = "Dungeon", sourceDetail = "Scholomance (Vectus)" },
    [18690] = { name = "Wraithplate Leggings", quality = 3, source = "Dungeon", sourceDetail = "Scholomance (Rattlegore)" },
    [18691] = { name = "Darkmist Girdle", quality = 3, source = "Dungeon", sourceDetail = "Scholomance (Ras Frostwhisper)" },
    [18692] = { name = "Death Knight Sabatons", quality = 3, source = "Dungeon", sourceDetail = "Scholomance (Darkmaster Gandling)" },
    [18693] = { name = "Shivery Handwraps", quality = 3, source = "Dungeon", sourceDetail = "Scholomance (Ras Frostwhisper)" },
    [18694] = { name = "Horns of the Leftovers", quality = 3, source = "Dungeon", sourceDetail = "Scholomance (Various)" },
    
    -- ============================================================================
    --                      MORE DUNGEON DROPS - Dire Maul
    -- ============================================================================
    [18310] = { name = "Fiendish Machete", quality = 3, source = "Dungeon", sourceDetail = "Dire Maul (Various)" },
    [18311] = { name = "Quel'dorai Channeling Rod", quality = 3, source = "Dungeon", sourceDetail = "Dire Maul (Magister Kalendris)" },
    [18312] = { name = "Energized Chestplate", quality = 3, source = "Dungeon", sourceDetail = "Dire Maul East (Lethtendris)" },
    [18313] = { name = "Energetic Rod", quality = 3, source = "Dungeon", sourceDetail = "Dire Maul East (Lethtendris)" },
    [18321] = { name = "Quicksand Waders", quality = 3, source = "Dungeon", sourceDetail = "Dire Maul East (Hydrospawn)" },
    [18322] = { name = "Satyr's Bow", quality = 3, source = "Dungeon", sourceDetail = "Dire Maul East (Zevrim Thornhoof)" },
    [18324] = { name = "Wastewalker's Gauntlets", quality = 3, source = "Dungeon", sourceDetail = "Dire Maul East (Hydrospawn)" },
    [18325] = { name = "Felhide Cap", quality = 3, source = "Dungeon", sourceDetail = "Dire Maul East (Alzzin the Wildshaper)" },
    [18326] = { name = "Razor Gauntlets", quality = 3, source = "Dungeon", sourceDetail = "Dire Maul East (Alzzin the Wildshaper)" },
    [18327] = { name = "Whipvine Cord", quality = 3, source = "Dungeon", sourceDetail = "Dire Maul East (Alzzin the Wildshaper)" },
    [18328] = { name = "Slam Guard", quality = 3, source = "Dungeon", sourceDetail = "Dire Maul East (Zevrim Thornhoof)" },
    [18329] = { name = "Typhoon", quality = 4, source = "Dungeon", sourceDetail = "Dire Maul East (Hydrospawn)" },
    [18373] = { name = "Chestplate of Tranquility", quality = 3, source = "Dungeon", sourceDetail = "Dire Maul West (Immol'thar)" },
    [18374] = { name = "Flamescarred Shoulders", quality = 3, source = "Dungeon", sourceDetail = "Dire Maul West (Immol'thar)" },
    [18375] = { name = "Bracers of the Eclipse", quality = 3, source = "Dungeon", sourceDetail = "Dire Maul West (Immol'thar)" },
    [18376] = { name = "Mindseize Hood", quality = 3, source = "Dungeon", sourceDetail = "Dire Maul West (Magister Kalendris)" },
    [18377] = { name = "Quickstrike Ring", quality = 4, source = "Dungeon", sourceDetail = "Dire Maul West (Prince Tortheldrin)" },
    [18378] = { name = "Silvermoon Leggings", quality = 3, source = "Dungeon", sourceDetail = "Dire Maul West (Prince Tortheldrin)" },
    [18379] = { name = "Odorous Boots", quality = 3, source = "Dungeon", sourceDetail = "Dire Maul West (Tendris Warpwood)" },
    [18380] = { name = "Eldritch Reinforced Legplates", quality = 4, source = "Dungeon", sourceDetail = "Dire Maul West (Immol'thar)" },
    [18381] = { name = "Leggings of Destruction", quality = 4, source = "Dungeon", sourceDetail = "Dire Maul West (Prince Tortheldrin)" },
    [18382] = { name = "Stormrage Hood", quality = 4, source = "Raid", sourceDetail = "MC (Garr)" },
    [18383] = { name = "Timeworn Mace", quality = 3, source = "Dungeon", sourceDetail = "Dire Maul West (Illyanna Ravenoak)" },
    [18384] = { name = "Bile-etched Spaulders", quality = 3, source = "Dungeon", sourceDetail = "Dire Maul North (Guard Mol'dar)" },
    [18388] = { name = "Stoneshatter", quality = 4, source = "Dungeon", sourceDetail = "Dire Maul North (King Gordok)" },
    [18389] = { name = "Cloak of the Cosmos", quality = 3, source = "Dungeon", sourceDetail = "Dire Maul North (Captain Kromcrush)" },
    [18390] = { name = "Tanglemoss Leggings", quality = 3, source = "Dungeon", sourceDetail = "Dire Maul North (Stomper Kreeg)" },
    [18391] = { name = "Eyestalk Cord", quality = 3, source = "Dungeon", sourceDetail = "Dire Maul North (Cho'Rush the Observer)" },
    [18393] = { name = "Warpwood Binding", quality = 3, source = "Dungeon", sourceDetail = "Dire Maul North (Guard Slip'kik)" },
    [18394] = { name = "Demon Howl Wristguards", quality = 3, source = "Dungeon", sourceDetail = "Dire Maul North (Guard Fengus)" },
    [18395] = { name = "Emerald Flame Ring", quality = 3, source = "Dungeon", sourceDetail = "Dire Maul North (Alzzin's Minion)" },
    [18398] = { name = "Tarnished Elven Ring", quality = 4, source = "Dungeon", sourceDetail = "Dire Maul North (King Gordok)" },
    [18401] = { name = "Helm of the Mountain", quality = 3, source = "Dungeon", sourceDetail = "Dire Maul North (King Gordok)" },
    [18402] = { name = "Barrier Shield", quality = 3, source = "Dungeon", sourceDetail = "Dire Maul North (King Gordok)" },
    [18405] = { name = "Belt of the Ordained", quality = 3, source = "Dungeon", sourceDetail = "Dire Maul North (Tribute Run)" },
    [18463] = { name = "Ogre Forged Hauberk", quality = 3, source = "Dungeon", sourceDetail = "Dire Maul North (King Gordok)" },
    [18464] = { name = "Gordok Bracers of Power", quality = 3, source = "Dungeon", sourceDetail = "Dire Maul North (King Gordok)" },
    [18465] = { name = "Rod of the Ogre Magi", quality = 4, source = "Dungeon", sourceDetail = "Dire Maul North (King Gordok)" },
    [18466] = { name = "Royal Seal of Eldre'Thalas", quality = 4, source = "Dungeon", sourceDetail = "Dire Maul North (Tribute Run)" },
    [18468] = { name = "Hyena Hide Mask", quality = 3, source = "Dungeon", sourceDetail = "Dire Maul North (Various)" },
    [18469] = { name = "Ethereal Mist Cape", quality = 3, source = "Dungeon", sourceDetail = "Dire Maul West (Prince Tortheldrin)" },
    [18471] = { name = "Barbarous Blade", quality = 4, source = "Dungeon", sourceDetail = "Dire Maul North (King Gordok)" },
    [18472] = { name = "Royal Seal of Eldre'Thalas", quality = 4, source = "Dungeon", sourceDetail = "Dire Maul North (Tribute Run)" },
    [18473] = { name = "Helm of the Lifegiver", quality = 3, source = "Dungeon", sourceDetail = "Dire Maul East (Alzzin the Wildshaper)" },
    [18476] = { name = "Scarab Plate Helm", quality = 3, source = "Dungeon", sourceDetail = "Dire Maul (Various)" },
    [18478] = { name = "Hyena Hide Belt", quality = 3, source = "Dungeon", sourceDetail = "Dire Maul North (Hyenas)" },
    [18479] = { name = "Carrion Scorpid Helm", quality = 3, source = "Dungeon", sourceDetail = "Dire Maul (Various)" },
    
    -- ============================================================================
    --                      AQ20 / RUINS OF AHN'QIRAJ DROPS
    -- ============================================================================
    [21470] = { name = "Cloak of the Savior", quality = 4, source = "Raid", sourceDetail = "AQ20 (Ossirian)" },
    [21471] = { name = "Talon of Fureli", quality = 4, source = "Raid", sourceDetail = "AQ20 (Various)" },
    [21472] = { name = "Dustwind Turban", quality = 4, source = "Raid", sourceDetail = "AQ20 (Ayamiss)" },
    [21473] = { name = "Sharpshooter's Sash", quality = 4, source = "Raid", sourceDetail = "AQ20 (Various)" },
    [21474] = { name = "Helm of Regrowth", quality = 4, source = "Raid", sourceDetail = "AQ20 (Ossirian)" },
    [21475] = { name = "Legplates of the Qiraji Command", quality = 4, source = "Raid", sourceDetail = "AQ20 (Ossirian)" },
    [21476] = { name = "Obsidian Scaled Leggings", quality = 4, source = "Raid", sourceDetail = "AQ20 (Various)" },
    [21477] = { name = "Ring of Fury", quality = 4, source = "Raid", sourceDetail = "AQ20 (Various)" },
    [21478] = { name = "Boots of the Fallen Prophet", quality = 4, source = "Raid", sourceDetail = "AQ20 (Various)" },
    [21479] = { name = "Gauntlets of the Immovable", quality = 4, source = "Raid", sourceDetail = "AQ20 (Various)" },
    [21480] = { name = "Thick Silithid Chestguard", quality = 4, source = "Raid", sourceDetail = "AQ20 (Various)" },
    [21481] = { name = "Boots of the Vanguard", quality = 4, source = "Raid", sourceDetail = "AQ20 (Ossirian)" },
    [21482] = { name = "Bracers of Brutality", quality = 4, source = "Raid", sourceDetail = "AQ20 (Various)" },
    [21483] = { name = "Ring of the Qiraji Fury", quality = 4, source = "Raid", sourceDetail = "AQ20 (Ossirian)" },
    [21484] = { name = "Helm of Domination", quality = 4, source = "Raid", sourceDetail = "AQ20 (Ossirian)" },
    [21486] = { name = "Gloves of the Swarm", quality = 4, source = "Raid", sourceDetail = "AQ20 (Ayamiss)" },
    [21487] = { name = "Scepter of the False Prophet", quality = 4, source = "Raid", sourceDetail = "AQ20 (Ossirian)" },
    [21489] = { name = "Band of the Steadfast Hero", quality = 4, source = "Raid", sourceDetail = "AQ20 (Various)" },
    [21490] = { name = "Slime-coated Leggings", quality = 4, source = "Raid", sourceDetail = "AQ20 (Moam)" },
    [21491] = { name = "Scaled Leggings of Qiraji Fury", quality = 4, source = "Raid", sourceDetail = "AQ20 (Ossirian)" },
    [21493] = { name = "Boots of the Fallen God", quality = 4, source = "Raid", sourceDetail = "AQ20 (Ossirian)" },
    [21494] = { name = "Southwind Helm", quality = 4, source = "Raid", sourceDetail = "AQ20 (Various)" },
    [21496] = { name = "Bracers of Qiraji Command", quality = 4, source = "Raid", sourceDetail = "AQ20 (Various)" },
    [21497] = { name = "Boots of the Qiraji General", quality = 4, source = "Raid", sourceDetail = "AQ20 (Rajaxx)" },
    [21498] = { name = "Qiraji Sacrificial Dagger", quality = 4, source = "Raid", sourceDetail = "AQ20 (Various)" },
    [21499] = { name = "Hive Tunneler's Boots", quality = 4, source = "Raid", sourceDetail = "AQ20 (Various)" },
    [21500] = { name = "Belt of the Inquisition", quality = 4, source = "Raid", sourceDetail = "AQ20 (Various)" },
    [21502] = { name = "Sand Reaver Wristguards", quality = 4, source = "Raid", sourceDetail = "AQ20 (Kurinnaxx)" },
    [21503] = { name = "Resonating Skulls", quality = 4, source = "Raid", sourceDetail = "AQ20 (Buru)" },
    [21504] = { name = "Charm of the Shifting Sands", quality = 4, source = "Raid", sourceDetail = "AQ20 (Various)" },
    [21505] = { name = "Choker of the Shifting Sands", quality = 4, source = "Raid", sourceDetail = "AQ20 (Various)" },
    [21506] = { name = "Pendant of the Shifting Sands", quality = 4, source = "Raid", sourceDetail = "AQ20 (Various)" },
    
    -- ============================================================================
    --                      AQ40 / TEMPLE OF AHN'QIRAJ DROPS
    -- ============================================================================
    [21126] = { name = "Death's Sting", quality = 4, source = "Raid", sourceDetail = "AQ40 (Various)" },
    [21128] = { name = "Staff of the Qiraji Prophets", quality = 4, source = "Raid", sourceDetail = "AQ40 (Emperor Vek'lor)" },
    [21134] = { name = "Dark Edge of Insanity", quality = 4, source = "Raid", sourceDetail = "AQ40 (C'Thun)" },
    [21221] = { name = "Eye of C'Thun", quality = 4, source = "Raid", sourceDetail = "AQ40 (C'Thun)" },
    [21230] = { name = "Qiraji Execution Bracers", quality = 4, source = "Raid", sourceDetail = "AQ40 (Battleguard Sartura)" },
    [21232] = { name = "Imperial Qiraji Armaments", quality = 4, source = "Raid", sourceDetail = "AQ40 (Various)" },
    [21237] = { name = "Imperial Qiraji Regalia", quality = 4, source = "Raid", sourceDetail = "AQ40 (Various)" },
    [21268] = { name = "Blessed Qiraji Pugio", quality = 4, source = "Raid", sourceDetail = "AQ40 (Token)" },
    [21269] = { name = "Blessed Qiraji Musket", quality = 4, source = "Raid", sourceDetail = "AQ40 (Token)" },
    [21273] = { name = "Blessed Qiraji Acolyte Staff", quality = 4, source = "Raid", sourceDetail = "AQ40 (Token)" },
    [21275] = { name = "Blessed Qiraji Augur Staff", quality = 4, source = "Raid", sourceDetail = "AQ40 (Token)" },
    [21329] = { name = "Conqueror's Legguards", quality = 4, source = "Raid", sourceDetail = "AQ40 (C'Thun)" },
    [21330] = { name = "Conqueror's Breastplate", quality = 4, source = "Raid", sourceDetail = "AQ40 (C'Thun)" },
    [21331] = { name = "Conqueror's Crown", quality = 4, source = "Raid", sourceDetail = "AQ40 (C'Thun)" },
    [21332] = { name = "Conqueror's Spaulders", quality = 4, source = "Raid", sourceDetail = "AQ40 (Ouro)" },
    [21333] = { name = "Conqueror's Greaves", quality = 4, source = "Raid", sourceDetail = "AQ40 (Princess Huhuran)" },
    [21348] = { name = "Doomcaller's Trousers", quality = 4, source = "Raid", sourceDetail = "AQ40 (C'Thun)" },
    [21349] = { name = "Doomcaller's Robes", quality = 4, source = "Raid", sourceDetail = "AQ40 (C'Thun)" },
    [21350] = { name = "Doomcaller's Circlet", quality = 4, source = "Raid", sourceDetail = "AQ40 (C'Thun)" },
    [21351] = { name = "Doomcaller's Mantle", quality = 4, source = "Raid", sourceDetail = "AQ40 (Ouro)" },
    [21352] = { name = "Doomcaller's Footwraps", quality = 4, source = "Raid", sourceDetail = "AQ40 (Princess Huhuran)" },
    [21353] = { name = "Enigma Boots", quality = 4, source = "Raid", sourceDetail = "AQ40 (Princess Huhuran)" },
    [21354] = { name = "Enigma Circlet", quality = 4, source = "Raid", sourceDetail = "AQ40 (C'Thun)" },
    [21355] = { name = "Enigma Leggings", quality = 4, source = "Raid", sourceDetail = "AQ40 (C'Thun)" },
    [21356] = { name = "Enigma Robes", quality = 4, source = "Raid", sourceDetail = "AQ40 (C'Thun)" },
    [21357] = { name = "Enigma Shoulderpads", quality = 4, source = "Raid", sourceDetail = "AQ40 (Ouro)" },
    
    -- ============================================================================
    --                      NAXXRAMAS DROPS
    -- ============================================================================
    [22349] = { name = "Desecrated Boots", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [22350] = { name = "Desecrated Breastplate", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Four Horsemen)" },
    [22351] = { name = "Desecrated Circlet", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Thaddius)" },
    [22352] = { name = "Desecrated Gauntlets", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Maexxna)" },
    [22353] = { name = "Desecrated Helmet", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [22354] = { name = "Desecrated Leggings", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Loatheb)" },
    [22355] = { name = "Desecrated Mantle", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Gothik)" },
    [22356] = { name = "Desecrated Pauldrons", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [22357] = { name = "Desecrated Robe", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [22358] = { name = "Desecrated Sandals", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Noth)" },
    [22359] = { name = "Desecrated Shoulderpads", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [22360] = { name = "Desecrated Spaulders", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [22361] = { name = "Desecrated Tunic", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [22362] = { name = "Desecrated Wristguards", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [22363] = { name = "Desecrated Bracers", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [22364] = { name = "Desecrated Belt", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [22365] = { name = "Desecrated Girdle", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [22366] = { name = "Desecrated Waistguard", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [22367] = { name = "Desecrated Bindings", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [22368] = { name = "Cryptfiend Silk Cloak", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Maexxna)" },
    [22369] = { name = "Desecrated Gloves", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [22370] = { name = "Desecrated Handguards", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [22371] = { name = "Desecrated Sabatons", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [22372] = { name = "Desecrated Legguards", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [22388] = { name = "Gressil, Dawn of Ruin", quality = 5, source = "Raid", sourceDetail = "Naxxramas (Kel'Thuzad)" },
    [22395] = { name = "Desecrated Legplates", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [22396] = { name = "Desecrated Chestguard", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [22416] = { name = "Dreadnaught Breastplate", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Four Horsemen)" },
    [22417] = { name = "Dreadnaught Gauntlets", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Maexxna)" },
    [22418] = { name = "Dreadnaught Helmet", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Thaddius)" },
    [22419] = { name = "Dreadnaught Legplates", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Loatheb)" },
    [22420] = { name = "Dreadnaught Pauldrons", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Gothik)" },
    [22421] = { name = "Dreadnaught Sabatons", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Noth)" },
    [22422] = { name = "Dreadnaught Bracers", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [22423] = { name = "Dreadnaught Waistguard", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [22436] = { name = "Cryptstalker Tunic", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Four Horsemen)" },
    [22437] = { name = "Cryptstalker Handguards", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Maexxna)" },
    [22438] = { name = "Cryptstalker Headpiece", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Thaddius)" },
    [22439] = { name = "Cryptstalker Legguards", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Loatheb)" },
    [22440] = { name = "Cryptstalker Spaulders", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Gothik)" },
    [22441] = { name = "Cryptstalker Boots", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Noth)" },
    [22442] = { name = "Cryptstalker Wristguards", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [22443] = { name = "Cryptstalker Girdle", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [22464] = { name = "Bonescythe Breastplate", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Four Horsemen)" },
    [22465] = { name = "Bonescythe Gauntlets", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Maexxna)" },
    [22466] = { name = "Bonescythe Helmet", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Thaddius)" },
    [22467] = { name = "Bonescythe Legplates", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Loatheb)" },
    [22468] = { name = "Bonescythe Pauldrons", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Gothik)" },
    [22469] = { name = "Bonescythe Sabatons", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Noth)" },
    [22470] = { name = "Bonescythe Bracers", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [22471] = { name = "Bonescythe Waistguard", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [22488] = { name = "Plagueheart Robe", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Four Horsemen)" },
    [22489] = { name = "Plagueheart Gloves", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Maexxna)" },
    [22490] = { name = "Plagueheart Circlet", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Thaddius)" },
    [22491] = { name = "Plagueheart Leggings", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Loatheb)" },
    [22492] = { name = "Plagueheart Shoulderpads", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Gothik)" },
    [22493] = { name = "Plagueheart Sandals", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Noth)" },
    [22494] = { name = "Plagueheart Bindings", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [22495] = { name = "Plagueheart Belt", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [22496] = { name = "Frostfire Robe", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Four Horsemen)" },
    [22497] = { name = "Frostfire Gloves", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Maexxna)" },
    [22498] = { name = "Frostfire Circlet", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Thaddius)" },
    [22499] = { name = "Frostfire Leggings", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Loatheb)" },
    [22500] = { name = "Frostfire Shoulderpads", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Gothik)" },
    [22501] = { name = "Frostfire Sandals", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Noth)" },
    [22502] = { name = "Frostfire Bindings", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [22503] = { name = "Frostfire Belt", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [22505] = { name = "Dreamwalker Tunic", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Four Horsemen)" },
    [22506] = { name = "Dreamwalker Handguards", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Maexxna)" },
    [22507] = { name = "Dreamwalker Headpiece", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Thaddius)" },
    [22508] = { name = "Dreamwalker Legguards", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Loatheb)" },
    [22509] = { name = "Dreamwalker Spaulders", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Gothik)" },
    [22510] = { name = "Dreamwalker Boots", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Noth)" },
    [22511] = { name = "Dreamwalker Wristguards", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [22512] = { name = "Dreamwalker Girdle", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [22515] = { name = "Redemption Tunic", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Four Horsemen)" },
    [22516] = { name = "Redemption Handguards", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Maexxna)" },
    [22517] = { name = "Redemption Headpiece", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Thaddius)" },
    [22518] = { name = "Redemption Legguards", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Loatheb)" },
    [22519] = { name = "Redemption Spaulders", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Gothik)" },
    [22520] = { name = "Redemption Boots", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Noth)" },
    [22521] = { name = "Redemption Wristguards", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [22522] = { name = "Redemption Girdle", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [22523] = { name = "Redemption Robe", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [23000] = { name = "Plagueheart Vestments", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [23001] = { name = "Eye of the Dead", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Sapphiron)" },
    [23002] = { name = "The Face of Death", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Sapphiron)" },
    [23003] = { name = "Plagueheart Circlet", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Thaddius)" },
    [23004] = { name = "The Hungering Cold", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Kel'Thuzad)" },
    [23005] = { name = "Totem of Flowing Water", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [23006] = { name = "Libram of Light", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [23009] = { name = "Wand of the Whispering Dead", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Kel'Thuzad)" },
    [23010] = { name = "Brimstone Staff", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [23013] = { name = "Stygian Buckler", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Noth)" },
    [23014] = { name = "Iblis, Blade of the Fallen Seraph", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Gothik)" },
    [23017] = { name = "Veil of Eclipse", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [23018] = { name = "Signets of the Fallen Defender", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Four Horsemen)" },
    [23019] = { name = "Icebane Helmet", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (Naxxramas)" },
    [23020] = { name = "Polar Helmet", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (Naxxramas)" },
    [23021] = { name = "Glacial Headdress", quality = 4, source = "Crafted", sourceDetail = "Tailoring (Naxxramas)" },
    [23022] = { name = "Idol of Longevity", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [23023] = { name = "Sadist's Collar", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Thaddius)" },
    [23024] = { name = "Hatchet of Sundered Bone", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [23025] = { name = "Seal of the Damned", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Maexxna)" },
    [23027] = { name = "Warmth of Forgiveness", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Four Horsemen)" },
    [23028] = { name = "Hailstone Band", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Sapphiron)" },
    [23029] = { name = "Noth's Frigid Heart", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Noth)" },
    [23030] = { name = "Cloak of Suturing", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Patchwerk)" },
    [23031] = { name = "Band of Unnatural Forces", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Anub'Rekhan)" },
    [23032] = { name = "Misstress' Treads", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Grand Widow Faerlina)" },
    [23033] = { name = "Icy Scale Spaulders", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Sapphiron)" },
    [23035] = { name = "Preceptor's Hat", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Instructor Razuvious)" },
    [23036] = { name = "Necklace of Necropsy", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Heigan)" },
    [23037] = { name = "Ring of the Eternal Flame", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [23038] = { name = "Band of Reanimation", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [23039] = { name = "The Eye of Nerub", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    [23040] = { name = "Glyph of Deflection", quality = 4, source = "Raid", sourceDetail = "Naxxramas (Various)" },
    
    -- ============================================================================
    --                      MORE WORLD DROP GREENS - "Of Nature's Wrath" Suffix
    -- ============================================================================
    [10300] = { name = "Aboriginal Boots of Nature's Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 15-20" },
    [10301] = { name = "Aboriginal Gloves of Nature's Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 15-20" },
    [10302] = { name = "Aboriginal Loincloth of Nature's Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 15-20" },
    [10303] = { name = "Aboriginal Robe of Nature's Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 15-20" },
    [10304] = { name = "Aboriginal Sash of Nature's Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 15-20" },
    [10310] = { name = "Necropile Cuffs of Nature's Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 52-57" },
    [10311] = { name = "Necropile Mantle of Nature's Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 52-57" },
    [10312] = { name = "Necropile Robe of Nature's Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 52-57" },
    [10313] = { name = "Necropile Boots of Nature's Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 52-57" },
    [10314] = { name = "Necropile Leggings of Nature's Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 52-57" },
    
    -- ============================================================================
    --                      MORE WORLD DROP GREENS - "Of Shadow Wrath" Suffix
    -- ============================================================================
    [10320] = { name = "Sorcerer Boots of Shadow Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    [10321] = { name = "Sorcerer Bracelets of Shadow Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    [10322] = { name = "Sorcerer Cloak of Shadow Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    [10323] = { name = "Sorcerer Gloves of Shadow Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    [10324] = { name = "Sorcerer Hat of Shadow Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    [10325] = { name = "Sorcerer Mantle of Shadow Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    [10326] = { name = "Sorcerer Pants of Shadow Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    [10327] = { name = "Sorcerer Robe of Shadow Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    [10328] = { name = "Sorcerer Sash of Shadow Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 37-42" },
    
    -- ============================================================================
    --                      MORE WORLD DROP GREENS - "Of Healing" Suffix
    -- ============================================================================
    [10330] = { name = "Celestial Crown of Healing", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [10331] = { name = "Celestial Bindings of Healing", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [10332] = { name = "Celestial Cape of Healing", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [10333] = { name = "Celestial Handwraps of Healing", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [10334] = { name = "Celestial Kilt of Healing", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [10335] = { name = "Celestial Pauldrons of Healing", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [10336] = { name = "Celestial Silk Robes of Healing", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [10337] = { name = "Celestial Slippers of Healing", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [10338] = { name = "Celestial Stave of Healing", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    
    -- ============================================================================
    --                      MORE WORLD DROP GREENS - "Of Defense" Suffix
    -- ============================================================================
    [10340] = { name = "Overlord's Crown of Defense", quality = 2, source = "World Drop", sourceDetail = "Level 55-60" },
    [10341] = { name = "Overlord's Chestplate of Defense", quality = 2, source = "World Drop", sourceDetail = "Level 55-60" },
    [10342] = { name = "Overlord's Gauntlets of Defense", quality = 2, source = "World Drop", sourceDetail = "Level 55-60" },
    [10343] = { name = "Overlord's Greaves of Defense", quality = 2, source = "World Drop", sourceDetail = "Level 55-60" },
    [10344] = { name = "Overlord's Girdle of Defense", quality = 2, source = "World Drop", sourceDetail = "Level 55-60" },
    [10345] = { name = "Overlord's Legplates of Defense", quality = 2, source = "World Drop", sourceDetail = "Level 55-60" },
    [10346] = { name = "Overlord's Spaulders of Defense", quality = 2, source = "World Drop", sourceDetail = "Level 55-60" },
    [10347] = { name = "Overlord's Vambraces of Defense", quality = 2, source = "World Drop", sourceDetail = "Level 55-60" },
    
    -- ============================================================================
    --                      MORE STARTING AREA QUEST REWARDS
    -- ============================================================================
    -- Human Starting
    [50] = { name = "Squire's Boots", quality = 1, source = "Quest", sourceDetail = "Northshire Abbey (Human)" },
    [51] = { name = "Simple Kilt", quality = 1, source = "Quest", sourceDetail = "Northshire Abbey (Human)" },
    [52] = { name = "Gray Woolen Shirt", quality = 1, source = "Quest", sourceDetail = "Northshire Abbey (Human)" },
    [55] = { name = "Apprentice's Robe", quality = 1, source = "Quest", sourceDetail = "Northshire Abbey (Human)" },
    [56] = { name = "Apprentice's Pants", quality = 1, source = "Quest", sourceDetail = "Northshire Abbey (Human)" },
    [57] = { name = "Tattered Cloth Boots", quality = 1, source = "Quest", sourceDetail = "Northshire Abbey (Human)" },
    [79] = { name = "Rune-Scarred Shoulderpads", quality = 2, source = "Quest", sourceDetail = "Elwynn Forest" },
    [80] = { name = "Staff of the Blessed Seer", quality = 2, source = "Quest", sourceDetail = "Elwynn Forest" },
    
    -- Orc/Troll Starting
    [120] = { name = "Thug Boots", quality = 1, source = "Quest", sourceDetail = "Valley of Trials (Orc/Troll)" },
    [121] = { name = "Worn Leather Pants", quality = 1, source = "Quest", sourceDetail = "Valley of Trials (Orc/Troll)" },
    [122] = { name = "Worn Leather Belt", quality = 1, source = "Quest", sourceDetail = "Valley of Trials (Orc/Troll)" },
    [123] = { name = "Worn Leather Bracers", quality = 1, source = "Quest", sourceDetail = "Valley of Trials (Orc/Troll)" },
    [124] = { name = "Worn Leather Gloves", quality = 1, source = "Quest", sourceDetail = "Valley of Trials (Orc/Troll)" },
    [127] = { name = "Primitive Mantle", quality = 1, source = "Quest", sourceDetail = "Valley of Trials (Orc/Troll)" },
    
    -- Dwarf/Gnome Starting
    [150] = { name = "Ragged Leather Boots", quality = 1, source = "Quest", sourceDetail = "Coldridge Valley (Dwarf/Gnome)" },
    [151] = { name = "Ragged Leather Gloves", quality = 1, source = "Quest", sourceDetail = "Coldridge Valley (Dwarf/Gnome)" },
    [152] = { name = "Rough Leather Bracers", quality = 1, source = "Quest", sourceDetail = "Coldridge Valley (Dwarf/Gnome)" },
    [153] = { name = "Rough Leather Belt", quality = 1, source = "Quest", sourceDetail = "Coldridge Valley (Dwarf/Gnome)" },
    [154] = { name = "Primitive Hatchet", quality = 1, source = "Quest", sourceDetail = "Coldridge Valley (Dwarf/Gnome)" },
    
    -- Night Elf Starting
    [200] = { name = "Thin Cloth Shoes", quality = 1, source = "Quest", sourceDetail = "Shadowglen (Night Elf)" },
    [201] = { name = "Thin Cloth Gloves", quality = 1, source = "Quest", sourceDetail = "Shadowglen (Night Elf)" },
    [202] = { name = "Thin Cloth Belt", quality = 1, source = "Quest", sourceDetail = "Shadowglen (Night Elf)" },
    [203] = { name = "Thin Cloth Bracers", quality = 1, source = "Quest", sourceDetail = "Shadowglen (Night Elf)" },
    [204] = { name = "Feeble Shortbow", quality = 1, source = "Quest", sourceDetail = "Shadowglen (Night Elf)" },
    
    -- Undead Starting
    [250] = { name = "Battered Buckler", quality = 1, source = "Quest", sourceDetail = "Deathknell (Undead)" },
    [251] = { name = "Battered Mallet", quality = 1, source = "Quest", sourceDetail = "Deathknell (Undead)" },
    [252] = { name = "Battered Leather Boots", quality = 1, source = "Quest", sourceDetail = "Deathknell (Undead)" },
    [253] = { name = "Battered Leather Gloves", quality = 1, source = "Quest", sourceDetail = "Deathknell (Undead)" },
    [254] = { name = "Battered Leather Belt", quality = 1, source = "Quest", sourceDetail = "Deathknell (Undead)" },
    
    -- Tauren Starting
    [300] = { name = "Rusted Chain Boots", quality = 1, source = "Quest", sourceDetail = "Camp Narache (Tauren)" },
    [301] = { name = "Rusted Chain Belt", quality = 1, source = "Quest", sourceDetail = "Camp Narache (Tauren)" },
    [302] = { name = "Rusted Chain Bracers", quality = 1, source = "Quest", sourceDetail = "Camp Narache (Tauren)" },
    [303] = { name = "Rusted Chain Gloves", quality = 1, source = "Quest", sourceDetail = "Camp Narache (Tauren)" },
    [304] = { name = "Primitive Walking Stick", quality = 1, source = "Quest", sourceDetail = "Camp Narache (Tauren)" },
    
    -- ============================================================================
    --                      PVP ARMOR SETS - ALLIANCE
    -- ============================================================================
    -- Field Marshal Set (Rank 12-13 Warrior)
    [16478] = { name = "Field Marshal's Plate Helm", quality = 4, source = "PvP", sourceDetail = "Alliance Rank 12-13" },
    [16480] = { name = "Field Marshal's Plate Shoulderguards", quality = 4, source = "PvP", sourceDetail = "Alliance Rank 12-13" },
    [16483] = { name = "Field Marshal's Plate Armor", quality = 4, source = "PvP", sourceDetail = "Alliance Rank 12-13" },
    
    -- Grand Marshal Weapons (Rank 14)
    [18843] = { name = "Grand Marshal's Longsword", quality = 4, source = "PvP", sourceDetail = "Alliance Rank 14" },
    [18844] = { name = "Grand Marshal's Claymore", quality = 4, source = "PvP", sourceDetail = "Alliance Rank 14" },
    [18847] = { name = "Grand Marshal's Dirk", quality = 4, source = "PvP", sourceDetail = "Alliance Rank 14" },
    [18848] = { name = "Grand Marshal's Mageblade", quality = 4, source = "PvP", sourceDetail = "Alliance Rank 14" },
    [18865] = { name = "Grand Marshal's Hand Cannon", quality = 4, source = "PvP", sourceDetail = "Alliance Rank 14" },
    [18868] = { name = "Grand Marshal's Bullseye", quality = 4, source = "PvP", sourceDetail = "Alliance Rank 14" },
    [18869] = { name = "Grand Marshal's Repeater", quality = 4, source = "PvP", sourceDetail = "Alliance Rank 14" },
    [18873] = { name = "Grand Marshal's Left Hand Blade", quality = 4, source = "PvP", sourceDetail = "Alliance Rank 14" },
    [18874] = { name = "Grand Marshal's Right Hand Blade", quality = 4, source = "PvP", sourceDetail = "Alliance Rank 14" },
    [18876] = { name = "Grand Marshal's Sunderer", quality = 4, source = "PvP", sourceDetail = "Alliance Rank 14" },
    [23451] = { name = "Grand Marshal's Aegis", quality = 4, source = "PvP", sourceDetail = "Alliance Rank 14" },
    [23452] = { name = "Grand Marshal's Demolisher", quality = 4, source = "PvP", sourceDetail = "Alliance Rank 14" },
    [23455] = { name = "Grand Marshal's Swiftblade", quality = 4, source = "PvP", sourceDetail = "Alliance Rank 14" },
    [23456] = { name = "Grand Marshal's Punisher", quality = 4, source = "PvP", sourceDetail = "Alliance Rank 14" },
    [23457] = { name = "Grand Marshal's Tome of Power", quality = 4, source = "PvP", sourceDetail = "Alliance Rank 14" },
    [23458] = { name = "Grand Marshal's Tome of Restoration", quality = 4, source = "PvP", sourceDetail = "Alliance Rank 14" },
    [18866] = { name = "Grand Marshal's Battle Hammer", quality = 4, source = "PvP", sourceDetail = "Alliance Rank 14" },
    [18867] = { name = "Grand Marshal's Glaive", quality = 4, source = "PvP", sourceDetail = "Alliance Rank 14" },
    [18864] = { name = "Grand Marshal's Stave", quality = 4, source = "PvP", sourceDetail = "Alliance Rank 14" },
    
    -- Field Marshal Paladin
    [16474] = { name = "Field Marshal's Lamellar Faceguard", quality = 4, source = "PvP", sourceDetail = "Alliance Rank 12-13" },
    [16476] = { name = "Field Marshal's Lamellar Pauldrons", quality = 4, source = "PvP", sourceDetail = "Alliance Rank 12-13" },
    [16477] = { name = "Field Marshal's Lamellar Chestplate", quality = 4, source = "PvP", sourceDetail = "Alliance Rank 12-13" },
    
    -- Field Marshal Mage
    [16441] = { name = "Field Marshal's Coronet", quality = 4, source = "PvP", sourceDetail = "Alliance Rank 12-13" },
    [16443] = { name = "Field Marshal's Silk Spaulders", quality = 4, source = "PvP", sourceDetail = "Alliance Rank 12-13" },
    [16449] = { name = "Field Marshal's Silk Vestments", quality = 4, source = "PvP", sourceDetail = "Alliance Rank 12-13" },
    
    -- Field Marshal Rogue
    [16455] = { name = "Field Marshal's Dragonhide Helmet", quality = 4, source = "PvP", sourceDetail = "Alliance Rank 12-13" },
    [16457] = { name = "Field Marshal's Dragonhide Spaulders", quality = 4, source = "PvP", sourceDetail = "Alliance Rank 12-13" },
    [16453] = { name = "Field Marshal's Dragonhide Breastplate", quality = 4, source = "PvP", sourceDetail = "Alliance Rank 12-13" },
    
    -- Field Marshal Hunter
    [16462] = { name = "Field Marshal's Chain Helm", quality = 4, source = "PvP", sourceDetail = "Alliance Rank 12-13" },
    [16468] = { name = "Field Marshal's Chain Spaulders", quality = 4, source = "PvP", sourceDetail = "Alliance Rank 12-13" },
    [16465] = { name = "Field Marshal's Chain Breastplate", quality = 4, source = "PvP", sourceDetail = "Alliance Rank 12-13" },
    
    -- Lieutenant Commander / Commander Sets (Rank 10-11)
    [16401] = { name = "Lieutenant Commander's Plate Helm", quality = 3, source = "PvP", sourceDetail = "Alliance Rank 10-11" },
    [16403] = { name = "Lieutenant Commander's Plate Shoulders", quality = 3, source = "PvP", sourceDetail = "Alliance Rank 10-11" },
    [16405] = { name = "Lieutenant Commander's Plate Chestpiece", quality = 3, source = "PvP", sourceDetail = "Alliance Rank 10-11" },
    [16406] = { name = "Lieutenant Commander's Plate Boots", quality = 3, source = "PvP", sourceDetail = "Alliance Rank 10-11" },
    [16407] = { name = "Lieutenant Commander's Plate Gauntlets", quality = 3, source = "PvP", sourceDetail = "Alliance Rank 10-11" },
    [16408] = { name = "Lieutenant Commander's Plate Legguards", quality = 3, source = "PvP", sourceDetail = "Alliance Rank 10-11" },
    
    -- ============================================================================
    --                      PVP ARMOR SETS - HORDE
    -- ============================================================================
    -- Warlord Set (Rank 12-13 Warrior)
    [16541] = { name = "Warlord's Plate Headpiece", quality = 4, source = "PvP", sourceDetail = "Horde Rank 12-13" },
    [16542] = { name = "Warlord's Plate Shoulders", quality = 4, source = "PvP", sourceDetail = "Horde Rank 12-13" },
    [16544] = { name = "Warlord's Plate Armor", quality = 4, source = "PvP", sourceDetail = "Horde Rank 12-13" },
    
    -- High Warlord Weapons (Rank 14)
    [18831] = { name = "High Warlord's Blade", quality = 4, source = "PvP", sourceDetail = "Horde Rank 14" },
    [18832] = { name = "High Warlord's Greatsword", quality = 4, source = "PvP", sourceDetail = "Horde Rank 14" },
    [18834] = { name = "High Warlord's Razor", quality = 4, source = "PvP", sourceDetail = "Horde Rank 14" },
    [18835] = { name = "High Warlord's Spellblade", quality = 4, source = "PvP", sourceDetail = "Horde Rank 14" },
    [18836] = { name = "High Warlord's Quickblade", quality = 4, source = "PvP", sourceDetail = "Horde Rank 14" },
    [18837] = { name = "High Warlord's Pig Sticker", quality = 4, source = "PvP", sourceDetail = "Horde Rank 14" },
    [18838] = { name = "High Warlord's Cleaver", quality = 4, source = "PvP", sourceDetail = "Horde Rank 14" },
    [18840] = { name = "High Warlord's Street Sweeper", quality = 4, source = "PvP", sourceDetail = "Horde Rank 14" },
    [18860] = { name = "High Warlord's Battle Mace", quality = 4, source = "PvP", sourceDetail = "Horde Rank 14" },
    [18862] = { name = "High Warlord's War Staff", quality = 4, source = "PvP", sourceDetail = "Horde Rank 14" },
    [18863] = { name = "High Warlord's Shield Wall", quality = 4, source = "PvP", sourceDetail = "Horde Rank 14" },
    [23463] = { name = "High Warlord's Tome of Mana Storm", quality = 4, source = "PvP", sourceDetail = "Horde Rank 14" },
    [23464] = { name = "High Warlord's Tome of Destruction", quality = 4, source = "PvP", sourceDetail = "Horde Rank 14" },
    
    -- Warlord Shaman
    [16577] = { name = "Warlord's Mail Helm", quality = 4, source = "PvP", sourceDetail = "Horde Rank 12-13" },
    [16578] = { name = "Warlord's Mail Spaulders", quality = 4, source = "PvP", sourceDetail = "Horde Rank 12-13" },
    [16579] = { name = "Warlord's Mail Armor", quality = 4, source = "PvP", sourceDetail = "Horde Rank 12-13" },
    
    -- Warlord Warlock
    [17586] = { name = "Warlord's Dreadweave Hood", quality = 4, source = "PvP", sourceDetail = "Horde Rank 12-13" },
    [17588] = { name = "Warlord's Dreadweave Mantle", quality = 4, source = "PvP", sourceDetail = "Horde Rank 12-13" },
    [17591] = { name = "Warlord's Dreadweave Robe", quality = 4, source = "PvP", sourceDetail = "Horde Rank 12-13" },
    
    -- Champion Sets (Rank 10-11)
    [16513] = { name = "Champion's Plate Helm", quality = 3, source = "PvP", sourceDetail = "Horde Rank 10-11" },
    [16515] = { name = "Champion's Plate Shoulders", quality = 3, source = "PvP", sourceDetail = "Horde Rank 10-11" },
    [16509] = { name = "Champion's Plate Chestpiece", quality = 3, source = "PvP", sourceDetail = "Horde Rank 10-11" },
    [16510] = { name = "Champion's Plate Boots", quality = 3, source = "PvP", sourceDetail = "Horde Rank 10-11" },
    [16511] = { name = "Champion's Plate Gauntlets", quality = 3, source = "PvP", sourceDetail = "Horde Rank 10-11" },
    [16512] = { name = "Champion's Plate Legguards", quality = 3, source = "PvP", sourceDetail = "Horde Rank 10-11" },
    
    -- ============================================================================
    --                      ZULG'GURUB DROPS
    -- ============================================================================
    [19859] = { name = "Bloodstained Legplates", quality = 4, source = "Raid", sourceDetail = "ZG (Bloodlord Mandokir)" },
    [19861] = { name = "Touch of Chaos", quality = 4, source = "Raid", sourceDetail = "ZG (Various)" },
    [19862] = { name = "Primalist's Band", quality = 4, source = "Raid", sourceDetail = "ZG (Various)" },
    [19863] = { name = "Bloodsoaked Legplates", quality = 4, source = "Raid", sourceDetail = "ZG (Jin'do the Hexxer)" },
    [19865] = { name = "Bloodtinged Gloves", quality = 4, source = "Raid", sourceDetail = "ZG (Venoxis)" },
    [19866] = { name = "Warblade of the Hakkari", quality = 4, source = "Raid", sourceDetail = "ZG (Hakkar)" },
    [19867] = { name = "Bloodsoaked Greaves", quality = 4, source = "Raid", sourceDetail = "ZG (Various)" },
    [19869] = { name = "Blooddrenched Grips", quality = 4, source = "Raid", sourceDetail = "ZG (Thekal)" },
    [19870] = { name = "Hakkari Loa Cloak", quality = 4, source = "Raid", sourceDetail = "ZG (Hakkar)" },
    [19871] = { name = "Zanzil's Concentration", quality = 4, source = "Raid", sourceDetail = "ZG (Hakkar)" },
    [19872] = { name = "Swift Zulian Tiger", quality = 4, source = "Raid", sourceDetail = "ZG (High Priest Thekal)" },
    [19873] = { name = "Hakkar's Grasp", quality = 4, source = "Raid", sourceDetail = "ZG (Hakkar)" },
    [19874] = { name = "Halberd of Smiting", quality = 4, source = "Raid", sourceDetail = "ZG (Hakkar)" },
    [19875] = { name = "Bloodstained Greaves", quality = 4, source = "Raid", sourceDetail = "ZG (Bloodlord Mandokir)" },
    [19876] = { name = "Soul Corrupter's Necklace", quality = 4, source = "Raid", sourceDetail = "ZG (Hakkar)" },
    [19877] = { name = "Animist's Spaulders", quality = 4, source = "Raid", sourceDetail = "ZG (Jin'do the Hexxer)" },
    [19878] = { name = "Bloodsoaked Pauldrons", quality = 4, source = "Raid", sourceDetail = "ZG (Various)" },
    [19884] = { name = "Jin'do's Judgement", quality = 4, source = "Raid", sourceDetail = "ZG (Jin'do the Hexxer)" },
    [19885] = { name = "Jin'do's Evil Eye", quality = 4, source = "Raid", sourceDetail = "ZG (Jin'do the Hexxer)" },
    [19886] = { name = "Warblades of the Hakkari", quality = 4, source = "Raid", sourceDetail = "ZG (Hakkar)" },
    [19890] = { name = "Jin'do's Bag of Whammies", quality = 4, source = "Raid", sourceDetail = "ZG (Jin'do the Hexxer)" },
    [19891] = { name = "Jin'do's Hexxer", quality = 4, source = "Raid", sourceDetail = "ZG (Jin'do the Hexxer)" },
    [19893] = { name = "Zulian Tigerhide Cloak", quality = 4, source = "Raid", sourceDetail = "ZG (Thekal)" },
    [19894] = { name = "Bloodsoaked Gauntlets", quality = 4, source = "Raid", sourceDetail = "ZG (Various)" },
    [19895] = { name = "Bloodstained Coif", quality = 4, source = "Raid", sourceDetail = "ZG (Various)" },
    [19896] = { name = "Zulian Slicer", quality = 4, source = "Raid", sourceDetail = "ZG (Hakkar)" },
    [19897] = { name = "Betrayer's Boots", quality = 4, source = "Raid", sourceDetail = "ZG (Hakkar)" },
    [19898] = { name = "Zulian Ceremonial Staff", quality = 4, source = "Raid", sourceDetail = "ZG (Various)" },
    [19899] = { name = "Zulian Stone Axe", quality = 4, source = "Raid", sourceDetail = "ZG (Various)" },
    [19900] = { name = "Zulian Hacker", quality = 4, source = "Raid", sourceDetail = "ZG (Various)" },
    [19901] = { name = "Zanzil's Band", quality = 4, source = "Raid", sourceDetail = "ZG (Various)" },
    [19902] = { name = "Swift Razzashi Raptor", quality = 4, source = "Raid", sourceDetail = "ZG (Bloodlord Mandokir)" },
    [19903] = { name = "Fang of the Faceless", quality = 4, source = "Raid", sourceDetail = "ZG (Hakkar)" },
    [19904] = { name = "Bloodvine", quality = 2, source = "Raid", sourceDetail = "ZG (Herbs)" },
    [19905] = { name = "Bloodvine Lens", quality = 3, source = "Crafted", sourceDetail = "Tailoring (ZG Recipe)" },
    [19906] = { name = "Bloodvine Goggles", quality = 3, source = "Crafted", sourceDetail = "Leatherworking (ZG Recipe)" },
    [19907] = { name = "Bloodvine Leggings", quality = 4, source = "Crafted", sourceDetail = "Tailoring (ZG Recipe)" },
    [19908] = { name = "Bloodvine Boots", quality = 4, source = "Crafted", sourceDetail = "Tailoring (ZG Recipe)" },
    [19909] = { name = "Bloodvine Vest", quality = 4, source = "Crafted", sourceDetail = "Tailoring (ZG Recipe)" },
    [19918] = { name = "Zulian Defender", quality = 4, source = "Raid", sourceDetail = "ZG (Thekal)" },
    [19919] = { name = "Madcap's Outfit", quality = 3, source = "Raid", sourceDetail = "ZG (Various)" },
    [19920] = { name = "Primalist's Seal", quality = 4, source = "Raid", sourceDetail = "ZG (Hakkar)" },
    [19921] = { name = "Zulian Headdress", quality = 4, source = "Raid", sourceDetail = "ZG (Bat Boss)" },
    [19922] = { name = "Arlokk's Grasp", quality = 4, source = "Raid", sourceDetail = "ZG (High Priestess Arlokk)" },
    [19923] = { name = "Jeklik's Opaline Talisman", quality = 4, source = "Raid", sourceDetail = "ZG (High Priestess Jeklik)" },
    [19924] = { name = "Blooddrenched Mask", quality = 4, source = "Raid", sourceDetail = "ZG (Various)" },
    [19925] = { name = "Jeklik's Crusher", quality = 4, source = "Raid", sourceDetail = "ZG (High Priestess Jeklik)" },
    [19926] = { name = "Venoxis's Fang", quality = 4, source = "Raid", sourceDetail = "ZG (Venoxis)" },
    [19927] = { name = "Mar'li's Touch", quality = 4, source = "Raid", sourceDetail = "ZG (High Priestess Mar'li)" },
    [19928] = { name = "Thekal's Grasp", quality = 4, source = "Raid", sourceDetail = "ZG (High Priest Thekal)" },
    [19929] = { name = "Bloodcaller", quality = 4, source = "Raid", sourceDetail = "ZG (Jin'do the Hexxer)" },
    
    -- ============================================================================
    --                      MORE WORLD BOSS DROPS
    -- ============================================================================
    -- Azuregos
    [19131] = { name = "Snowblind Shoes", quality = 4, source = "World Boss", sourceDetail = "Azuregos" },
    [19132] = { name = "Crystal Adorned Crown", quality = 4, source = "World Boss", sourceDetail = "Azuregos" },
    [19133] = { name = "Leggings of Arcane Supremacy", quality = 4, source = "World Boss", sourceDetail = "Azuregos" },
    [19134] = { name = "Fang of the Mystics", quality = 4, source = "World Boss", sourceDetail = "Azuregos" },
    [19135] = { name = "Glacier Stone", quality = 4, source = "World Boss", sourceDetail = "Azuregos" },
    [19136] = { name = "Arcane Infused Gem", quality = 4, source = "World Boss", sourceDetail = "Azuregos" },
    [19137] = { name = "Icy Spaulders", quality = 4, source = "World Boss", sourceDetail = "Azuregos" },
    [19138] = { name = "Unmelting Ice Girdle", quality = 4, source = "World Boss", sourceDetail = "Azuregos" },
    [18208] = { name = "Drape of Benediction", quality = 4, source = "World Boss", sourceDetail = "Azuregos" },
    [18202] = { name = "Eskhandar's Left Claw", quality = 4, source = "World Boss", sourceDetail = "Azuregos" },
    
    -- Lord Kazzak
    [18546] = { name = "Infernal Headcage", quality = 4, source = "World Boss", sourceDetail = "Lord Kazzak" },
    [18544] = { name = "Amberseal Keeper", quality = 4, source = "World Boss", sourceDetail = "Lord Kazzak" },
    [18543] = { name = "Ring of Entropy", quality = 4, source = "World Boss", sourceDetail = "Lord Kazzak" },
    [18542] = { name = "Blacklight Bracer", quality = 4, source = "World Boss", sourceDetail = "Lord Kazzak" },
    [17111] = { name = "Blazefury Medallion", quality = 4, source = "World Boss", sourceDetail = "Lord Kazzak" },
    [17112] = { name = "Empyrean Demolisher", quality = 4, source = "World Boss", sourceDetail = "Lord Kazzak" },
    [17113] = { name = "Amberseal Keeper", quality = 4, source = "World Boss", sourceDetail = "Lord Kazzak" },
    
    -- Emerald Dragons
    [20623] = { name = "Circlet of Restless Dreams", quality = 4, source = "World Boss", sourceDetail = "Ysondre" },
    [20624] = { name = "Ring of the Unliving", quality = 4, source = "World Boss", sourceDetail = "Ysondre" },
    [20625] = { name = "Sharpened Silithid Femur", quality = 4, source = "World Boss", sourceDetail = "Ysondre" },
    [20626] = { name = "Acid Inscribed Greaves", quality = 4, source = "World Boss", sourceDetail = "Emeriss" },
    [20627] = { name = "Boots of the Endless Moor", quality = 4, source = "World Boss", sourceDetail = "Emeriss" },
    [20628] = { name = "Gloves of Delusional Power", quality = 4, source = "World Boss", sourceDetail = "Emeriss" },
    [20629] = { name = "Spaulders of the Unseen", quality = 4, source = "World Boss", sourceDetail = "Emeriss" },
    [20630] = { name = "Gauntlets of the Shining Light", quality = 4, source = "World Boss", sourceDetail = "Lethon" },
    [20631] = { name = "Deviate Growth Cap", quality = 4, source = "World Boss", sourceDetail = "Lethon" },
    [20632] = { name = "Mindtear Band", quality = 4, source = "World Boss", sourceDetail = "Lethon" },
    [20633] = { name = "Black Bark Wristbands", quality = 4, source = "World Boss", sourceDetail = "Lethon" },
    [20634] = { name = "Boots of Fright", quality = 4, source = "World Boss", sourceDetail = "Taerar" },
    [20635] = { name = "Mendicant's Slippers", quality = 4, source = "World Boss", sourceDetail = "Taerar" },
    [20636] = { name = "Hibernation Crystal", quality = 4, source = "World Boss", sourceDetail = "Taerar" },
    [20637] = { name = "Dragonspur Wraps", quality = 4, source = "World Boss", sourceDetail = "Taerar" },
    [20639] = { name = "Trance Stone", quality = 4, source = "World Boss", sourceDetail = "Taerar" },
    [20638] = { name = "Leggings of the Demented Mind", quality = 4, source = "World Boss", sourceDetail = "Emeriss" },
    [20580] = { name = "Essence of the Red", quality = 3, source = "World Boss", sourceDetail = "Emerald Dragons (Shared)" },
    
    -- ============================================================================
    --                      MORE CRAFTED ITEMS - TAILORING
    -- ============================================================================
    [4300] = { name = "Gray Woolen Robe", quality = 2, source = "Crafted", sourceDetail = "Tailoring" },
    [4301] = { name = "Blue Linen Robe", quality = 2, source = "Crafted", sourceDetail = "Tailoring" },
    [4302] = { name = "Red Linen Robe", quality = 2, source = "Crafted", sourceDetail = "Tailoring" },
    [4303] = { name = "Blue Linen Shirt", quality = 1, source = "Crafted", sourceDetail = "Tailoring" },
    [4304] = { name = "Red Linen Shirt", quality = 1, source = "Crafted", sourceDetail = "Tailoring" },
    [4305] = { name = "White Linen Shirt", quality = 1, source = "Crafted", sourceDetail = "Tailoring" },
    [4306] = { name = "Silk Cloth", quality = 1, source = "World Drop", sourceDetail = "Level 25-40 mobs" },
    [4307] = { name = "Heavy Armor Kit", quality = 1, source = "Crafted", sourceDetail = "Leatherworking" },
    [4308] = { name = "Green Silken Shoulders", quality = 2, source = "Crafted", sourceDetail = "Tailoring" },
    [4309] = { name = "Handstitched Linen Britches", quality = 2, source = "Crafted", sourceDetail = "Tailoring" },
    [4310] = { name = "Heavy Woolen Gloves", quality = 2, source = "Crafted", sourceDetail = "Tailoring" },
    [4311] = { name = "Heavy Woolen Cloak", quality = 2, source = "Crafted", sourceDetail = "Tailoring" },
    [4312] = { name = "Soft-soled Linen Boots", quality = 2, source = "Crafted", sourceDetail = "Tailoring" },
    [4313] = { name = "Red Woolen Boots", quality = 2, source = "Crafted", sourceDetail = "Tailoring" },
    [4314] = { name = "Double-stitched Woolen Shoulders", quality = 2, source = "Crafted", sourceDetail = "Tailoring" },
    [4315] = { name = "Reinforced Woolen Shoulders", quality = 2, source = "Crafted", sourceDetail = "Tailoring" },
    [4316] = { name = "Phoenix Gloves", quality = 3, source = "Crafted", sourceDetail = "Tailoring" },
    [4317] = { name = "Phoenix Pants", quality = 3, source = "Crafted", sourceDetail = "Tailoring" },
    [4318] = { name = "Colorful Kilt", quality = 2, source = "Crafted", sourceDetail = "Tailoring" },
    [4319] = { name = "Azure Silk Gloves", quality = 2, source = "Crafted", sourceDetail = "Tailoring" },
    [4320] = { name = "Azure Silk Hood", quality = 2, source = "Crafted", sourceDetail = "Tailoring" },
    [4321] = { name = "Azure Silk Vest", quality = 2, source = "Crafted", sourceDetail = "Tailoring" },
    [4322] = { name = "Azure Silk Pants", quality = 2, source = "Crafted", sourceDetail = "Tailoring" },
    [4323] = { name = "Shadow Hood", quality = 2, source = "Crafted", sourceDetail = "Tailoring" },
    [4324] = { name = "Azure Silk Belt", quality = 2, source = "Crafted", sourceDetail = "Tailoring" },
    [4325] = { name = "Azure Silk Cloak", quality = 2, source = "Crafted", sourceDetail = "Tailoring" },
    [4326] = { name = "Long Silken Cloak", quality = 2, source = "Crafted", sourceDetail = "Tailoring" },
    [4327] = { name = "Earthen Silk Belt", quality = 2, source = "Crafted", sourceDetail = "Tailoring" },
    [4328] = { name = "Spider Belt", quality = 3, source = "Crafted", sourceDetail = "Tailoring" },
    [4329] = { name = "Star Belt", quality = 3, source = "Crafted", sourceDetail = "Tailoring" },
    [4330] = { name = "Icy Cloak", quality = 3, source = "Crafted", sourceDetail = "Tailoring" },
    [4331] = { name = "Phoenix Cloak", quality = 3, source = "Crafted", sourceDetail = "Tailoring" },
    [4332] = { name = "Bright Yellow Shirt", quality = 1, source = "Crafted", sourceDetail = "Tailoring" },
    [4333] = { name = "Dark Silk Shirt", quality = 1, source = "Crafted", sourceDetail = "Tailoring" },
    [4334] = { name = "Formal White Shirt", quality = 1, source = "Crafted", sourceDetail = "Tailoring" },
    [4335] = { name = "Rich Purple Silk Shirt", quality = 3, source = "Crafted", sourceDetail = "Tailoring" },
    [4336] = { name = "Black Swashbuckler's Shirt", quality = 3, source = "Crafted", sourceDetail = "Tailoring" },
    [4337] = { name = "Green Holiday Shirt", quality = 1, source = "Crafted", sourceDetail = "Tailoring" },
    [4338] = { name = "Mageweave Cloth", quality = 1, source = "World Drop", sourceDetail = "Level 35-50 mobs" },
    [4339] = { name = "Bolt of Mageweave", quality = 1, source = "Crafted", sourceDetail = "Tailoring" },
    [4340] = { name = "Gray Woolen Shirt", quality = 1, source = "Crafted", sourceDetail = "Tailoring" },
    
    -- ============================================================================
    --                      MORE CRAFTED ITEMS - LEATHERWORKING
    -- ============================================================================
    [5739] = { name = "Rugged Armor Kit", quality = 1, source = "Crafted", sourceDetail = "Leatherworking" },
    [5760] = { name = "Thick Armor Kit", quality = 1, source = "Crafted", sourceDetail = "Leatherworking" },
    [5766] = { name = "Medium Armor Kit", quality = 1, source = "Crafted", sourceDetail = "Leatherworking" },
    [5957] = { name = "Handstitched Leather Belt", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [5958] = { name = "Fine Leather Belt", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [5959] = { name = "Embossed Leather Vest", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [5960] = { name = "Embossed Leather Boots", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [5961] = { name = "Embossed Leather Cloak", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [5962] = { name = "Guardian Pants", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [5963] = { name = "Herbalist's Gloves", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [5964] = { name = "Barbaric Gloves", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [5965] = { name = "Guardian Armor", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [5966] = { name = "Guardian Gloves", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [5967] = { name = "Guardian Belt", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [5968] = { name = "Barbaric Leggings", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [6337] = { name = "Cured Rugged Hide", quality = 1, source = "Crafted", sourceDetail = "Leatherworking" },
    [6338] = { name = "Silver-Thread Robe", quality = 2, source = "Crafted", sourceDetail = "Tailoring" },
    [6339] = { name = "Russet Boots", quality = 1, source = "World Drop", sourceDetail = "Level 25-35" },
    [6468] = { name = "Deviate Scale Belt", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [6469] = { name = "Deviate Scale Gloves", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [6470] = { name = "Deviate Scale Cloak", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [6471] = { name = "Perfect Deviate Scale", quality = 2, source = "World Drop", sourceDetail = "Wailing Caverns" },
    [6472] = { name = "Stormscale Shoulders", quality = 3, source = "Crafted", sourceDetail = "Leatherworking" },
    [6474] = { name = "Pattern: Deviate Scale Cloak", quality = 2, source = "World Drop", sourceDetail = "Wailing Caverns" },
    [6475] = { name = "Pattern: Deviate Scale Gloves", quality = 2, source = "World Drop", sourceDetail = "Wailing Caverns" },
    [6476] = { name = "Pattern: Deviate Scale Belt", quality = 2, source = "World Drop", sourceDetail = "Wailing Caverns" },
    [7280] = { name = "Dusky Boots", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [7281] = { name = "Dusky Bracers", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [7282] = { name = "Dusky Cloak", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [7283] = { name = "Dusky Leather Armor", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [7284] = { name = "Dusky Leather Leggings", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [7285] = { name = "Nightscape Headband", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [7286] = { name = "Nightscape Pants", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [7287] = { name = "Nightscape Tunic", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [7348] = { name = "Fletcher's Gloves", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [7349] = { name = "Nimble Leather Gloves", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [7352] = { name = "Earthen Leather Shoulders", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [7358] = { name = "Pilferer's Gloves", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [7360] = { name = "Pattern: Dark Leather Gloves", quality = 2, source = "Vendor", sourceDetail = "Leatherworking Supplier" },
    [7371] = { name = "Heavy Earthen Gloves", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [7372] = { name = "Dusky Belt", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    [7373] = { name = "Dusky Gloves", quality = 2, source = "Crafted", sourceDetail = "Leatherworking" },
    
    -- ============================================================================
    --                      MORE ENGINEERING ITEMS
    -- ============================================================================
    [4356] = { name = "Rough Blasting Powder", quality = 1, source = "Crafted", sourceDetail = "Engineering" },
    [4357] = { name = "Rough Dynamite", quality = 1, source = "Crafted", sourceDetail = "Engineering" },
    [4358] = { name = "Rough Copper Bomb", quality = 1, source = "Crafted", sourceDetail = "Engineering" },
    [4359] = { name = "Handful of Copper Bolts", quality = 1, source = "Crafted", sourceDetail = "Engineering" },
    [4360] = { name = "Rough Boomstick", quality = 2, source = "Crafted", sourceDetail = "Engineering" },
    [4361] = { name = "Copper Tube", quality = 1, source = "Crafted", sourceDetail = "Engineering" },
    [4362] = { name = "Rough Copper Bomb", quality = 1, source = "Crafted", sourceDetail = "Engineering" },
    [4363] = { name = "Copper Modulator", quality = 1, source = "Crafted", sourceDetail = "Engineering" },
    [4364] = { name = "Coarse Blasting Powder", quality = 1, source = "Crafted", sourceDetail = "Engineering" },
    [4365] = { name = "Coarse Dynamite", quality = 1, source = "Crafted", sourceDetail = "Engineering" },
    [4366] = { name = "Target Dummy", quality = 1, source = "Crafted", sourceDetail = "Engineering" },
    [4367] = { name = "Big Bronze Bomb", quality = 1, source = "Crafted", sourceDetail = "Engineering" },
    [4368] = { name = "Flying Tiger Goggles", quality = 2, source = "Crafted", sourceDetail = "Engineering" },
    [4369] = { name = "Mechanical Squirrel Box", quality = 1, source = "Crafted", sourceDetail = "Engineering" },
    [4370] = { name = "Moonsight Rifle", quality = 2, source = "Crafted", sourceDetail = "Engineering" },
    [4371] = { name = "Bronze Tube", quality = 1, source = "Crafted", sourceDetail = "Engineering" },
    [4372] = { name = "Lovingly Crafted Boomstick", quality = 2, source = "Crafted", sourceDetail = "Engineering" },
    [4373] = { name = "Shadow Goggles", quality = 2, source = "Crafted", sourceDetail = "Engineering" },
    [4374] = { name = "Small Seaforium Charge", quality = 1, source = "Crafted", sourceDetail = "Engineering" },
    [4375] = { name = "Whirring Bronze Gizmo", quality = 1, source = "Crafted", sourceDetail = "Engineering" },
    [4376] = { name = "Compact Harvest Reaper Kit", quality = 2, source = "Crafted", sourceDetail = "Engineering" },
    [4377] = { name = "Heavy Blasting Powder", quality = 1, source = "Crafted", sourceDetail = "Engineering" },
    [4378] = { name = "Heavy Dynamite", quality = 1, source = "Crafted", sourceDetail = "Engineering" },
    [4379] = { name = "Iron Strut", quality = 1, source = "Crafted", sourceDetail = "Engineering" },
    [4380] = { name = "Big Iron Bomb", quality = 1, source = "Crafted", sourceDetail = "Engineering" },
    [4381] = { name = "Minor Recombobulator", quality = 2, source = "Crafted", sourceDetail = "Engineering" },
    [4382] = { name = "Bronze Framework", quality = 1, source = "Crafted", sourceDetail = "Engineering" },
    [4383] = { name = "Moonsight Rifle", quality = 2, source = "Crafted", sourceDetail = "Engineering" },
    [4384] = { name = "Flame Deflector", quality = 1, source = "Crafted", sourceDetail = "Engineering" },
    [4385] = { name = "Green Tinted Goggles", quality = 2, source = "Crafted", sourceDetail = "Engineering" },
    [4386] = { name = "Ice Deflector", quality = 1, source = "Crafted", sourceDetail = "Engineering" },
    [4387] = { name = "Iron Grenade", quality = 1, source = "Crafted", sourceDetail = "Engineering" },
    [4388] = { name = "Discombobulator Ray", quality = 2, source = "Crafted", sourceDetail = "Engineering" },
    [4389] = { name = "Gyromatic Micro-Adjustor", quality = 1, source = "Crafted", sourceDetail = "Engineering" },
    [4390] = { name = "Advanced Target Dummy", quality = 1, source = "Crafted", sourceDetail = "Engineering" },
    [4391] = { name = "Compact Harvest Reaper Kit", quality = 2, source = "Crafted", sourceDetail = "Engineering" },
    [4392] = { name = "Advanced Target Dummy", quality = 1, source = "Crafted", sourceDetail = "Engineering" },
    [4393] = { name = "Craftsman's Monocle", quality = 3, source = "Crafted", sourceDetail = "Engineering" },
    [4394] = { name = "Big Iron Bomb", quality = 1, source = "Crafted", sourceDetail = "Engineering" },
    [4395] = { name = "Portable Bronze Mortar", quality = 2, source = "Crafted", sourceDetail = "Engineering" },
    [4396] = { name = "Mechanical Dragonling", quality = 2, source = "Crafted", sourceDetail = "Engineering" },
    [4397] = { name = "Explosive Sheep", quality = 2, source = "Crafted", sourceDetail = "Engineering" },
    [4398] = { name = "Large Seaforium Charge", quality = 1, source = "Crafted", sourceDetail = "Engineering" },
    [4399] = { name = "Parachute Cloak", quality = 2, source = "Crafted", sourceDetail = "Engineering" },
    [4400] = { name = "Gnomish Mind Control Cap", quality = 3, source = "Crafted", sourceDetail = "Gnomish Engineering" },
    [4401] = { name = "Gnomish Shrink Ray", quality = 3, source = "Crafted", sourceDetail = "Gnomish Engineering" },
    [10725] = { name = "Gnomish Battle Chicken", quality = 2, source = "Crafted", sourceDetail = "Gnomish Engineering" },
    [10724] = { name = "Gnomish Net-o-Matic Projector", quality = 2, source = "Crafted", sourceDetail = "Gnomish Engineering" },
    [10726] = { name = "Gnomish Harm Prevention Belt", quality = 2, source = "Crafted", sourceDetail = "Gnomish Engineering" },
    [10727] = { name = "Gnomish Death Ray", quality = 3, source = "Crafted", sourceDetail = "Gnomish Engineering" },
    [10716] = { name = "Gnomish Rocket Boots", quality = 2, source = "Crafted", sourceDetail = "Gnomish Engineering" },
    [10720] = { name = "Goblin Bomb Dispenser", quality = 2, source = "Crafted", sourceDetail = "Goblin Engineering" },
    [10721] = { name = "Goblin Sapper Charge", quality = 1, source = "Crafted", sourceDetail = "Goblin Engineering" },
    [10713] = { name = "Goblin Mortar", quality = 2, source = "Crafted", sourceDetail = "Goblin Engineering" },
    [10714] = { name = "Goblin Rocket Helmet", quality = 2, source = "Crafted", sourceDetail = "Goblin Engineering" },
    [10577] = { name = "Goblin Construction Helmet", quality = 2, source = "Crafted", sourceDetail = "Goblin Engineering" },
    [10588] = { name = "Goblin Rocket Boots", quality = 2, source = "Crafted", sourceDetail = "Goblin Engineering" },
    [10587] = { name = "Goblin Jumper Cables", quality = 2, source = "Crafted", sourceDetail = "Goblin Engineering" },
    [10543] = { name = "Goblin Dragon Gun", quality = 2, source = "Crafted", sourceDetail = "Goblin Engineering" },
    [10546] = { name = "Deadly Scope", quality = 2, source = "Crafted", sourceDetail = "Engineering" },
    [10548] = { name = "Sniper Scope", quality = 3, source = "Crafted", sourceDetail = "Engineering" },
    [18639] = { name = "Biznicks 247x128 Accurascope", quality = 4, source = "Dungeon", sourceDetail = "MC Trash" },
    [18282] = { name = "Core Marksman Rifle", quality = 4, source = "Crafted", sourceDetail = "Engineering (MC)" },
    
    -- ============================================================================
    --                      TIER 1 SETS - MOLTEN CORE
    -- ============================================================================
    -- Warrior - Might
    [16866] = { name = "Helm of Might", quality = 4, source = "Raid", sourceDetail = "MC (Garr)" },
    [16867] = { name = "Pauldrons of Might", quality = 4, source = "Raid", sourceDetail = "MC (Baron Geddon)" },
    [16868] = { name = "Bracers of Might", quality = 4, source = "Raid", sourceDetail = "MC (Trash)" },
    [16840] = { name = "Gauntlets of Might", quality = 4, source = "Raid", sourceDetail = "MC (Gehennas)" },
    [16841] = { name = "Breastplate of Might", quality = 4, source = "Raid", sourceDetail = "MC (Golemagg)" },
    [16842] = { name = "Belt of Might", quality = 4, source = "Raid", sourceDetail = "MC (Trash)" },
    [16843] = { name = "Legplates of Might", quality = 4, source = "Raid", sourceDetail = "MC (Magmadar)" },
    [16844] = { name = "Sabatons of Might", quality = 4, source = "Raid", sourceDetail = "MC (Shazzrah)" },
    
    -- Paladin - Lawbringer
    [16853] = { name = "Lawbringer Helm", quality = 4, source = "Raid", sourceDetail = "MC (Garr)" },
    [16856] = { name = "Lawbringer Spaulders", quality = 4, source = "Raid", sourceDetail = "MC (Baron Geddon)" },
    [16857] = { name = "Lawbringer Bracers", quality = 4, source = "Raid", sourceDetail = "MC (Trash)" },
    [16860] = { name = "Lawbringer Gauntlets", quality = 4, source = "Raid", sourceDetail = "MC (Gehennas)" },
    [16858] = { name = "Lawbringer Chestguard", quality = 4, source = "Raid", sourceDetail = "MC (Golemagg)" },
    [16859] = { name = "Lawbringer Belt", quality = 4, source = "Raid", sourceDetail = "MC (Trash)" },
    [16854] = { name = "Lawbringer Legplates", quality = 4, source = "Raid", sourceDetail = "MC (Magmadar)" },
    [16855] = { name = "Lawbringer Boots", quality = 4, source = "Raid", sourceDetail = "MC (Shazzrah)" },
    
    -- Hunter - Giantstalker
    [16846] = { name = "Giantstalker's Helmet", quality = 4, source = "Raid", sourceDetail = "MC (Garr)" },
    [16848] = { name = "Giantstalker's Epaulets", quality = 4, source = "Raid", sourceDetail = "MC (Baron Geddon)" },
    [16850] = { name = "Giantstalker's Bracers", quality = 4, source = "Raid", sourceDetail = "MC (Trash)" },
    [16852] = { name = "Giantstalker's Gloves", quality = 4, source = "Raid", sourceDetail = "MC (Gehennas)" },
    [16845] = { name = "Giantstalker's Breastplate", quality = 4, source = "Raid", sourceDetail = "MC (Golemagg)" },
    [16851] = { name = "Giantstalker's Belt", quality = 4, source = "Raid", sourceDetail = "MC (Trash)" },
    [16847] = { name = "Giantstalker's Leggings", quality = 4, source = "Raid", sourceDetail = "MC (Magmadar)" },
    [16849] = { name = "Giantstalker's Boots", quality = 4, source = "Raid", sourceDetail = "MC (Shazzrah)" },
    
    -- Rogue - Nightslayer
    [16821] = { name = "Nightslayer Cover", quality = 4, source = "Raid", sourceDetail = "MC (Garr)" },
    [16823] = { name = "Nightslayer Shoulder Pads", quality = 4, source = "Raid", sourceDetail = "MC (Baron Geddon)" },
    [16825] = { name = "Nightslayer Bracelets", quality = 4, source = "Raid", sourceDetail = "MC (Trash)" },
    [16826] = { name = "Nightslayer Gloves", quality = 4, source = "Raid", sourceDetail = "MC (Gehennas)" },
    [16820] = { name = "Nightslayer Chestpiece", quality = 4, source = "Raid", sourceDetail = "MC (Golemagg)" },
    [16827] = { name = "Nightslayer Belt", quality = 4, source = "Raid", sourceDetail = "MC (Trash)" },
    [16822] = { name = "Nightslayer Pants", quality = 4, source = "Raid", sourceDetail = "MC (Magmadar)" },
    [16824] = { name = "Nightslayer Boots", quality = 4, source = "Raid", sourceDetail = "MC (Shazzrah)" },
    
    -- Priest - Prophecy
    [16813] = { name = "Circlet of Prophecy", quality = 4, source = "Raid", sourceDetail = "MC (Garr)" },
    [16816] = { name = "Mantle of Prophecy", quality = 4, source = "Raid", sourceDetail = "MC (Baron Geddon)" },
    [16819] = { name = "Vambraces of Prophecy", quality = 4, source = "Raid", sourceDetail = "MC (Trash)" },
    [16812] = { name = "Gloves of Prophecy", quality = 4, source = "Raid", sourceDetail = "MC (Gehennas)" },
    [16815] = { name = "Robes of Prophecy", quality = 4, source = "Raid", sourceDetail = "MC (Golemagg)" },
    [16817] = { name = "Girdle of Prophecy", quality = 4, source = "Raid", sourceDetail = "MC (Trash)" },
    [16814] = { name = "Pants of Prophecy", quality = 4, source = "Raid", sourceDetail = "MC (Magmadar)" },
    [16811] = { name = "Boots of Prophecy", quality = 4, source = "Raid", sourceDetail = "MC (Shazzrah)" },
    
    -- Shaman - Earthfury
    [16842] = { name = "Earthfury Helmet", quality = 4, source = "Raid", sourceDetail = "MC (Garr)" },
    [16844] = { name = "Earthfury Epaulets", quality = 4, source = "Raid", sourceDetail = "MC (Baron Geddon)" },
    [16840] = { name = "Earthfury Bracers", quality = 4, source = "Raid", sourceDetail = "MC (Trash)" },
    [16839] = { name = "Earthfury Gauntlets", quality = 4, source = "Raid", sourceDetail = "MC (Gehennas)" },
    [16841] = { name = "Earthfury Vestments", quality = 4, source = "Raid", sourceDetail = "MC (Golemagg)" },
    [16838] = { name = "Earthfury Belt", quality = 4, source = "Raid", sourceDetail = "MC (Trash)" },
    [16843] = { name = "Earthfury Legguards", quality = 4, source = "Raid", sourceDetail = "MC (Magmadar)" },
    [16837] = { name = "Earthfury Boots", quality = 4, source = "Raid", sourceDetail = "MC (Shazzrah)" },
    
    -- Mage - Arcanist
    [16795] = { name = "Arcanist Crown", quality = 4, source = "Raid", sourceDetail = "MC (Garr)" },
    [16797] = { name = "Arcanist Mantle", quality = 4, source = "Raid", sourceDetail = "MC (Baron Geddon)" },
    [16799] = { name = "Arcanist Bindings", quality = 4, source = "Raid", sourceDetail = "MC (Trash)" },
    [16801] = { name = "Arcanist Gloves", quality = 4, source = "Raid", sourceDetail = "MC (Gehennas)" },
    [16798] = { name = "Arcanist Robes", quality = 4, source = "Raid", sourceDetail = "MC (Golemagg)" },
    [16802] = { name = "Arcanist Belt", quality = 4, source = "Raid", sourceDetail = "MC (Trash)" },
    [16796] = { name = "Arcanist Leggings", quality = 4, source = "Raid", sourceDetail = "MC (Magmadar)" },
    [16800] = { name = "Arcanist Boots", quality = 4, source = "Raid", sourceDetail = "MC (Shazzrah)" },
    
    -- Warlock - Felheart
    [16808] = { name = "Felheart Horns", quality = 4, source = "Raid", sourceDetail = "MC (Garr)" },
    [16807] = { name = "Felheart Shoulder Pads", quality = 4, source = "Raid", sourceDetail = "MC (Baron Geddon)" },
    [16804] = { name = "Felheart Bracers", quality = 4, source = "Raid", sourceDetail = "MC (Trash)" },
    [16805] = { name = "Felheart Gloves", quality = 4, source = "Raid", sourceDetail = "MC (Gehennas)" },
    [16809] = { name = "Felheart Robes", quality = 4, source = "Raid", sourceDetail = "MC (Golemagg)" },
    [16806] = { name = "Felheart Belt", quality = 4, source = "Raid", sourceDetail = "MC (Trash)" },
    [16810] = { name = "Felheart Pants", quality = 4, source = "Raid", sourceDetail = "MC (Magmadar)" },
    [16803] = { name = "Felheart Slippers", quality = 4, source = "Raid", sourceDetail = "MC (Shazzrah)" },
    
    -- Druid - Cenarion
    [16834] = { name = "Cenarion Helm", quality = 4, source = "Raid", sourceDetail = "MC (Garr)" },
    [16836] = { name = "Cenarion Spaulders", quality = 4, source = "Raid", sourceDetail = "MC (Baron Geddon)" },
    [16830] = { name = "Cenarion Bracers", quality = 4, source = "Raid", sourceDetail = "MC (Trash)" },
    [16831] = { name = "Cenarion Gloves", quality = 4, source = "Raid", sourceDetail = "MC (Gehennas)" },
    [16833] = { name = "Cenarion Vestments", quality = 4, source = "Raid", sourceDetail = "MC (Golemagg)" },
    [16828] = { name = "Cenarion Belt", quality = 4, source = "Raid", sourceDetail = "MC (Trash)" },
    [16835] = { name = "Cenarion Leggings", quality = 4, source = "Raid", sourceDetail = "MC (Magmadar)" },
    [16829] = { name = "Cenarion Boots", quality = 4, source = "Raid", sourceDetail = "MC (Shazzrah)" },
    
    -- ============================================================================
    --                      TIER 2 SETS - BWL
    -- ============================================================================
    -- Warrior - Wrath
    [16963] = { name = "Helm of Wrath", quality = 4, source = "Raid", sourceDetail = "BWL (Nefarian)" },
    [16961] = { name = "Pauldrons of Wrath", quality = 4, source = "Raid", sourceDetail = "BWL (Chromaggus)" },
    [16959] = { name = "Bracelets of Wrath", quality = 4, source = "Raid", sourceDetail = "BWL (Razorgore)" },
    [16964] = { name = "Gauntlets of Wrath", quality = 4, source = "Raid", sourceDetail = "BWL (Firemaw/Ebonroc/Flamegor)" },
    [16966] = { name = "Breastplate of Wrath", quality = 4, source = "Raid", sourceDetail = "BWL (Nefarian)" },
    [16960] = { name = "Waistband of Wrath", quality = 4, source = "Raid", sourceDetail = "BWL (Vaelastrasz)" },
    [16962] = { name = "Legplates of Wrath", quality = 4, source = "Raid", sourceDetail = "BWL (Razorgore)" },
    [16965] = { name = "Sabatons of Wrath", quality = 4, source = "Raid", sourceDetail = "BWL (Broodlord)" },
    
    -- Paladin - Judgement
    [16955] = { name = "Judgement Crown", quality = 4, source = "Raid", sourceDetail = "Onyxia" },
    [16953] = { name = "Judgement Spaulders", quality = 4, source = "Raid", sourceDetail = "BWL (Chromaggus)" },
    [16951] = { name = "Judgement Bindings", quality = 4, source = "Raid", sourceDetail = "BWL (Razorgore)" },
    [16956] = { name = "Judgement Gauntlets", quality = 4, source = "Raid", sourceDetail = "BWL (Firemaw/Ebonroc/Flamegor)" },
    [16958] = { name = "Judgement Breastplate", quality = 4, source = "Raid", sourceDetail = "BWL (Nefarian)" },
    [16952] = { name = "Judgement Belt", quality = 4, source = "Raid", sourceDetail = "BWL (Vaelastrasz)" },
    [16954] = { name = "Judgement Legplates", quality = 4, source = "Raid", sourceDetail = "BWL (Razorgore)" },
    [16957] = { name = "Judgement Sabatons", quality = 4, source = "Raid", sourceDetail = "BWL (Broodlord)" },
    
    -- Hunter - Dragonstalker
    [16939] = { name = "Dragonstalker's Helm", quality = 4, source = "Raid", sourceDetail = "BWL (Nefarian)" },
    [16937] = { name = "Dragonstalker's Spaulders", quality = 4, source = "Raid", sourceDetail = "BWL (Chromaggus)" },
    [16935] = { name = "Dragonstalker's Bracers", quality = 4, source = "Raid", sourceDetail = "BWL (Razorgore)" },
    [16940] = { name = "Dragonstalker's Gauntlets", quality = 4, source = "Raid", sourceDetail = "BWL (Firemaw/Ebonroc/Flamegor)" },
    [16942] = { name = "Dragonstalker's Breastplate", quality = 4, source = "Raid", sourceDetail = "BWL (Nefarian)" },
    [16936] = { name = "Dragonstalker's Belt", quality = 4, source = "Raid", sourceDetail = "BWL (Vaelastrasz)" },
    [16938] = { name = "Dragonstalker's Legguards", quality = 4, source = "Raid", sourceDetail = "BWL (Razorgore)" },
    [16941] = { name = "Dragonstalker's Greaves", quality = 4, source = "Raid", sourceDetail = "BWL (Broodlord)" },
    
    -- Rogue - Bloodfang
    [16908] = { name = "Bloodfang Hood", quality = 4, source = "Raid", sourceDetail = "BWL (Nefarian)" },
    [16832] = { name = "Bloodfang Spaulders", quality = 4, source = "Raid", sourceDetail = "BWL (Chromaggus)" },
    [16911] = { name = "Bloodfang Bracers", quality = 4, source = "Raid", sourceDetail = "BWL (Razorgore)" },
    [16907] = { name = "Bloodfang Gloves", quality = 4, source = "Raid", sourceDetail = "BWL (Firemaw/Ebonroc/Flamegor)" },
    [16905] = { name = "Bloodfang Chestpiece", quality = 4, source = "Raid", sourceDetail = "BWL (Nefarian)" },
    [16910] = { name = "Bloodfang Belt", quality = 4, source = "Raid", sourceDetail = "BWL (Vaelastrasz)" },
    [16909] = { name = "Bloodfang Pants", quality = 4, source = "Raid", sourceDetail = "BWL (Razorgore)" },
    [16906] = { name = "Bloodfang Boots", quality = 4, source = "Raid", sourceDetail = "BWL (Broodlord)" },
    
    -- Priest - Transcendence
    [16921] = { name = "Halo of Transcendence", quality = 4, source = "Raid", sourceDetail = "BWL (Nefarian)" },
    [16924] = { name = "Pauldrons of Transcendence", quality = 4, source = "Raid", sourceDetail = "BWL (Chromaggus)" },
    [16926] = { name = "Bindings of Transcendence", quality = 4, source = "Raid", sourceDetail = "BWL (Razorgore)" },
    [16920] = { name = "Handguards of Transcendence", quality = 4, source = "Raid", sourceDetail = "BWL (Firemaw/Ebonroc/Flamegor)" },
    [16923] = { name = "Robes of Transcendence", quality = 4, source = "Raid", sourceDetail = "BWL (Nefarian)" },
    [16925] = { name = "Belt of Transcendence", quality = 4, source = "Raid", sourceDetail = "BWL (Vaelastrasz)" },
    [16922] = { name = "Leggings of Transcendence", quality = 4, source = "Raid", sourceDetail = "BWL (Razorgore)" },
    [16919] = { name = "Boots of Transcendence", quality = 4, source = "Raid", sourceDetail = "BWL (Broodlord)" },
    
    -- Shaman - Ten Storms
    [16947] = { name = "Helmet of Ten Storms", quality = 4, source = "Raid", sourceDetail = "Onyxia" },
    [16945] = { name = "Epaulets of Ten Storms", quality = 4, source = "Raid", sourceDetail = "BWL (Chromaggus)" },
    [16943] = { name = "Bracers of Ten Storms", quality = 4, source = "Raid", sourceDetail = "BWL (Razorgore)" },
    [16948] = { name = "Gauntlets of Ten Storms", quality = 4, source = "Raid", sourceDetail = "BWL (Firemaw/Ebonroc/Flamegor)" },
    [16950] = { name = "Breastplate of Ten Storms", quality = 4, source = "Raid", sourceDetail = "BWL (Nefarian)" },
    [16944] = { name = "Belt of Ten Storms", quality = 4, source = "Raid", sourceDetail = "BWL (Vaelastrasz)" },
    [16946] = { name = "Legplates of Ten Storms", quality = 4, source = "Raid", sourceDetail = "BWL (Razorgore)" },
    [16949] = { name = "Greaves of Ten Storms", quality = 4, source = "Raid", sourceDetail = "BWL (Broodlord)" },
    
    -- Mage - Netherwind
    [16914] = { name = "Netherwind Crown", quality = 4, source = "Raid", sourceDetail = "BWL (Nefarian)" },
    [16917] = { name = "Netherwind Mantle", quality = 4, source = "Raid", sourceDetail = "BWL (Chromaggus)" },
    [16918] = { name = "Netherwind Bindings", quality = 4, source = "Raid", sourceDetail = "BWL (Razorgore)" },
    [16913] = { name = "Netherwind Gloves", quality = 4, source = "Raid", sourceDetail = "BWL (Firemaw/Ebonroc/Flamegor)" },
    [16916] = { name = "Netherwind Robes", quality = 4, source = "Raid", sourceDetail = "BWL (Nefarian)" },
    [16818] = { name = "Netherwind Belt", quality = 4, source = "Raid", sourceDetail = "BWL (Vaelastrasz)" },
    [16915] = { name = "Netherwind Pants", quality = 4, source = "Raid", sourceDetail = "BWL (Razorgore)" },
    [16912] = { name = "Netherwind Boots", quality = 4, source = "Raid", sourceDetail = "BWL (Broodlord)" },
    
    -- Warlock - Nemesis
    [16929] = { name = "Nemesis Skullcap", quality = 4, source = "Raid", sourceDetail = "BWL (Nefarian)" },
    [16932] = { name = "Nemesis Spaulders", quality = 4, source = "Raid", sourceDetail = "BWL (Chromaggus)" },
    [16934] = { name = "Nemesis Bracers", quality = 4, source = "Raid", sourceDetail = "BWL (Razorgore)" },
    [16928] = { name = "Nemesis Gloves", quality = 4, source = "Raid", sourceDetail = "BWL (Firemaw/Ebonroc/Flamegor)" },
    [16931] = { name = "Nemesis Robes", quality = 4, source = "Raid", sourceDetail = "BWL (Nefarian)" },
    [16933] = { name = "Nemesis Belt", quality = 4, source = "Raid", sourceDetail = "BWL (Vaelastrasz)" },
    [16930] = { name = "Nemesis Leggings", quality = 4, source = "Raid", sourceDetail = "BWL (Razorgore)" },
    [16927] = { name = "Nemesis Boots", quality = 4, source = "Raid", sourceDetail = "BWL (Broodlord)" },
    
    -- Druid - Stormrage
    [16900] = { name = "Stormrage Cover", quality = 4, source = "Raid", sourceDetail = "BWL (Nefarian)" },
    [16902] = { name = "Stormrage Pauldrons", quality = 4, source = "Raid", sourceDetail = "BWL (Chromaggus)" },
    [16904] = { name = "Stormrage Bracers", quality = 4, source = "Raid", sourceDetail = "BWL (Razorgore)" },
    [16899] = { name = "Stormrage Handguards", quality = 4, source = "Raid", sourceDetail = "BWL (Firemaw/Ebonroc/Flamegor)" },
    [16897] = { name = "Stormrage Chestguard", quality = 4, source = "Raid", sourceDetail = "BWL (Nefarian)" },
    [16903] = { name = "Stormrage Belt", quality = 4, source = "Raid", sourceDetail = "BWL (Vaelastrasz)" },
    [16901] = { name = "Stormrage Legguards", quality = 4, source = "Raid", sourceDetail = "BWL (Razorgore)" },
    [16898] = { name = "Stormrage Boots", quality = 4, source = "Raid", sourceDetail = "BWL (Broodlord)" },
    
    -- ============================================================================
    --                      MORE MC/BWL WEAPONS & MISC
    -- ============================================================================
    [17182] = { name = "Sulfuras, Hand of Ragnaros", quality = 5, source = "Crafted", sourceDetail = "Ragnaros Eye + Sulfuron Hammer" },
    [18563] = { name = "Bindings of the Windseeker", quality = 5, source = "Raid", sourceDetail = "MC (Garr/Baron Geddon)" },
    [18564] = { name = "Bindings of the Windseeker", quality = 5, source = "Raid", sourceDetail = "MC (Garr/Baron Geddon)" },
    [19019] = { name = "Thunderfury, Blessed Blade of the Windseeker", quality = 5, source = "Quest", sourceDetail = "Legendary Quest (MC)" },
    [17780] = { name = "Blade of Eternal Darkness", quality = 4, source = "Raid", sourceDetail = "MC (Princess Huhuran)" },
    [17076] = { name = "Gutgutter", quality = 4, source = "Raid", sourceDetail = "MC (Baron Geddon)" },
    [17077] = { name = "Crimson Shocker", quality = 4, source = "Raid", sourceDetail = "MC (Garr)" },
    [17103] = { name = "Azuresong Mageblade", quality = 4, source = "Raid", sourceDetail = "MC (Golemagg)" },
    [17104] = { name = "Spinal Reaper", quality = 4, source = "Raid", sourceDetail = "MC (Random Boss)" },
    [17105] = { name = "Aurastone Hammer", quality = 4, source = "Raid", sourceDetail = "MC (Random Boss)" },
    [17106] = { name = "Malistar's Defender", quality = 4, source = "Raid", sourceDetail = "MC (Lucifron)" },
    [17107] = { name = "Dragon's Blood Cape", quality = 4, source = "Raid", sourceDetail = "MC (Random Boss)" },
    [17109] = { name = "Choker of Enlightenment", quality = 4, source = "Raid", sourceDetail = "MC (Majordomo)" },
    [17069] = { name = "Striker's Mark", quality = 4, source = "Raid", sourceDetail = "MC (Magmadar)" },
    [17071] = { name = "Gutgutter", quality = 4, source = "Raid", sourceDetail = "MC (Garr)" },
    [17072] = { name = "Blastershot Launcher", quality = 4, source = "Raid", sourceDetail = "MC (Garr)" },
    [17073] = { name = "Earthshaker", quality = 4, source = "Raid", sourceDetail = "MC (Sulfuron Harbinger)" },
    [17074] = { name = "Shadowstrike", quality = 4, source = "Raid", sourceDetail = "MC (Random Boss)" },
    [17075] = { name = "Vis'kag the Bloodletter", quality = 4, source = "Raid", sourceDetail = "MC (Random Boss)" },
    [18816] = { name = "Perdition's Blade", quality = 4, source = "Raid", sourceDetail = "MC (Ragnaros)" },
    [18817] = { name = "Crown of Destruction", quality = 4, source = "Raid", sourceDetail = "MC (Ragnaros)" },
    [18820] = { name = "Talisman of Ephemeral Power", quality = 4, source = "Raid", sourceDetail = "MC (Various Bosses)" },
    [18821] = { name = "Quick Strike Ring", quality = 4, source = "Raid", sourceDetail = "MC (Various Bosses)" },
    [18822] = { name = "Obsidian Edged Blade", quality = 4, source = "Raid", sourceDetail = "MC (Golemagg)" },
    [18823] = { name = "Aged Core Leather Gloves", quality = 4, source = "Raid", sourceDetail = "MC (Golemagg)" },
    [18829] = { name = "Deep Earth Spaulders", quality = 4, source = "Raid", sourceDetail = "MC (Garr)" },
    [18832] = { name = "Brutality Blade", quality = 4, source = "Raid", sourceDetail = "MC (Various Bosses)" },
    [18842] = { name = "Staff of Dominance", quality = 4, source = "Raid", sourceDetail = "MC (Golemagg)" },
    [18861] = { name = "Flamewaker Legplates", quality = 4, source = "Raid", sourceDetail = "MC (Trash)" },
    [18870] = { name = "Helm of the Lifegiver", quality = 4, source = "Raid", sourceDetail = "MC (Majordomo)" },
    [18871] = { name = "Salamander Scale Pants", quality = 4, source = "Raid", sourceDetail = "MC (Golemagg)" },
    [18872] = { name = "Manastorm Leggings", quality = 4, source = "Raid", sourceDetail = "MC (Majordomo)" },
    [18875] = { name = "Salamander Scale Pants", quality = 4, source = "Raid", sourceDetail = "MC (Golemagg)" },
    [17063] = { name = "Band of Accuria", quality = 4, source = "Raid", sourceDetail = "MC (Ragnaros)" },
    [17066] = { name = "Drillborer Disk", quality = 4, source = "Raid", sourceDetail = "MC (Sulfuron Harbinger)" },
    [17054] = { name = "Azuresong Mageblade", quality = 4, source = "Raid", sourceDetail = "MC (Golemagg)" },
    
    -- BWL Weapons
    [19334] = { name = "The Untamed Blade", quality = 4, source = "Raid", sourceDetail = "BWL (Razorgore)" },
    [19335] = { name = "Spineshatter", quality = 4, source = "Raid", sourceDetail = "BWL (Razorgore)" },
    [19336] = { name = "Archimtiros' Ring of Reckoning", quality = 4, source = "Raid", sourceDetail = "BWL (Nefarian)" },
    [19337] = { name = "The Black Book", quality = 4, source = "Raid", sourceDetail = "BWL (Chromaggus)" },
    [19339] = { name = "Mind Quickening Gem", quality = 4, source = "Raid", sourceDetail = "BWL (Vaelastrasz)" },
    [19340] = { name = "Rune of Metamorphosis", quality = 4, source = "Raid", sourceDetail = "BWL (Chromaggus)" },
    [19341] = { name = "Lifegiving Gem", quality = 4, source = "Raid", sourceDetail = "BWL (Vaelastrasz)" },
    [19342] = { name = "Venomous Totem", quality = 4, source = "Raid", sourceDetail = "BWL (Broodlord)" },
    [19343] = { name = "Scrolls of Blinding Light", quality = 4, source = "Raid", sourceDetail = "BWL (Firemaw)" },
    [19344] = { name = "Natural Alignment Crystal", quality = 4, source = "Raid", sourceDetail = "BWL (Ebonroc)" },
    [19345] = { name = "Aegis of Preservation", quality = 4, source = "Raid", sourceDetail = "BWL (Flamegor)" },
    [19346] = { name = "Dragonfang Blade", quality = 4, source = "Raid", sourceDetail = "BWL (Various)" },
    [19347] = { name = "Crul'shorukh, Edge of Chaos", quality = 4, source = "Raid", sourceDetail = "BWL (Nefarian)" },
    [19348] = { name = "Red Dragonscale Protector", quality = 4, source = "Raid", sourceDetail = "BWL (Firemaw)" },
    [19349] = { name = "Elementium Reinforced Bulwark", quality = 4, source = "Raid", sourceDetail = "BWL (Chromaggus)" },
    [19350] = { name = "Heartstriker", quality = 4, source = "Raid", sourceDetail = "BWL (Firemaw)" },
    [19351] = { name = "Maladath, Runed Blade of the Black Flight", quality = 4, source = "Raid", sourceDetail = "BWL (Broodlord)" },
    [19352] = { name = "Chromatically Tempered Sword", quality = 4, source = "Raid", sourceDetail = "BWL (Chromaggus)" },
    [19353] = { name = "Drake Talon Cleaver", quality = 4, source = "Raid", sourceDetail = "BWL (Broodlord)" },
    [19354] = { name = "Draconic Avenger", quality = 4, source = "Raid", sourceDetail = "BWL (Flamegor)" },
    [19355] = { name = "Shadow Wing Focus Staff", quality = 4, source = "Raid", sourceDetail = "BWL (Ebonroc)" },
    [19356] = { name = "Staff of the Shadow Flame", quality = 4, source = "Raid", sourceDetail = "BWL (Nefarian)" },
    [19357] = { name = "Herald of Woe", quality = 4, source = "Raid", sourceDetail = "BWL (Chromaggus)" },
    [19358] = { name = "Draconic Maul", quality = 4, source = "Raid", sourceDetail = "BWL (Various)" },
    [19360] = { name = "Lok'amir il Romathis", quality = 4, source = "Raid", sourceDetail = "BWL (Nefarian)" },
    [19361] = { name = "Ashjre'thul, Crossbow of Smiting", quality = 4, source = "Raid", sourceDetail = "BWL (Chromaggus)" },
    [19362] = { name = "Doom's Edge", quality = 4, source = "Raid", sourceDetail = "BWL (Various)" },
    [19363] = { name = "Crul'shorukh, Edge of Chaos", quality = 4, source = "Raid", sourceDetail = "BWL (Nefarian)" },
    [19364] = { name = "Ashkandi, Greatsword of the Brotherhood", quality = 4, source = "Raid", sourceDetail = "BWL (Nefarian)" },
    [19365] = { name = "Claw of the Black Drake", quality = 4, source = "Raid", sourceDetail = "BWL (Broodlord)" },
    [19366] = { name = "Master Dragonslayer's Orb", quality = 4, source = "Raid", sourceDetail = "BWL (Flamegor)" },
    [19368] = { name = "Dragonbreath Hand Cannon", quality = 4, source = "Raid", sourceDetail = "BWL (Ebonroc)" },
    [19369] = { name = "Gloves of Rapid Evolution", quality = 4, source = "Raid", sourceDetail = "BWL (Chromaggus)" },
    [19370] = { name = "Mantle of the Blackwing Cabal", quality = 4, source = "Raid", sourceDetail = "BWL (Nefarian)" },
    [19371] = { name = "Pendant of the Fallen Dragon", quality = 4, source = "Raid", sourceDetail = "BWL (Flamegor)" },
    [19372] = { name = "Helm of Endless Rage", quality = 4, source = "Raid", sourceDetail = "BWL (Vaelastrasz)" },
    [19373] = { name = "Black Brood Pauldrons", quality = 4, source = "Raid", sourceDetail = "BWL (Broodlord)" },
    [19374] = { name = "Bracers of Arcane Accuracy", quality = 4, source = "Raid", sourceDetail = "BWL (Ebonroc)" },
    [19375] = { name = "Mish'undare, Circlet of the Mind Flayer", quality = 4, source = "Raid", sourceDetail = "BWL (Nefarian)" },
    [19376] = { name = "Archimtiros' Ring of Reckoning", quality = 4, source = "Raid", sourceDetail = "BWL (Nefarian)" },
    [19377] = { name = "Prestor's Talisman of Connivery", quality = 4, source = "Raid", sourceDetail = "BWL (Nefarian)" },
    [19378] = { name = "Cloak of the Brood Lord", quality = 4, source = "Raid", sourceDetail = "BWL (Nefarian)" },
    [19379] = { name = "Neltharion's Tear", quality = 4, source = "Raid", sourceDetail = "BWL (Nefarian)" },
    [19380] = { name = "Therazane's Link", quality = 4, source = "Raid", sourceDetail = "BWL (Various)" },
    [19381] = { name = "Boots of the Shadow Flame", quality = 4, source = "Raid", sourceDetail = "BWL (Nefarian)" },
    [19385] = { name = "Empowered Leggings", quality = 4, source = "Raid", sourceDetail = "BWL (Razorgore)" },
    [19386] = { name = "Elementium Threaded Cloak", quality = 4, source = "Raid", sourceDetail = "BWL (Razorgore)" },
    [19387] = { name = "Chromatic Boots", quality = 4, source = "Raid", sourceDetail = "BWL (Chromaggus)" },
    [19388] = { name = "Angelista's Grasp", quality = 4, source = "Raid", sourceDetail = "BWL (Razorgore)" },
    [19389] = { name = "Taut Dragonhide Shoulderpads", quality = 4, source = "Raid", sourceDetail = "BWL (Firemaw)" },
    [19390] = { name = "Taut Dragonhide Gloves", quality = 4, source = "Raid", sourceDetail = "BWL (Ebonroc)" },
    [19391] = { name = "Shimmering Geta", quality = 4, source = "Raid", sourceDetail = "BWL (Various)" },
    [19392] = { name = "Girdle of the Fallen Crusader", quality = 4, source = "Raid", sourceDetail = "BWL (Razorgore)" },
    [19393] = { name = "Primalist's Linked Waistguard", quality = 4, source = "Raid", sourceDetail = "BWL (Vaelastrasz)" },
    [19394] = { name = "Drake Talon Pauldrons", quality = 4, source = "Raid", sourceDetail = "BWL (Firemaw)" },
    [19395] = { name = "Rejuvenating Gem", quality = 4, source = "Raid", sourceDetail = "BWL (Various)" },
    [19396] = { name = "Taut Dragonhide Belt", quality = 4, source = "Raid", sourceDetail = "BWL (Flamegor)" },
    [19397] = { name = "Ring of Blackrock", quality = 4, source = "Raid", sourceDetail = "BWL (Nefarian)" },
    [19398] = { name = "Cloak of Firemaw", quality = 4, source = "Raid", sourceDetail = "BWL (Firemaw)" },
    [19399] = { name = "Black Ash Robe", quality = 4, source = "Raid", sourceDetail = "BWL (Firemaw)" },
    [19400] = { name = "Firemaw's Clutch", quality = 4, source = "Raid", sourceDetail = "BWL (Firemaw)" },
    [19401] = { name = "Primalist's Linked Legguards", quality = 4, source = "Raid", sourceDetail = "BWL (Ebonroc)" },
    [19402] = { name = "Legguards of the Fallen Crusader", quality = 4, source = "Raid", sourceDetail = "BWL (Broodlord)" },
    [19403] = { name = "Band of Forced Concentration", quality = 4, source = "Raid", sourceDetail = "BWL (Vaelastrasz)" },
    [19405] = { name = "Malfurion's Blessed Bulwark", quality = 4, source = "Raid", sourceDetail = "BWL (Chromaggus)" },
    [19406] = { name = "Drake Fang Talisman", quality = 4, source = "Raid", sourceDetail = "BWL (Ebonroc)" },
    [19407] = { name = "Ebony Flame Gloves", quality = 4, source = "Raid", sourceDetail = "BWL (Ebonroc)" },
    
    -- ============================================================================
    --                      ONYXIA DROPS
    -- ============================================================================
    [17078] = { name = "Sapphiron Drape", quality = 4, source = "Raid", sourceDetail = "Onyxia" },
    [18205] = { name = "Eskhandar's Collar", quality = 4, source = "Raid", sourceDetail = "Onyxia" },
    [17067] = { name = "Ancient Cornerstone Grimoire", quality = 4, source = "Raid", sourceDetail = "Onyxia" },
    [17064] = { name = "Shard of the Scale", quality = 4, source = "Raid", sourceDetail = "Onyxia" },
    [17065] = { name = "Deathbringer", quality = 4, source = "Raid", sourceDetail = "Onyxia" },
    [17068] = { name = "Deathbringer", quality = 4, source = "Raid", sourceDetail = "Onyxia" },
    [17083] = { name = "Scaleshard", quality = 4, source = "Raid", sourceDetail = "Onyxia" },
    [17084] = { name = "Head of Onyxia", quality = 4, source = "Raid", sourceDetail = "Onyxia" },
    [18422] = { name = "Head of Onyxia", quality = 4, source = "Raid", sourceDetail = "Onyxia" },
    [18423] = { name = "Dragonslayer's Signet", quality = 4, source = "Quest", sourceDetail = "Onyxia Head Quest (Alliance)" },
    [18404] = { name = "Dragonslayer's Signet", quality = 4, source = "Quest", sourceDetail = "Onyxia Head Quest (Horde)" },
    [18705] = { name = "Mature Black Dragon Sinew", quality = 4, source = "Raid", sourceDetail = "Onyxia" },
    [18713] = { name = "Rhok'delar, Longbow of the Ancient Keepers", quality = 4, source = "Quest", sourceDetail = "Hunter Epic Quest" },
    [18714] = { name = "Lok'delar, Stave of the Ancient Keepers", quality = 4, source = "Quest", sourceDetail = "Hunter Epic Quest" },
    [18715] = { name = "Lok'delar, Stave of the Ancient Keepers", quality = 4, source = "Quest", sourceDetail = "Hunter Epic Quest" },
    
    -- ============================================================================
    --                      DUNGEON SET 2 (TIER 0.5)
    -- ============================================================================
    -- Warrior - Battlegear of Heroism
    [22010] = { name = "Breastplate of Heroism", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22011] = { name = "Legplates of Heroism", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22012] = { name = "Helm of Heroism", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22013] = { name = "Pauldrons of Heroism", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22014] = { name = "Bracers of Heroism", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22015] = { name = "Belt of Heroism", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22016] = { name = "Gauntlets of Heroism", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22017] = { name = "Boots of Heroism", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    
    -- Paladin - Soulforge Armor
    [22086] = { name = "Soulforge Breastplate", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22087] = { name = "Soulforge Legplates", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22088] = { name = "Soulforge Helm", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22089] = { name = "Soulforge Spaulders", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22090] = { name = "Soulforge Bracers", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22091] = { name = "Soulforge Belt", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22092] = { name = "Soulforge Gauntlets", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22093] = { name = "Soulforge Boots", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    
    -- Hunter - Beastmaster Armor
    [22060] = { name = "Beastmaster's Tunic", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22061] = { name = "Beastmaster's Pants", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22062] = { name = "Beastmaster's Cap", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22063] = { name = "Beastmaster's Mantle", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22064] = { name = "Beastmaster's Bindings", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22065] = { name = "Beastmaster's Belt", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22066] = { name = "Beastmaster's Gloves", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22067] = { name = "Beastmaster's Boots", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    
    -- Rogue - Darkmantle Armor
    [22002] = { name = "Darkmantle Tunic", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22003] = { name = "Darkmantle Pants", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22004] = { name = "Darkmantle Cap", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22005] = { name = "Darkmantle Spaulders", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22006] = { name = "Darkmantle Bracers", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22007] = { name = "Darkmantle Belt", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22008] = { name = "Darkmantle Gloves", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22009] = { name = "Darkmantle Boots", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    
    -- Priest - Vestments of the Virtuous
    [22078] = { name = "Virtuous Robe", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22079] = { name = "Virtuous Skirt", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22080] = { name = "Virtuous Crown", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22081] = { name = "Virtuous Mantle", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22082] = { name = "Virtuous Bracers", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22083] = { name = "Virtuous Belt", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22084] = { name = "Virtuous Gloves", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22085] = { name = "Virtuous Sandals", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    
    -- Mage - Sorcerer's Regalia
    [22062] = { name = "Sorcerer's Robes", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22063] = { name = "Sorcerer's Leggings", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22064] = { name = "Sorcerer's Crown", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22065] = { name = "Sorcerer's Mantle", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22066] = { name = "Sorcerer's Bindings", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22067] = { name = "Sorcerer's Belt", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22068] = { name = "Sorcerer's Gloves", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22069] = { name = "Sorcerer's Boots", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    
    -- Warlock - Deathmist Raiment
    [22070] = { name = "Deathmist Robe", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22071] = { name = "Deathmist Leggings", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22072] = { name = "Deathmist Mask", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22073] = { name = "Deathmist Mantle", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22074] = { name = "Deathmist Bracers", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22075] = { name = "Deathmist Belt", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22076] = { name = "Deathmist Wraps", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22077] = { name = "Deathmist Sandals", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    
    -- Druid - Feralheart Raiment
    [22106] = { name = "Feralheart Vest", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22107] = { name = "Feralheart Kilt", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22108] = { name = "Feralheart Cowl", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22109] = { name = "Feralheart Spaulders", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22110] = { name = "Feralheart Bracers", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22111] = { name = "Feralheart Belt", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22112] = { name = "Feralheart Gloves", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22113] = { name = "Feralheart Boots", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    
    -- Shaman - The Five Thunders
    [22094] = { name = "Vest of the Five Thunders", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22095] = { name = "Kilt of the Five Thunders", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22096] = { name = "Coif of the Five Thunders", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22097] = { name = "Pauldrons of the Five Thunders", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22098] = { name = "Bindings of the Five Thunders", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22099] = { name = "Belt of the Five Thunders", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22100] = { name = "Gauntlets of the Five Thunders", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    [22101] = { name = "Boots of the Five Thunders", quality = 3, source = "Quest", sourceDetail = "Dungeon Set 2 Upgrade" },
    
    -- ============================================================================
    --                      MORE WORLD DROP GREENS - "of Frozen Wrath"
    -- ============================================================================
    [14920] = { name = "Councillor's Boots of Frozen Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 40-45" },
    [14921] = { name = "Councillor's Circlet of Frozen Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 40-45" },
    [14922] = { name = "Councillor's Cloak of Frozen Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 40-45" },
    [14923] = { name = "Councillor's Cuffs of Frozen Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 40-45" },
    [14924] = { name = "Councillor's Gloves of Frozen Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 40-45" },
    [14925] = { name = "Councillor's Pants of Frozen Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 40-45" },
    [14926] = { name = "Councillor's Robes of Frozen Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 40-45" },
    [14927] = { name = "Councillor's Sash of Frozen Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 40-45" },
    [14928] = { name = "Councillor's Shoulders of Frozen Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 40-45" },
    
    -- ============================================================================
    --                      MORE WORLD DROP GREENS - "of Fiery Wrath"
    -- ============================================================================
    [14930] = { name = "Elder's Boots of Fiery Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 36-41" },
    [14931] = { name = "Elder's Bracers of Fiery Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 36-41" },
    [14932] = { name = "Elder's Cloak of Fiery Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 36-41" },
    [14933] = { name = "Elder's Gloves of Fiery Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 36-41" },
    [14934] = { name = "Elder's Hat of Fiery Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 36-41" },
    [14935] = { name = "Elder's Mantle of Fiery Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 36-41" },
    [14936] = { name = "Elder's Pants of Fiery Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 36-41" },
    [14937] = { name = "Elder's Robe of Fiery Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 36-41" },
    [14938] = { name = "Elder's Sash of Fiery Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 36-41" },
    
    -- ============================================================================
    --                      MORE WORLD DROP GREENS - "of Arcane Wrath"
    -- ============================================================================
    [14940] = { name = "Sage's Boots of Arcane Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 32-37" },
    [14941] = { name = "Sage's Bracers of Arcane Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 32-37" },
    [14942] = { name = "Sage's Circlet of Arcane Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 32-37" },
    [14943] = { name = "Sage's Cloak of Arcane Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 32-37" },
    [14944] = { name = "Sage's Gloves of Arcane Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 32-37" },
    [14945] = { name = "Sage's Mantle of Arcane Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 32-37" },
    [14946] = { name = "Sage's Pants of Arcane Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 32-37" },
    [14947] = { name = "Sage's Robe of Arcane Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 32-37" },
    [14948] = { name = "Sage's Sash of Arcane Wrath", quality = 2, source = "World Drop", sourceDetail = "Level 32-37" },
    
    -- ============================================================================
    --                      MORE GREEN LEATHER WORLD DROPS
    -- ============================================================================
    -- Tracker's Armor (Level 35-40)
    [15347] = { name = "Tracker's Belt", quality = 2, source = "World Drop", sourceDetail = "Level 35-40" },
    [15348] = { name = "Tracker's Boots", quality = 2, source = "World Drop", sourceDetail = "Level 35-40" },
    [15349] = { name = "Tracker's Cloak", quality = 2, source = "World Drop", sourceDetail = "Level 35-40" },
    [15350] = { name = "Tracker's Gloves", quality = 2, source = "World Drop", sourceDetail = "Level 35-40" },
    [15351] = { name = "Tracker's Headband", quality = 2, source = "World Drop", sourceDetail = "Level 35-40" },
    [15352] = { name = "Tracker's Leggings", quality = 2, source = "World Drop", sourceDetail = "Level 35-40" },
    [15353] = { name = "Tracker's Shoulderpads", quality = 2, source = "World Drop", sourceDetail = "Level 35-40" },
    [15354] = { name = "Tracker's Tunic", quality = 2, source = "World Drop", sourceDetail = "Level 35-40" },
    [15355] = { name = "Tracker's Wristguards", quality = 2, source = "World Drop", sourceDetail = "Level 35-40" },
    
    -- Archer's Armor (Level 39-44)
    [15360] = { name = "Archer's Belt", quality = 2, source = "World Drop", sourceDetail = "Level 39-44" },
    [15361] = { name = "Archer's Boots", quality = 2, source = "World Drop", sourceDetail = "Level 39-44" },
    [15362] = { name = "Archer's Bracers", quality = 2, source = "World Drop", sourceDetail = "Level 39-44" },
    [15363] = { name = "Archer's Cap", quality = 2, source = "World Drop", sourceDetail = "Level 39-44" },
    [15364] = { name = "Archer's Cloak", quality = 2, source = "World Drop", sourceDetail = "Level 39-44" },
    [15365] = { name = "Archer's Gloves", quality = 2, source = "World Drop", sourceDetail = "Level 39-44" },
    [15366] = { name = "Archer's Jerkin", quality = 2, source = "World Drop", sourceDetail = "Level 39-44" },
    [15367] = { name = "Archer's Longbow", quality = 2, source = "World Drop", sourceDetail = "Level 39-44" },
    [15368] = { name = "Archer's Shoulderpads", quality = 2, source = "World Drop", sourceDetail = "Level 39-44" },
    [15369] = { name = "Archer's Trousers", quality = 2, source = "World Drop", sourceDetail = "Level 39-44" },
    
    -- Imposing Armor (Level 43-48)
    [15380] = { name = "Imposing Belt", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [15381] = { name = "Imposing Boots", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [15382] = { name = "Imposing Bracers", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [15383] = { name = "Imposing Cape", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [15384] = { name = "Imposing Gloves", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [15385] = { name = "Imposing Pants", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [15386] = { name = "Imposing Shoulders", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [15387] = { name = "Imposing Vest", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    [15388] = { name = "Imposing Bandana", quality = 2, source = "World Drop", sourceDetail = "Level 43-48" },
    
    -- Grunt's Armor (Level 15-20 Mail)
    [15492] = { name = "Grunt's Belt", quality = 2, source = "World Drop", sourceDetail = "Level 15-20" },
    [15493] = { name = "Grunt's Bracers", quality = 2, source = "World Drop", sourceDetail = "Level 15-20" },
    [15494] = { name = "Grunt's Cape", quality = 2, source = "World Drop", sourceDetail = "Level 15-20" },
    [15495] = { name = "Grunt's Chestpiece", quality = 2, source = "World Drop", sourceDetail = "Level 15-20" },
    [15496] = { name = "Grunt's Handwraps", quality = 2, source = "World Drop", sourceDetail = "Level 15-20" },
    [15497] = { name = "Grunt's Legguards", quality = 2, source = "World Drop", sourceDetail = "Level 15-20" },
    [15498] = { name = "Grunt's Pauldrons", quality = 2, source = "World Drop", sourceDetail = "Level 15-20" },
    [15499] = { name = "Grunt's Shield", quality = 2, source = "World Drop", sourceDetail = "Level 15-20" },
    
    -- Soldier's Armor (Level 19-24 Mail)
    [15502] = { name = "Soldier's Armor", quality = 2, source = "World Drop", sourceDetail = "Level 19-24" },
    [15503] = { name = "Soldier's Boots", quality = 2, source = "World Drop", sourceDetail = "Level 19-24" },
    [15504] = { name = "Soldier's Cloak", quality = 2, source = "World Drop", sourceDetail = "Level 19-24" },
    [15505] = { name = "Soldier's Gauntlets", quality = 2, source = "World Drop", sourceDetail = "Level 19-24" },
    [15506] = { name = "Soldier's Girdle", quality = 2, source = "World Drop", sourceDetail = "Level 19-24" },
    [15507] = { name = "Soldier's Leggings", quality = 2, source = "World Drop", sourceDetail = "Level 19-24" },
    [15508] = { name = "Soldier's Shield", quality = 2, source = "World Drop", sourceDetail = "Level 19-24" },
    [15509] = { name = "Soldier's Wristguards", quality = 2, source = "World Drop", sourceDetail = "Level 19-24" },
    
    -- Phalanx Armor (Level 27-32 Mail)
    [15560] = { name = "Phalanx Boots", quality = 2, source = "World Drop", sourceDetail = "Level 27-32" },
    [15561] = { name = "Phalanx Bracers", quality = 2, source = "World Drop", sourceDetail = "Level 27-32" },
    [15562] = { name = "Phalanx Breastplate", quality = 2, source = "World Drop", sourceDetail = "Level 27-32" },
    [15563] = { name = "Phalanx Cloak", quality = 2, source = "World Drop", sourceDetail = "Level 27-32" },
    [15564] = { name = "Phalanx Gauntlets", quality = 2, source = "World Drop", sourceDetail = "Level 27-32" },
    [15565] = { name = "Phalanx Girdle", quality = 2, source = "World Drop", sourceDetail = "Level 27-32" },
    [15566] = { name = "Phalanx Headguard", quality = 2, source = "World Drop", sourceDetail = "Level 27-32" },
    [15567] = { name = "Phalanx Leggings", quality = 2, source = "World Drop", sourceDetail = "Level 27-32" },
    [15568] = { name = "Phalanx Spaulders", quality = 2, source = "World Drop", sourceDetail = "Level 27-32" },
    
    -- ============================================================================
    --                      MORE QUEST REWARDS - LEVEL 30-40 ZONES
    -- ============================================================================
    -- Stranglethorn Vale Quests
    [4114] = { name = "Guardian Talisman", quality = 2, source = "Quest", sourceDetail = "Stranglethorn Vale" },
    [4115] = { name = "Shining Silver Breastplate", quality = 3, source = "Quest", sourceDetail = "Stranglethorn Vale" },
    [4116] = { name = "Tigerstrike Mantle", quality = 3, source = "Quest", sourceDetail = "Stranglethorn Vale" },
    [4117] = { name = "Panther Hunter Leggings", quality = 3, source = "Quest", sourceDetail = "Stranglethorn Vale" },
    [4120] = { name = "Jungle Boots", quality = 2, source = "Quest", sourceDetail = "Stranglethorn Vale" },
    [4121] = { name = "Darkspear Shoes", quality = 2, source = "Quest", sourceDetail = "Stranglethorn Vale" },
    [4122] = { name = "Headhunting Spear", quality = 3, source = "Quest", sourceDetail = "Stranglethorn Vale" },
    [4123] = { name = "Gahz'rilla Fang", quality = 3, source = "Quest", sourceDetail = "Stranglethorn Vale" },
    [4128] = { name = "Amulet of the Tides", quality = 3, source = "Quest", sourceDetail = "Stranglethorn Vale" },
    [4129] = { name = "Belt of the Stars", quality = 3, source = "Quest", sourceDetail = "Stranglethorn Vale" },
    
    -- Desolace Quests
    [6752] = { name = "Centaur Longbow", quality = 2, source = "Quest", sourceDetail = "Desolace" },
    [6753] = { name = "Ghostwalker Paws", quality = 2, source = "Quest", sourceDetail = "Desolace" },
    [6754] = { name = "Sprouted Frond", quality = 2, source = "Quest", sourceDetail = "Desolace" },
    [6755] = { name = "Ironwood Maul", quality = 3, source = "Quest", sourceDetail = "Desolace" },
    [6756] = { name = "Kodo Brander", quality = 2, source = "Quest", sourceDetail = "Desolace" },
    [6764] = { name = "Corpulent Wand", quality = 2, source = "Quest", sourceDetail = "Desolace" },
    
    -- Swamp of Sorrows Quests
    [9653] = { name = "Speedy Racer Goggles", quality = 2, source = "Quest", sourceDetail = "Swamp of Sorrows" },
    [9654] = { name = "Mechbuilder's Overalls", quality = 2, source = "Quest", sourceDetail = "Swamp of Sorrows" },
    [9655] = { name = "Ogremind Ring", quality = 2, source = "Quest", sourceDetail = "Swamp of Sorrows" },
    
    -- Blasted Lands Quests
    [11865] = { name = "Blammo Fodder", quality = 2, source = "Quest", sourceDetail = "Blasted Lands" },
    [11866] = { name = "Sharpbeak's Talisman", quality = 2, source = "Quest", sourceDetail = "Blasted Lands" },
    [11867] = { name = "Blackmetal Cape", quality = 3, source = "Quest", sourceDetail = "Blasted Lands" },
    [11868] = { name = "Helm of the Mountain", quality = 3, source = "Quest", sourceDetail = "Blasted Lands" },
    
    -- ============================================================================
    --                      VENDOR ITEMS - REAGENTS & CONSUMABLES
    -- ============================================================================
    [3371] = { name = "Empty Vial", quality = 1, source = "Vendor", sourceDetail = "General Goods" },
    [3372] = { name = "Leaded Vial", quality = 1, source = "Vendor", sourceDetail = "Alchemist" },
    [8925] = { name = "Crystal Vial", quality = 1, source = "Vendor", sourceDetail = "Alchemist" },
    [4289] = { name = "Salt", quality = 1, source = "Vendor", sourceDetail = "Trade Supplier" },
    [2320] = { name = "Coarse Thread", quality = 1, source = "Vendor", sourceDetail = "Trade Supplier" },
    [2321] = { name = "Fine Thread", quality = 1, source = "Vendor", sourceDetail = "Trade Supplier" },
    [4291] = { name = "Silken Thread", quality = 1, source = "Vendor", sourceDetail = "Trade Supplier" },
    [8343] = { name = "Heavy Silken Thread", quality = 1, source = "Vendor", sourceDetail = "Trade Supplier" },
    [14341] = { name = "Rune Thread", quality = 1, source = "Vendor", sourceDetail = "Trade Supplier" },
    [6217] = { name = "Copper Rod", quality = 1, source = "Vendor", sourceDetail = "Enchanting Supplier" },
    [6256] = { name = "Fishing Pole", quality = 1, source = "Vendor", sourceDetail = "Fishing Supplier" },
    [4536] = { name = "Shiny Red Apple", quality = 1, source = "Vendor", sourceDetail = "Food & Drink" },
    [117] = { name = "Tough Jerky", quality = 1, source = "Vendor", sourceDetail = "Food & Drink" },
    [159] = { name = "Refreshing Spring Water", quality = 1, source = "Vendor", sourceDetail = "Food & Drink" },
    [1179] = { name = "Ice Cold Milk", quality = 1, source = "Vendor", sourceDetail = "Food & Drink" },
    [1205] = { name = "Melon Juice", quality = 1, source = "Vendor", sourceDetail = "Food & Drink" },
    [1708] = { name = "Sweet Nectar", quality = 1, source = "Vendor", sourceDetail = "Food & Drink" },
    [1645] = { name = "Moonberry Juice", quality = 1, source = "Vendor", sourceDetail = "Food & Drink" },
    [8766] = { name = "Morning Glory Dew", quality = 1, source = "Vendor", sourceDetail = "Food & Drink" },
    [2512] = { name = "Rough Arrow", quality = 1, source = "Vendor", sourceDetail = "General/Arrows" },
    [2515] = { name = "Sharp Arrow", quality = 1, source = "Vendor", sourceDetail = "General/Arrows" },
    [2519] = { name = "Heavy Shot", quality = 1, source = "Vendor", sourceDetail = "General/Bullets" },
    [3033] = { name = "Solid Shot", quality = 1, source = "Vendor", sourceDetail = "General/Bullets" },
    [17056] = { name = "Light Feather", quality = 1, source = "World Drop", sourceDetail = "Birds" },
    [5500] = { name = "Iridescent Pearl", quality = 2, source = "World Drop", sourceDetail = "Shellfish" },
    [7971] = { name = "Black Pearl", quality = 2, source = "World Drop", sourceDetail = "Shellfish" },
    [7910] = { name = "Star Ruby", quality = 2, source = "World Drop", sourceDetail = "Mining" },
    [12361] = { name = "Blue Sapphire", quality = 2, source = "World Drop", sourceDetail = "Mining" },
    [12364] = { name = "Huge Emerald", quality = 3, source = "World Drop", sourceDetail = "Mining" },
    [12363] = { name = "Arcane Crystal", quality = 3, source = "World Drop", sourceDetail = "Mining (Arcane)" },
    [12800] = { name = "Azerothian Diamond", quality = 3, source = "World Drop", sourceDetail = "Mining" },
    
    -- ============================================================================
    --                      RANDOM ENCHANTS - SWORDS
    -- ============================================================================
    [15210] = { name = "Mercurial Longsword", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [15211] = { name = "Mercurial Sword of Agility", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [15212] = { name = "Mercurial Sword of Intellect", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [15213] = { name = "Mercurial Sword of Spirit", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [15214] = { name = "Mercurial Sword of Stamina", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [15215] = { name = "Mercurial Sword of Strength", quality = 2, source = "World Drop", sourceDetail = "Level 28-33" },
    [15220] = { name = "Battleforge Shield", quality = 2, source = "World Drop", sourceDetail = "Level 23-28" },
    [15221] = { name = "Battleforge Girdle", quality = 2, source = "World Drop", sourceDetail = "Level 23-28" },
    [15222] = { name = "Battleforge Gauntlets", quality = 2, source = "World Drop", sourceDetail = "Level 23-28" },
    [15223] = { name = "Battleforge Legguards", quality = 2, source = "World Drop", sourceDetail = "Level 23-28" },
    [15224] = { name = "Battleforge Shoulderguards", quality = 2, source = "World Drop", sourceDetail = "Level 23-28" },
    [15225] = { name = "Battleforge Armor", quality = 2, source = "World Drop", sourceDetail = "Level 23-28" },
    [15226] = { name = "Battleforge Cloak", quality = 2, source = "World Drop", sourceDetail = "Level 23-28" },
    [15227] = { name = "Battleforge Wristguards", quality = 2, source = "World Drop", sourceDetail = "Level 23-28" },
    [15228] = { name = "Stonecloth Belt", quality = 2, source = "World Drop", sourceDetail = "Level 21-26" },
    [15229] = { name = "Stonecloth Bindings", quality = 2, source = "World Drop", sourceDetail = "Level 21-26" },
    [15230] = { name = "Stonecloth Boots", quality = 2, source = "World Drop", sourceDetail = "Level 21-26" },
    [15231] = { name = "Stonecloth Circlet", quality = 2, source = "World Drop", sourceDetail = "Level 21-26" },
    [15232] = { name = "Stonecloth Epaulets", quality = 2, source = "World Drop", sourceDetail = "Level 21-26" },
    [15233] = { name = "Stonecloth Gloves", quality = 2, source = "World Drop", sourceDetail = "Level 21-26" },
    [15234] = { name = "Stonecloth Pants", quality = 2, source = "World Drop", sourceDetail = "Level 21-26" },
    [15235] = { name = "Stonecloth Robe", quality = 2, source = "World Drop", sourceDetail = "Level 21-26" },
    [15236] = { name = "Stonecloth Cape", quality = 2, source = "World Drop", sourceDetail = "Level 21-26" },
    
    -- ============================================================================
    --                      PVP RANK REWARDS - ALLIANCE
    -- ============================================================================
    -- Rank 7 - Knight/Stone Guard
    [16369] = { name = "Knight's Chain Armor", quality = 3, source = "PvP", sourceDetail = "Rank 7 (Knight)" },
    [16370] = { name = "Knight's Chain Boots", quality = 3, source = "PvP", sourceDetail = "Rank 7 (Knight)" },
    [16371] = { name = "Knight's Chain Gauntlets", quality = 3, source = "PvP", sourceDetail = "Rank 7 (Knight)" },
    [16372] = { name = "Knight's Chain Leggings", quality = 3, source = "PvP", sourceDetail = "Rank 7 (Knight)" },
    [16373] = { name = "Knight's Plate Armor", quality = 3, source = "PvP", sourceDetail = "Rank 7 (Knight)" },
    [16374] = { name = "Knight's Plate Boots", quality = 3, source = "PvP", sourceDetail = "Rank 7 (Knight)" },
    [16375] = { name = "Knight's Plate Gauntlets", quality = 3, source = "PvP", sourceDetail = "Rank 7 (Knight)" },
    [16376] = { name = "Knight's Plate Leggings", quality = 3, source = "PvP", sourceDetail = "Rank 7 (Knight)" },
    [16377] = { name = "Knight's Leather Armor", quality = 3, source = "PvP", sourceDetail = "Rank 7 (Knight)" },
    [16378] = { name = "Knight's Leather Boots", quality = 3, source = "PvP", sourceDetail = "Rank 7 (Knight)" },
    [16379] = { name = "Knight's Leather Gloves", quality = 3, source = "PvP", sourceDetail = "Rank 7 (Knight)" },
    [16380] = { name = "Knight's Leather Leggings", quality = 3, source = "PvP", sourceDetail = "Rank 7 (Knight)" },
    [16381] = { name = "Knight's Satin Boots", quality = 3, source = "PvP", sourceDetail = "Rank 7 (Knight)" },
    [16382] = { name = "Knight's Satin Gloves", quality = 3, source = "PvP", sourceDetail = "Rank 7 (Knight)" },
    [16383] = { name = "Knight's Satin Hood", quality = 3, source = "PvP", sourceDetail = "Rank 7 (Knight)" },
    [16384] = { name = "Knight's Satin Leggings", quality = 3, source = "PvP", sourceDetail = "Rank 7 (Knight)" },
    [16385] = { name = "Knight's Satin Robes", quality = 3, source = "PvP", sourceDetail = "Rank 7 (Knight)" },
    
    -- Rank 8 - Knight-Captain/Blood Guard
    [16391] = { name = "Knight-Captain's Chain Hauberk", quality = 3, source = "PvP", sourceDetail = "Rank 8 (Knight-Captain)" },
    [16392] = { name = "Knight-Captain's Chain Shoulders", quality = 3, source = "PvP", sourceDetail = "Rank 8 (Knight-Captain)" },
    [16393] = { name = "Knight-Captain's Chain Girdle", quality = 3, source = "PvP", sourceDetail = "Rank 8 (Knight-Captain)" },
    [16401] = { name = "Knight-Captain's Plate Hauberk", quality = 3, source = "PvP", sourceDetail = "Rank 8 (Knight-Captain)" },
    [16402] = { name = "Knight-Captain's Plate Chestguard", quality = 3, source = "PvP", sourceDetail = "Rank 8 (Knight-Captain)" },
    [16403] = { name = "Knight-Captain's Plate Shoulders", quality = 3, source = "PvP", sourceDetail = "Rank 8 (Knight-Captain)" },
    [16406] = { name = "Knight-Captain's Leather Chestpiece", quality = 3, source = "PvP", sourceDetail = "Rank 8 (Knight-Captain)" },
    [16407] = { name = "Knight-Captain's Leather Shoulders", quality = 3, source = "PvP", sourceDetail = "Rank 8 (Knight-Captain)" },
    [16408] = { name = "Knight-Captain's Leather Belt", quality = 3, source = "PvP", sourceDetail = "Rank 8 (Knight-Captain)" },
    [16409] = { name = "Knight-Captain's Silk Raiment", quality = 3, source = "PvP", sourceDetail = "Rank 8 (Knight-Captain)" },
    [16410] = { name = "Knight-Captain's Silk Mantle", quality = 3, source = "PvP", sourceDetail = "Rank 8 (Knight-Captain)" },
    [16411] = { name = "Knight-Captain's Silk Sash", quality = 3, source = "PvP", sourceDetail = "Rank 8 (Knight-Captain)" },
    
    -- Rank 10 - Lieutenant Commander/Champion
    [16426] = { name = "Lieutenant Commander's Leather Veil", quality = 4, source = "PvP", sourceDetail = "Rank 10 (Lt. Commander)" },
    [16427] = { name = "Lieutenant Commander's Leather Spaulders", quality = 4, source = "PvP", sourceDetail = "Rank 10 (Lt. Commander)" },
    [16428] = { name = "Lieutenant Commander's Leather Helm", quality = 4, source = "PvP", sourceDetail = "Rank 10 (Lt. Commander)" },
    [16429] = { name = "Lieutenant Commander's Plate Helm", quality = 4, source = "PvP", sourceDetail = "Rank 10 (Lt. Commander)" },
    [16430] = { name = "Lieutenant Commander's Plate Pauldrons", quality = 4, source = "PvP", sourceDetail = "Rank 10 (Lt. Commander)" },
    [16431] = { name = "Lieutenant Commander's Chain Helm", quality = 4, source = "PvP", sourceDetail = "Rank 10 (Lt. Commander)" },
    [16432] = { name = "Lieutenant Commander's Chain Pauldrons", quality = 4, source = "PvP", sourceDetail = "Rank 10 (Lt. Commander)" },
    [16433] = { name = "Lieutenant Commander's Silk Cowl", quality = 4, source = "PvP", sourceDetail = "Rank 10 (Lt. Commander)" },
    [16434] = { name = "Lieutenant Commander's Silk Spaulders", quality = 4, source = "PvP", sourceDetail = "Rank 10 (Lt. Commander)" },
    [16435] = { name = "Lieutenant Commander's Crown", quality = 4, source = "PvP", sourceDetail = "Rank 10 (Lt. Commander)" },
    
    -- Rank 12 - Marshal/General
    [16441] = { name = "Marshal's Chain Boots", quality = 4, source = "PvP", sourceDetail = "Rank 12 (Marshal)" },
    [16442] = { name = "Marshal's Chain Legguards", quality = 4, source = "PvP", sourceDetail = "Rank 12 (Marshal)" },
    [16443] = { name = "Marshal's Chain Grips", quality = 4, source = "PvP", sourceDetail = "Rank 12 (Marshal)" },
    [16444] = { name = "Marshal's Chain Breastplate", quality = 4, source = "PvP", sourceDetail = "Rank 12 (Marshal)" },
    [16445] = { name = "Marshal's Plate Boots", quality = 4, source = "PvP", sourceDetail = "Rank 12 (Marshal)" },
    [16446] = { name = "Marshal's Plate Legguards", quality = 4, source = "PvP", sourceDetail = "Rank 12 (Marshal)" },
    [16447] = { name = "Marshal's Plate Gauntlets", quality = 4, source = "PvP", sourceDetail = "Rank 12 (Marshal)" },
    [16448] = { name = "Marshal's Plate Breastplate", quality = 4, source = "PvP", sourceDetail = "Rank 12 (Marshal)" },
    [16449] = { name = "Marshal's Leather Footguards", quality = 4, source = "PvP", sourceDetail = "Rank 12 (Marshal)" },
    [16450] = { name = "Marshal's Leather Leggings", quality = 4, source = "PvP", sourceDetail = "Rank 12 (Marshal)" },
    [16451] = { name = "Marshal's Leather Handgrips", quality = 4, source = "PvP", sourceDetail = "Rank 12 (Marshal)" },
    [16452] = { name = "Marshal's Leather Chestpiece", quality = 4, source = "PvP", sourceDetail = "Rank 12 (Marshal)" },
    [16453] = { name = "Marshal's Silk Footwraps", quality = 4, source = "PvP", sourceDetail = "Rank 12 (Marshal)" },
    [16454] = { name = "Marshal's Silk Leggings", quality = 4, source = "PvP", sourceDetail = "Rank 12 (Marshal)" },
    [16455] = { name = "Marshal's Silk Gloves", quality = 4, source = "PvP", sourceDetail = "Rank 12 (Marshal)" },
    [16456] = { name = "Marshal's Silk Vestments", quality = 4, source = "PvP", sourceDetail = "Rank 12 (Marshal)" },
    
    -- Rank 13 - Field Marshal/Warlord
    [16459] = { name = "Field Marshal's Chain Helm", quality = 4, source = "PvP", sourceDetail = "Rank 13 (Field Marshal)" },
    [16460] = { name = "Field Marshal's Chain Spaulders", quality = 4, source = "PvP", sourceDetail = "Rank 13 (Field Marshal)" },
    [16461] = { name = "Field Marshal's Chain Breastplate", quality = 4, source = "PvP", sourceDetail = "Rank 13 (Field Marshal)" },
    [16462] = { name = "Field Marshal's Plate Helm", quality = 4, source = "PvP", sourceDetail = "Rank 13 (Field Marshal)" },
    [16463] = { name = "Field Marshal's Plate Shoulderguards", quality = 4, source = "PvP", sourceDetail = "Rank 13 (Field Marshal)" },
    [16464] = { name = "Field Marshal's Plate Armor", quality = 4, source = "PvP", sourceDetail = "Rank 13 (Field Marshal)" },
    [16465] = { name = "Field Marshal's Leather Mask", quality = 4, source = "PvP", sourceDetail = "Rank 13 (Field Marshal)" },
    [16466] = { name = "Field Marshal's Leather Epaulets", quality = 4, source = "PvP", sourceDetail = "Rank 13 (Field Marshal)" },
    [16467] = { name = "Field Marshal's Leather Chestpiece", quality = 4, source = "PvP", sourceDetail = "Rank 13 (Field Marshal)" },
    [16468] = { name = "Field Marshal's Coronet", quality = 4, source = "PvP", sourceDetail = "Rank 13 (Field Marshal)" },
    [16469] = { name = "Field Marshal's Satin Mantle", quality = 4, source = "PvP", sourceDetail = "Rank 13 (Field Marshal)" },
    [16470] = { name = "Field Marshal's Satin Vestments", quality = 4, source = "PvP", sourceDetail = "Rank 13 (Field Marshal)" },
    
    -- Rank 14 - Grand Marshal/High Warlord - WEAPONS
    [18826] = { name = "Grand Marshal's Longsword", quality = 4, source = "PvP", sourceDetail = "Rank 14 (Grand Marshal)" },
    [18827] = { name = "Grand Marshal's Aegis", quality = 4, source = "PvP", sourceDetail = "Rank 14 (Grand Marshal)" },
    [18828] = { name = "Grand Marshal's Bullseye", quality = 4, source = "PvP", sourceDetail = "Rank 14 (Grand Marshal)" },
    [18830] = { name = "Grand Marshal's Dirk", quality = 4, source = "PvP", sourceDetail = "Rank 14 (Grand Marshal)" },
    [18831] = { name = "Grand Marshal's Handaxe", quality = 4, source = "PvP", sourceDetail = "Rank 14 (Grand Marshal)" },
    [18832] = { name = "Grand Marshal's Sunderer", quality = 4, source = "PvP", sourceDetail = "Rank 14 (Grand Marshal)" },
    [18833] = { name = "Grand Marshal's Punisher", quality = 4, source = "PvP", sourceDetail = "Rank 14 (Grand Marshal)" },
    [18834] = { name = "Grand Marshal's Claymore", quality = 4, source = "PvP", sourceDetail = "Rank 14 (Grand Marshal)" },
    [18835] = { name = "Grand Marshal's Stave", quality = 4, source = "PvP", sourceDetail = "Rank 14 (Grand Marshal)" },
    [18836] = { name = "Grand Marshal's Glaive", quality = 4, source = "PvP", sourceDetail = "Rank 14 (Grand Marshal)" },
    [18837] = { name = "Grand Marshal's Swiftblade", quality = 4, source = "PvP", sourceDetail = "Rank 14 (Grand Marshal)" },
    [18838] = { name = "Grand Marshal's Maul", quality = 4, source = "PvP", sourceDetail = "Rank 14 (Grand Marshal)" },
    [18840] = { name = "Grand Marshal's Warhammer", quality = 4, source = "PvP", sourceDetail = "Rank 14 (Grand Marshal)" },
    [18843] = { name = "Grand Marshal's Repeater", quality = 4, source = "PvP", sourceDetail = "Rank 14 (Grand Marshal)" },
    [18844] = { name = "Grand Marshal's Hand Cannon", quality = 4, source = "PvP", sourceDetail = "Rank 14 (Grand Marshal)" },
    
    -- ============================================================================
    --                      PVP RANK REWARDS - HORDE
    -- ============================================================================
    -- Rank 7 - Stone Guard
    [16479] = { name = "Blood Guard's Chain Gauntlets", quality = 3, source = "PvP", sourceDetail = "Rank 7 (Blood Guard)" },
    [16480] = { name = "Blood Guard's Chain Girdle", quality = 3, source = "PvP", sourceDetail = "Rank 7 (Blood Guard)" },
    [16481] = { name = "Blood Guard's Mail Boots", quality = 3, source = "PvP", sourceDetail = "Rank 7 (Blood Guard)" },
    [16482] = { name = "Blood Guard's Mail Walkers", quality = 3, source = "PvP", sourceDetail = "Rank 7 (Blood Guard)" },
    [16483] = { name = "Blood Guard's Plate Boots", quality = 3, source = "PvP", sourceDetail = "Rank 7 (Blood Guard)" },
    [16484] = { name = "Blood Guard's Plate Gauntlets", quality = 3, source = "PvP", sourceDetail = "Rank 7 (Blood Guard)" },
    [16485] = { name = "Blood Guard's Plate Girdle", quality = 3, source = "PvP", sourceDetail = "Rank 7 (Blood Guard)" },
    [16486] = { name = "Blood Guard's Plate Greaves", quality = 3, source = "PvP", sourceDetail = "Rank 7 (Blood Guard)" },
    [16487] = { name = "Blood Guard's Dragonhide Boots", quality = 3, source = "PvP", sourceDetail = "Rank 7 (Blood Guard)" },
    [16488] = { name = "Blood Guard's Dragonhide Gauntlets", quality = 3, source = "PvP", sourceDetail = "Rank 7 (Blood Guard)" },
    [16489] = { name = "Blood Guard's Dragonhide Belt", quality = 3, source = "PvP", sourceDetail = "Rank 7 (Blood Guard)" },
    [16490] = { name = "Blood Guard's Dragonhide Treads", quality = 3, source = "PvP", sourceDetail = "Rank 7 (Blood Guard)" },
    [16491] = { name = "Blood Guard's Leather Treads", quality = 3, source = "PvP", sourceDetail = "Rank 7 (Blood Guard)" },
    [16492] = { name = "Blood Guard's Leather Vices", quality = 3, source = "PvP", sourceDetail = "Rank 7 (Blood Guard)" },
    [16494] = { name = "Blood Guard's Silk Footwraps", quality = 3, source = "PvP", sourceDetail = "Rank 7 (Blood Guard)" },
    [16496] = { name = "Blood Guard's Silk Gloves", quality = 3, source = "PvP", sourceDetail = "Rank 7 (Blood Guard)" },
    
    -- Rank 8 - Legionnaire
    [16505] = { name = "Legionnaire's Chain Hauberk", quality = 3, source = "PvP", sourceDetail = "Rank 8 (Legionnaire)" },
    [16506] = { name = "Legionnaire's Chain Breastplate", quality = 3, source = "PvP", sourceDetail = "Rank 8 (Legionnaire)" },
    [16507] = { name = "Legionnaire's Chain Leggings", quality = 3, source = "PvP", sourceDetail = "Rank 8 (Legionnaire)" },
    [16508] = { name = "Legionnaire's Plate Armor", quality = 3, source = "PvP", sourceDetail = "Rank 8 (Legionnaire)" },
    [16509] = { name = "Legionnaire's Plate Hauberk", quality = 3, source = "PvP", sourceDetail = "Rank 8 (Legionnaire)" },
    [16510] = { name = "Legionnaire's Plate Leggings", quality = 3, source = "PvP", sourceDetail = "Rank 8 (Legionnaire)" },
    [16513] = { name = "Legionnaire's Leather Hauberk", quality = 3, source = "PvP", sourceDetail = "Rank 8 (Legionnaire)" },
    [16514] = { name = "Legionnaire's Leather Leggings", quality = 3, source = "PvP", sourceDetail = "Rank 8 (Legionnaire)" },
    [16515] = { name = "Legionnaire's Dragonhide Breastplate", quality = 3, source = "PvP", sourceDetail = "Rank 8 (Legionnaire)" },
    [16516] = { name = "Legionnaire's Dragonhide Leggings", quality = 3, source = "PvP", sourceDetail = "Rank 8 (Legionnaire)" },
    [16517] = { name = "Legionnaire's Silk Robes", quality = 3, source = "PvP", sourceDetail = "Rank 8 (Legionnaire)" },
    [16518] = { name = "Legionnaire's Silk Pants", quality = 3, source = "PvP", sourceDetail = "Rank 8 (Legionnaire)" },
    [16519] = { name = "Legionnaire's Satin Trousers", quality = 3, source = "PvP", sourceDetail = "Rank 8 (Legionnaire)" },
    [16521] = { name = "Legionnaire's Satin Tunic", quality = 3, source = "PvP", sourceDetail = "Rank 8 (Legionnaire)" },
    
    -- Rank 10 - Champion
    [16527] = { name = "Champion's Chain Headguard", quality = 4, source = "PvP", sourceDetail = "Rank 10 (Champion)" },
    [16528] = { name = "Champion's Chain Pauldrons", quality = 4, source = "PvP", sourceDetail = "Rank 10 (Champion)" },
    [16530] = { name = "Champion's Plate Headguard", quality = 4, source = "PvP", sourceDetail = "Rank 10 (Champion)" },
    [16531] = { name = "Champion's Plate Pauldrons", quality = 4, source = "PvP", sourceDetail = "Rank 10 (Champion)" },
    [16533] = { name = "Champion's Leather Headguard", quality = 4, source = "PvP", sourceDetail = "Rank 10 (Champion)" },
    [16534] = { name = "Champion's Leather Mantle", quality = 4, source = "PvP", sourceDetail = "Rank 10 (Champion)" },
    [16535] = { name = "Champion's Dragonhide Helm", quality = 4, source = "PvP", sourceDetail = "Rank 10 (Champion)" },
    [16536] = { name = "Champion's Dragonhide Spaulders", quality = 4, source = "PvP", sourceDetail = "Rank 10 (Champion)" },
    [16539] = { name = "Champion's Silk Hood", quality = 4, source = "PvP", sourceDetail = "Rank 10 (Champion)" },
    [16540] = { name = "Champion's Silk Mantle", quality = 4, source = "PvP", sourceDetail = "Rank 10 (Champion)" },
    [16541] = { name = "Champion's Satin Cowl", quality = 4, source = "PvP", sourceDetail = "Rank 10 (Champion)" },
    [16542] = { name = "Champion's Satin Shoulderpads", quality = 4, source = "PvP", sourceDetail = "Rank 10 (Champion)" },
    
    -- Rank 12 - General
    [16548] = { name = "General's Chain Boots", quality = 4, source = "PvP", sourceDetail = "Rank 12 (General)" },
    [16549] = { name = "General's Chain Gloves", quality = 4, source = "PvP", sourceDetail = "Rank 12 (General)" },
    [16550] = { name = "General's Chain Legguards", quality = 4, source = "PvP", sourceDetail = "Rank 12 (General)" },
    [16551] = { name = "General's Chain Vest", quality = 4, source = "PvP", sourceDetail = "Rank 12 (General)" },
    [16552] = { name = "General's Plate Boots", quality = 4, source = "PvP", sourceDetail = "Rank 12 (General)" },
    [16553] = { name = "General's Plate Gauntlets", quality = 4, source = "PvP", sourceDetail = "Rank 12 (General)" },
    [16554] = { name = "General's Plate Leggings", quality = 4, source = "PvP", sourceDetail = "Rank 12 (General)" },
    [16555] = { name = "General's Plate Armor", quality = 4, source = "PvP", sourceDetail = "Rank 12 (General)" },
    [16558] = { name = "General's Leather Boots", quality = 4, source = "PvP", sourceDetail = "Rank 12 (General)" },
    [16559] = { name = "General's Leather Mitts", quality = 4, source = "PvP", sourceDetail = "Rank 12 (General)" },
    [16560] = { name = "General's Leather Legguards", quality = 4, source = "PvP", sourceDetail = "Rank 12 (General)" },
    [16561] = { name = "General's Leather Vest", quality = 4, source = "PvP", sourceDetail = "Rank 12 (General)" },
    [16562] = { name = "General's Dragonhide Boots", quality = 4, source = "PvP", sourceDetail = "Rank 12 (General)" },
    [16563] = { name = "General's Dragonhide Gloves", quality = 4, source = "PvP", sourceDetail = "Rank 12 (General)" },
    [16564] = { name = "General's Dragonhide Leggings", quality = 4, source = "PvP", sourceDetail = "Rank 12 (General)" },
    [16565] = { name = "General's Dragonhide Vest", quality = 4, source = "PvP", sourceDetail = "Rank 12 (General)" },
    [16566] = { name = "General's Silk Boots", quality = 4, source = "PvP", sourceDetail = "Rank 12 (General)" },
    [16567] = { name = "General's Silk Handguards", quality = 4, source = "PvP", sourceDetail = "Rank 12 (General)" },
    [16568] = { name = "General's Silk Trousers", quality = 4, source = "PvP", sourceDetail = "Rank 12 (General)" },
    [16569] = { name = "General's Silk Robes", quality = 4, source = "PvP", sourceDetail = "Rank 12 (General)" },
    [16570] = { name = "General's Satin Boots", quality = 4, source = "PvP", sourceDetail = "Rank 12 (General)" },
    [16571] = { name = "General's Satin Gloves", quality = 4, source = "PvP", sourceDetail = "Rank 12 (General)" },
    [16572] = { name = "General's Satin Leggings", quality = 4, source = "PvP", sourceDetail = "Rank 12 (General)" },
    [16573] = { name = "General's Satin Vestments", quality = 4, source = "PvP", sourceDetail = "Rank 12 (General)" },
    
    -- Rank 13 - Warlord
    [16577] = { name = "Warlord's Chain Helmet", quality = 4, source = "PvP", sourceDetail = "Rank 13 (Warlord)" },
    [16578] = { name = "Warlord's Chain Shoulders", quality = 4, source = "PvP", sourceDetail = "Rank 13 (Warlord)" },
    [16579] = { name = "Warlord's Chain Chestpiece", quality = 4, source = "PvP", sourceDetail = "Rank 13 (Warlord)" },
    [16580] = { name = "Warlord's Plate Headpiece", quality = 4, source = "PvP", sourceDetail = "Rank 13 (Warlord)" },
    [16581] = { name = "Warlord's Plate Shoulders", quality = 4, source = "PvP", sourceDetail = "Rank 13 (Warlord)" },
    [16582] = { name = "Warlord's Plate Armor", quality = 4, source = "PvP", sourceDetail = "Rank 13 (Warlord)" },
    [16583] = { name = "Warlord's Leather Helm", quality = 4, source = "PvP", sourceDetail = "Rank 13 (Warlord)" },
    [16584] = { name = "Warlord's Leather Spaulders", quality = 4, source = "PvP", sourceDetail = "Rank 13 (Warlord)" },
    [16585] = { name = "Warlord's Leather Breastplate", quality = 4, source = "PvP", sourceDetail = "Rank 13 (Warlord)" },
    [16586] = { name = "Warlord's Dragonhide Helmet", quality = 4, source = "PvP", sourceDetail = "Rank 13 (Warlord)" },
    [16587] = { name = "Warlord's Dragonhide Epaulets", quality = 4, source = "PvP", sourceDetail = "Rank 13 (Warlord)" },
    [16588] = { name = "Warlord's Dragonhide Hauberk", quality = 4, source = "PvP", sourceDetail = "Rank 13 (Warlord)" },
    [16589] = { name = "Warlord's Silk Cowl", quality = 4, source = "PvP", sourceDetail = "Rank 13 (Warlord)" },
    [16590] = { name = "Warlord's Silk Amice", quality = 4, source = "PvP", sourceDetail = "Rank 13 (Warlord)" },
    [16591] = { name = "Warlord's Silk Raiment", quality = 4, source = "PvP", sourceDetail = "Rank 13 (Warlord)" },
    [16592] = { name = "Warlord's Satin Cowl", quality = 4, source = "PvP", sourceDetail = "Rank 13 (Warlord)" },
    [16593] = { name = "Warlord's Satin Mantle", quality = 4, source = "PvP", sourceDetail = "Rank 13 (Warlord)" },
    [16594] = { name = "Warlord's Satin Robes", quality = 4, source = "PvP", sourceDetail = "Rank 13 (Warlord)" },
    
    -- Rank 14 - High Warlord - WEAPONS
    [18854] = { name = "High Warlord's Battle Axe", quality = 4, source = "PvP", sourceDetail = "Rank 14 (High Warlord)" },
    [18855] = { name = "High Warlord's Blade", quality = 4, source = "PvP", sourceDetail = "Rank 14 (High Warlord)" },
    [18856] = { name = "High Warlord's Cleaver", quality = 4, source = "PvP", sourceDetail = "Rank 14 (High Warlord)" },
    [18857] = { name = "High Warlord's Battle Mace", quality = 4, source = "PvP", sourceDetail = "Rank 14 (High Warlord)" },
    [18858] = { name = "High Warlord's Pig Sticker", quality = 4, source = "PvP", sourceDetail = "Rank 14 (High Warlord)" },
    [18859] = { name = "High Warlord's Bludgeon", quality = 4, source = "PvP", sourceDetail = "Rank 14 (High Warlord)" },
    [18860] = { name = "High Warlord's Pulverizer", quality = 4, source = "PvP", sourceDetail = "Rank 14 (High Warlord)" },
    [18861] = { name = "High Warlord's Greatsword", quality = 4, source = "PvP", sourceDetail = "Rank 14 (High Warlord)" },
    [18862] = { name = "High Warlord's Shield Wall", quality = 4, source = "PvP", sourceDetail = "Rank 14 (High Warlord)" },
    [18863] = { name = "High Warlord's Razor", quality = 4, source = "PvP", sourceDetail = "Rank 14 (High Warlord)" },
    [18864] = { name = "High Warlord's Recurve", quality = 4, source = "PvP", sourceDetail = "Rank 14 (High Warlord)" },
    [18865] = { name = "High Warlord's War Staff", quality = 4, source = "PvP", sourceDetail = "Rank 14 (High Warlord)" },
    [18866] = { name = "High Warlord's Street Sweeper", quality = 4, source = "PvP", sourceDetail = "Rank 14 (High Warlord)" },
    
    -- ============================================================================
    --                      REPUTATION REWARDS - ARGENT DAWN
    -- ============================================================================
    [13724] = { name = "Enriched Manna Biscuit", quality = 1, source = "Reputation", sourceDetail = "Argent Dawn - Friendly" },
    [18169] = { name = "Flame Mantle of the Dawn", quality = 3, source = "Reputation", sourceDetail = "Argent Dawn - Honored" },
    [18170] = { name = "Frost Mantle of the Dawn", quality = 3, source = "Reputation", sourceDetail = "Argent Dawn - Honored" },
    [18171] = { name = "Arcane Mantle of the Dawn", quality = 3, source = "Reputation", sourceDetail = "Argent Dawn - Honored" },
    [18172] = { name = "Nature Mantle of the Dawn", quality = 3, source = "Reputation", sourceDetail = "Argent Dawn - Honored" },
    [18173] = { name = "Shadow Mantle of the Dawn", quality = 3, source = "Reputation", sourceDetail = "Argent Dawn - Honored" },
    [18182] = { name = "Chromatic Mantle of the Dawn", quality = 3, source = "Reputation", sourceDetail = "Argent Dawn - Exalted" },
    [19216] = { name = "Argent Avenger", quality = 4, source = "Reputation", sourceDetail = "Argent Dawn - Revered" },
    [19217] = { name = "Argent Crusader", quality = 4, source = "Reputation", sourceDetail = "Argent Dawn - Revered" },
    [19218] = { name = "Argent Defender", quality = 4, source = "Reputation", sourceDetail = "Argent Dawn - Revered" },
    [22988] = { name = "The Purifier", quality = 4, source = "Reputation", sourceDetail = "Argent Dawn - Exalted" },
    [22990] = { name = "Blessed Wizard Oil", quality = 2, source = "Reputation", sourceDetail = "Argent Dawn - Honored" },
    [22991] = { name = "Major Healing Potion", quality = 2, source = "Reputation", sourceDetail = "Argent Dawn - Honored" },
    
    -- ============================================================================
    --                      REPUTATION REWARDS - TIMBERMAW HOLD
    -- ============================================================================
    [13484] = { name = "Pattern: Mooncloth Bag", quality = 2, source = "Reputation", sourceDetail = "Timbermaw Hold - Honored" },
    [15741] = { name = "Pattern: Warbear Harness", quality = 2, source = "Reputation", sourceDetail = "Timbermaw Hold - Friendly" },
    [15742] = { name = "Pattern: Warbear Woolies", quality = 2, source = "Reputation", sourceDetail = "Timbermaw Hold - Friendly" },
    [19202] = { name = "Plans: Heavy Timbermaw Belt", quality = 2, source = "Reputation", sourceDetail = "Timbermaw Hold - Friendly" },
    [19203] = { name = "Plans: Heavy Timbermaw Boots", quality = 2, source = "Reputation", sourceDetail = "Timbermaw Hold - Honored" },
    [19204] = { name = "Pattern: Might of the Timbermaw", quality = 2, source = "Reputation", sourceDetail = "Timbermaw Hold - Revered" },
    [19205] = { name = "Pattern: Timbermaw Brawlers", quality = 2, source = "Reputation", sourceDetail = "Timbermaw Hold - Honored" },
    [19326] = { name = "Defender of the Timbermaw", quality = 4, source = "Reputation", sourceDetail = "Timbermaw Hold - Exalted" },
    [21326] = { name = "Tome of Tranquilizing Shot", quality = 1, source = "Reputation", sourceDetail = "Timbermaw Hold - Revered" },
    
    -- ============================================================================
    --                      REPUTATION REWARDS - CENARION CIRCLE
    -- ============================================================================
    [20732] = { name = "Amulet of the Shifting Sands", quality = 4, source = "Reputation", sourceDetail = "Cenarion Circle - Revered" },
    [20731] = { name = "Band of the Shifting Sands", quality = 4, source = "Reputation", sourceDetail = "Cenarion Circle - Revered" },
    [20733] = { name = "Earthen Signet", quality = 4, source = "Reputation", sourceDetail = "Cenarion Circle - Revered" },
    [20734] = { name = "Flowing Sash", quality = 4, source = "Reputation", sourceDetail = "Cenarion Circle - Revered" },
    [22209] = { name = "Plans: Heavy Obsidian Belt", quality = 3, source = "Reputation", sourceDetail = "Cenarion Circle - Friendly" },
    [22214] = { name = "Plans: Light Obsidian Belt", quality = 3, source = "Reputation", sourceDetail = "Cenarion Circle - Honored" },
    [22219] = { name = "Plans: Jagged Obsidian Shield", quality = 3, source = "Reputation", sourceDetail = "Cenarion Circle - Revered" },
    [22221] = { name = "Plans: Obsidian Mail Tunic", quality = 3, source = "Reputation", sourceDetail = "Cenarion Circle - Exalted" },
    [22768] = { name = "Pattern: Bramblewood Belt", quality = 2, source = "Reputation", sourceDetail = "Cenarion Circle - Friendly" },
    [22769] = { name = "Pattern: Bramblewood Boots", quality = 2, source = "Reputation", sourceDetail = "Cenarion Circle - Honored" },
    [22770] = { name = "Pattern: Bramblewood Helm", quality = 2, source = "Reputation", sourceDetail = "Cenarion Circle - Revered" },
    [22771] = { name = "Pattern: Sandstalker Bracers", quality = 3, source = "Reputation", sourceDetail = "Cenarion Circle - Friendly" },
    [22772] = { name = "Pattern: Sandstalker Gauntlets", quality = 3, source = "Reputation", sourceDetail = "Cenarion Circle - Honored" },
    [22773] = { name = "Pattern: Sandstalker Breastplate", quality = 3, source = "Reputation", sourceDetail = "Cenarion Circle - Revered" },
    [22683] = { name = "Pattern: Cenarion Herb Bag", quality = 2, source = "Reputation", sourceDetail = "Cenarion Circle - Revered" },
    [22684] = { name = "Pattern: Satchel of Cenarius", quality = 2, source = "Reputation", sourceDetail = "Cenarion Circle - Exalted" },
    
    -- ============================================================================
    --                      REPUTATION REWARDS - THORIUM BROTHERHOOD
    -- ============================================================================
    [17051] = { name = "Plans: Dark Iron Bracers", quality = 2, source = "Reputation", sourceDetail = "Thorium Brotherhood - Friendly" },
    [17052] = { name = "Plans: Dark Iron Destroyer", quality = 3, source = "Reputation", sourceDetail = "Thorium Brotherhood - Honored" },
    [17053] = { name = "Plans: Fiery Plate Gauntlets", quality = 3, source = "Reputation", sourceDetail = "Thorium Brotherhood - Honored" },
    [17059] = { name = "Plans: Dark Iron Reaver", quality = 3, source = "Reputation", sourceDetail = "Thorium Brotherhood - Revered" },
    [17060] = { name = "Plans: Dark Iron Leggings", quality = 3, source = "Reputation", sourceDetail = "Thorium Brotherhood - Honored" },
    [18592] = { name = "Plans: Sulfuron Hammer", quality = 5, source = "Reputation", sourceDetail = "Thorium Brotherhood - Exalted" },
    [17014] = { name = "Pattern: Flarecore Mantle", quality = 3, source = "Reputation", sourceDetail = "Thorium Brotherhood - Honored" },
    [17017] = { name = "Pattern: Flarecore Leggings", quality = 3, source = "Reputation", sourceDetail = "Thorium Brotherhood - Revered" },
    [17018] = { name = "Pattern: Flarecore Robe", quality = 4, source = "Reputation", sourceDetail = "Thorium Brotherhood - Exalted" },
    [17023] = { name = "Pattern: Molten Helm", quality = 3, source = "Reputation", sourceDetail = "Thorium Brotherhood - Friendly" },
    [17025] = { name = "Pattern: Black Dragonscale Boots", quality = 3, source = "Reputation", sourceDetail = "Thorium Brotherhood - Honored" },
    [18265] = { name = "Pattern: Lava Belt", quality = 3, source = "Reputation", sourceDetail = "Thorium Brotherhood - Revered" },
    [18260] = { name = "Formula: Enchant Weapon - Strength", quality = 2, source = "Reputation", sourceDetail = "Thorium Brotherhood - Friendly" },
    [18259] = { name = "Formula: Enchant Weapon - Mighty Spirit", quality = 2, source = "Reputation", sourceDetail = "Thorium Brotherhood - Friendly" },
    [18252] = { name = "Formula: Enchant Weapon - Healing Power", quality = 2, source = "Reputation", sourceDetail = "Thorium Brotherhood - Revered" },
    [19449] = { name = "Formula: Enchant Weapon - Spell Power", quality = 2, source = "Reputation", sourceDetail = "Thorium Brotherhood - Exalted" },
    
    -- ============================================================================
    --                      REPUTATION REWARDS - ZANDALAR TRIBE
    -- ============================================================================
    [19793] = { name = "Zandalar Augur's Belt", quality = 4, source = "Reputation", sourceDetail = "Zandalar Tribe - Friendly" },
    [19829] = { name = "Zandalar Augur's Bracers", quality = 4, source = "Reputation", sourceDetail = "Zandalar Tribe - Honored" },
    [19788] = { name = "Zandalar Confessor's Bindings", quality = 4, source = "Reputation", sourceDetail = "Zandalar Tribe - Friendly" },
    [19820] = { name = "Zandalar Confessor's Wraps", quality = 4, source = "Reputation", sourceDetail = "Zandalar Tribe - Honored" },
    [19784] = { name = "Zandalar Demoniac's Mantle", quality = 4, source = "Reputation", sourceDetail = "Zandalar Tribe - Friendly" },
    [19818] = { name = "Zandalar Demoniac's Wraps", quality = 4, source = "Reputation", sourceDetail = "Zandalar Tribe - Honored" },
    [19789] = { name = "Zandalar Freethinker's Belt", quality = 4, source = "Reputation", sourceDetail = "Zandalar Tribe - Friendly" },
    [19822] = { name = "Zandalar Freethinker's Armguards", quality = 4, source = "Reputation", sourceDetail = "Zandalar Tribe - Honored" },
    [19787] = { name = "Zandalar Haruspex's Belt", quality = 4, source = "Reputation", sourceDetail = "Zandalar Tribe - Friendly" },
    [19826] = { name = "Zandalar Haruspex's Bracers", quality = 4, source = "Reputation", sourceDetail = "Zandalar Tribe - Honored" },
    [19795] = { name = "Zandalar Illusionist's Mantle", quality = 4, source = "Reputation", sourceDetail = "Zandalar Tribe - Friendly" },
    [19830] = { name = "Zandalar Illusionist's Wraps", quality = 4, source = "Reputation", sourceDetail = "Zandalar Tribe - Honored" },
    [19792] = { name = "Zandalar Madcap's Bracers", quality = 4, source = "Reputation", sourceDetail = "Zandalar Tribe - Friendly" },
    [19823] = { name = "Zandalar Madcap's Mantle", quality = 4, source = "Reputation", sourceDetail = "Zandalar Tribe - Honored" },
    [19786] = { name = "Zandalar Predator's Belt", quality = 4, source = "Reputation", sourceDetail = "Zandalar Tribe - Friendly" },
    [19821] = { name = "Zandalar Predator's Bracers", quality = 4, source = "Reputation", sourceDetail = "Zandalar Tribe - Honored" },
    [19791] = { name = "Zandalar Vindicator's Belt", quality = 4, source = "Reputation", sourceDetail = "Zandalar Tribe - Friendly" },
    [19824] = { name = "Zandalar Vindicator's Armguards", quality = 4, source = "Reputation", sourceDetail = "Zandalar Tribe - Honored" },
    [19790] = { name = "Zandalar Vindicator's Breastplate", quality = 4, source = "Reputation", sourceDetail = "Zandalar Tribe - Exalted" },
    
    -- ============================================================================
    --                      REPUTATION REWARDS - HYDRAXIAN WATERLORDS
    -- ============================================================================
    [17333] = { name = "Aqual Quintessence", quality = 1, source = "Reputation", sourceDetail = "Hydraxian Waterlords - Honored" },
    [22754] = { name = "Eternal Quintessence", quality = 1, source = "Reputation", sourceDetail = "Hydraxian Waterlords - Revered" },
    
    -- ============================================================================
    --                      EPIC CRAFTED ITEMS - BLACKSMITHING
    -- ============================================================================
    [12640] = { name = "Lionheart Helm", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (300)" },
    [12639] = { name = "Stronghold Gauntlets", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (300)" },
    [12618] = { name = "Enchanted Thorium Helm", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (300)" },
    [12619] = { name = "Enchanted Thorium Leggings", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (300)" },
    [12620] = { name = "Enchanted Thorium Breastplate", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (300)" },
    [19690] = { name = "Bloodsoul Breastplate", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (300)" },
    [19691] = { name = "Bloodsoul Shoulders", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (300)" },
    [19692] = { name = "Bloodsoul Gauntlets", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (300)" },
    [19693] = { name = "Darksoul Breastplate", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (300)" },
    [19694] = { name = "Darksoul Leggings", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (300)" },
    [19695] = { name = "Darksoul Shoulders", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (300)" },
    [22194] = { name = "Black Grasp of the Destroyer", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (300)" },
    [22198] = { name = "Jagged Obsidian Shield", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (300)" },
    [12782] = { name = "Corruption", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (300) - Sword" },
    [12798] = { name = "Annihilator", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (300) - Axe" },
    [12783] = { name = "Heartseeker", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (300) - Dagger" },
    [12784] = { name = "Arcanite Reaper", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (300) - Axe" },
    [12797] = { name = "Frostguard", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (300) - Sword" },
    [17193] = { name = "Sulfuron Hammer", quality = 5, source = "Crafted", sourceDetail = "Blacksmithing (300) - Legendary" },
    [19166] = { name = "Black Amnesty", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (300) - Dagger" },
    [19167] = { name = "Blackfury", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (300) - Polearm" },
    [19168] = { name = "Blackguard", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (300) - Sword" },
    [19169] = { name = "Nightfall", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (300) - Axe" },
    [19170] = { name = "Ebon Hand", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (300) - Mace" },
    [22383] = { name = "Sageblade", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (300) - Sword" },
    [22384] = { name = "Persuader", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (300) - Mace" },
    [22385] = { name = "Titanic Leggings", quality = 4, source = "Crafted", sourceDetail = "Blacksmithing (300)" },
    
    -- ============================================================================
    --                      EPIC CRAFTED ITEMS - LEATHERWORKING
    -- ============================================================================
    [15062] = { name = "Devilsaur Gauntlets", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (300)" },
    [15063] = { name = "Devilsaur Leggings", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (300)" },
    [15074] = { name = "Chimeric Gloves", quality = 3, source = "Crafted", sourceDetail = "Leatherworking (265)" },
    [15075] = { name = "Chimeric Boots", quality = 3, source = "Crafted", sourceDetail = "Leatherworking (265)" },
    [15076] = { name = "Chimeric Leggings", quality = 3, source = "Crafted", sourceDetail = "Leatherworking (265)" },
    [15077] = { name = "Chimeric Vest", quality = 3, source = "Crafted", sourceDetail = "Leatherworking (265)" },
    [15087] = { name = "Wicked Leather Gauntlets", quality = 3, source = "Crafted", sourceDetail = "Leatherworking (260)" },
    [15088] = { name = "Wicked Leather Bracers", quality = 3, source = "Crafted", sourceDetail = "Leatherworking (265)" },
    [15090] = { name = "Wicked Leather Headband", quality = 3, source = "Crafted", sourceDetail = "Leatherworking (280)" },
    [15092] = { name = "Wicked Leather Pants", quality = 3, source = "Crafted", sourceDetail = "Leatherworking (270)" },
    [15093] = { name = "Wicked Leather Belt", quality = 3, source = "Crafted", sourceDetail = "Leatherworking (275)" },
    [15095] = { name = "Wicked Leather Armor", quality = 3, source = "Crafted", sourceDetail = "Leatherworking (290)" },
    [19685] = { name = "Primal Batskin Jerkin", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (300) - Tribal" },
    [19686] = { name = "Primal Batskin Gloves", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (300) - Tribal" },
    [19687] = { name = "Primal Batskin Bracers", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (300) - Tribal" },
    [19688] = { name = "Blood Tiger Breastplate", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (300) - Tribal" },
    [19689] = { name = "Blood Tiger Shoulders", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (300) - Tribal" },
    [19149] = { name = "Lava Belt", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (300)" },
    [19157] = { name = "Chromatic Gauntlets", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (300)" },
    [18510] = { name = "Hide of the Wild", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (300)" },
    [18511] = { name = "Shifting Cloak", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (300)" },
    [20380] = { name = "Dreamscale Breastplate", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (300)" },
    [20476] = { name = "Sandstalker Breastplate", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (300)" },
    [20477] = { name = "Sandstalker Gauntlets", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (300)" },
    [20478] = { name = "Sandstalker Bracers", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (300)" },
    [22663] = { name = "Polar Tunic", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (300) - Frost Resist" },
    [22664] = { name = "Polar Gloves", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (300) - Frost Resist" },
    [22665] = { name = "Polar Bracers", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (300) - Frost Resist" },
    [22666] = { name = "Icy Scale Breastplate", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (300) - Frost Resist" },
    [22667] = { name = "Icy Scale Gauntlets", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (300) - Frost Resist" },
    [22668] = { name = "Icy Scale Bracers", quality = 4, source = "Crafted", sourceDetail = "Leatherworking (300) - Frost Resist" },
    
    -- ============================================================================
    --                      EPIC CRAFTED ITEMS - TAILORING
    -- ============================================================================
    [14152] = { name = "Robe of the Archmage", quality = 4, source = "Crafted", sourceDetail = "Tailoring (300)" },
    [14153] = { name = "Robe of the Void", quality = 4, source = "Crafted", sourceDetail = "Tailoring (300)" },
    [14154] = { name = "Truefaith Vestments", quality = 4, source = "Crafted", sourceDetail = "Tailoring (300)" },
    [19682] = { name = "Bloodvine Vest", quality = 4, source = "Crafted", sourceDetail = "Tailoring (300)" },
    [19683] = { name = "Bloodvine Leggings", quality = 4, source = "Crafted", sourceDetail = "Tailoring (300)" },
    [19684] = { name = "Bloodvine Boots", quality = 4, source = "Crafted", sourceDetail = "Tailoring (300)" },
    [18405] = { name = "Belt of the Archmage", quality = 4, source = "Crafted", sourceDetail = "Tailoring (300)" },
    [18407] = { name = "Felcloth Gloves", quality = 3, source = "Crafted", sourceDetail = "Tailoring (300)" },
    [18408] = { name = "Inferno Gloves", quality = 4, source = "Crafted", sourceDetail = "Tailoring (300)" },
    [18409] = { name = "Mooncloth Gloves", quality = 4, source = "Crafted", sourceDetail = "Tailoring (300)" },
    [18413] = { name = "Cloak of Warding", quality = 4, source = "Crafted", sourceDetail = "Tailoring (300)" },
    [18486] = { name = "Mooncloth Robe", quality = 4, source = "Crafted", sourceDetail = "Tailoring (300)" },
    [20537] = { name = "Runed Stygian Leggings", quality = 4, source = "Crafted", sourceDetail = "Tailoring (300)" },
    [20538] = { name = "Runed Stygian Boots", quality = 4, source = "Crafted", sourceDetail = "Tailoring (300)" },
    [20539] = { name = "Runed Stygian Belt", quality = 4, source = "Crafted", sourceDetail = "Tailoring (300)" },
    [22654] = { name = "Glacial Vest", quality = 4, source = "Crafted", sourceDetail = "Tailoring (300) - Frost Resist" },
    [22655] = { name = "Glacial Gloves", quality = 4, source = "Crafted", sourceDetail = "Tailoring (300) - Frost Resist" },
    [22656] = { name = "Glacial Wrists", quality = 4, source = "Crafted", sourceDetail = "Tailoring (300) - Frost Resist" },
    [22658] = { name = "Glacial Cloak", quality = 4, source = "Crafted", sourceDetail = "Tailoring (300) - Frost Resist" },
    
    -- ============================================================================
    --                      TIER 0.5 DUNGEON SET 2 - WARRIOR
    -- ============================================================================
    [22002] = { name = "Battlegear of Heroism Helm", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22003] = { name = "Battlegear of Heroism Chest", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22004] = { name = "Battlegear of Heroism Shoulders", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22005] = { name = "Battlegear of Heroism Leggings", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22006] = { name = "Battlegear of Heroism Boots", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22007] = { name = "Battlegear of Heroism Belt", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22008] = { name = "Battlegear of Heroism Bracers", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22009] = { name = "Battlegear of Heroism Gloves", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    
    -- Tier 0.5 - Paladin (Soulforge)
    [22086] = { name = "Soulforge Helm", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22080] = { name = "Soulforge Breastplate", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22084] = { name = "Soulforge Spaulders", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22082] = { name = "Soulforge Legplates", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22081] = { name = "Soulforge Boots", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22088] = { name = "Soulforge Belt", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22083] = { name = "Soulforge Bracers", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22085] = { name = "Soulforge Gauntlets", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    
    -- Tier 0.5 - Hunter (Beaststalker)
    [22010] = { name = "Beastmaster's Cap", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22011] = { name = "Beastmaster's Tunic", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22012] = { name = "Beastmaster's Mantle", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22015] = { name = "Beastmaster's Pants", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22013] = { name = "Beastmaster's Boots", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22017] = { name = "Beastmaster's Belt", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22016] = { name = "Beastmaster's Bindings", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22014] = { name = "Beastmaster's Gloves", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    
    -- Tier 0.5 - Rogue (Darkmantle)
    [22002] = { name = "Darkmantle Cap", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22043] = { name = "Darkmantle Tunic", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22044] = { name = "Darkmantle Spaulders", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22045] = { name = "Darkmantle Pants", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22046] = { name = "Darkmantle Boots", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22047] = { name = "Darkmantle Belt", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22048] = { name = "Darkmantle Bracers", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22049] = { name = "Darkmantle Gloves", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    
    -- Tier 0.5 - Priest (Vestments of the Virtuous)
    [22078] = { name = "Virtuous Crown", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22071] = { name = "Virtuous Robe", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22073] = { name = "Virtuous Mantle", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22079] = { name = "Virtuous Skirt", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22070] = { name = "Virtuous Sandals", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22074] = { name = "Virtuous Belt", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22072] = { name = "Virtuous Bracers", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22077] = { name = "Virtuous Gloves", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    
    -- Tier 0.5 - Shaman (The Five Thunders)
    [22102] = { name = "Helm of the Five Thunders", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22100] = { name = "Vest of the Five Thunders", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22101] = { name = "Pauldrons of the Five Thunders", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22103] = { name = "Kilt of the Five Thunders", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22099] = { name = "Boots of the Five Thunders", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22098] = { name = "Belt of the Five Thunders", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22095] = { name = "Bindings of the Five Thunders", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22097] = { name = "Gauntlets of the Five Thunders", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    
    -- Tier 0.5 - Mage (Sorcerer's Regalia)
    [22065] = { name = "Sorcerer's Crown", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22062] = { name = "Sorcerer's Robes", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22063] = { name = "Sorcerer's Mantle", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22066] = { name = "Sorcerer's Leggings", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22061] = { name = "Sorcerer's Boots", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22064] = { name = "Sorcerer's Belt", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22067] = { name = "Sorcerer's Bindings", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22068] = { name = "Sorcerer's Gloves", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    
    -- Tier 0.5 - Warlock (Deathmist Raiment)
    [22073] = { name = "Deathmist Mask", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22051] = { name = "Deathmist Robe", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22052] = { name = "Deathmist Mantle", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22053] = { name = "Deathmist Leggings", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22054] = { name = "Deathmist Sandals", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22055] = { name = "Deathmist Belt", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22056] = { name = "Deathmist Bracers", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22057] = { name = "Deathmist Wraps", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    
    -- Tier 0.5 - Druid (Feralheart Raiment)
    [22109] = { name = "Feralheart Cowl", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22106] = { name = "Feralheart Vest", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22108] = { name = "Feralheart Spaulders", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22110] = { name = "Feralheart Kilt", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22105] = { name = "Feralheart Boots", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22111] = { name = "Feralheart Belt", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22112] = { name = "Feralheart Bracers", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    [22107] = { name = "Feralheart Gloves", quality = 4, source = "Quest", sourceDetail = "Dungeon Set 2" },
    
    -- ============================================================================
    --                      ENGINEERING GADGETS - GNOMISH
    -- ============================================================================
    [10716] = { name = "Gnomish Shrink Ray", quality = 2, source = "Crafted", sourceDetail = "Engineering (205) - Gnomish" },
    [10720] = { name = "Gnomish Net-o-Matic Projector", quality = 2, source = "Crafted", sourceDetail = "Engineering (210) - Gnomish" },
    [10721] = { name = "Gnomish Harm Prevention Belt", quality = 2, source = "Crafted", sourceDetail = "Engineering (215) - Gnomish" },
    [10724] = { name = "Gnomish Rocket Boots", quality = 2, source = "Crafted", sourceDetail = "Engineering (225) - Gnomish" },
    [10725] = { name = "Gnomish Battle Chicken", quality = 2, source = "Crafted", sourceDetail = "Engineering (230) - Gnomish" },
    [10726] = { name = "Gnomish Mind Control Cap", quality = 2, source = "Crafted", sourceDetail = "Engineering (235) - Gnomish" },
    [18986] = { name = "Ultrasafe Transporter: Gadgetzan", quality = 2, source = "Crafted", sourceDetail = "Engineering (260) - Gnomish" },
    [10545] = { name = "Gnomish Death Ray", quality = 2, source = "Crafted", sourceDetail = "Engineering (240) - Gnomish" },
    [23763] = { name = "Gnomish Poultryizer", quality = 2, source = "Crafted", sourceDetail = "Engineering (285) - Gnomish" },
    [23835] = { name = "Gnomish Universal Remote", quality = 3, source = "Crafted", sourceDetail = "Engineering (265) - Gnomish" },
    
    -- ============================================================================
    --                      ENGINEERING GADGETS - GOBLIN
    -- ============================================================================
    [10577] = { name = "Goblin Mortar", quality = 2, source = "Crafted", sourceDetail = "Engineering (205) - Goblin" },
    [10542] = { name = "Goblin Construction Helmet", quality = 2, source = "Crafted", sourceDetail = "Engineering (215) - Goblin" },
    [10543] = { name = "Goblin Mining Helmet", quality = 2, source = "Crafted", sourceDetail = "Engineering (205) - Goblin" },
    [10588] = { name = "Goblin Rocket Helmet", quality = 2, source = "Crafted", sourceDetail = "Engineering (245) - Goblin" },
    [10586] = { name = "Goblin Sapper Charge", quality = 1, source = "Crafted", sourceDetail = "Engineering (205) - Goblin" },
    [10587] = { name = "Goblin Jumper Cables", quality = 2, source = "Crafted", sourceDetail = "Engineering (175)" },
    [10727] = { name = "Goblin Rocket Boots", quality = 2, source = "Crafted", sourceDetail = "Engineering (225) - Goblin" },
    [10646] = { name = "Goblin Bomb Dispenser", quality = 2, source = "Crafted", sourceDetail = "Engineering (230) - Goblin" },
    [18984] = { name = "Dimensional Ripper - Everlook", quality = 2, source = "Crafted", sourceDetail = "Engineering (260) - Goblin" },
    [18587] = { name = "Goblin Dragon Gun", quality = 2, source = "Crafted", sourceDetail = "Engineering (240) - Goblin" },
    [10645] = { name = "Gnomish Alarm-o-Bot", quality = 2, source = "Crafted", sourceDetail = "Engineering (265)" },
    
    -- ============================================================================
    --                      ENGINEERING GADGETS - SHARED
    -- ============================================================================
    [4381] = { name = "Minor Recombobulator", quality = 2, source = "Crafted", sourceDetail = "Engineering (140)" },
    [4388] = { name = "Discombobulator Ray", quality = 2, source = "Crafted", sourceDetail = "Engineering (160)" },
    [4393] = { name = "Craftsman's Monocle", quality = 2, source = "Crafted", sourceDetail = "Engineering (185)" },
    [4394] = { name = "Spellpower Goggles Xtreme", quality = 3, source = "Crafted", sourceDetail = "Engineering (225)" },
    [4407] = { name = "Parachute Cloak", quality = 2, source = "Crafted", sourceDetail = "Engineering (225)" },
    [10502] = { name = "Ultra-Flash Shadow Reflector", quality = 2, source = "Crafted", sourceDetail = "Engineering (300)" },
    [10500] = { name = "Gyrofreeze Ice Reflector", quality = 2, source = "Crafted", sourceDetail = "Engineering (260)" },
    [10506] = { name = "Deepdive Helmet", quality = 2, source = "Crafted", sourceDetail = "Engineering (230)" },
    [16008] = { name = "Master Engineer's Goggles", quality = 2, source = "Crafted", sourceDetail = "Engineering (245)" },
    [16009] = { name = "Spellpower Goggles Xtreme Plus", quality = 3, source = "Crafted", sourceDetail = "Engineering (270)" },
    [16022] = { name = "Arcanite Dragonling", quality = 3, source = "Crafted", sourceDetail = "Engineering (300)" },
    [18645] = { name = "Thorium Grenade", quality = 1, source = "Crafted", sourceDetail = "Engineering (260)" },
    [18588] = { name = "Force Reactive Disk", quality = 4, source = "Crafted", sourceDetail = "Engineering (300)" },
    [18168] = { name = "Biznicks 247x128 Accurascope", quality = 3, source = "Crafted", sourceDetail = "Engineering (300)" },
    [18283] = { name = "Sniper Scope", quality = 3, source = "Crafted", sourceDetail = "Engineering (240)" },
    [23824] = { name = "Hyper-Radiant Flame Reflector", quality = 2, source = "Crafted", sourceDetail = "Engineering (290)" },
    
    -- ============================================================================
    --                      EPIC WORLD DROPS - WEAPONS
    -- ============================================================================
    [2244] = { name = "Krol Blade", quality = 4, source = "World Drop", sourceDetail = "Level 51-60 Mobs" },
    [1728] = { name = "Teebu's Blazing Longsword", quality = 4, source = "World Drop", sourceDetail = "Level 51-60 Mobs" },
    [867] = { name = "Glowing Brightwood Staff", quality = 4, source = "World Drop", sourceDetail = "Level 35-45 Mobs" },
    [868] = { name = "Ardent Custodian", quality = 4, source = "World Drop", sourceDetail = "Level 51-60 Mobs" },
    [869] = { name = "Dazzling Longsword", quality = 4, source = "World Drop", sourceDetail = "Level 51-60 Mobs" },
    [870] = { name = "Fiery War Axe", quality = 4, source = "World Drop", sourceDetail = "Level 35-45 Mobs" },
    [871] = { name = "Flurry Axe", quality = 4, source = "World Drop", sourceDetail = "Level 42-52 Mobs" },
    [1169] = { name = "Blackwater Cutlass", quality = 4, source = "World Drop", sourceDetail = "Level 19-26 Mobs" },
    [1263] = { name = "Brain Hacker", quality = 4, source = "World Drop", sourceDetail = "Level 37-46 Mobs" },
    [1264] = { name = "Headspiker", quality = 4, source = "World Drop", sourceDetail = "Level 47-55 Mobs" },
    [1981] = { name = "Icemail Jerkin", quality = 4, source = "World Drop", sourceDetail = "Level 33-42 Mobs" },
    [1982] = { name = "Nightblade", quality = 4, source = "World Drop", sourceDetail = "Level 39-48 Mobs" },
    [1992] = { name = "Swiftwind", quality = 4, source = "World Drop", sourceDetail = "Level 45-54 Mobs" },
    [1999] = { name = "Slicer", quality = 4, source = "World Drop", sourceDetail = "Level 37-46 Mobs" },
    [2087] = { name = "Hard Crawler Carapace", quality = 4, source = "World Drop", sourceDetail = "Level 22-29 Mobs" },
    [2089] = { name = "Fist of the People's Militia", quality = 4, source = "World Drop", sourceDetail = "Level 12-18 Mobs" },
    [2099] = { name = "Dwarven Hand Cannon", quality = 4, source = "World Drop", sourceDetail = "Level 43-52 Mobs" },
    [2100] = { name = "Precisely Calibrated Boomstick", quality = 4, source = "World Drop", sourceDetail = "Level 51-60 Mobs" },
    [2243] = { name = "Hand of Edward the Odd", quality = 4, source = "World Drop", sourceDetail = "Level 51-60 Mobs" },
    [2245] = { name = "Helm of Narv", quality = 4, source = "World Drop", sourceDetail = "Level 51-60 Mobs" },
    [2246] = { name = "Myrmidon's Signet", quality = 4, source = "World Drop", sourceDetail = "Level 51-60 Mobs" },
    [2800] = { name = "Alcor's Sunrazor", quality = 4, source = "World Drop", sourceDetail = "Level 51-60 Mobs" },
    [2825] = { name = "Bow of Searing Arrows", quality = 4, source = "World Drop", sourceDetail = "Level 51-60 Mobs" },
    [2164] = { name = "Gut Ripper", quality = 4, source = "World Drop", sourceDetail = "Level 39-48 Mobs" },
    [2291] = { name = "Kang the Decapitator", quality = 4, source = "World Drop", sourceDetail = "Level 44-53 Mobs" },
    [14551] = { name = "Edgemaster's Handguards", quality = 4, source = "World Drop", sourceDetail = "Level 44-53 Mobs" },
    [14552] = { name = "Stockade Pauldrons", quality = 4, source = "World Drop", sourceDetail = "Level 51-60 Mobs" },
    [14553] = { name = "Sash of Mercy", quality = 4, source = "World Drop", sourceDetail = "Level 51-60 Mobs" },
    [14554] = { name = "Cloudkeeper Legplates", quality = 4, source = "World Drop", sourceDetail = "Level 51-60 Mobs" },
    [14555] = { name = "Alcor's Sunrazor", quality = 4, source = "World Drop", sourceDetail = "Level 51-60 Mobs" },
    
    -- ============================================================================
    --                      EPIC WORLD DROPS - ARMOR
    -- ============================================================================
    [940] = { name = "Robes of Insight", quality = 4, source = "World Drop", sourceDetail = "Level 31-40 Mobs" },
    [1218] = { name = "Heavy Ogre War Axe", quality = 4, source = "World Drop", sourceDetail = "Level 31-40 Mobs" },
    [1315] = { name = "Lei of Lilies", quality = 4, source = "World Drop", sourceDetail = "Level 37-46 Mobs" },
    [1443] = { name = "Jeweled Amulet of Cainwyn", quality = 4, source = "World Drop", sourceDetail = "Level 42-51 Mobs" },
    [1447] = { name = "Ring of Saviors", quality = 4, source = "World Drop", sourceDetail = "Level 42-51 Mobs" },
    [1979] = { name = "Underworld Band", quality = 4, source = "World Drop", sourceDetail = "Level 42-51 Mobs" },
    [2245] = { name = "Helm of Narv", quality = 4, source = "World Drop", sourceDetail = "Level 51-60 Mobs" },
    [2246] = { name = "Myrmidon's Signet", quality = 4, source = "World Drop", sourceDetail = "Level 51-60 Mobs" },
    [942] = { name = "Freezing Band", quality = 4, source = "World Drop", sourceDetail = "Level 51-60 Mobs" },
    [943] = { name = "Warden Staff", quality = 4, source = "World Drop", sourceDetail = "Level 51-60 Mobs" },
    [944] = { name = "Elemental Mage Staff", quality = 4, source = "World Drop", sourceDetail = "Level 35-44 Mobs" },
    [1204] = { name = "The Green Tower", quality = 4, source = "World Drop", sourceDetail = "Level 45-54 Mobs" },
    [1168] = { name = "Skullflame Shield", quality = 4, source = "World Drop", sourceDetail = "Level 51-60 Mobs" },
    [1980] = { name = "Underworld Band", quality = 4, source = "World Drop", sourceDetail = "Level 51-60 Mobs" },
    [1203] = { name = "Aegis of Stormwind", quality = 4, source = "World Drop", sourceDetail = "Level 38-47 Mobs" },
    [810] = { name = "Hammer of the Northern Wind", quality = 4, source = "World Drop", sourceDetail = "Level 51-60 Mobs" },
    [811] = { name = "Axe of the Deep Woods", quality = 4, source = "World Drop", sourceDetail = "Level 36-45 Mobs" },
    [809] = { name = "Bloodrazor", quality = 4, source = "World Drop", sourceDetail = "Level 44-53 Mobs" },
    [873] = { name = "Staff of Jordan", quality = 4, source = "World Drop", sourceDetail = "Level 35-44 Mobs" },
    [1978] = { name = "Orcish Battle Bow", quality = 4, source = "World Drop", sourceDetail = "Level 51-60 Mobs" },
    [17112] = { name = "Empyrean Demolisher", quality = 4, source = "World Drop", sourceDetail = "Level 51-60 Mobs" },
    [17076] = { name = "Blade of the Titans", quality = 4, source = "World Drop", sourceDetail = "Level 51-60 Mobs" },
    [18730] = { name = "Shadowblade", quality = 4, source = "World Drop", sourceDetail = "Level 51-60 Mobs" },
    [3475] = { name = "Cloak of Flames", quality = 4, source = "World Drop", sourceDetail = "Level 51-60 Mobs" },
    [18720] = { name = "Barman Shanker", quality = 4, source = "World Drop", sourceDetail = "Level 51-60 Mobs" },
    
    -- ============================================================================
    --                      RARE WORLD DROPS - TWINK NOTABLE
    -- ============================================================================
    [6691] = { name = "Swinetusk Shank", quality = 3, source = "World Drop", sourceDetail = "Level 25-34 Mobs" },
    [6692] = { name = "Tombstone Breastplate", quality = 3, source = "World Drop", sourceDetail = "Level 35-44 Mobs" },
    [1482] = { name = "Shadowfang", quality = 4, source = "Dungeon", sourceDetail = "SFK - Baron Silverlaine/Razorclaw" },
    [6329] = { name = "Mercy's Touch", quality = 3, source = "World Drop", sourceDetail = "Level 36-45 Mobs" },
    [6330] = { name = "Gutterblade", quality = 3, source = "World Drop", sourceDetail = "Level 15-24 Mobs" },
    [6331] = { name = "Howling Blade", quality = 3, source = "World Drop", sourceDetail = "Level 25-34 Mobs" },
    [6332] = { name = "Pulsating Crystalline Shard", quality = 3, source = "World Drop", sourceDetail = "Level 25-34 Mobs" },
    [6660] = { name = "Julie's Dagger", quality = 3, source = "World Drop", sourceDetail = "Level 15-24 Mobs" },
    [9487] = { name = "Hi-tech Supergun", quality = 3, source = "World Drop", sourceDetail = "Level 30-39 Mobs" },
    [9488] = { name = "Oscillating Power Hammer", quality = 3, source = "World Drop", sourceDetail = "Level 35-44 Mobs" },
    [9489] = { name = "Gyromatic Micro-Adjustor", quality = 3, source = "World Drop", sourceDetail = "Level 35-44 Mobs" },
    [9490] = { name = "Grubbis Paws", quality = 3, source = "World Drop", sourceDetail = "Level 28-37 Mobs" },
    [9508] = { name = "Mechanic's Pipehammer", quality = 3, source = "World Drop", sourceDetail = "Level 22-31 Mobs" },
    [6339] = { name = "Lorespinner", quality = 3, source = "World Drop", sourceDetail = "Level 20-29 Mobs" },
    [6340] = { name = "Rune of Nesting", quality = 3, source = "World Drop", sourceDetail = "Level 17-26 Mobs" },
    [6341] = { name = "Eerie Stable Lantern", quality = 3, source = "World Drop", sourceDetail = "Level 37-46 Mobs" },
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
        items = { 7714, 7717, 7718, 7727, 7729, 7730 },
    },
    ["Bloodmage Thalnos"] = {
        instance = "Scarlet Monastery",
        items = { 7731 },
    },
    ["Arcanist Doan"] = {
        instance = "Scarlet Monastery",
        items = { 5819, 7710, 7711, 7712, 7713, 7755 },
    },
    ["Houndmaster Loksey"] = {
        instance = "Scarlet Monastery",
        items = { 5756 },
    },
    ["Interrogator Vishas"] = {
        instance = "Scarlet Monastery",
        items = { 7752, 7753, 7754 },
    },
    ["High Inquisitor Fairbanks"] = {
        instance = "Scarlet Monastery",
        items = { 7760, 7761 },
    },
    
    -- ==================== ULDAMAN ====================
    ["Archaedas"] = {
        instance = "Uldaman",
        items = { 9379, 9382, 9411 },
    },
    ["Ironaya"] = {
        instance = "Uldaman",
        items = { 9381, 9426 },
    },
    ["Grimlok"] = {
        instance = "Uldaman",
        items = { 9407, 9408, 9409 },
    },
    ["Galgann Firehammer"] = {
        instance = "Uldaman",
        items = { 9412, 9418, 9419, 9431 },
    },
    ["Obsidian Sentinel"] = {
        instance = "Uldaman",
        items = { 9383, 9386, 9429 },
    },
    ["Revelosh"] = {
        instance = "Uldaman",
        items = { 9387, 9388, 9389, 9391 },
    },
    
    -- ==================== MARAUDON ====================
    ["Princess Theradras"] = {
        instance = "Maraudon",
        items = { 17713, 17714, 17715, 17780 },
    },
    ["Landslide"] = {
        instance = "Maraudon",
        items = { 17710, 17711, 17712, 17733 },
    },
    ["Noxxion"] = {
        instance = "Maraudon",
        items = { 17738, 17739, 17740 },
    },
    ["Lord Vyletongue"] = {
        instance = "Maraudon",
        items = { 17742 },
    },
    ["Tinkerer Gizlock"] = {
        instance = "Maraudon",
        items = { 17743, 17745, 17746, 17768 },
    },
    ["Celebras the Cursed"] = {
        instance = "Maraudon",
        items = { 17748, 17749 },
    },
    ["Meshlok the Harvester"] = {
        instance = "Maraudon",
        items = { 17750 },
    },
    ["Rotgrip"] = {
        instance = "Maraudon",
        items = { 17752 },
    },
    ["Razorlash"] = {
        instance = "Maraudon",
        items = { 17736, 17737 },
    },
    
    -- ==================== SUNKEN TEMPLE ====================
    ["Shade of Eranikus"] = {
        instance = "Sunken Temple",
        items = { 10829, 10833, 10834 },
    },
    ["Jammal'an the Prophet"] = {
        instance = "Sunken Temple",
        items = { 10806, 10828, 10830, 10831 },
    },
    ["Avatar of Hakkar"] = {
        instance = "Sunken Temple",
        items = { 10838 },
    },
    ["Morphaz"] = {
        instance = "Sunken Temple",
        items = { 10802, 10803, 10856 },
    },
    ["Hazzas"] = {
        instance = "Sunken Temple",
        items = { 10804, 10856 },
    },
    
    -- ==================== BLACKFATHOM DEEPS ====================
    ["Twilight Lord Kelris"] = {
        instance = "Blackfathom Deeps",
        items = { 6907 },
    },
    ["Old Serra'kis"] = {
        instance = "Blackfathom Deeps",
        items = { 6901, 6902, 6904, 6906 },
    },
    ["Baron Aquanis"] = {
        instance = "Blackfathom Deeps",
        items = { 6905 },
    },
    ["Ghamoo-Ra"] = {
        instance = "Blackfathom Deeps",
        items = { 6908, 6910 },
    },
    ["Lady Sarevess"] = {
        instance = "Blackfathom Deeps",
        items = { 6911 },
    },
    ["Aku'mai"] = {
        instance = "Blackfathom Deeps",
        items = { 6903, 6909 },
    },
    
    -- ==================== ZUL'FARRAK ====================
    ["Chief Ukorz Sandscalp"] = {
        instance = "Zul'Farrak",
        items = { 9246, 9370, 9379 },
    },
    ["Antu'sul"] = {
        instance = "Zul'Farrak",
        items = { 9478, 9479, 9480, 9481 },
    },
    ["Witch Doctor Zum'rah"] = {
        instance = "Zul'Farrak",
        items = { 9484, 9512, 18082, 18087 },
    },
    ["Theka the Martyr"] = {
        instance = "Zul'Farrak",
        items = { 9243, 9483 },
    },
    ["Gahz'rilla"] = {
        instance = "Zul'Farrak",
        items = { 9513, 9514, 18085 },
    },
    ["Nekrum Gutchewer"] = {
        instance = "Zul'Farrak",
        items = { 9371, 18083, 18086 },
    },
    ["Ruuzlu"] = {
        instance = "Zul'Farrak",
        items = { 18084 },
    },
    ["Hydromancer Velratha"] = {
        instance = "Zul'Farrak",
        items = { 9375 },
    },
    ["Sergeant Bly"] = {
        instance = "Zul'Farrak",
        items = { 9511 },
    },
    
    -- ==================== RAZORFEN DOWNS ====================
    ["Amnennar the Coldbringer"] = {
        instance = "Razorfen Downs",
        items = { 10761, 10762, 10763, 10764, 10765, 10771, 10773 },
    },
    ["Mordresh Fire Eye"] = {
        instance = "Razorfen Downs",
        items = { 10769, 10780, 10781 },
    },
    ["Glutton"] = {
        instance = "Razorfen Downs",
        items = { 10772, 10776 },
    },
    ["Tuten'kash"] = {
        instance = "Razorfen Downs",
        items = { 10777, 10778 },
    },
    ["Plaguemaw the Rotting"] = {
        instance = "Razorfen Downs",
        items = { 10766 },
    },
    ["Aggem Thorncurse"] = {
        instance = "Razorfen Downs",
        items = { 10767, 10768 },
    },
    
    -- ==================== WAILING CAVERNS ====================
    ["Verdan the Everliving"] = {
        instance = "Wailing Caverns",
        items = { 6622, 6631 },
    },
    ["Lady Anacondra"] = {
        instance = "Wailing Caverns",
        items = { 6629, 6632, 10413 },
    },
    ["Lord Pythas"] = {
        instance = "Wailing Caverns",
        items = { 6630, 6631 },
    },
    ["Lord Cobrahn"] = {
        instance = "Wailing Caverns",
        items = { 10410 },
    },
    ["Kresh"] = {
        instance = "Wailing Caverns",
        items = { 10411 },
    },
    ["Skum"] = {
        instance = "Wailing Caverns",
        items = { 5243, 6480 },
    },
    ["Mutanus the Devourer"] = {
        instance = "Wailing Caverns",
        items = { 6461, 6627, 6628 },
    },
    
    -- ==================== GNOMEREGAN ====================
    ["Mekgineer Thermaplugg"] = {
        instance = "Gnomeregan",
        items = { 9445, 9450, 9451, 9452, 9458 },
    },
    ["Electrocutioner 6000"] = {
        instance = "Gnomeregan",
        items = { 9446, 9447, 9459 },
    },
    ["Crowd Pummeler 9-60"] = {
        instance = "Gnomeregan",
        items = { 9449, 9456 },
    },
    ["Viscous Fallout"] = {
        instance = "Gnomeregan",
        items = { 9453 },
    },
    ["Dark Iron Ambassador"] = {
        instance = "Gnomeregan",
        items = { 9455, 9457 },
    },
    
    -- ==================== RAZORFEN KRAUL ====================
    ["Overlord Ramtusk"] = {
        instance = "Razorfen Kraul",
        items = { 6679 },
    },
    ["Death Speaker Jargba"] = {
        instance = "Razorfen Kraul",
        items = { 6681 },
    },
    ["Agathelos the Raging"] = {
        instance = "Razorfen Kraul",
        items = { 6686 },
    },
    ["Charlga Razorflank"] = {
        instance = "Razorfen Kraul",
        items = { 6682 },
    },
    
    -- ==================== RAGEFIRE CHASM ====================
    ["Taragaman the Hungerer"] = {
        instance = "Ragefire Chasm",
        items = { 14147, 14149 },
    },
    ["Jergosh the Invoker"] = {
        instance = "Ragefire Chasm",
        items = { 14145, 14148 },
    },
    ["Oggleflint"] = {
        instance = "Ragefire Chasm",
        items = { 14146 },
    },
    
    -- ==================== THE STOCKADE ====================
    ["Bazil Thredd"] = {
        instance = "The Stockade",
        items = { 1935 },
    },
    ["Dextren Ward"] = {
        instance = "The Stockade",
        items = { 1929 },
    },
    ["Kam Deepfury"] = {
        instance = "The Stockade",
        items = { 1934 },
    },
    ["Bruegal Ironknuckle"] = {
        instance = "The Stockade",
        items = { 2033 },
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
        items = { 18543, 18544, 18545, 18546, 17111, 17112, 17113 },
    },
    ["Azuregos"] = {
        instance = "World Boss",
        items = { 17070, 18202, 18204, 18541, 18542, 18547, 19130, 19131 },
    },
    ["Emeriss"] = {
        instance = "World Boss",
        items = { 20621, 20622 },
    },
    ["Taerar"] = {
        instance = "World Boss",
        items = { 20623, 20624 },
    },
    ["Lethon"] = {
        instance = "World Boss",
        items = { 20625, 20626 },
    },
    ["Ysondre"] = {
        instance = "World Boss",
        items = { 20627, 20628 },
    },
}

--------------------------------------------------------------------------------
-- Rare Spawn Locations (Expanded)
--------------------------------------------------------------------------------
DB.RareSpawns = {
    -- Blasted Lands
    ["Teremus the Devourer"] = { zone = "Blasted Lands", level = 60, coords = { x = 44, y = 33 }, drops = { 10804 } },
    ["Dreadscorn"] = { zone = "Blasted Lands", level = 57, coords = { x = 48, y = 35 }, drops = { 10803 } },
    ["Ravage"] = { zone = "Blasted Lands", level = 53, coords = { x = 51, y = 22 }, drops = {} },
    ["Mojo the Twisted"] = { zone = "Blasted Lands", level = 51, coords = { x = 61, y = 18 }, drops = {} },
    ["Grunter"] = { zone = "Blasted Lands", level = 50, coords = { x = 52, y = 36 }, drops = {} },
    ["Spiteflayer"] = { zone = "Blasted Lands", level = 55, coords = { x = 47, y = 40 }, drops = {} },
    ["Akubar the Seer"] = { zone = "Blasted Lands", level = 50, coords = { x = 42, y = 12 }, drops = {} },
    ["Cassia the Slitherqueen"] = { zone = "Blasted Lands", level = 52, coords = { x = 43, y = 34 }, drops = {} },
    ["Clack the Reaver"] = { zone = "Blasted Lands", level = 56, coords = { x = 55, y = 62 }, drops = {} },
    ["Deatheye"] = { zone = "Blasted Lands", level = 54, coords = { x = 57, y = 31 }, drops = {} },
    
    -- Azshara
    ["Azuregos"] = { zone = "Azshara", level = 60, coords = { x = 47, y = 83 }, drops = { 17070, 18202, 18204 } },
    ["General Colbatann"] = { zone = "Azshara", level = 55, coords = { x = 57, y = 50 }, drops = {} },
    ["Antilos"] = { zone = "Azshara", level = 55, coords = { x = 20, y = 64 }, drops = {} },
    ["Scalebeard"] = { zone = "Azshara", level = 57, coords = { x = 65, y = 51 }, drops = {} },
    ["Lady Sesspira"] = { zone = "Azshara", level = 56, coords = { x = 49, y = 76 }, drops = {} },
    
    -- Burning Steppes
    ["Deathmaw"] = { zone = "Burning Steppes", level = 55, coords = { x = 52, y = 41 }, drops = { 10802 } },
    ["Hematos"] = { zone = "Burning Steppes", level = 58, coords = { x = 25, y = 65 }, drops = { 10798 } },
    ["Volchan"] = { zone = "Burning Steppes", level = 57, coords = { x = 39, y = 57 }, drops = { 10797 } },
    ["Magma Elemental"] = { zone = "Burning Steppes", level = 56, coords = { x = 62, y = 41 }, drops = {} },
    ["Thauris Balgarr"] = { zone = "Burning Steppes", level = 59, coords = { x = 35, y = 28 }, drops = {} },
    ["Gruklash"] = { zone = "Burning Steppes", level = 59, coords = { x = 74, y = 46 }, drops = {} },
    
    -- Arathi Highlands
    ["Prince Nazjak"] = { zone = "Arathi Highlands", level = 40, coords = { x = 23, y = 84 }, drops = { 8225 } },
    ["Singer"] = { zone = "Arathi Highlands", level = 37, coords = { x = 40, y = 55 }, drops = {} },
    ["Ruul Onestone"] = { zone = "Arathi Highlands", level = 40, coords = { x = 50, y = 40 }, drops = {} },
    ["Kovork"] = { zone = "Arathi Highlands", level = 39, coords = { x = 79, y = 36 }, drops = {} },
    ["Nimar the Slayer"] = { zone = "Arathi Highlands", level = 36, coords = { x = 59, y = 65 }, drops = {} },
    ["Foulbelly"] = { zone = "Arathi Highlands", level = 35, coords = { x = 26, y = 46 }, drops = {} },
    ["Zalas Witherbark"] = { zone = "Arathi Highlands", level = 40, coords = { x = 62, y = 74 }, drops = {} },
    
    -- Ashenvale
    ["Mist Howler"] = { zone = "Ashenvale", level = 23, coords = { x = 50, y = 45 }, drops = { 5255 } },
    ["Ursol'lok"] = { zone = "Ashenvale", level = 31, coords = { x = 42, y = 67 }, drops = { 5254 } },
    ["Oakpaw"] = { zone = "Ashenvale", level = 23, coords = { x = 38, y = 70 }, drops = { 5253 } },
    ["Terrowulf Packlord"] = { zone = "Ashenvale", level = 28, coords = { x = 62, y = 53 }, drops = {} },
    ["Mugglefin"] = { zone = "Ashenvale", level = 19, coords = { x = 22, y = 54 }, drops = {} },
    ["Eck'alom"] = { zone = "Ashenvale", level = 27, coords = { x = 79, y = 78 }, drops = {} },
    
    -- Felwood
    ["Ragepaw"] = { zone = "Felwood", level = 53, coords = { x = 64, y = 8 }, drops = { 8247 } },
    ["Mongress"] = { zone = "Felwood", level = 52, coords = { x = 42, y = 20 }, drops = { 8246 } },
    ["Immolatus"] = { zone = "Felwood", level = 56, coords = { x = 54, y = 16 }, drops = { 8249 } },
    ["The Ongar"] = { zone = "Felwood", level = 54, coords = { x = 38, y = 47 }, drops = { 8248 } },
    
    -- Winterspring
    ["Azurous"] = { zone = "Winterspring", level = 58, coords = { x = 60, y = 75 }, drops = { 8254 } },
    ["General Colbatann"] = { zone = "Winterspring", level = 57, coords = { x = 25, y = 46 }, drops = {} },
    ["Grizzle Snowpaw"] = { zone = "Winterspring", level = 57, coords = { x = 49, y = 18 }, drops = { 8252 } },
    ["Kashoch the Reaver"] = { zone = "Winterspring", level = 60, coords = { x = 67, y = 55 }, drops = {} },
    ["Lady Hederine"] = { zone = "Winterspring", level = 59, coords = { x = 61, y = 20 }, drops = {} },
    ["Rak'shiri"] = { zone = "Winterspring", level = 57, coords = { x = 50, y = 18 }, drops = {} },
    
    -- The Barrens
    ["Gesharahan"] = { zone = "The Barrens", level = 16, coords = { x = 43, y = 50 }, drops = { 5106 } },
    ["Hagg Tansen"] = { zone = "The Barrens", level = 24, coords = { x = 48, y = 85 }, drops = {} },
    ["Swiftmane"] = { zone = "The Barrens", level = 14, coords = { x = 61, y = 33 }, drops = { 5108 } },
    ["Stonearm"] = { zone = "The Barrens", level = 18, coords = { x = 44, y = 23 }, drops = {} },
    ["Takk the Leaper"] = { zone = "The Barrens", level = 19, coords = { x = 60, y = 20 }, drops = { 5107 } },
    ["Dishu"] = { zone = "The Barrens", level = 16, coords = { x = 49, y = 47 }, drops = {} },
    ["Snort the Heckler"] = { zone = "The Barrens", level = 22, coords = { x = 49, y = 82 }, drops = {} },
    
    -- Stranglethorn Vale
    ["Kurmokk"] = { zone = "Stranglethorn Vale", level = 42, coords = { x = 42, y = 54 }, drops = { 8231 } },
    ["Pogeyan"] = { zone = "Stranglethorn Vale", level = 42, coords = { x = 40, y = 38 }, drops = { 8232 } },
    ["Shadowmaw Panther"] = { zone = "Stranglethorn Vale", level = 42, coords = { x = 47, y = 40 }, drops = {} },
    ["Tethis"] = { zone = "Stranglethorn Vale", level = 43, coords = { x = 45, y = 18 }, drops = { 8233 } },
    ["Mosh'Ogg Butcher"] = { zone = "Stranglethorn Vale", level = 50, coords = { x = 48, y = 27 }, drops = {} },
    ["Roguefeather"] = { zone = "Stranglethorn Vale", level = 47, coords = { x = 29, y = 46 }, drops = {} },
    ["Rippa"] = { zone = "Stranglethorn Vale", level = 47, coords = { x = 25, y = 55 }, drops = {} },
    ["Gluggle"] = { zone = "Stranglethorn Vale", level = 44, coords = { x = 21, y = 44 }, drops = {} },
    ["Scale Belly"] = { zone = "Stranglethorn Vale", level = 45, coords = { x = 22, y = 21 }, drops = { 8234 } },
    
    -- Western Plaguelands
    ["Scarlet Executioner"] = { zone = "Western Plaguelands", level = 57, coords = { x = 0, y = 0 }, drops = {} },
    ["Scarlet High Clerist"] = { zone = "Western Plaguelands", level = 58, coords = { x = 0, y = 0 }, drops = {} },
    ["Tamra Stormpike"] = { zone = "Western Plaguelands", level = 56, coords = { x = 51, y = 28 }, drops = {} },
    ["Scarlet Smith"] = { zone = "Western Plaguelands", level = 55, coords = { x = 45, y = 20 }, drops = {} },
    ["Lord Maldazzar"] = { zone = "Western Plaguelands", level = 58, coords = { x = 0, y = 0 }, drops = {} },
    
    -- Eastern Plaguelands
    ["Stitches"] = { zone = "Eastern Plaguelands", level = 60, coords = { x = 0, y = 0 }, drops = {} },
    ["Zul'Brin Warpbranch"] = { zone = "Eastern Plaguelands", level = 59, coords = { x = 48, y = 14 }, drops = {} },
    ["Ranger Lord Hawkspear"] = { zone = "Eastern Plaguelands", level = 60, coords = { x = 58, y = 77 }, drops = {} },
    ["Deathspeaker Selendre"] = { zone = "Eastern Plaguelands", level = 60, coords = { x = 27, y = 75 }, drops = {} },
    ["Duggan Wildhammer"] = { zone = "Eastern Plaguelands", level = 58, coords = { x = 54, y = 23 }, drops = {} },
    
    -- Silithus
    ["Rex Ashil"] = { zone = "Silithus", level = 58, coords = { x = 49, y = 23 }, drops = {} },
    ["Krellack"] = { zone = "Silithus", level = 58, coords = { x = 41, y = 42 }, drops = {} },
    ["Grubthor"] = { zone = "Silithus", level = 59, coords = { x = 59, y = 71 }, drops = {} },
    ["Setis"] = { zone = "Silithus", level = 57, coords = { x = 70, y = 78 }, drops = {} },
    
    -- Un'Goro Crater
    ["Clutchmother Zavas"] = { zone = "Un'Goro Crater", level = 55, coords = { x = 43, y = 21 }, drops = { 8244 } },
    ["Gruff"] = { zone = "Un'Goro Crater", level = 52, coords = { x = 66, y = 65 }, drops = {} },
    ["King Mosh"] = { zone = "Un'Goro Crater", level = 60, coords = { x = 0, y = 0 }, drops = { 8245 } },
    ["Uhk'loc"] = { zone = "Un'Goro Crater", level = 54, coords = { x = 63, y = 13 }, drops = {} },
    ["The Razza"] = { zone = "Un'Goro Crater", level = 56, coords = { x = 0, y = 0 }, drops = {} },
    
    -- Tanaris
    ["Murderous Blisterpaw"] = { zone = "Tanaris", level = 47, coords = { x = 0, y = 0 }, drops = {} },
    ["Cyclok the Mad"] = { zone = "Tanaris", level = 47, coords = { x = 0, y = 0 }, drops = {} },
    ["Warleader Krazzilak"] = { zone = "Tanaris", level = 46, coords = { x = 0, y = 0 }, drops = {} },
    ["Omgorn the Lost"] = { zone = "Tanaris", level = 48, coords = { x = 0, y = 0 }, drops = {} },
    ["Jin'Zallah the Sandbringer"] = { zone = "Tanaris", level = 47, coords = { x = 0, y = 0 }, drops = {} },
    ["Haarka the Ravenous"] = { zone = "Tanaris", level = 45, coords = { x = 0, y = 0 }, drops = {} },
    ["Kregg Keelhaul"] = { zone = "Tanaris", level = 45, coords = { x = 0, y = 0 }, drops = { 8236 } },
    
    -- Feralas
    ["Snarler"] = { zone = "Feralas", level = 48, coords = { x = 76, y = 28 }, drops = { 8238 } },
    ["Qirot"] = { zone = "Feralas", level = 47, coords = { x = 75, y = 55 }, drops = {} },
    ["Diamond Head"] = { zone = "Feralas", level = 43, coords = { x = 43, y = 10 }, drops = {} },
    ["Gnarl Leafbrother"] = { zone = "Feralas", level = 48, coords = { x = 74, y = 62 }, drops = {} },
    ["Groddoc Thunderer"] = { zone = "Feralas", level = 45, coords = { x = 0, y = 0 }, drops = {} },
    ["Lady Szallah"] = { zone = "Feralas", level = 50, coords = { x = 77, y = 57 }, drops = {} },
    ["The Reak"] = { zone = "Feralas", level = 50, coords = { x = 56, y = 54 }, drops = {} },
    ["Grim Reaper"] = { zone = "Feralas", level = 49, coords = { x = 0, y = 0 }, drops = {} },
    
    -- Desolace
    ["Giggler"] = { zone = "Desolace", level = 34, coords = { x = 0, y = 0 }, drops = {} },
    ["Accursed Slitherblade"] = { zone = "Desolace", level = 38, coords = { x = 0, y = 0 }, drops = {} },
    ["Kaskk"] = { zone = "Desolace", level = 37, coords = { x = 0, y = 0 }, drops = {} },
    ["Drogoth the Roamer"] = { zone = "Desolace", level = 39, coords = { x = 0, y = 0 }, drops = {} },
    
    -- Thousand Needles
    ["Gibblewilt"] = { zone = "Thousand Needles", level = 31, coords = { x = 0, y = 0 }, drops = {} },
    ["Heartrazor"] = { zone = "Thousand Needles", level = 32, coords = { x = 0, y = 0 }, drops = {} },
    ["Harb Foulmountain"] = { zone = "Thousand Needles", level = 38, coords = { x = 0, y = 0 }, drops = {} },
    ["Achellios the Banished"] = { zone = "Thousand Needles", level = 31, coords = { x = 0, y = 0 }, drops = { 8213 } },
    ["Dreadscale"] = { zone = "Thousand Needles", level = 35, coords = { x = 0, y = 0 }, drops = {} },
    
    -- Dustwallow Marsh
    ["Burgle Eye"] = { zone = "Dustwallow Marsh", level = 37, coords = { x = 0, y = 0 }, drops = {} },
    ["Dart"] = { zone = "Dustwallow Marsh", level = 42, coords = { x = 0, y = 0 }, drops = { 8214 } },
    ["Drogoth the Roamer"] = { zone = "Dustwallow Marsh", level = 39, coords = { x = 0, y = 0 }, drops = {} },
    ["Hayoc"] = { zone = "Dustwallow Marsh", level = 40, coords = { x = 0, y = 0 }, drops = {} },
    ["Lord Angler"] = { zone = "Dustwallow Marsh", level = 41, coords = { x = 0, y = 0 }, drops = {} },
    ["Razorspine"] = { zone = "Dustwallow Marsh", level = 43, coords = { x = 0, y = 0 }, drops = {} },
    
    -- Hillsbrad Foothills
    ["Creepthess"] = { zone = "Hillsbrad Foothills", level = 31, coords = { x = 0, y = 0 }, drops = {} },
    ["Farmer Getz"] = { zone = "Hillsbrad Foothills", level = 26, coords = { x = 0, y = 0 }, drops = {} },
    ["Scargil"] = { zone = "Hillsbrad Foothills", level = 28, coords = { x = 0, y = 0 }, drops = {} },
    ["Big Samras"] = { zone = "Hillsbrad Foothills", level = 30, coords = { x = 0, y = 0 }, drops = {} },
    ["Ro'Bark"] = { zone = "Hillsbrad Foothills", level = 29, coords = { x = 0, y = 0 }, drops = {} },
    
    -- Wetlands
    ["Razormaw"] = { zone = "Wetlands", level = 25, coords = { x = 0, y = 0 }, drops = { 5196 } },
    ["Leech Widow"] = { zone = "Wetlands", level = 25, coords = { x = 0, y = 0 }, drops = {} },
    ["Garneg Charskull"] = { zone = "Wetlands", level = 26, coords = { x = 0, y = 0 }, drops = {} },
    ["Ma'ruk Wyrmscale"] = { zone = "Wetlands", level = 24, coords = { x = 0, y = 0 }, drops = {} },
    
    -- Duskwood
    ["Fenros"] = { zone = "Duskwood", level = 26, coords = { x = 0, y = 0 }, drops = {} },
    ["Lupos"] = { zone = "Duskwood", level = 23, coords = { x = 0, y = 0 }, drops = { 5186 } },
    ["Nefaru"] = { zone = "Duskwood", level = 26, coords = { x = 0, y = 0 }, drops = {} },
    ["Naraxis"] = { zone = "Duskwood", level = 28, coords = { x = 0, y = 0 }, drops = {} },
    ["Stitches"] = { zone = "Duskwood", level = 35, coords = { x = 0, y = 0 }, drops = { 5188 } },
    ["The Unknown Soldier"] = { zone = "Duskwood", level = 25, coords = { x = 0, y = 0 }, drops = {} },
    ["Morbent Fel"] = { zone = "Duskwood", level = 32, coords = { x = 0, y = 0 }, drops = {} },
    
    -- Redridge Mountains
    ["Chatter"] = { zone = "Redridge Mountains", level = 20, coords = { x = 0, y = 0 }, drops = {} },
    ["Ribchaser"] = { zone = "Redridge Mountains", level = 23, coords = { x = 0, y = 0 }, drops = {} },
    ["Snarlflare"] = { zone = "Redridge Mountains", level = 25, coords = { x = 0, y = 0 }, drops = {} },
    ["Kazon"] = { zone = "Redridge Mountains", level = 25, coords = { x = 0, y = 0 }, drops = {} },
    
    -- Badlands
    ["Boss Tho'grun"] = { zone = "Badlands", level = 45, coords = { x = 0, y = 0 }, drops = {} },
    ["Broken Tooth"] = { zone = "Badlands", level = 37, coords = { x = 0, y = 0 }, drops = {} },
    ["Zaricotl"] = { zone = "Badlands", level = 45, coords = { x = 0, y = 0 }, drops = { 8224 } },
    ["Barnabus"] = { zone = "Badlands", level = 42, coords = { x = 0, y = 0 }, drops = {} },
    ["Siege Golem"] = { zone = "Badlands", level = 43, coords = { x = 0, y = 0 }, drops = {} },
    
    -- Searing Gorge
    ["Rekk'tilac"] = { zone = "Searing Gorge", level = 50, coords = { x = 0, y = 0 }, drops = { 8243 } },
    ["Searing Infernal"] = { zone = "Searing Gorge", level = 51, coords = { x = 0, y = 0 }, drops = {} },
    ["Slavering Ember Worg"] = { zone = "Searing Gorge", level = 48, coords = { x = 0, y = 0 }, drops = {} },
    
    -- Loch Modan
    ["Grizlak"] = { zone = "Loch Modan", level = 18, coords = { x = 0, y = 0 }, drops = {} },
    ["Magosh"] = { zone = "Loch Modan", level = 17, coords = { x = 0, y = 0 }, drops = {} },
    ["Nix"] = { zone = "Loch Modan", level = 14, coords = { x = 0, y = 0 }, drops = {} },
    ["Ol' Sooty"] = { zone = "Loch Modan", level = 17, coords = { x = 0, y = 0 }, drops = {} },
    
    -- Elwynn Forest
    ["Morgaine the Sly"] = { zone = "Elwynn Forest", level = 9, coords = { x = 0, y = 0 }, drops = {} },
    ["Narg the Taskmaster"] = { zone = "Elwynn Forest", level = 10, coords = { x = 0, y = 0 }, drops = {} },
    ["Thuros Lightfingers"] = { zone = "Elwynn Forest", level = 11, coords = { x = 0, y = 0 }, drops = {} },
    
    -- Westfall
    ["Brack"] = { zone = "Westfall", level = 13, coords = { x = 0, y = 0 }, drops = {} },
    ["Foe Reaper 4000"] = { zone = "Westfall", level = 20, coords = { x = 0, y = 0 }, drops = { 5179 } },
    ["Leprithus"] = { zone = "Westfall", level = 19, coords = { x = 0, y = 0 }, drops = {} },
    ["Master Digger"] = { zone = "Westfall", level = 15, coords = { x = 0, y = 0 }, drops = {} },
    ["Slark"] = { zone = "Westfall", level = 15, coords = { x = 0, y = 0 }, drops = {} },
    ["Vultros"] = { zone = "Westfall", level = 18, coords = { x = 0, y = 0 }, drops = { 5180 } },
    
    -- Mulgore
    ["Ghost Howl"] = { zone = "Mulgore", level = 12, coords = { x = 0, y = 0 }, drops = {} },
    ["Mazzranache"] = { zone = "Mulgore", level = 9, coords = { x = 0, y = 0 }, drops = {} },
    ["The Rake"] = { zone = "Mulgore", level = 10, coords = { x = 0, y = 0 }, drops = { 5159 } },
    
    -- Durotar
    ["Felweaver Scornn"] = { zone = "Durotar", level = 11, coords = { x = 0, y = 0 }, drops = {} },
    ["Geolord Mottle"] = { zone = "Durotar", level = 12, coords = { x = 0, y = 0 }, drops = {} },
    ["Warlord Kolkanis"] = { zone = "Durotar", level = 14, coords = { x = 0, y = 0 }, drops = {} },
    
    -- Tirisfal Glades
    ["Bayne"] = { zone = "Tirisfal Glades", level = 10, coords = { x = 0, y = 0 }, drops = {} },
    ["Deeb"] = { zone = "Tirisfal Glades", level = 8, coords = { x = 0, y = 0 }, drops = {} },
    ["Fellicent's Shade"] = { zone = "Tirisfal Glades", level = 7, coords = { x = 0, y = 0 }, drops = {} },
    ["Lost Soul"] = { zone = "Tirisfal Glades", level = 6, coords = { x = 0, y = 0 }, drops = {} },
    ["Ressan the Needler"] = { zone = "Tirisfal Glades", level = 10, coords = { x = 0, y = 0 }, drops = {} },
    
    -- Silverpine Forest
    ["Gorefang"] = { zone = "Silverpine Forest", level = 13, coords = { x = 0, y = 0 }, drops = { 5165 } },
    ["Krethis Shadowspinner"] = { zone = "Silverpine Forest", level = 21, coords = { x = 0, y = 0 }, drops = {} },
    ["Rot Hide Bruiser"] = { zone = "Silverpine Forest", level = 18, coords = { x = 0, y = 0 }, drops = {} },
    
    -- Darkshore
    ["Flagglemurk the Cruel"] = { zone = "Darkshore", level = 18, coords = { x = 0, y = 0 }, drops = {} },
    ["Lady Moongazer"] = { zone = "Darkshore", level = 19, coords = { x = 0, y = 0 }, drops = {} },
    ["Licillin"] = { zone = "Darkshore", level = 15, coords = { x = 0, y = 0 }, drops = {} },
    ["Lord Sinslayer"] = { zone = "Darkshore", level = 18, coords = { x = 0, y = 0 }, drops = {} },
    
    -- Teldrassil
    ["Threggil"] = { zone = "Teldrassil", level = 8, coords = { x = 0, y = 0 }, drops = {} },
    ["Urson"] = { zone = "Teldrassil", level = 10, coords = { x = 0, y = 0 }, drops = {} },
}

--------------------------------------------------------------------------------
-- Fishing Loot Tables by Zone
--------------------------------------------------------------------------------
DB.FishingLoot = {
    -- Eastern Kingdoms Zones
    ["Elwynn Forest"] = {
        fish = {
            [6291] = { name = "Raw Brilliant Smallfish", quality = 1, skillReq = 1, catchRate = 40 },
            [6303] = { name = "Raw Slitherskin Mackerel", quality = 1, skillReq = 1, catchRate = 30 },
            [6289] = { name = "Raw Longjaw Mud Snapper", quality = 1, skillReq = 25, catchRate = 20 },
        },
        junk = { 6289, 6291 },
        rare = {},
        skillRange = { min = 1, max = 75 },
    },
    ["Westfall"] = {
        fish = {
            [6289] = { name = "Raw Longjaw Mud Snapper", quality = 1, skillReq = 25, catchRate = 35 },
            [6317] = { name = "Raw Loch Frenzy", quality = 1, skillReq = 50, catchRate = 25 },
            [6308] = { name = "Raw Bristle Whisker Catfish", quality = 1, skillReq = 75, catchRate = 20 },
        },
        junk = { 6289 },
        rare = {},
        skillRange = { min = 25, max = 150 },
    },
    ["Loch Modan"] = {
        fish = {
            [6289] = { name = "Raw Longjaw Mud Snapper", quality = 1, skillReq = 25, catchRate = 40 },
            [6317] = { name = "Raw Loch Frenzy", quality = 1, skillReq = 50, catchRate = 30 },
            [6358] = { name = "Oily Blackmouth", quality = 1, skillReq = 75, catchRate = 15 },
        },
        junk = { 6289 },
        rare = {},
        skillRange = { min = 25, max = 150 },
    },
    ["Redridge Mountains"] = {
        fish = {
            [6289] = { name = "Raw Longjaw Mud Snapper", quality = 1, skillReq = 25, catchRate = 35 },
            [6308] = { name = "Raw Bristle Whisker Catfish", quality = 1, skillReq = 75, catchRate = 30 },
            [6361] = { name = "Raw Rainbow Fin Albacore", quality = 1, skillReq = 75, catchRate = 15 },
        },
        junk = { 6289 },
        rare = {},
        skillRange = { min = 25, max = 150 },
    },
    ["Duskwood"] = {
        fish = {
            [6308] = { name = "Raw Bristle Whisker Catfish", quality = 1, skillReq = 75, catchRate = 40 },
            [6361] = { name = "Raw Rainbow Fin Albacore", quality = 1, skillReq = 75, catchRate = 25 },
        },
        junk = { 6289 },
        rare = {},
        skillRange = { min = 75, max = 225 },
    },
    ["Wetlands"] = {
        fish = {
            [6308] = { name = "Raw Bristle Whisker Catfish", quality = 1, skillReq = 75, catchRate = 35 },
            [6358] = { name = "Oily Blackmouth", quality = 1, skillReq = 75, catchRate = 20 },
            [6359] = { name = "Firefin Snapper", quality = 1, skillReq = 100, catchRate = 15 },
        },
        junk = { 6289 },
        rare = {},
        skillRange = { min = 75, max = 225 },
    },
    ["Hillsbrad Foothills"] = {
        fish = {
            [6308] = { name = "Raw Bristle Whisker Catfish", quality = 1, skillReq = 75, catchRate = 30 },
            [6359] = { name = "Firefin Snapper", quality = 1, skillReq = 100, catchRate = 20 },
            [8365] = { name = "Raw Mithril Head Trout", quality = 1, skillReq = 150, catchRate = 25 },
        },
        junk = { 6289 },
        rare = {},
        skillRange = { min = 75, max = 225 },
    },
    ["Arathi Highlands"] = {
        fish = {
            [6359] = { name = "Firefin Snapper", quality = 1, skillReq = 100, catchRate = 25 },
            [8365] = { name = "Raw Mithril Head Trout", quality = 1, skillReq = 150, catchRate = 35 },
            [6362] = { name = "Raw Rockscale Cod", quality = 1, skillReq = 175, catchRate = 20 },
        },
        junk = { 6289 },
        rare = {},
        skillRange = { min = 100, max = 250 },
    },
    ["Stranglethorn Vale"] = {
        fish = {
            [6359] = { name = "Firefin Snapper", quality = 1, skillReq = 100, catchRate = 20 },
            [6362] = { name = "Raw Rockscale Cod", quality = 1, skillReq = 175, catchRate = 30 },
            [4603] = { name = "Raw Spotted Yellowtail", quality = 1, skillReq = 225, catchRate = 20 },
            [13422] = { name = "Stonescale Eel", quality = 1, skillReq = 225, catchRate = 10 },
        },
        junk = { 6289 },
        rare = {
            [19970] = { name = "Arcanite Fishing Pole", quality = 4, source = "Fishing Extravaganza Winner" },
            [19979] = { name = "Hook of the Master Angler", quality = 3, source = "Fishing Extravaganza Winner" },
            [19972] = { name = "Lucky Fishing Hat", quality = 2, source = "Fishing Extravaganza Prize" },
        },
        skillRange = { min = 100, max = 300 },
    },
    ["Western Plaguelands"] = {
        fish = {
            [6362] = { name = "Raw Rockscale Cod", quality = 1, skillReq = 175, catchRate = 30 },
            [8365] = { name = "Raw Mithril Head Trout", quality = 1, skillReq = 150, catchRate = 25 },
            [13754] = { name = "Raw Glossy Mightfish", quality = 1, skillReq = 225, catchRate = 20 },
        },
        junk = { 6289 },
        rare = {},
        skillRange = { min = 175, max = 330 },
    },
    ["Eastern Plaguelands"] = {
        fish = {
            [13754] = { name = "Raw Glossy Mightfish", quality = 1, skillReq = 225, catchRate = 25 },
            [13755] = { name = "Winter Squid", quality = 1, skillReq = 225, catchRate = 20 },
            [13756] = { name = "Raw Summer Bass", quality = 1, skillReq = 225, catchRate = 20 },
            [13759] = { name = "Raw Nightfin Snapper", quality = 1, skillReq = 225, catchRate = 15 },
        },
        junk = { 6289 },
        rare = {},
        skillRange = { min = 200, max = 330 },
    },
    
    -- Kalimdor Zones
    ["Darkshore"] = {
        fish = {
            [6291] = { name = "Raw Brilliant Smallfish", quality = 1, skillReq = 1, catchRate = 30 },
            [6289] = { name = "Raw Longjaw Mud Snapper", quality = 1, skillReq = 25, catchRate = 30 },
            [6358] = { name = "Oily Blackmouth", quality = 1, skillReq = 75, catchRate = 20 },
        },
        junk = { 6289 },
        rare = {},
        skillRange = { min = 1, max = 150 },
    },
    ["Ashenvale"] = {
        fish = {
            [6308] = { name = "Raw Bristle Whisker Catfish", quality = 1, skillReq = 75, catchRate = 35 },
            [6358] = { name = "Oily Blackmouth", quality = 1, skillReq = 75, catchRate = 20 },
            [6361] = { name = "Raw Rainbow Fin Albacore", quality = 1, skillReq = 75, catchRate = 20 },
        },
        junk = { 6289 },
        rare = {},
        skillRange = { min = 75, max = 225 },
    },
    ["The Barrens"] = {
        fish = {
            [6289] = { name = "Raw Longjaw Mud Snapper", quality = 1, skillReq = 25, catchRate = 35 },
            [6317] = { name = "Raw Loch Frenzy", quality = 1, skillReq = 50, catchRate = 25 },
            [6358] = { name = "Oily Blackmouth", quality = 1, skillReq = 75, catchRate = 15 },
            [6351] = { name = "Deviate Fish", quality = 1, skillReq = 50, catchRate = 10 },
        },
        junk = { 6289 },
        rare = {},
        skillRange = { min = 25, max = 150 },
    },
    ["Dustwallow Marsh"] = {
        fish = {
            [6308] = { name = "Raw Bristle Whisker Catfish", quality = 1, skillReq = 75, catchRate = 30 },
            [6359] = { name = "Firefin Snapper", quality = 1, skillReq = 100, catchRate = 25 },
            [8365] = { name = "Raw Mithril Head Trout", quality = 1, skillReq = 150, catchRate = 20 },
        },
        junk = { 6289 },
        rare = {},
        skillRange = { min = 75, max = 225 },
    },
    ["Feralas"] = {
        fish = {
            [6359] = { name = "Firefin Snapper", quality = 1, skillReq = 100, catchRate = 25 },
            [8365] = { name = "Raw Mithril Head Trout", quality = 1, skillReq = 150, catchRate = 30 },
            [6362] = { name = "Raw Rockscale Cod", quality = 1, skillReq = 175, catchRate = 20 },
        },
        junk = { 6289 },
        rare = {},
        skillRange = { min = 100, max = 275 },
    },
    ["Tanaris"] = {
        fish = {
            [6362] = { name = "Raw Rockscale Cod", quality = 1, skillReq = 175, catchRate = 25 },
            [4603] = { name = "Raw Spotted Yellowtail", quality = 1, skillReq = 225, catchRate = 30 },
            [13422] = { name = "Stonescale Eel", quality = 1, skillReq = 225, catchRate = 15 },
        },
        junk = { 6289 },
        rare = {},
        skillRange = { min = 175, max = 300 },
    },
    ["Un'Goro Crater"] = {
        fish = {
            [6362] = { name = "Raw Rockscale Cod", quality = 1, skillReq = 175, catchRate = 30 },
            [13754] = { name = "Raw Glossy Mightfish", quality = 1, skillReq = 225, catchRate = 25 },
            [13759] = { name = "Raw Nightfin Snapper", quality = 1, skillReq = 225, catchRate = 20 },
        },
        junk = { 6289 },
        rare = {},
        skillRange = { min = 175, max = 300 },
    },
    ["Silithus"] = {
        fish = {
            [13754] = { name = "Raw Glossy Mightfish", quality = 1, skillReq = 225, catchRate = 30 },
            [13759] = { name = "Raw Nightfin Snapper", quality = 1, skillReq = 225, catchRate = 25 },
            [13760] = { name = "Raw Sunscale Salmon", quality = 1, skillReq = 225, catchRate = 20 },
        },
        junk = { 6289 },
        rare = {},
        skillRange = { min = 200, max = 330 },
    },
    ["Winterspring"] = {
        fish = {
            [13754] = { name = "Raw Glossy Mightfish", quality = 1, skillReq = 225, catchRate = 25 },
            [13755] = { name = "Winter Squid", quality = 1, skillReq = 225, catchRate = 30 },
            [13760] = { name = "Raw Sunscale Salmon", quality = 1, skillReq = 225, catchRate = 20 },
        },
        junk = { 6289 },
        rare = {},
        skillRange = { min = 200, max = 330 },
    },
    ["Azshara"] = {
        fish = {
            [13754] = { name = "Raw Glossy Mightfish", quality = 1, skillReq = 225, catchRate = 20 },
            [13422] = { name = "Stonescale Eel", quality = 1, skillReq = 225, catchRate = 20 },
            [13759] = { name = "Raw Nightfin Snapper", quality = 1, skillReq = 225, catchRate = 25 },
            [13888] = { name = "Darkclaw Lobster", quality = 1, skillReq = 245, catchRate = 15 },
        },
        junk = { 6289 },
        rare = {},
        skillRange = { min = 200, max = 330 },
    },
}

--------------------------------------------------------------------------------
-- Books & Lore Items
--------------------------------------------------------------------------------
DB.LoreItems = {
    -- Quest-Related Lore Books
    [9566] = { name = "The Moldy Tome", quality = 1, source = "Quest", sourceDetail = "Shadowfang Keep Quest" },
    [6999] = { name = "Necrotic Runes", quality = 1, source = "Drop", sourceDetail = "Scourge Invasions" },
    [12841] = { name = "The Annals of Darrowshire", quality = 1, source = "Quest", sourceDetail = "Pamela's Doll (WPL)" },
    [13474] = { name = "Davil's Libram", quality = 1, source = "Quest", sourceDetail = "Scholomance" },
    [13602] = { name = "Hive'Ashi Rubbing", quality = 1, source = "Quest", sourceDetail = "Silithus" },
    
    -- Readable Lore Books - Found in World
    [11482] = { name = "Nat Pagle's Guide to Extreme Anglin'", quality = 1, source = "Quest", sourceDetail = "Nat Pagle's Extreme Anglin' Quest" },
    [18401] = { name = "Tempest Keep Key", quality = 1, source = "Quest", sourceDetail = "Arcatraz Key Quest (TBC placeholder)" },
    [12558] = { name = "Blue Dragonscale Leggings", quality = 3, source = "Crafted", sourceDetail = "Leatherworking (Dragonscale)" },
    
    -- Scholomance Lore Books
    [13467] = { name = "Icecap", quality = 1, source = "Drop", sourceDetail = "Herbalism" },
    [13468] = { name = "Black Lotus", quality = 3, source = "Drop", sourceDetail = "Herbalism (Rare)" },
    
    -- Stratholme Lore
    [12845] = { name = "Corrupted Mind", quality = 0, source = "Drop", sourceDetail = "Scholomance" },
    [13347] = { name = "Crest of Retribution", quality = 2, source = "Drop", sourceDetail = "Stratholme (Scarlet Side)" },
    
    -- Dire Maul Library (Librams)
    [18348] = { name = "Quel'Serrar", quality = 4, source = "Quest", sourceDetail = "Dire Maul Quest (Foror's Compendium)" },
    [18401] = { name = "Foror's Compendium of Dragon Slaying", quality = 4, source = "Drop", sourceDetail = "Dire Maul (Rare World Drop)" },
    [18333] = { name = "Libram of Focus", quality = 3, source = "Drop", sourceDetail = "Dire Maul (Immol'thar, Prince Tortheldrin)" },
    [18334] = { name = "Libram of Protection", quality = 3, source = "Drop", sourceDetail = "Dire Maul (Immol'thar, Prince Tortheldrin)" },
    [18332] = { name = "Libram of Rapidity", quality = 3, source = "Drop", sourceDetail = "Dire Maul (Immol'thar, Prince Tortheldrin)" },
    
    -- Dire Maul Class Books
    [18357] = { name = "Royal Seal of Eldre'Thalas", quality = 3, source = "Quest", sourceDetail = "Dire Maul Class Quest" },
    [18358] = { name = "Arcanum of Focus", quality = 3, source = "Quest", sourceDetail = "Dire Maul Libram Quest (Arcanum)" },
    [18329] = { name = "Arcanum of Protection", quality = 3, source = "Quest", sourceDetail = "Dire Maul Libram Quest (Arcanum)" },
    [18330] = { name = "Arcanum of Rapidity", quality = 3, source = "Quest", sourceDetail = "Dire Maul Libram Quest (Arcanum)" },
    
    -- AQ War Effort Books
    [21213] = { name = "Tablet of Madness", quality = 3, source = "Drop", sourceDetail = "Jin'do the Hexxer (ZG)" },
    [20469] = { name = "Zandalar Honor Token", quality = 2, source = "Drop", sourceDetail = "Zul'Gurub (All Bosses)" },
    
    -- Various Lore/Quest Books
    [4027] = { name = "Bloodspore Carpel", quality = 1, source = "Drop", sourceDetail = "Tharil'zun (Redridge)" },
    [5790] = { name = "Lonebrow's Journal", quality = 1, source = "Quest", sourceDetail = "Westfall Quest" },
    [5791] = { name = "Recipe: Bat Bites", quality = 2, source = "Vendor", sourceDetail = "Cooking Vendor (Tirisfal)" },
    [5792] = { name = "Recipe: Crispy Bat Wing", quality = 2, source = "Vendor", sourceDetail = "Cooking Vendor (Tirisfal)" },
    [6662] = { name = "Recipe: Savory Deviate Delight", quality = 2, source = "Drop", sourceDetail = "Wailing Caverns (Rare)" },
    
    -- Naxxramas Lore Items
    [22520] = { name = "Phylactery of Kel'Thuzad", quality = 4, source = "Drop", sourceDetail = "Kel'Thuzad (Naxxramas)" },
    [22726] = { name = "Splinter of Atiesh", quality = 4, source = "Drop", sourceDetail = "Naxxramas Bosses (40 required)" },
    [22727] = { name = "Frame of Atiesh", quality = 4, source = "Drop", sourceDetail = "C'Thun (AQ40)" },
    [22729] = { name = "Staff Head of Atiesh", quality = 4, source = "Drop", sourceDetail = "Kel'Thuzad (Naxxramas)" },
    
    -- Class-Specific Quest Items
    [18706] = { name = "Ancient Petrified Leaf", quality = 4, source = "Drop", sourceDetail = "Majordomo Cache (MC)" },
    [18646] = { name = "The Eye of Divinity", quality = 4, source = "Drop", sourceDetail = "Majordomo Cache (MC)" },
    [18665] = { name = "The Eye of Shadow", quality = 4, source = "Drop", sourceDetail = "Lord Kazzak / Elite Demons (Blasted Lands)" },
}

--------------------------------------------------------------------------------
-- Profession Recipes - Complete Lists
--------------------------------------------------------------------------------
DB.ProfessionRecipes = {
    -- Alchemy Recipes
    Alchemy = {
        -- Vendor Learned (Trainers)
        [2553] = { name = "Recipe: Elixir of Minor Agility", quality = 1, source = "Trainer", sourceDetail = "Alchemy Trainer", skillReq = 50 },
        [2555] = { name = "Recipe: Swiftness Potion", quality = 1, source = "Trainer", sourceDetail = "Alchemy Trainer", skillReq = 60 },
        [3395] = { name = "Recipe: Elixir of Wisdom", quality = 1, source = "Trainer", sourceDetail = "Alchemy Trainer", skillReq = 90 },
        [6055] = { name = "Recipe: Fire Protection Potion", quality = 2, source = "Vendor", sourceDetail = "Alchemy Suppliers", skillReq = 165 },
        [6056] = { name = "Recipe: Frost Protection Potion", quality = 2, source = "Vendor", sourceDetail = "Alchemy Suppliers", skillReq = 165 },
        [6057] = { name = "Recipe: Nature Protection Potion", quality = 2, source = "Vendor", sourceDetail = "Alchemy Suppliers", skillReq = 165 },
        [6068] = { name = "Recipe: Shadow Protection Potion", quality = 2, source = "Vendor", sourceDetail = "Alchemy Suppliers", skillReq = 165 },
        [9293] = { name = "Recipe: Magic Resistance Potion", quality = 2, source = "Vendor", sourceDetail = "Alchemy Suppliers", skillReq = 210 },
        [9295] = { name = "Recipe: Invisibility Potion", quality = 2, source = "Vendor", sourceDetail = "Alchemy Suppliers (Limited)", skillReq = 235 },
        
        -- World Drop Recipes
        [3830] = { name = "Recipe: Elixir of Fortitude", quality = 2, source = "World Drop", sourceDetail = "Level 30-40", skillReq = 175 },
        [3831] = { name = "Recipe: Mighty Troll's Blood Elixir", quality = 2, source = "World Drop", sourceDetail = "Level 40-50", skillReq = 180 },
        [9298] = { name = "Recipe: Gift of Arthas", quality = 2, source = "World Drop", sourceDetail = "Level 45-55", skillReq = 240 },
        [9300] = { name = "Recipe: Elixir of Giants", quality = 2, source = "World Drop", sourceDetail = "Level 45-55", skillReq = 245 },
        [9301] = { name = "Recipe: Elixir of the Sages", quality = 2, source = "World Drop", sourceDetail = "Level 45-55", skillReq = 250 },
        [9302] = { name = "Recipe: Ghost Dye", quality = 2, source = "World Drop", sourceDetail = "Level 48-58", skillReq = 245 },
        [9303] = { name = "Recipe: Philosophers' Stone", quality = 2, source = "World Drop", sourceDetail = "Level 50-60", skillReq = 225 },
        [9304] = { name = "Recipe: Elixir of Demonslaying", quality = 2, source = "World Drop", sourceDetail = "Level 50-60 (Felwood/Blasted Lands)", skillReq = 250 },
        
        -- Dungeon/Raid Drop Recipes
        [13493] = { name = "Recipe: Major Rejuvenation Potion", quality = 3, source = "Drop", sourceDetail = "Dire Maul North (Immol'thar)", skillReq = 300 },
        [13494] = { name = "Recipe: Living Action Potion", quality = 3, source = "Drop", sourceDetail = "Stratholme (Rare)", skillReq = 285 },
        [13495] = { name = "Recipe: Major Mana Potion", quality = 3, source = "Drop", sourceDetail = "World Drop (Level 55-60)", skillReq = 295 },
        [13496] = { name = "Recipe: Major Healing Potion", quality = 3, source = "Drop", sourceDetail = "World Drop (Level 55-60)", skillReq = 275 },
        [13480] = { name = "Recipe: Flask of Petrification", quality = 3, source = "Drop", sourceDetail = "Scholomance (Rare)", skillReq = 300 },
        [13481] = { name = "Recipe: Flask of the Titans", quality = 3, source = "Drop", sourceDetail = "Dire Maul North", skillReq = 300 },
        [13482] = { name = "Recipe: Flask of Distilled Wisdom", quality = 3, source = "Drop", sourceDetail = "Dire Maul North", skillReq = 300 },
        [13483] = { name = "Recipe: Flask of Supreme Power", quality = 3, source = "Drop", sourceDetail = "Blackwing Lair", skillReq = 300 },
        [13484] = { name = "Recipe: Flask of Chromatic Resistance", quality = 3, source = "Drop", sourceDetail = "World Dragons", skillReq = 300 },
        
        -- Reputation Recipes
        [20011] = { name = "Recipe: Mageblood Potion", quality = 2, source = "Reputation", sourceDetail = "Zandalar Tribe (Revered)", skillReq = 275 },
        [20012] = { name = "Recipe: Greater Dreamless Sleep", quality = 2, source = "Reputation", sourceDetail = "Zandalar Tribe (Honored)", skillReq = 275 },
        [20013] = { name = "Recipe: Mageblood Potion", quality = 2, source = "Reputation", sourceDetail = "Zandalar Tribe (Exalted)", skillReq = 275 },
    },
    
    -- Blacksmithing Plans
    Blacksmithing = {
        -- Trainer Learned
        [2862] = { name = "Plans: Rough Copper Vest", quality = 1, source = "Trainer", sourceDetail = "Blacksmithing Trainer", skillReq = 1 },
        [3608] = { name = "Plans: Rough Bronze Cuirass", quality = 2, source = "Vendor", sourceDetail = "Blacksmithing Supplies", skillReq = 105 },
        [3609] = { name = "Plans: Rough Bronze Leggings", quality = 2, source = "Vendor", sourceDetail = "Blacksmithing Supplies", skillReq = 105 },
        [6044] = { name = "Plans: Iron Shield Spike", quality = 2, source = "Vendor", sourceDetail = "Blacksmithing Supplies (Limited)", skillReq = 150 },
        [6045] = { name = "Plans: Iron Counterweight", quality = 2, source = "Vendor", sourceDetail = "Blacksmithing Supplies (Limited)", skillReq = 165 },
        [6046] = { name = "Plans: Steel Weapon Chain", quality = 2, source = "Vendor", sourceDetail = "Blacksmithing Supplies", skillReq = 190 },
        [7992] = { name = "Plans: Blue Glittering Axe", quality = 2, source = "Vendor", sourceDetail = "Blacksmithing Supplies (Limited)", skillReq = 175 },
        [7993] = { name = "Plans: Dazzling Mithril Rapier", quality = 3, source = "Drop", sourceDetail = "World Drop (Level 40-50)", skillReq = 240 },
        
        -- World Drop Plans
        [12162] = { name = "Plans: Hardened Iron Shortsword", quality = 2, source = "World Drop", sourceDetail = "Level 25-35", skillReq = 160 },
        [12163] = { name = "Plans: Moonsteel Broadsword", quality = 2, source = "World Drop", sourceDetail = "Level 35-45", skillReq = 180 },
        [12164] = { name = "Plans: Massive Iron Axe", quality = 2, source = "World Drop", sourceDetail = "Level 30-40", skillReq = 185 },
        [12261] = { name = "Plans: Searing Golden Blade", quality = 3, source = "World Drop", sourceDetail = "Level 40-50", skillReq = 190 },
        
        -- Dungeon/Raid Drop Plans
        [12699] = { name = "Plans: Fiery Chain Girdle", quality = 3, source = "Drop", sourceDetail = "Molten Core", skillReq = 295 },
        [12700] = { name = "Plans: Fiery Chain Shoulders", quality = 3, source = "Drop", sourceDetail = "Molten Core", skillReq = 300 },
        [12701] = { name = "Plans: Dark Iron Bracers", quality = 3, source = "Drop", sourceDetail = "Blackrock Depths", skillReq = 295 },
        [12703] = { name = "Plans: Dark Iron Reaver", quality = 3, source = "Drop", sourceDetail = "Molten Core", skillReq = 300 },
        [12704] = { name = "Plans: Dark Iron Destroyer", quality = 3, source = "Drop", sourceDetail = "Molten Core", skillReq = 300 },
        [12717] = { name = "Plans: Lionheart Helm", quality = 4, source = "Drop", sourceDetail = "World Drop (Rare)", skillReq = 300 },
        [12718] = { name = "Plans: Stronghold Gauntlets", quality = 4, source = "Drop", sourceDetail = "World Drop (Rare)", skillReq = 300 },
        [12719] = { name = "Plans: Invulnerable Mail", quality = 4, source = "Drop", sourceDetail = "World Drop (Rare)", skillReq = 300 },
        
        -- Reputation Plans
        [17052] = { name = "Plans: Dark Iron Plate", quality = 3, source = "Reputation", sourceDetail = "Thorium Brotherhood (Revered)", skillReq = 300 },
        [17053] = { name = "Plans: Fiery Plate Gauntlets", quality = 4, source = "Reputation", sourceDetail = "Thorium Brotherhood (Exalted)", skillReq = 300 },
        [19208] = { name = "Plans: Black Amnesty", quality = 3, source = "Reputation", sourceDetail = "Cenarion Circle (Friendly)", skillReq = 300 },
        [19209] = { name = "Plans: Blackfury", quality = 3, source = "Reputation", sourceDetail = "Cenarion Circle (Honored)", skillReq = 300 },
        [19210] = { name = "Plans: Ebon Hand", quality = 3, source = "Reputation", sourceDetail = "Cenarion Circle (Revered)", skillReq = 300 },
    },
    
    -- Enchanting Formulas
    Enchanting = {
        -- Trainer Learned
        [6218] = { name = "Formula: Enchant Bracer - Minor Health", quality = 1, source = "Trainer", sourceDetail = "Enchanting Trainer", skillReq = 1 },
        [6342] = { name = "Formula: Enchant Chest - Minor Mana", quality = 1, source = "Trainer", sourceDetail = "Enchanting Trainer", skillReq = 20 },
        [6375] = { name = "Formula: Enchant Bracer - Lesser Spirit", quality = 2, source = "Vendor", sourceDetail = "Enchanting Supplies", skillReq = 60 },
        [6377] = { name = "Formula: Enchant Boots - Minor Agility", quality = 2, source = "Vendor", sourceDetail = "Enchanting Supplies", skillReq = 125 },
        
        -- World Drop Formulas
        [11152] = { name = "Formula: Enchant Gloves - Fishing", quality = 2, source = "World Drop", sourceDetail = "Level 25-35", skillReq = 145 },
        [11163] = { name = "Formula: Enchant Bracer - Lesser Deflection", quality = 2, source = "World Drop", sourceDetail = "Level 25-35", skillReq = 170 },
        [11164] = { name = "Formula: Enchant Weapon - Lesser Beastslayer", quality = 2, source = "World Drop", sourceDetail = "Level 30-40", skillReq = 175 },
        [11165] = { name = "Formula: Enchant Weapon - Lesser Elemental Slayer", quality = 2, source = "World Drop", sourceDetail = "Level 30-40", skillReq = 180 },
        [11167] = { name = "Formula: Enchant Boots - Minor Speed", quality = 2, source = "World Drop", sourceDetail = "Level 35-45", skillReq = 200 },
        [11168] = { name = "Formula: Enchant Shield - Lesser Block", quality = 2, source = "World Drop", sourceDetail = "Level 35-45", skillReq = 195 },
        [16214] = { name = "Formula: Enchant Cloak - Greater Resistance", quality = 2, source = "World Drop", sourceDetail = "Level 50-60", skillReq = 265 },
        
        -- Dungeon/Raid Drop Formulas
        [16220] = { name = "Formula: Enchant Boots - Spirit", quality = 3, source = "Drop", sourceDetail = "World Drop (Level 55-60)", skillReq = 275 },
        [16221] = { name = "Formula: Enchant Weapon - Spellpower", quality = 3, source = "Drop", sourceDetail = "World Drop (Rare)", skillReq = 300 },
        [16222] = { name = "Formula: Enchant Weapon - Healing Power", quality = 3, source = "Drop", sourceDetail = "World Drop (Rare)", skillReq = 300 },
        [16223] = { name = "Formula: Enchant Weapon - Crusader", quality = 3, source = "Drop", sourceDetail = "Scarlet Archmages (WPL/EPL)", skillReq = 300 },
        [16224] = { name = "Formula: Enchant Weapon - Lifestealing", quality = 3, source = "Drop", sourceDetail = "Scholomance (Rare)", skillReq = 300 },
        [16255] = { name = "Formula: Enchant 2H Weapon - Major Spirit", quality = 3, source = "Drop", sourceDetail = "Stratholme", skillReq = 300 },
        [16256] = { name = "Formula: Enchant Gloves - Superior Agility", quality = 3, source = "Drop", sourceDetail = "World Drop (Level 55-60)", skillReq = 300 },
        [20728] = { name = "Formula: Enchant Gloves - Frost Power", quality = 3, source = "Drop", sourceDetail = "Ahn'Qiraj", skillReq = 300 },
        [20729] = { name = "Formula: Enchant Gloves - Fire Power", quality = 3, source = "Drop", sourceDetail = "Ahn'Qiraj", skillReq = 300 },
        [20730] = { name = "Formula: Enchant Gloves - Healing Power", quality = 3, source = "Drop", sourceDetail = "Ahn'Qiraj", skillReq = 300 },
        [20731] = { name = "Formula: Enchant Gloves - Shadow Power", quality = 3, source = "Drop", sourceDetail = "Ahn'Qiraj", skillReq = 300 },
        [20758] = { name = "Formula: Enchant Cloak - Stealth", quality = 3, source = "Drop", sourceDetail = "Ahn'Qiraj", skillReq = 300 },
        [20752] = { name = "Formula: Enchant Cloak - Subtlety", quality = 3, source = "Drop", sourceDetail = "Ahn'Qiraj", skillReq = 300 },
        
        -- Reputation Formulas
        [19444] = { name = "Formula: Enchant Weapon - Strength", quality = 2, source = "Reputation", sourceDetail = "Thorium Brotherhood (Friendly)", skillReq = 290 },
        [19448] = { name = "Formula: Enchant Weapon - Mighty Spirit", quality = 3, source = "Reputation", sourceDetail = "Thorium Brotherhood (Revered)", skillReq = 300 },
        [19449] = { name = "Formula: Enchant Weapon - Mighty Intellect", quality = 3, source = "Reputation", sourceDetail = "Thorium Brotherhood (Exalted)", skillReq = 300 },
    },
    
    -- Engineering Schematics
    Engineering = {
        -- Trainer Learned
        [4408] = { name = "Schematic: Mechanical Squirrel Box", quality = 1, source = "Trainer", sourceDetail = "Engineering Trainer", skillReq = 75 },
        [4409] = { name = "Schematic: Small Seaforium Charge", quality = 1, source = "Trainer", sourceDetail = "Engineering Trainer", skillReq = 100 },
        [4410] = { name = "Schematic: Shadow Goggles", quality = 2, source = "Vendor", sourceDetail = "Engineering Supplies", skillReq = 120 },
        [4411] = { name = "Schematic: Flame Deflector", quality = 2, source = "Vendor", sourceDetail = "Engineering Supplies", skillReq = 125 },
        
        -- World Drop Schematics
        [11828] = { name = "Schematic: Pet Bombling", quality = 2, source = "World Drop", sourceDetail = "Level 45-55", skillReq = 205 },
        [11827] = { name = "Schematic: Lil' Smoky", quality = 2, source = "World Drop", sourceDetail = "Level 45-55", skillReq = 205 },
        [16041] = { name = "Schematic: Thorium Grenade", quality = 2, source = "World Drop", sourceDetail = "Level 50-60", skillReq = 260 },
        [16042] = { name = "Schematic: Thorium Widget", quality = 2, source = "World Drop", sourceDetail = "Level 50-60", skillReq = 260 },
        [16043] = { name = "Schematic: Thorium Rifle", quality = 2, source = "World Drop", sourceDetail = "Level 50-60", skillReq = 260 },
        [16044] = { name = "Schematic: Lifelike Mechanical Toad", quality = 3, source = "World Drop", sourceDetail = "Level 50-60 (Rare)", skillReq = 265 },
        [16045] = { name = "Schematic: Spellpower Goggles Xtreme Plus", quality = 3, source = "World Drop", sourceDetail = "Level 50-60 (Rare)", skillReq = 270 },
        
        -- Gnomish Engineering
        [11826] = { name = "Schematic: Gnomish Death Ray", quality = 2, source = "Trainer", sourceDetail = "Gnomish Engineering Trainer", skillReq = 240 },
        [11825] = { name = "Schematic: Gnomish Net-o-Matic Projector", quality = 2, source = "Trainer", sourceDetail = "Gnomish Engineering Trainer", skillReq = 210 },
        
        -- Goblin Engineering
        [11828] = { name = "Schematic: Goblin Rocket Boots", quality = 2, source = "Trainer", sourceDetail = "Goblin Engineering Trainer", skillReq = 225 },
        [11827] = { name = "Schematic: Goblin Sapper Charge", quality = 2, source = "Trainer", sourceDetail = "Goblin Engineering Trainer", skillReq = 205 },
    },
    
    -- Leatherworking Patterns
    Leatherworking = {
        -- Trainer Learned
        [2406] = { name = "Pattern: Fine Leather Belt", quality = 1, source = "Trainer", sourceDetail = "Leatherworking Trainer", skillReq = 80 },
        [2407] = { name = "Pattern: White Leather Jerkin", quality = 1, source = "Trainer", sourceDetail = "Leatherworking Trainer", skillReq = 60 },
        [4299] = { name = "Pattern: Guardian Belt", quality = 2, source = "Vendor", sourceDetail = "Leatherworking Supplies", skillReq = 170 },
        [4300] = { name = "Pattern: Guardian Armor", quality = 2, source = "Vendor", sourceDetail = "Leatherworking Supplies", skillReq = 175 },
        [4301] = { name = "Pattern: Barbaric Belt", quality = 2, source = "Vendor", sourceDetail = "Leatherworking Supplies", skillReq = 180 },
        
        -- World Drop Patterns
        [7290] = { name = "Pattern: Pilferer's Gloves", quality = 2, source = "World Drop", sourceDetail = "Level 30-40", skillReq = 165 },
        [7613] = { name = "Pattern: Green Leather Armor", quality = 2, source = "World Drop", sourceDetail = "Level 35-45", skillReq = 155 },
        [8389] = { name = "Pattern: Turtle Scale Breastplate", quality = 2, source = "World Drop", sourceDetail = "Level 40-50", skillReq = 200 },
        [15741] = { name = "Pattern: Living Leggings", quality = 3, source = "World Drop", sourceDetail = "Level 55-60 (Rare)", skillReq = 300 },
        [15742] = { name = "Pattern: Living Breastplate", quality = 3, source = "World Drop", sourceDetail = "Level 55-60 (Rare)", skillReq = 300 },
        [15728] = { name = "Pattern: Stormshroud Pants", quality = 3, source = "World Drop", sourceDetail = "Level 55-60 (Rare)", skillReq = 300 },
        [15729] = { name = "Pattern: Stormshroud Armor", quality = 3, source = "World Drop", sourceDetail = "Level 55-60 (Rare)", skillReq = 300 },
        
        -- Dungeon/Raid Drop Patterns
        [15762] = { name = "Pattern: Devilsaur Gauntlets", quality = 3, source = "Drop", sourceDetail = "Un'Goro Crater Elites", skillReq = 290 },
        [15763] = { name = "Pattern: Devilsaur Leggings", quality = 3, source = "Drop", sourceDetail = "Un'Goro Crater Elites", skillReq = 300 },
        [15772] = { name = "Pattern: Hide of the Wild", quality = 4, source = "Drop", sourceDetail = "Dire Maul (Rare)", skillReq = 300 },
        [18514] = { name = "Pattern: Chromatic Cloak", quality = 3, source = "Drop", sourceDetail = "Blackwing Lair", skillReq = 300 },
        [18515] = { name = "Pattern: Corehound Boots", quality = 3, source = "Drop", sourceDetail = "Molten Core", skillReq = 300 },
        [18516] = { name = "Pattern: Chromatic Gauntlets", quality = 3, source = "Drop", sourceDetail = "Blackwing Lair", skillReq = 300 },
        
        -- Tribal Leatherworking
        [15758] = { name = "Pattern: Warbear Harness", quality = 2, source = "Reputation", sourceDetail = "Timbermaw Hold (Honored)", skillReq = 275 },
        [15759] = { name = "Pattern: Warbear Woolies", quality = 2, source = "Reputation", sourceDetail = "Timbermaw Hold (Honored)", skillReq = 285 },
        
        -- Dragonscale Leatherworking
        [15726] = { name = "Pattern: Green Dragonscale Leggings", quality = 3, source = "Drop", sourceDetail = "Sunken Temple", skillReq = 280 },
        [15727] = { name = "Pattern: Green Dragonscale Breastplate", quality = 3, source = "Drop", sourceDetail = "Sunken Temple", skillReq = 290 },
    },
    
    -- Tailoring Patterns
    Tailoring = {
        -- Trainer Learned
        [2598] = { name = "Pattern: Red Linen Robe", quality = 1, source = "Trainer", sourceDetail = "Tailoring Trainer", skillReq = 40 },
        [2601] = { name = "Pattern: Gray Woolen Robe", quality = 1, source = "Trainer", sourceDetail = "Tailoring Trainer", skillReq = 105 },
        [4346] = { name = "Pattern: Heavy Woolen Cloak", quality = 2, source = "Vendor", sourceDetail = "Tailoring Supplies", skillReq = 100 },
        [4347] = { name = "Pattern: Reinforced Woolen Shoulders", quality = 2, source = "Vendor", sourceDetail = "Tailoring Supplies", skillReq = 110 },
        [4348] = { name = "Pattern: Phoenix Gloves", quality = 2, source = "Vendor", sourceDetail = "Tailoring Supplies (Limited)", skillReq = 125 },
        
        -- World Drop Patterns
        [7087] = { name = "Pattern: Crimson Silk Cloak", quality = 2, source = "World Drop", sourceDetail = "Level 35-45", skillReq = 180 },
        [7088] = { name = "Pattern: Crimson Silk Vest", quality = 2, source = "World Drop", sourceDetail = "Level 35-45", skillReq = 185 },
        [7089] = { name = "Pattern: Azure Silk Cloak", quality = 2, source = "World Drop", sourceDetail = "Level 30-40", skillReq = 175 },
        [7114] = { name = "Pattern: Azure Silk Gloves", quality = 2, source = "World Drop", sourceDetail = "Level 30-40", skillReq = 145 },
        [10316] = { name = "Pattern: Colorful Kilt", quality = 2, source = "World Drop", sourceDetail = "Level 45-55", skillReq = 190 },
        [14467] = { name = "Pattern: Frostweave Tunic", quality = 2, source = "World Drop", sourceDetail = "Level 50-60", skillReq = 255 },
        [14468] = { name = "Pattern: Frostweave Robe", quality = 2, source = "World Drop", sourceDetail = "Level 50-60", skillReq = 255 },
        [14489] = { name = "Pattern: Mooncloth Leggings", quality = 3, source = "World Drop", sourceDetail = "Level 55-60 (Rare)", skillReq = 290 },
        
        -- Dungeon/Raid Drop Patterns
        [14508] = { name = "Pattern: Felcloth Robe", quality = 3, source = "Drop", sourceDetail = "Scholomance", skillReq = 275 },
        [14509] = { name = "Pattern: Felcloth Pants", quality = 3, source = "Drop", sourceDetail = "Scholomance", skillReq = 275 },
        [14513] = { name = "Pattern: Robe of the Void", quality = 4, source = "Drop", sourceDetail = "Scholomance (Rare)", skillReq = 300 },
        [14514] = { name = "Pattern: Robe of the Archmage", quality = 4, source = "Drop", sourceDetail = "Stratholme (Rare)", skillReq = 300 },
        [14515] = { name = "Pattern: Truefaith Vestments", quality = 4, source = "Drop", sourceDetail = "Stratholme (Rare)", skillReq = 300 },
        [18487] = { name = "Pattern: Mooncloth Gloves", quality = 3, source = "Drop", sourceDetail = "Dire Maul", skillReq = 300 },
        
        -- Reputation Patterns
        [19215] = { name = "Pattern: Wisdom of the Timbermaw", quality = 3, source = "Reputation", sourceDetail = "Timbermaw Hold (Honored)", skillReq = 290 },
        [19216] = { name = "Pattern: Argent Shoulders", quality = 3, source = "Reputation", sourceDetail = "Argent Dawn (Honored)", skillReq = 290 },
        [19217] = { name = "Pattern: Argent Boots", quality = 3, source = "Reputation", sourceDetail = "Argent Dawn (Revered)", skillReq = 290 },
    },
    
    -- Cooking Recipes
    Cooking = {
        -- Vendor Recipes
        [2698] = { name = "Recipe: Cooked Crab Claw", quality = 1, source = "Vendor", sourceDetail = "Cooking Suppliers (Westfall)", skillReq = 85 },
        [2699] = { name = "Recipe: Succulent Pork Ribs", quality = 1, source = "Vendor", sourceDetail = "Cooking Suppliers", skillReq = 110 },
        [3678] = { name = "Recipe: Crocolisk Steak", quality = 1, source = "Vendor", sourceDetail = "Cooking Suppliers (Wetlands)", skillReq = 80 },
        [3679] = { name = "Recipe: Blood Sausage", quality = 1, source = "Vendor", sourceDetail = "Cooking Suppliers (Tirisfal)", skillReq = 60 },
        [3680] = { name = "Recipe: Murloc Fin Soup", quality = 1, source = "Vendor", sourceDetail = "Cooking Suppliers (Hillsbrad)", skillReq = 90 },
        [3681] = { name = "Recipe: Crocolisk Gumbo", quality = 1, source = "Vendor", sourceDetail = "Cooking Suppliers (Dustwallow)", skillReq = 120 },
        [3682] = { name = "Recipe: Curiously Tasty Omelet", quality = 1, source = "Vendor", sourceDetail = "Cooking Suppliers", skillReq = 130 },
        [3683] = { name = "Recipe: Gooey Spider Cake", quality = 1, source = "Vendor", sourceDetail = "Cooking Suppliers (Duskwood)", skillReq = 110 },
        
        -- Quest/Drop Recipes
        [6661] = { name = "Recipe: Savory Deviate Delight", quality = 1, source = "World Drop", sourceDetail = "The Barrens (Deviate Mobs)", skillReq = 85 },
        [6892] = { name = "Recipe: Smoked Bear Meat", quality = 1, source = "Quest", sourceDetail = "Hillsbrad Foothills Quest", skillReq = 40 },
        [12227] = { name = "Recipe: Jungle Stew", quality = 1, source = "Quest", sourceDetail = "Stranglethorn Vale Quest", skillReq = 175 },
        [12228] = { name = "Recipe: Crispy Bat Wing", quality = 1, source = "Vendor", sourceDetail = "Cooking Suppliers (Tirisfal)", skillReq = 1 },
        [12229] = { name = "Recipe: Hot Wolf Ribs", quality = 1, source = "Vendor", sourceDetail = "Cooking Suppliers (Badlands)", skillReq = 175 },
        [12231] = { name = "Recipe: Jungle Stew", quality = 1, source = "Vendor", sourceDetail = "Cooking Suppliers (STV)", skillReq = 175 },
        [12232] = { name = "Recipe: Carrion Surprise", quality = 1, source = "Vendor", sourceDetail = "Cooking Suppliers (Tanaris/Feralas)", skillReq = 175 },
        [12233] = { name = "Recipe: Mystery Stew", quality = 1, source = "Vendor", sourceDetail = "Cooking Suppliers (Desolace)", skillReq = 175 },
        [12239] = { name = "Recipe: Dragonbreath Chili", quality = 1, source = "Vendor", sourceDetail = "Cooking Suppliers (Badlands)", skillReq = 200 },
        [12240] = { name = "Recipe: Heavy Kodo Stew", quality = 1, source = "Vendor", sourceDetail = "Cooking Suppliers (Desolace)", skillReq = 200 },
        
        -- High-Level Recipes
        [13947] = { name = "Recipe: Lobster Stew", quality = 1, source = "Vendor", sourceDetail = "Cooking Suppliers (Feathermoon)", skillReq = 275 },
        [13948] = { name = "Recipe: Mightfish Steak", quality = 1, source = "Vendor", sourceDetail = "Cooking Suppliers (Feathermoon)", skillReq = 275 },
        [13949] = { name = "Recipe: Baked Salmon", quality = 1, source = "Vendor", sourceDetail = "Cooking Suppliers (Winterspring)", skillReq = 275 },
        [16110] = { name = "Recipe: Monster Omelet", quality = 1, source = "Vendor", sourceDetail = "Cooking Suppliers (Winterspring)", skillReq = 225 },
        [16111] = { name = "Recipe: Spiced Chili Crab", quality = 1, source = "Vendor", sourceDetail = "Cooking Suppliers (Tanaris)", skillReq = 225 },
        [16767] = { name = "Recipe: Undermine Clam Chowder", quality = 1, source = "Vendor", sourceDetail = "Cooking Suppliers (Tanaris)", skillReq = 225 },
        [17062] = { name = "Recipe: Mithril Head Trout", quality = 1, source = "Vendor", sourceDetail = "Cooking Suppliers (Arathi)", skillReq = 175 },
        [17200] = { name = "Recipe: Grilled Squid", quality = 1, source = "Vendor", sourceDetail = "Cooking Suppliers (Tanaris)", skillReq = 240 },
        [17201] = { name = "Recipe: Nightfin Soup", quality = 1, source = "Vendor", sourceDetail = "Cooking Suppliers (Tanaris)", skillReq = 250 },
        [17202] = { name = "Recipe: Poached Sunscale Salmon", quality = 1, source = "Vendor", sourceDetail = "Cooking Suppliers (Tanaris)", skillReq = 250 },
        
        -- Seasonal/Rare Recipes
        [18046] = { name = "Recipe: Tender Wolf Steak", quality = 1, source = "World Drop", sourceDetail = "Winterspring (Wolves)", skillReq = 225 },
        [18160] = { name = "Recipe: Thistle Tea", quality = 1, source = "Rogue Only", sourceDetail = "Rogue Trainer Quest", skillReq = 60 },
        [18267] = { name = "Recipe: Runn Tum Tuber Surprise", quality = 1, source = "Drop", sourceDetail = "Dire Maul (Pusillin)", skillReq = 275 },
        [21025] = { name = "Recipe: Dirge's Kickin' Chimaerok Chops", quality = 1, source = "Quest", sourceDetail = "Azshara Quest (Epic)", skillReq = 300 },
    },
    
    -- First Aid Manuals
    FirstAid = {
        [6454] = { name = "Manual: Strong Anti-Venom", quality = 1, source = "Vendor", sourceDetail = "First Aid Suppliers", skillReq = 130 },
        [16084] = { name = "Manual: Artisan First Aid - Undercity", quality = 1, source = "Vendor", sourceDetail = "Undercity First Aid Trainer", skillReq = 225 },
        [16112] = { name = "Manual: Artisan First Aid - Theramore", quality = 1, source = "Vendor", sourceDetail = "Theramore First Aid Trainer", skillReq = 225 },
        [16113] = { name = "Manual: Heavy Silk Bandage", quality = 1, source = "Vendor", sourceDetail = "First Aid Suppliers", skillReq = 180 },
        [19442] = { name = "Formula: Powerful Anti-Venom", quality = 2, source = "Reputation", sourceDetail = "Argent Dawn (Revered)", skillReq = 300 },
    },
}

--------------------------------------------------------------------------------
-- Dungeon Trash Drops (Non-Boss Random Drops)
--------------------------------------------------------------------------------
DB.DungeonTrashDrops = {
    -- Deadmines Trash
    ["The Deadmines"] = {
        [1930] = { name = "Stonemason Cloak", quality = 2, dropChance = 2 },
        [1935] = { name = "Miner's Hat of the Deep", quality = 2, dropChance = 1 },
        [1931] = { name = "Foreman's Leggings", quality = 2, dropChance = 2 },
        [1936] = { name = "Goblin Mail Leggings", quality = 2, dropChance = 1 },
        [1934] = { name = "Goblin Nutcracker", quality = 2, dropChance = 2 },
        [1959] = { name = "Cold Basilisk Eye", quality = 2, dropChance = 3 },
        [2089] = { name = "Scrimshaw Dagger", quality = 2, dropChance = 2 },
    },
    ["Wailing Caverns"] = {
        [6475] = { name = "Pattern: Deviate Scale Gloves", quality = 2, dropChance = 1 },
        [6476] = { name = "Pattern: Deviate Scale Belt", quality = 2, dropChance = 1 },
        [6476] = { name = "Pattern: Deviate Scale Cloak", quality = 2, dropChance = 1 },
        [10410] = { name = "Deviate Scale", quality = 1, dropChance = 15 },
        [6481] = { name = "Serpent's Kiss", quality = 2, dropChance = 2 },
    },
    ["Shadowfang Keep"] = {
        [2292] = { name = "Necrology Robes", quality = 2, dropChance = 2 },
        [2205] = { name = "Duskbringer", quality = 2, dropChance = 1 },
        [2203] = { name = "Haunting Blade", quality = 2, dropChance = 2 },
        [2204] = { name = "Gutterblade", quality = 2, dropChance = 2 },
        [1974] = { name = "Mindthrust Bracers", quality = 2, dropChance = 3 },
        [1976] = { name = "Shadowfang", quality = 3, dropChance = 0.5 },
        [1482] = { name = "Shadowfang", quality = 3, dropChance = 0.5 },
    },
    ["Blackfathom Deeps"] = {
        [6909] = { name = "Strike of the Hydra", quality = 2, dropChance = 2 },
        [6910] = { name = "Leech Pants", quality = 2, dropChance = 2 },
        [6913] = { name = "Moss Cinch", quality = 2, dropChance = 3 },
    },
    ["Gnomeregan"] = {
        [9461] = { name = "Charged Gear", quality = 2, dropChance = 3 },
        [9459] = { name = "Spellpower Goggles Xtreme", quality = 2, dropChance = 2 },
        [9456] = { name = "Oscillating Power Hammer", quality = 2, dropChance = 2 },
        [9453] = { name = "Toxic Revenger", quality = 2, dropChance = 3 },
        [9454] = { name = "Acidic Walkers", quality = 2, dropChance = 2 },
    },
    ["Scarlet Monastery"] = {
        [7754] = { name = "Harbinger Boots", quality = 2, dropChance = 2 },
        [7755] = { name = "Flintrock Shoulders", quality = 2, dropChance = 2 },
        [7756] = { name = "Savage Boar's Guard", quality = 2, dropChance = 2 },
        [7757] = { name = "Windweaver Staff", quality = 2, dropChance = 2 },
        [7758] = { name = "Archaedic Stone", quality = 2, dropChance = 2 },
        [7759] = { name = "Archon Chestpiece", quality = 2, dropChance = 2 },
        [7760] = { name = "Warchief Kilt", quality = 2, dropChance = 2 },
        [7761] = { name = "Demon's Blood", quality = 2, dropChance = 2 },
    },
    ["Razorfen Downs"] = {
        [10766] = { name = "Plaguerot Sprig", quality = 2, dropChance = 3 },
        [10767] = { name = "Savage Boar's Guard", quality = 2, dropChance = 2 },
        [10768] = { name = "Boar Champion's Belt", quality = 2, dropChance = 2 },
        [10769] = { name = "Slaghide Gauntlets", quality = 2, dropChance = 2 },
    },
    ["Uldaman"] = {
        [9399] = { name = "Manic Dagger", quality = 2, dropChance = 2 },
        [9400] = { name = "Shovelphlange's Mining Axe", quality = 2, dropChance = 2 },
        [9401] = { name = "Nordic Longshank", quality = 2, dropChance = 2 },
        [9404] = { name = "Battered Stone Shield", quality = 2, dropChance = 3 },
        [9406] = { name = "Stoneweaver Leggings", quality = 2, dropChance = 2 },
    },
    ["Zul'Farrak"] = {
        [9499] = { name = "Spellshock Leggings", quality = 2, dropChance = 2 },
        [9500] = { name = "Steadfast Shoulders", quality = 2, dropChance = 2 },
        [9501] = { name = "Gahz'rilla Scale Armor", quality = 2, dropChance = 1 },
        [9502] = { name = "Jinxed Hoodoo Kilt", quality = 2, dropChance = 2 },
    },
    ["Maraudon"] = {
        [17708] = { name = "Phytoskin Spaulders", quality = 2, dropChance = 2 },
        [17709] = { name = "Vinerot Sandals", quality = 2, dropChance = 2 },
        [17712] = { name = "Woodseed Hoop", quality = 2, dropChance = 3 },
        [17713] = { name = "Blackstone Ring", quality = 2, dropChance = 2 },
    },
    ["Sunken Temple"] = {
        [10831] = { name = "Featherskin Cape", quality = 2, dropChance = 2 },
        [10832] = { name = "Atal'ai Boots", quality = 2, dropChance = 2 },
        [10834] = { name = "Atal'ai Gloves", quality = 2, dropChance = 2 },
        [10836] = { name = "Atal'ai Spaulders", quality = 2, dropChance = 2 },
    },
    ["Blackrock Depths"] = {
        [11725] = { name = "Firemoss Boots", quality = 2, dropChance = 2 },
        [11726] = { name = "Shaleskin Cape", quality = 2, dropChance = 3 },
        [11727] = { name = "Glimmering Mithril Insignia", quality = 2, dropChance = 1 },
        [11728] = { name = "Savage Gladiator Chain", quality = 3, dropChance = 0.5 },
        [11729] = { name = "Savage Gladiator Grips", quality = 3, dropChance = 0.5 },
        [11730] = { name = "Savage Gladiator Leggings", quality = 3, dropChance = 0.5 },
        [11731] = { name = "Savage Gladiator Helm", quality = 3, dropChance = 0.5 },
        [11732] = { name = "Savage Gladiator Greaves", quality = 3, dropChance = 0.5 },
    },
    ["Lower Blackrock Spire"] = {
        [12549] = { name = "Brazecore Armguards", quality = 2, dropChance = 2 },
        [12550] = { name = "Runed Golem Shackles", quality = 2, dropChance = 2 },
        [12551] = { name = "Pale Moon Cloak", quality = 2, dropChance = 2 },
        [12552] = { name = "Shroud of the Nathrezim", quality = 2, dropChance = 1 },
        [12553] = { name = "Swiftdart Battleboots", quality = 2, dropChance = 2 },
    },
    ["Upper Blackrock Spire"] = {
        [12554] = { name = "Hands of Power", quality = 3, dropChance = 1 },
        [12555] = { name = "Battlechaser's Greaves", quality = 3, dropChance = 1 },
        [12556] = { name = "Polished Ironwood Crossbow", quality = 2, dropChance = 2 },
        [12557] = { name = "Righteous Armor", quality = 2, dropChance = 2 },
    },
    ["Stratholme"] = {
        [18691] = { name = "Dark Rune", quality = 2, dropChance = 5 },
        [18692] = { name = "Bone Golem Shoulders", quality = 2, dropChance = 2 },
        [18693] = { name = "Skullforge Reaver", quality = 3, dropChance = 1 },
        [18694] = { name = "Jagged Bone Fist", quality = 3, dropChance = 1 },
        [18695] = { name = "Spinal Reaper", quality = 3, dropChance = 0.5 },
    },
    ["Scholomance"] = {
        [18686] = { name = "Bone Golem Shoulders", quality = 2, dropChance = 2 },
        [18687] = { name = "Corpsemaker", quality = 2, dropChance = 2 },
        [18688] = { name = "Cadaverous Belt", quality = 2, dropChance = 2 },
        [18689] = { name = "Cadaverous Gloves", quality = 2, dropChance = 2 },
        [18690] = { name = "Cadaverous Leggings", quality = 2, dropChance = 2 },
    },
    ["Dire Maul East"] = {
        [18339] = { name = "Eidolon Cloak", quality = 2, dropChance = 2 },
        [18340] = { name = "Eidolon Talisman", quality = 2, dropChance = 2 },
        [18341] = { name = "Quel'dorai Channeling Rod", quality = 2, dropChance = 2 },
        [18342] = { name = "Arcane Crystal Pendant", quality = 2, dropChance = 2 },
    },
    ["Dire Maul West"] = {
        [18343] = { name = "Petrified Bark Shield", quality = 2, dropChance = 2 },
        [18344] = { name = "Stonebark Gauntlets", quality = 2, dropChance = 2 },
        [18345] = { name = "Murkwood Blight", quality = 2, dropChance = 2 },
        [18346] = { name = "Threadbare Trousers", quality = 2, dropChance = 2 },
    },
    ["Dire Maul North"] = {
        [18347] = { name = "Helm of the Ogre King", quality = 2, dropChance = 1 },
        [18349] = { name = "Gauntlets of Gordok Might", quality = 2, dropChance = 2 },
        [18350] = { name = "Slouch Boots", quality = 2, dropChance = 2 },
        [18351] = { name = "Treant's Bane", quality = 2, dropChance = 2 },
    },
}

--------------------------------------------------------------------------------
-- Comprehensive Quest Rewards by Zone (Expanded)
--------------------------------------------------------------------------------
DB.ZoneQuestRewards = {
    -- Elwynn Forest Quest Rewards
    ["Elwynn Forest"] = {
        [1005] = { name = "Militia Hammer", quality = 1, questName = "Bounty on Garrick Padfoot" },
        [1009] = { name = "Compact Harvest Reaper Kit", quality = 1, questName = "The Collector" },
        [1008] = { name = "Well-Used Sword", quality = 1, questName = "Brotherhood of Thieves" },
        [1359] = { name = "Staff of Defense", quality = 2, questName = "Riverpaw Gnoll Bounty" },
        [1434] = { name = "Glowing Wax Stick", quality = 1, questName = "The Defias Brotherhood" },
    },
    -- Westfall Quest Rewards
    ["Westfall"] = {
        [1893] = { name = "Staff of Westfall", quality = 2, questName = "The Defias Brotherhood" },
        [2041] = { name = "Tunic of Westfall", quality = 2, questName = "The Defias Brotherhood" },
        [2042] = { name = "Chausses of Westfall", quality = 2, questName = "The Defias Brotherhood" },
        [2037] = { name = "Dusty Mining Gloves", quality = 2, questName = "Underground Assault" },
        [2036] = { name = "Dusty Miner's Gloves", quality = 2, questName = "Underground Assault" },
        [4604] = { name = "Finely Threaded Needle", quality = 1, questName = "A Fishy Peril" },
    },
    -- Duskwood Quest Rewards
    ["Duskwood"] = {
        [4455] = { name = "Raven Claw Talisman", quality = 2, questName = "Mor'Ladim" },
        [4452] = { name = "Night Watch Gauntlets", quality = 2, questName = "Mor'Ladim" },
        [4451] = { name = "Night Watch Shortsword", quality = 2, questName = "The Night Watch" },
        [3565] = { name = "Beerstained Gloves", quality = 2, questName = "Return the Comb" },
        [1972] = { name = "Sturdy Quarterstaff", quality = 2, questName = "Legend of Stalvan" },
    },
    -- Stranglethorn Vale Quest Rewards
    ["Stranglethorn Vale"] = {
        [4114] = { name = "Helm of the Jungle King", quality = 2, questName = "Headhunting" },
        [4128] = { name = "Resilient Tunic", quality = 2, questName = "Hemet Nesingwary" },
        [4129] = { name = "Resilient Mantle", quality = 2, questName = "Hemet Nesingwary" },
        [4108] = { name = "Skullsplitter Fetish", quality = 2, questName = "Venture Company Mining" },
        [4112] = { name = "Guild Tabard", quality = 1, questName = "Mok'thardin's Enchantment" },
        [4113] = { name = "Tiger Hunter Gloves", quality = 2, questName = "Tiger Mastery" },
        [4115] = { name = "Panther Hunter Leggings", quality = 2, questName = "Panther Mastery" },
        [4116] = { name = "Raptor Hunter Tunic", quality = 2, questName = "Raptor Mastery" },
        [4133] = { name = "Jungle Boots", quality = 2, questName = "Big Game Hunter" },
    },
    -- The Barrens Quest Rewards
    ["The Barrens"] = {
        [5322] = { name = "Demolition Hammer", quality = 2, questName = "Verog the Dervish" },
        [5323] = { name = "Beastslayer", quality = 2, questName = "Hezrul Bloodmark" },
        [5314] = { name = "Boar Hunter's Cape", quality = 2, questName = "Echeyakee" },
        [5315] = { name = "Sniper Rifle", quality = 2, questName = "Mazzranache" },
        [5316] = { name = "Berylline Pads", quality = 2, questName = "Ishamuhale" },
        [5324] = { name = "Fine Shortbow", quality = 2, questName = "Serena Bloodfeather" },
        [5325] = { name = "Welding Shield", quality = 2, questName = "The Stagnant Oasis" },
        [5341] = { name = "Gryphon Mail Greaves", quality = 2, questName = "Raptor Thieves" },
    },
    -- Tanaris Quest Rewards
    ["Tanaris"] = {
        [9363] = { name = "Southsea Mojo Boots", quality = 2, questName = "Southsea Shakedown" },
        [9364] = { name = "Pirate's Footlocker Key", quality = 1, questName = "Ship Schedules" },
        [9485] = { name = "Sandstalker Bracers", quality = 2, questName = "Thistleshrub Valley" },
        [9486] = { name = "Sandstalker Gauntlets", quality = 2, questName = "Thistleshrub Valley" },
        [9512] = { name = "Spellshifter Rod", quality = 2, questName = "Gadgetzan Water Survey" },
        [9513] = { name = "Explorers' League Commendation", quality = 1, questName = "The Thirsty Goblin" },
    },
    -- Un'Goro Crater Quest Rewards
    ["Un'Goro Crater"] = {
        [11905] = { name = "Linken's Sword of Mastery", quality = 3, questName = "It's Dangerous to Go Alone" },
        [11906] = { name = "Linken's Boomerang", quality = 3, questName = "It's Dangerous to Go Alone" },
        [11902] = { name = "Linken's Training Sword", quality = 2, questName = "A Grave Situation" },
        [11903] = { name = "Linken's Comfortable Boots", quality = 2, questName = "Finding the Antidote" },
        [11866] = { name = "Devilsaur Eye", quality = 3, questName = "Super Sticky" },
        [11867] = { name = "Devilsaur Tooth", quality = 3, questName = "Super Sticky" },
    },
    -- Winterspring Quest Rewards
    ["Winterspring"] = {
        [18592] = { name = "Plans: Thorium Boots", quality = 2, questName = "Gaining Acceptance" },
        [18593] = { name = "Plans: Thorium Helm", quality = 2, questName = "Gaining Acceptance" },
        [18665] = { name = "The Eye of Shadow", quality = 4, questName = "The Balance of Light and Shadow" },
        [18709] = { name = "Arena Grand Master", quality = 4, questName = "Arena Grand Master" },
    },
    -- Felwood Quest Rewards
    ["Felwood"] = {
        [15706] = { name = "Bloodsoul Embrace", quality = 2, questName = "Cleansing Felwood" },
        [15707] = { name = "Starfire Tiara", quality = 2, questName = "Cleansing Felwood" },
        [15708] = { name = "Bramblewood Belt", quality = 2, questName = "A Destiny of War" },
        [15709] = { name = "Ethereal Mist Cape", quality = 2, questName = "A Destiny of War" },
    },
    -- Silithus Quest Rewards
    ["Silithus"] = {
        [20686] = { name = "Abyssal Leather Bracers", quality = 2, questName = "Desert Survival" },
        [20687] = { name = "Abyssal Cloth Sash", quality = 2, questName = "Desert Survival" },
        [20688] = { name = "Abyssal Mail Armguards", quality = 2, questName = "Desert Survival" },
        [20689] = { name = "Abyssal Plate Gauntlets", quality = 2, questName = "Desert Survival" },
        [20720] = { name = "Chained Essence of Eranikus", quality = 3, questName = "The Nightmare's Corruption" },
    },
    -- Eastern Plaguelands Quest Rewards
    ["Eastern Plaguelands"] = {
        [13243] = { name = "Argent Dawn Commission", quality = 2, questName = "Argent Dawn Commission" },
        [13209] = { name = "Seal of the Dawn", quality = 2, questName = "Seal of the Dawn" },
        [13216] = { name = "Mark of the Champion", quality = 3, questName = "Mark of the Champion" },
        [13217] = { name = "Mark of the Champion", quality = 3, questName = "Mark of the Champion" },
        [15411] = { name = "Mark of Resolution", quality = 2, questName = "The Ruins of Andorhal" },
        [15410] = { name = "Chromatic Sword", quality = 3, questName = "Chromatic Sword" },
    },
    -- Western Plaguelands Quest Rewards
    ["Western Plaguelands"] = {
        [15411] = { name = "Seal of the Archmagus", quality = 2, questName = "Scholomance" },
        [15412] = { name = "Mark of the Dawn", quality = 2, questName = "Mark of the Dawn" },
        [15413] = { name = "Mirah's Song", quality = 3, questName = "Pamela's Doll" },
        [12844] = { name = "Argent Dawn Valor Token", quality = 2, questName = "Assorted Scourge Materials" },
    },
}

--------------------------------------------------------------------------------
-- More World Drop Greens with Suffixes
--------------------------------------------------------------------------------
DB.WorldDropSuffixes = {
    -- Suffix IDs and their stat bonuses
    ["of the Whale"] = { stamina = true, spirit = true },
    ["of the Eagle"] = { intellect = true, stamina = true },
    ["of the Bear"] = { stamina = true, strength = true },
    ["of the Monkey"] = { agility = true, stamina = true },
    ["of the Tiger"] = { agility = true, strength = true },
    ["of the Falcon"] = { agility = true, intellect = true },
    ["of the Owl"] = { intellect = true, spirit = true },
    ["of the Gorilla"] = { strength = true, intellect = true },
    ["of the Boar"] = { strength = true, spirit = true },
    ["of the Wolf"] = { agility = true, spirit = true },
    ["of Power"] = { attackPower = true },
    ["of Stamina"] = { stamina = true },
    ["of Strength"] = { strength = true },
    ["of Agility"] = { agility = true },
    ["of Intellect"] = { intellect = true },
    ["of Spirit"] = { spirit = true },
    ["of Fiery Wrath"] = { fireDamage = true },
    ["of Frozen Wrath"] = { frostDamage = true },
    ["of Arcane Wrath"] = { arcaneDamage = true },
    ["of Shadow Wrath"] = { shadowDamage = true },
    ["of Nature's Wrath"] = { natureDamage = true },
    ["of Healing"] = { healing = true },
    ["of Defense"] = { defense = true },
    ["of Blocking"] = { blockValue = true },
    ["of Eluding"] = { dodge = true },
    ["of Marksmanship"] = { rangedAttackPower = true },
}

-- Additional World Drop Green Sets
DB.WorldDropGreenSets = {
    -- Cloth Sets
    ["Arcane"] = { levelRange = "51-60", slots = { "Belt", "Boots", "Bracers", "Cap", "Cover", "Gloves", "Leggings", "Robe" }, armor = "Cloth" },
    ["Councillor's"] = { levelRange = "56-60", slots = { "Circlet", "Cloak", "Cuffs", "Gloves", "Pants", "Robe", "Sash", "Shoulders" }, armor = "Cloth" },
    ["Expedition"] = { levelRange = "56-60", slots = { "Boots", "Bracers", "Cap", "Girdle", "Gloves", "Pants", "Shoulderpads", "Tunic" }, armor = "Cloth" },
    
    -- Leather Sets
    ["Adventurer's"] = { levelRange = "56-60", slots = { "Bandana", "Belt", "Boots", "Bracers", "Cape", "Gloves", "Leggings", "Tunic" }, armor = "Leather" },
    ["Beastmaster's"] = { levelRange = "51-60", slots = { "Belt", "Boots", "Bracers", "Cap", "Gloves", "Jerkin", "Leggings", "Mantle" }, armor = "Leather" },
    ["Conjurer's"] = { levelRange = "36-45", slots = { "Bracers", "Cloak", "Hood", "Mantle", "Robe", "Shoes", "Vest" }, armor = "Leather" },
    
    -- Mail Sets
    ["Chieftain's"] = { levelRange = "51-60", slots = { "Belt", "Boots", "Bracers", "Cloak", "Gloves", "Headdress", "Leggings", "Breastplate" }, armor = "Mail" },
    ["Huntsman's"] = { levelRange = "46-55", slots = { "Armor", "Belt", "Boots", "Bracers", "Cape", "Gloves", "Helm", "Leggings" }, armor = "Mail" },
    ["Knight's"] = { levelRange = "41-50", slots = { "Boots", "Bracers", "Breastplate", "Cloak", "Gauntlets", "Girdle", "Headguard", "Legguards" }, armor = "Mail" },
    
    -- Plate Sets
    ["Commander's"] = { levelRange = "56-60", slots = { "Boots", "Bracers", "Breastplate", "Cape", "Gauntlets", "Girdle", "Helm", "Leggings", "Pauldrons" }, armor = "Plate" },
    ["Lofty"] = { levelRange = "51-60", slots = { "Armguards", "Belt", "Breastplate", "Gauntlets", "Helm", "Legguards", "Pauldrons", "Sabatons", "Shield" }, armor = "Plate" },
    ["Overlord's"] = { levelRange = "56-60", slots = { "Bracers", "Chestplate", "Crown", "Gauntlets", "Girdle", "Greaves", "Legplates", "Spaulders" }, armor = "Plate" },
}

--------------------------------------------------------------------------------
-- COST & CURRENCY TRACKING SYSTEM
--------------------------------------------------------------------------------
-- Currency Types in Vanilla 1.12.1
DB.CurrencyTypes = {
    GOLD = { id = 1, name = "Gold", icon = "Interface\\Icons\\INV_Misc_Coin_01" },
    HONOR = { id = 2, name = "Honor Points", icon = "Interface\\Icons\\INV_Misc_Token_Argentdawn" },
    ARATHI_BASIN = { id = 3, name = "Arathi Basin Mark of Honor", itemID = 20559, icon = "Interface\\Icons\\INV_Jewelry_Amulet_07" },
    ALTERAC_VALLEY = { id = 4, name = "Alterac Valley Mark of Honor", itemID = 20560, icon = "Interface\\Icons\\INV_Jewelry_Amulet_07" },
    WARSONG_GULCH = { id = 5, name = "Warsong Gulch Mark of Honor", itemID = 20558, icon = "Interface\\Icons\\INV_Jewelry_Amulet_07" },
    ZANDALAR_COIN = { id = 6, name = "Zandalar Honor Token", itemID = 19858, icon = "Interface\\Icons\\INV_Misc_Coin_08" },
    ARGENT_DAWN = { id = 7, name = "Argent Dawn Valor Token", itemID = 22523, icon = "Interface\\Icons\\INV_Jewelry_Talisman_07" },
    CENARION_COMBAT = { id = 8, name = "Cenarion Combat Badge", itemID = 21229, icon = "Interface\\Icons\\INV_Jewelry_Talisman_08" },
    CENARION_LOGISTICS = { id = 9, name = "Cenarion Logistics Badge", itemID = 21230, icon = "Interface\\Icons\\INV_Jewelry_Talisman_08" },
    CENARION_TACTICAL = { id = 10, name = "Cenarion Tactical Badge", itemID = 21232, icon = "Interface\\Icons\\INV_Jewelry_Talisman_08" },
    DARKMOON_TICKET = { id = 11, name = "Darkmoon Faire Prize Ticket", itemID = 19182, icon = "Interface\\Icons\\INV_Misc_Ticket_Tarot_Maelstrom_01" },
    SILITHUS_SCARAB = { id = 12, name = "Silithid Carapace Fragment", itemID = 20864, icon = "Interface\\Icons\\INV_Misc_Shell_04" },
}

-- Items with their cost requirements
DB.ItemCosts = {
    -- PvP Rank 14 Weapons (Honor + Marks)
    [18843] = { name = "Grand Marshal's Longsword", costs = { { type = "HONOR", amount = 75000 }, { type = "ARATHI_BASIN", amount = 20 }, { type = "ALTERAC_VALLEY", amount = 20 }, { type = "WARSONG_GULCH", amount = 20 } }, faction = "Alliance", rankReq = 14 },
    [18847] = { name = "Grand Marshal's Claymore", costs = { { type = "HONOR", amount = 75000 }, { type = "ARATHI_BASIN", amount = 20 }, { type = "ALTERAC_VALLEY", amount = 20 }, { type = "WARSONG_GULCH", amount = 20 } }, faction = "Alliance", rankReq = 14 },
    [18838] = { name = "Grand Marshal's Dirk", costs = { { type = "HONOR", amount = 37500 }, { type = "ARATHI_BASIN", amount = 20 }, { type = "ALTERAC_VALLEY", amount = 20 }, { type = "WARSONG_GULCH", amount = 20 } }, faction = "Alliance", rankReq = 14 },
    [18876] = { name = "Grand Marshal's Punisher", costs = { { type = "HONOR", amount = 37500 }, { type = "ARATHI_BASIN", amount = 20 }, { type = "ALTERAC_VALLEY", amount = 20 }, { type = "WARSONG_GULCH", amount = 20 } }, faction = "Alliance", rankReq = 14 },
    [18831] = { name = "High Warlord's Blade", costs = { { type = "HONOR", amount = 75000 }, { type = "ARATHI_BASIN", amount = 20 }, { type = "ALTERAC_VALLEY", amount = 20 }, { type = "WARSONG_GULCH", amount = 20 } }, faction = "Horde", rankReq = 14 },
    [18835] = { name = "High Warlord's Greatsword", costs = { { type = "HONOR", amount = 75000 }, { type = "ARATHI_BASIN", amount = 20 }, { type = "ALTERAC_VALLEY", amount = 20 }, { type = "WARSONG_GULCH", amount = 20 } }, faction = "Horde", rankReq = 14 },
    [18826] = { name = "High Warlord's Pig Sticker", costs = { { type = "HONOR", amount = 37500 }, { type = "ARATHI_BASIN", amount = 20 }, { type = "ALTERAC_VALLEY", amount = 20 }, { type = "WARSONG_GULCH", amount = 20 } }, faction = "Horde", rankReq = 14 },
    
    -- PvP Rank 12-13 Armor (Honor)
    [16480] = { name = "Marshal's Plate Helm", costs = { { type = "HONOR", amount = 20000 } }, faction = "Alliance", rankReq = 12 },
    [16483] = { name = "Marshal's Plate Shoulders", costs = { { type = "HONOR", amount = 15000 } }, faction = "Alliance", rankReq = 13 },
    [16478] = { name = "Marshal's Plate Boots", costs = { { type = "HONOR", amount = 12000 } }, faction = "Alliance", rankReq = 12 },
    [16541] = { name = "Warlord's Plate Helm", costs = { { type = "HONOR", amount = 20000 } }, faction = "Horde", rankReq = 12 },
    [16544] = { name = "Warlord's Plate Shoulders", costs = { { type = "HONOR", amount = 15000 } }, faction = "Horde", rankReq = 13 },
    [16542] = { name = "Warlord's Plate Boots", costs = { { type = "HONOR", amount = 12000 } }, faction = "Horde", rankReq = 12 },
    
    -- Battleground Reputation Rewards (Gold + Reputation)
    [19510] = { name = "Legionnaire's Band", costs = { { type = "GOLD", amount = 800000 } }, reputation = { faction = "Frostwolf Clan", standing = 6 } },  -- 80g = 800000 copper
    [19509] = { name = "Legionnaire's Band", costs = { { type = "GOLD", amount = 800000 } }, reputation = { faction = "Stormpike Guard", standing = 6 } },
    [19505] = { name = "Frostwolf Legionnaire's Cloak", costs = { { type = "GOLD", amount = 500000 } }, reputation = { faction = "Frostwolf Clan", standing = 5 } },
    [19506] = { name = "Stormpike Soldier's Cloak", costs = { { type = "GOLD", amount = 500000 } }, reputation = { faction = "Stormpike Guard", standing = 5 } },
    [19030] = { name = "Stormpike Battle Charger", costs = { { type = "GOLD", amount = 8000000 } }, reputation = { faction = "Stormpike Guard", standing = 8 } },
    [19029] = { name = "Horn of the Frostwolf Howler", costs = { { type = "GOLD", amount = 8000000 } }, reputation = { faction = "Frostwolf Clan", standing = 8 } },
    
    -- Zul'Gurub Token Turn-ins
    [19830] = { name = "Zandalar Vindicator's Belt", costs = { { type = "ZANDALAR_COIN", amount = 1 } }, reputation = { faction = "Zandalar Tribe", standing = 5 }, additionalItems = { [19724] = 1, [19814] = 1 } },
    [19831] = { name = "Zandalar Vindicator's Breastplate", costs = { { type = "ZANDALAR_COIN", amount = 1 } }, reputation = { faction = "Zandalar Tribe", standing = 6 }, additionalItems = { [19723] = 1, [19814] = 1 } },
    [19797] = { name = "Zandalar Signet of Serenity", costs = { { type = "ZANDALAR_COIN", amount = 15 } }, reputation = { faction = "Zandalar Tribe", standing = 8 } },
    
    -- Argent Dawn Rewards
    [22417] = { name = "Blessed Wizard Oil", costs = { { type = "ARGENT_DAWN", amount = 1 }, { type = "GOLD", amount = 50000 } }, reputation = { faction = "Argent Dawn", standing = 5 } },
    [22438] = { name = "Onslaught Girdle", costs = { { type = "GOLD", amount = 3000000 } }, reputation = { faction = "Argent Dawn", standing = 8 } },
    
    -- Thorium Brotherhood Recipes
    [17025] = { name = "Plans: Black Amnesty", costs = { { type = "GOLD", amount = 1500000 } }, reputation = { faction = "Thorium Brotherhood", standing = 5 } },
    [17051] = { name = "Plans: Dark Iron Leggings", costs = { { type = "GOLD", amount = 2000000 } }, reputation = { faction = "Thorium Brotherhood", standing = 6 } },
    [17060] = { name = "Plans: Dark Iron Boots", costs = { { type = "GOLD", amount = 2500000 } }, reputation = { faction = "Thorium Brotherhood", standing = 7 } },
    
    -- Timbermaw Hold Rewards
    [21326] = { name = "Defender of the Timbermaw", costs = { { type = "GOLD", amount = 1400000 } }, reputation = { faction = "Timbermaw Hold", standing = 7 } },
    [21327] = { name = "Wisdom of the Timbermaw", costs = { { type = "GOLD", amount = 1400000 } }, reputation = { faction = "Timbermaw Hold", standing = 7 } },
    [21328] = { name = "Mantle of the Timbermaw", costs = { { type = "GOLD", amount = 1600000 } }, reputation = { faction = "Timbermaw Hold", standing = 8 } },
    
    -- Cenarion Circle (AQ War Effort)
    [21180] = { name = "Earthstrike", costs = { { type = "CENARION_COMBAT", amount = 10 }, { type = "CENARION_TACTICAL", amount = 10 } }, reputation = { faction = "Cenarion Circle", standing = 7 } },
    [21181] = { name = "Grace of Earth", costs = { { type = "CENARION_COMBAT", amount = 10 }, { type = "CENARION_LOGISTICS", amount = 10 } }, reputation = { faction = "Cenarion Circle", standing = 7 } },
    
    -- Darkmoon Faire Rewards
    [19228] = { name = "Darkmoon Card: Blue Dragon", costs = { { type = "DARKMOON_TICKET", amount = 1200 } } },
    [19288] = { name = "Darkmoon Faire Prize Ticket", costs = { { type = "DARKMOON_TICKET", amount = 5 } } },
    
    -- Vendor Items (Gold only)
    [18565] = { name = "Gordok Green Grog", costs = { { type = "GOLD", amount = 1200 } }, vendor = "Stomper Kreeg" },
    [18284] = { name = "Kreeg's Stout Beatdown", costs = { { type = "GOLD", amount = 500 } }, vendor = "Stomper Kreeg" },
    [11283] = { name = "Blazing Rapier", costs = { { type = "GOLD", amount = 95000 } }, vendor = "Neutral Weapon Vendors" },
    
    -- Epic Mounts
    [18241] = { name = "Black Qiraji Resonating Crystal", costs = { }, source = "Gates of Ahn'Qiraj Event (No longer obtainable)" },
    [13328] = { name = "Black Ram", costs = { { type = "GOLD", amount = 10000000 } }, reputation = { faction = "Ironforge", standing = 8 }, faction = "Alliance" },
    [13329] = { name = "Frost Ram", costs = { { type = "GOLD", amount = 10000000 } }, reputation = { faction = "Ironforge", standing = 8 }, faction = "Alliance" },
    [13331] = { name = "Red Skeletal Horse", costs = { { type = "GOLD", amount = 10000000 } }, reputation = { faction = "Undercity", standing = 8 }, faction = "Horde" },
    [13334] = { name = "Green Skeletal Warhorse", costs = { { type = "GOLD", amount = 10000000 } }, reputation = { faction = "Undercity", standing = 8 }, faction = "Horde" },
    
    -- Class Trainer Spell Costs (Level 60 key abilities)
    -- Warrior
    [0] = { name = "Mortal Strike (Rank 4)", costs = { { type = "GOLD", amount = 26000 } }, class = "Warrior", level = 60 },
    -- Mage
    -- Priest
    -- etc. (These are ability costs, not item costs - tracked differently)
}

-- Reputation standings required
DB.ReputationStandings = {
    [1] = "Hated",
    [2] = "Hostile", 
    [3] = "Unfriendly",
    [4] = "Neutral",
    [5] = "Friendly",
    [6] = "Honored",
    [7] = "Revered",
    [8] = "Exalted",
}

--------------------------------------------------------------------------------
-- SOURCE CHAIN SYSTEM
-- Traces item origins: Item -> NPC -> Location -> Zone
--------------------------------------------------------------------------------
DB.SourceChains = {
    -- Format: itemID = { chain of sources from item to ultimate origin }
    
    -- Legendary Items
    [17182] = {  -- Sulfuras
        item = { id = 17182, name = "Sulfuras, Hand of Ragnaros" },
        craftedFrom = {
            { id = 17193, name = "Sulfuron Hammer", source = "Blacksmithing" },
            { id = 17204, name = "Eye of Sulfuras", source = "Drop" },
        },
        materialChain = {
            [17193] = {  -- Sulfuron Hammer
                materials = {
                    { id = 17203, name = "Sulfuron Ingot", quantity = 8, source = "Drop" },
                    { id = 18562, name = "Elementium Bar", quantity = 10, source = "Crafted" },
                    { id = 11382, name = "Blood of the Mountain", quantity = 10, source = "Drop" },
                    { id = 17010, name = "Fiery Core", quantity = 25, source = "Drop" },
                    { id = 11370, name = "Dark Iron Bar", quantity = 20, source = "Smelting" },
                    { id = 7078, name = "Essence of Fire", quantity = 10, source = "Drop" },
                    { id = 18631, name = "Arcanite Bar", quantity = 50, source = "Transmute" },
                },
            },
            [17204] = {  -- Eye of Sulfuras
                dropsFrom = { npcID = 11502, npcName = "Ragnaros", location = "Molten Core", dropRate = 3.0 },
            },
            [17203] = {  -- Sulfuron Ingot
                dropsFrom = { npcID = 11988, npcName = "Golemagg the Incinerator", location = "Molten Core", dropRate = 100 },
            },
        },
    },
    
    [19019] = {  -- Thunderfury
        item = { id = 19019, name = "Thunderfury, Blessed Blade of the Windseeker" },
        questChain = {
            { quest = "Examine the Vessel", npc = "Highlord Demitrian", zone = "Silithus" },
            { quest = "Thunderaan the Windseeker", npc = "Highlord Demitrian", zone = "Silithus" },
        },
        materialChain = {
            [18563] = {  -- Bindings of the Windseeker (Left)
                dropsFrom = { npcID = 12118, npcName = "Baron Geddon", location = "Molten Core", dropRate = 4.0 },
            },
            [18564] = {  -- Bindings of the Windseeker (Right)
                dropsFrom = { npcID = 11988, npcName = "Garr", location = "Molten Core", dropRate = 4.0 },
            },
            [18562] = {  -- Elementium Bar (x10)
                craftedFrom = {
                    { id = 18564, name = "Elementium Ore", quantity = 1, source = "Drop" },
                    { id = 17010, name = "Fiery Core", quantity = 1, source = "Drop" },
                    { id = 7076, name = "Essence of Earth", quantity = 3, source = "Drop" },
                    { id = 18631, name = "Arcanite Bar", quantity = 10, source = "Transmute" },
                },
                dropsFrom = { npcID = 14401, npcName = "Master Elemental Shaper Krixix", location = "Blackwing Lair" },
            },
        },
        summons = { npcID = 14435, npcName = "Prince Thunderaan", location = "Silithus" },
    },
    
    -- Epic Dungeon/Raid Items
    [16802] = {  -- Netherwind Crown (Mage T2 Helm)
        item = { id = 16802, name = "Netherwind Crown" },
        dropsFrom = { npcID = 11583, npcName = "Nefarian", location = "Blackwing Lair", dropRate = 15 },
        zone = "Blackrock Mountain",
        instance = "Blackwing Lair",
        bossOrder = 8,
    },
    
    [16922] = {  -- Leggings of Transcendence (Priest T2)
        item = { id = 16922, name = "Leggings of Transcendence" },
        dropsFrom = { npcID = 11502, npcName = "Ragnaros", location = "Molten Core", dropRate = 18 },
        zone = "Blackrock Mountain", 
        instance = "Molten Core",
        bossOrder = 10,
    },
    
    [18814] = {  -- Choker of the Fire Lord
        item = { id = 18814, name = "Choker of the Fire Lord" },
        dropsFrom = { npcID = 11502, npcName = "Ragnaros", location = "Molten Core", dropRate = 10 },
        zone = "Blackrock Mountain",
        instance = "Molten Core",
        bossOrder = 10,
    },
    
    [17069] = {  -- Striker's Mark
        item = { id = 17069, name = "Striker's Mark" },
        dropsFrom = { npcID = 12017, npcName = "Broodlord Lashlayer", location = "Blackwing Lair", dropRate = 12 },
        zone = "Blackrock Mountain",
        instance = "Blackwing Lair", 
        bossOrder = 3,
    },
    
    [19137] = {  -- Onslaught Girdle
        item = { id = 19137, name = "Onslaught Girdle" },
        dropsFrom = { npcID = 11583, npcName = "Nefarian", location = "Blackwing Lair", dropRate = 8 },
        zone = "Blackrock Mountain",
        instance = "Blackwing Lair",
        bossOrder = 8,
    },
    
    -- World Drop Epics with specific source info
    [14551] = {  -- Edgemaster's Handguards
        item = { id = 14551, name = "Edgemaster's Handguards" },
        dropsFrom = { npcID = 0, npcName = "World Drop", location = "World", dropRate = 0.001 },
        levelRange = "52-60",
        zones = { "Winterspring", "Eastern Plaguelands", "Western Plaguelands", "Silithus", "Burning Steppes" },
    },
    
    [867] = {  -- Gloves of Holy Might
        item = { id = 867, name = "Gloves of Holy Might" },
        dropsFrom = { npcID = 0, npcName = "World Drop", location = "World", dropRate = 0.001 },
        levelRange = "40-50",
        zones = { "Tanaris", "Feralas", "Hinterlands", "Searing Gorge" },
    },
    
    -- Dungeon Boss Chains
    [13964] = {  -- Ironfoe
        item = { id = 13964, name = "Ironfoe" },
        dropsFrom = { npcID = 9019, npcName = "Emperor Dagran Thaurissan", location = "Blackrock Depths", dropRate = 1.5 },
        zone = "Blackrock Mountain",
        instance = "Blackrock Depths",
        bossOrder = "Final",
        accessRequirements = {
            { type = "key", itemID = 11000, name = "Shadowforge Key" },
        },
    },
    
    [11684] = {  -- Ironfoe (alternate ID check)
        item = { id = 11684, name = "Ironfoe" },
        dropsFrom = { npcID = 9019, npcName = "Emperor Dagran Thaurissan", location = "Blackrock Depths", dropRate = 1.5 },
    },
    
    [12590] = {  -- Felstriker
        item = { id = 12590, name = "Felstriker" },
        dropsFrom = { npcID = 9568, npcName = "Warchief Rend Blackhand", location = "Upper Blackrock Spire", dropRate = 0.7 },
        zone = "Blackrock Mountain",
        instance = "Upper Blackrock Spire",
        accessRequirements = {
            { type = "key", itemID = 12344, name = "Seal of Ascension" },
        },
    },
    
    [12651] = {  -- Blackblade of Shahram
        item = { id = 12651, name = "Blackblade of Shahram" },
        dropsFrom = { npcID = 10363, npcName = "General Drakkisath", location = "Upper Blackrock Spire", dropRate = 2.5 },
        zone = "Blackrock Mountain",
        instance = "Upper Blackrock Spire",
        bossOrder = "Final",
    },
    
    [18348] = {  -- Quel'Serrar
        item = { id = 18348, name = "Quel'Serrar" },
        questChain = {
            { quest = "Foror's Compendium", startItem = 18401, startItemName = "Foror's Compendium of Dragon Slaying" },
            { quest = "The Forging of Quel'Serrar", npc = "Lorekeeper Lydros", zone = "Dire Maul" },
            { quest = "Heating/Cooling in Onyxia's Lair", zone = "Onyxia's Lair" },
        },
        materialChain = {
            [18401] = {  -- Foror's Compendium
                dropsFrom = { npcID = 0, npcName = "Dire Maul Trash", location = "Dire Maul", dropRate = 0.1 },
            },
            [18492] = {  -- Unfired Ancient Blade
                source = "Lorekeeper Lydros",
                location = "Dire Maul North",
            },
        },
        tempered = { npcID = 10184, npcName = "Onyxia", location = "Onyxia's Lair" },
    },
    
    -- Crafted Epic Chains
    [12714] = {  -- Lionheart Helm
        item = { id = 12714, name = "Lionheart Helm" },
        craftedFrom = {
            profession = "Blacksmithing",
            skillReq = 300,
            planSource = { type = "World Drop", dropRate = 0.01 },
        },
        materials = {
            { id = 18631, name = "Arcanite Bar", quantity = 40 },
            { id = 17010, name = "Fiery Core", quantity = 4 },
            { id = 12360, name = "Arcanite Bar", quantity = 12 },
            { id = 7076, name = "Essence of Earth", quantity = 6 },
        },
        materialSources = {
            [18631] = {  -- Arcanite Bar
                craftedFrom = {
                    profession = "Alchemy",
                    recipe = "Arcanite Transmute",
                    materials = {
                        { id = 12360, name = "Thorium Bar", quantity = 1 },
                        { id = 12363, name = "Arcane Crystal", quantity = 1 },
                    },
                    cooldown = 48,  -- hours
                },
            },
            [17010] = {  -- Fiery Core
                dropsFrom = { npcID = 0, npcName = "Molten Core Bosses", location = "Molten Core", dropRate = 30 },
            },
            [12363] = {  -- Arcane Crystal
                dropsFrom = { npcID = 0, npcName = "Rich Thorium Vein", location = "Various", dropRate = 3 },
                zones = { "Winterspring", "Un'Goro Crater", "Eastern Plaguelands", "Burning Steppes", "Silithus" },
            },
        },
    },
    
    -- Enchanting Formula Chains
    [16223] = {  -- Formula: Enchant Weapon - Crusader
        item = { id = 16223, name = "Formula: Enchant Weapon - Crusader" },
        dropsFrom = { 
            { npcID = 9451, npcName = "Scarlet Archmage", location = "Western Plaguelands", dropRate = 0.5 },
            { npcID = 1831, npcName = "Scarlet Enchanter", location = "Western Plaguelands", dropRate = 0.3 },
        },
        zone = "Western Plaguelands",
        spawnLocations = {
            { x = 42, y = 18, area = "Hearthglen" },
            { x = 45, y = 14, area = "Hearthglen Tower" },
        },
    },
}

-- NPC Database for Source Chains
DB.NPCs = {
    -- Molten Core
    [11502] = { name = "Ragnaros", level = 63, type = "Boss", instance = "Molten Core", zone = "Blackrock Mountain" },
    [11988] = { name = "Golemagg the Incinerator", level = 62, type = "Boss", instance = "Molten Core", zone = "Blackrock Mountain" },
    [12118] = { name = "Baron Geddon", level = 62, type = "Boss", instance = "Molten Core", zone = "Blackrock Mountain" },
    [12057] = { name = "Garr", level = 62, type = "Boss", instance = "Molten Core", zone = "Blackrock Mountain" },
    [12264] = { name = "Shazzrah", level = 62, type = "Boss", instance = "Molten Core", zone = "Blackrock Mountain" },
    [11982] = { name = "Magmadar", level = 62, type = "Boss", instance = "Molten Core", zone = "Blackrock Mountain" },
    [12056] = { name = "Gehennas", level = 62, type = "Boss", instance = "Molten Core", zone = "Blackrock Mountain" },
    [12098] = { name = "Sulfuron Harbinger", level = 62, type = "Boss", instance = "Molten Core", zone = "Blackrock Mountain" },
    [11981] = { name = "Lucifron", level = 62, type = "Boss", instance = "Molten Core", zone = "Blackrock Mountain" },
    [12259] = { name = "Majordomo Executus", level = 62, type = "Boss", instance = "Molten Core", zone = "Blackrock Mountain" },
    
    -- Blackwing Lair
    [11583] = { name = "Nefarian", level = 63, type = "Boss", instance = "Blackwing Lair", zone = "Blackrock Mountain" },
    [12017] = { name = "Broodlord Lashlayer", level = 62, type = "Boss", instance = "Blackwing Lair", zone = "Blackrock Mountain" },
    [11981] = { name = "Razorgore the Untamed", level = 62, type = "Boss", instance = "Blackwing Lair", zone = "Blackrock Mountain" },
    [13020] = { name = "Vaelastrasz the Corrupt", level = 62, type = "Boss", instance = "Blackwing Lair", zone = "Blackrock Mountain" },
    [14601] = { name = "Ebonroc", level = 62, type = "Boss", instance = "Blackwing Lair", zone = "Blackrock Mountain" },
    [11983] = { name = "Firemaw", level = 62, type = "Boss", instance = "Blackwing Lair", zone = "Blackrock Mountain" },
    [14020] = { name = "Chromaggus", level = 63, type = "Boss", instance = "Blackwing Lair", zone = "Blackrock Mountain" },
    [14024] = { name = "Flamegor", level = 62, type = "Boss", instance = "Blackwing Lair", zone = "Blackrock Mountain" },
    
    -- Onyxia
    [10184] = { name = "Onyxia", level = 63, type = "Boss", instance = "Onyxia's Lair", zone = "Dustwallow Marsh" },
    
    -- Blackrock Depths
    [9019] = { name = "Emperor Dagran Thaurissan", level = 59, type = "Boss", instance = "Blackrock Depths", zone = "Blackrock Mountain" },
    [9018] = { name = "High Priestess of Thaurissan", level = 58, type = "Boss", instance = "Blackrock Depths", zone = "Blackrock Mountain" },
    [9017] = { name = "Lord Incendius", level = 57, type = "Boss", instance = "Blackrock Depths", zone = "Blackrock Mountain" },
    [9016] = { name = "Bael'Gar", level = 57, type = "Boss", instance = "Blackrock Depths", zone = "Blackrock Mountain" },
    
    -- Upper Blackrock Spire
    [10363] = { name = "General Drakkisath", level = 62, type = "Boss", instance = "Upper Blackrock Spire", zone = "Blackrock Mountain" },
    [9568] = { name = "Warchief Rend Blackhand", level = 62, type = "Boss", instance = "Upper Blackrock Spire", zone = "Blackrock Mountain" },
    [10339] = { name = "Gyth", level = 61, type = "Boss", instance = "Upper Blackrock Spire", zone = "Blackrock Mountain" },
    [10899] = { name = "Goraluk Anvilcrack", level = 61, type = "Boss", instance = "Upper Blackrock Spire", zone = "Blackrock Mountain" },
    
    -- World Bosses
    [12397] = { name = "Lord Kazzak", level = 63, type = "World Boss", instance = nil, zone = "Blasted Lands", coords = { x = 32, y = 48 } },
    [6109] = { name = "Azuregos", level = 63, type = "World Boss", instance = nil, zone = "Azshara", coords = { x = 47, y = 83 } },
    [14889] = { name = "Emeriss", level = 63, type = "World Boss", instance = nil, zone = "Various" },
    [14888] = { name = "Lethon", level = 63, type = "World Boss", instance = nil, zone = "Various" },
    [14890] = { name = "Taerar", level = 63, type = "World Boss", instance = nil, zone = "Various" },
    [14887] = { name = "Ysondre", level = 63, type = "World Boss", instance = nil, zone = "Various" },
}

--------------------------------------------------------------------------------
-- MOUNT & PET COLLECTION DATA
--------------------------------------------------------------------------------
DB.Mounts = {
    -- Alliance Racial Mounts (60% Speed)
    Epic60Alliance = {
        -- Horses (Human)
        [2411] = { name = "Black Stallion Bridle", speed = 60, faction = "Alliance", race = "Human", cost = 800000, vendor = "Katie Hunter", location = "Eastvale Logging Camp, Elwynn Forest" },
        [2414] = { name = "Pinto Bridle", speed = 60, faction = "Alliance", race = "Human", cost = 100000, vendor = "Katie Hunter", location = "Eastvale Logging Camp, Elwynn Forest" },
        [5656] = { name = "Brown Horse Bridle", speed = 60, faction = "Alliance", race = "Human", cost = 100000, vendor = "Katie Hunter", location = "Eastvale Logging Camp, Elwynn Forest" },
        [5655] = { name = "Chestnut Mare Bridle", speed = 60, faction = "Alliance", race = "Human", cost = 100000, vendor = "Katie Hunter", location = "Eastvale Logging Camp, Elwynn Forest" },
        
        -- Rams (Dwarf)
        [5864] = { name = "Gray Ram", speed = 60, faction = "Alliance", race = "Dwarf", cost = 100000, vendor = "Veron Amberstill", location = "Amberstill Ranch, Dun Morogh" },
        [5872] = { name = "Brown Ram", speed = 60, faction = "Alliance", race = "Dwarf", cost = 100000, vendor = "Veron Amberstill", location = "Amberstill Ranch, Dun Morogh" },
        [5873] = { name = "White Ram", speed = 60, faction = "Alliance", race = "Dwarf", cost = 100000, vendor = "Veron Amberstill", location = "Amberstill Ranch, Dun Morogh" },
        
        -- Mechanostriders (Gnome)
        [8563] = { name = "Red Mechanostrider", speed = 60, faction = "Alliance", race = "Gnome", cost = 100000, vendor = "Milli Featherwhistle", location = "Steelgrill's Depot, Dun Morogh" },
        [8595] = { name = "Blue Mechanostrider", speed = 60, faction = "Alliance", race = "Gnome", cost = 100000, vendor = "Milli Featherwhistle", location = "Steelgrill's Depot, Dun Morogh" },
        [13321] = { name = "Green Mechanostrider", speed = 60, faction = "Alliance", race = "Gnome", cost = 100000, vendor = "Milli Featherwhistle", location = "Steelgrill's Depot, Dun Morogh" },
        [13322] = { name = "Unpainted Mechanostrider", speed = 60, faction = "Alliance", race = "Gnome", cost = 100000, vendor = "Milli Featherwhistle", location = "Steelgrill's Depot, Dun Morogh" },
        
        -- Nightsabers (Night Elf)
        [8629] = { name = "Striped Nightsaber", speed = 60, faction = "Alliance", race = "Night Elf", cost = 100000, vendor = "Lelanai", location = "Darnassus" },
        [8631] = { name = "Striped Frostsaber", speed = 60, faction = "Alliance", race = "Night Elf", cost = 100000, vendor = "Lelanai", location = "Darnassus" },
        [8632] = { name = "Spotted Frostsaber", speed = 60, faction = "Alliance", race = "Night Elf", cost = 100000, vendor = "Lelanai", location = "Darnassus" },
    },
    
    -- Alliance Epic Mounts (100% Speed)
    Epic100Alliance = {
        -- Swift Horses
        [18777] = { name = "Swift Brown Steed", speed = 100, faction = "Alliance", race = "Human", cost = 10000000, vendor = "Katie Hunter", location = "Eastvale Logging Camp", reputation = { faction = "Stormwind", standing = 8 } },
        [18776] = { name = "Swift Palomino", speed = 100, faction = "Alliance", race = "Human", cost = 10000000, vendor = "Katie Hunter", location = "Eastvale Logging Camp", reputation = { faction = "Stormwind", standing = 8 } },
        [18778] = { name = "Swift White Steed", speed = 100, faction = "Alliance", race = "Human", cost = 10000000, vendor = "Katie Hunter", location = "Eastvale Logging Camp", reputation = { faction = "Stormwind", standing = 8 } },
        
        -- Swift Rams
        [13328] = { name = "Swift Brown Ram", speed = 100, faction = "Alliance", race = "Dwarf", cost = 10000000, vendor = "Veron Amberstill", location = "Amberstill Ranch", reputation = { faction = "Ironforge", standing = 8 } },
        [13329] = { name = "Swift Gray Ram", speed = 100, faction = "Alliance", race = "Dwarf", cost = 10000000, vendor = "Veron Amberstill", location = "Amberstill Ranch", reputation = { faction = "Ironforge", standing = 8 } },
        [13327] = { name = "Swift White Ram", speed = 100, faction = "Alliance", race = "Dwarf", cost = 10000000, vendor = "Veron Amberstill", location = "Amberstill Ranch", reputation = { faction = "Ironforge", standing = 8 } },
        
        -- Swift Mechanostriders
        [18772] = { name = "Swift Green Mechanostrider", speed = 100, faction = "Alliance", race = "Gnome", cost = 10000000, vendor = "Milli Featherwhistle", location = "Steelgrill's Depot", reputation = { faction = "Gnomeregan Exiles", standing = 8 } },
        [18773] = { name = "Swift White Mechanostrider", speed = 100, faction = "Alliance", race = "Gnome", cost = 10000000, vendor = "Milli Featherwhistle", location = "Steelgrill's Depot", reputation = { faction = "Gnomeregan Exiles", standing = 8 } },
        [18774] = { name = "Swift Yellow Mechanostrider", speed = 100, faction = "Alliance", race = "Gnome", cost = 10000000, vendor = "Milli Featherwhistle", location = "Steelgrill's Depot", reputation = { faction = "Gnomeregan Exiles", standing = 8 } },
        
        -- Swift Sabers
        [18766] = { name = "Swift Frostsaber", speed = 100, faction = "Alliance", race = "Night Elf", cost = 10000000, vendor = "Lelanai", location = "Darnassus", reputation = { faction = "Darnassus", standing = 8 } },
        [18767] = { name = "Swift Mistsaber", speed = 100, faction = "Alliance", race = "Night Elf", cost = 10000000, vendor = "Lelanai", location = "Darnassus", reputation = { faction = "Darnassus", standing = 8 } },
        [18902] = { name = "Swift Stormsaber", speed = 100, faction = "Alliance", race = "Night Elf", cost = 10000000, vendor = "Lelanai", location = "Darnassus", reputation = { faction = "Darnassus", standing = 8 } },
    },
    
    -- Horde Racial Mounts (60% Speed)
    Epic60Horde = {
        -- Wolves (Orc)
        [5665] = { name = "Dire Wolf", speed = 60, faction = "Horde", race = "Orc", cost = 100000, vendor = "Ogunaro Wolfrunner", location = "Orgrimmar" },
        [5668] = { name = "Brown Wolf", speed = 60, faction = "Horde", race = "Orc", cost = 100000, vendor = "Ogunaro Wolfrunner", location = "Orgrimmar" },
        [1132] = { name = "Timber Wolf", speed = 60, faction = "Horde", race = "Orc", cost = 100000, vendor = "Ogunaro Wolfrunner", location = "Orgrimmar" },
        
        -- Raptors (Troll)
        [8586] = { name = "Emerald Raptor", speed = 60, faction = "Horde", race = "Troll", cost = 100000, vendor = "Zjolnir", location = "Sen'jin Village, Durotar" },
        [8591] = { name = "Turquoise Raptor", speed = 60, faction = "Horde", race = "Troll", cost = 100000, vendor = "Zjolnir", location = "Sen'jin Village, Durotar" },
        [8592] = { name = "Violet Raptor", speed = 60, faction = "Horde", race = "Troll", cost = 100000, vendor = "Zjolnir", location = "Sen'jin Village, Durotar" },
        
        -- Kodos (Tauren)
        [15277] = { name = "Gray Kodo", speed = 60, faction = "Horde", race = "Tauren", cost = 100000, vendor = "Harb Clawhoof", location = "Bloodhoof Village, Mulgore" },
        [15290] = { name = "Brown Kodo", speed = 60, faction = "Horde", race = "Tauren", cost = 100000, vendor = "Harb Clawhoof", location = "Bloodhoof Village, Mulgore" },
        
        -- Skeletal Horses (Undead)
        [13331] = { name = "Red Skeletal Horse", speed = 60, faction = "Horde", race = "Undead", cost = 100000, vendor = "Zachariah Post", location = "Brill, Tirisfal Glades" },
        [13332] = { name = "Blue Skeletal Horse", speed = 60, faction = "Horde", race = "Undead", cost = 100000, vendor = "Zachariah Post", location = "Brill, Tirisfal Glades" },
        [13333] = { name = "Brown Skeletal Horse", speed = 60, faction = "Horde", race = "Undead", cost = 100000, vendor = "Zachariah Post", location = "Brill, Tirisfal Glades" },
    },
    
    -- Horde Epic Mounts (100% Speed)
    Epic100Horde = {
        -- Swift Wolves
        [18796] = { name = "Swift Brown Wolf", speed = 100, faction = "Horde", race = "Orc", cost = 10000000, vendor = "Ogunaro Wolfrunner", location = "Orgrimmar", reputation = { faction = "Orgrimmar", standing = 8 } },
        [18797] = { name = "Swift Timber Wolf", speed = 100, faction = "Horde", race = "Orc", cost = 10000000, vendor = "Ogunaro Wolfrunner", location = "Orgrimmar", reputation = { faction = "Orgrimmar", standing = 8 } },
        [18798] = { name = "Swift Gray Wolf", speed = 100, faction = "Horde", race = "Orc", cost = 10000000, vendor = "Ogunaro Wolfrunner", location = "Orgrimmar", reputation = { faction = "Orgrimmar", standing = 8 } },
        
        -- Swift Raptors
        [18788] = { name = "Swift Blue Raptor", speed = 100, faction = "Horde", race = "Troll", cost = 10000000, vendor = "Zjolnir", location = "Sen'jin Village", reputation = { faction = "Darkspear Trolls", standing = 8 } },
        [18789] = { name = "Swift Olive Raptor", speed = 100, faction = "Horde", race = "Troll", cost = 10000000, vendor = "Zjolnir", location = "Sen'jin Village", reputation = { faction = "Darkspear Trolls", standing = 8 } },
        [18790] = { name = "Swift Orange Raptor", speed = 100, faction = "Horde", race = "Troll", cost = 10000000, vendor = "Zjolnir", location = "Sen'jin Village", reputation = { faction = "Darkspear Trolls", standing = 8 } },
        
        -- Great Kodos
        [18793] = { name = "Great White Kodo", speed = 100, faction = "Horde", race = "Tauren", cost = 10000000, vendor = "Harb Clawhoof", location = "Bloodhoof Village", reputation = { faction = "Thunder Bluff", standing = 8 } },
        [18794] = { name = "Great Brown Kodo", speed = 100, faction = "Horde", race = "Tauren", cost = 10000000, vendor = "Harb Clawhoof", location = "Bloodhoof Village", reputation = { faction = "Thunder Bluff", standing = 8 } },
        [18795] = { name = "Great Gray Kodo", speed = 100, faction = "Horde", race = "Tauren", cost = 10000000, vendor = "Harb Clawhoof", location = "Bloodhoof Village", reputation = { faction = "Thunder Bluff", standing = 8 } },
        
        -- Skeletal Warhorses
        [18791] = { name = "Purple Skeletal Warhorse", speed = 100, faction = "Horde", race = "Undead", cost = 10000000, vendor = "Zachariah Post", location = "Brill", reputation = { faction = "Undercity", standing = 8 } },
        [13334] = { name = "Green Skeletal Warhorse", speed = 100, faction = "Horde", race = "Undead", cost = 10000000, vendor = "Zachariah Post", location = "Brill", reputation = { faction = "Undercity", standing = 8 } },
    },
    
    -- Special/Rare Mounts
    Special = {
        -- PvP Mounts
        [19029] = { name = "Horn of the Frostwolf Howler", speed = 100, faction = "Horde", source = "PvP", cost = 8000000, reputation = { faction = "Frostwolf Clan", standing = 8 } },
        [19030] = { name = "Stormpike Battle Charger", speed = 100, faction = "Alliance", source = "PvP", cost = 8000000, reputation = { faction = "Stormpike Guard", standing = 8 } },
        [18244] = { name = "Black War Wolf", speed = 100, faction = "Horde", source = "PvP", rankReq = 11 },
        [18243] = { name = "Black Battlestrider", speed = 100, faction = "Alliance", source = "PvP", rankReq = 11 },
        [18241] = { name = "Black War Steed Bridle", speed = 100, faction = "Alliance", source = "PvP", rankReq = 11 },
        [18242] = { name = "Reins of the Black War Tiger", speed = 100, faction = "Alliance", source = "PvP", rankReq = 11 },
        [18245] = { name = "Horn of the Black War Wolf", speed = 100, faction = "Horde", source = "PvP", rankReq = 11 },
        [18247] = { name = "Black War Kodo", speed = 100, faction = "Horde", source = "PvP", rankReq = 11 },
        [18246] = { name = "Whistle of the Black War Raptor", speed = 100, faction = "Horde", source = "PvP", rankReq = 11 },
        [18248] = { name = "Red Skeletal Warhorse", speed = 100, faction = "Horde", source = "PvP", rankReq = 11 },
        
        -- Raid/Drop Mounts
        [19872] = { name = "Swift Razzashi Raptor", speed = 100, faction = "Both", source = "Raid", dropInfo = { instance = "Zul'Gurub", boss = "Bloodlord Mandokir", dropRate = 1 } },
        [19902] = { name = "Swift Zulian Tiger", speed = 100, faction = "Both", source = "Raid", dropInfo = { instance = "Zul'Gurub", boss = "High Priest Thekal", dropRate = 1 } },
        [13335] = { name = "Deathcharger's Reins", speed = 100, faction = "Both", source = "Dungeon", dropInfo = { instance = "Stratholme", boss = "Baron Rivendare", dropRate = 0.02 } },
        
        -- AQ Mounts
        [21176] = { name = "Black Qiraji Resonating Crystal", speed = 100, faction = "Both", source = "Event", note = "Gates of Ahn'Qiraj - No longer obtainable" },
        [21218] = { name = "Blue Qiraji Resonating Crystal", speed = 100, faction = "Both", source = "Raid", dropInfo = { instance = "Temple of Ahn'Qiraj", boss = "Trash", dropRate = 5 }, note = "AQ40 Only" },
        [21323] = { name = "Green Qiraji Resonating Crystal", speed = 100, faction = "Both", source = "Raid", dropInfo = { instance = "Temple of Ahn'Qiraj", boss = "Trash", dropRate = 5 }, note = "AQ40 Only" },
        [21321] = { name = "Red Qiraji Resonating Crystal", speed = 100, faction = "Both", source = "Raid", dropInfo = { instance = "Temple of Ahn'Qiraj", boss = "Trash", dropRate = 5 }, note = "AQ40 Only" },
        [21324] = { name = "Yellow Qiraji Resonating Crystal", speed = 100, faction = "Both", source = "Raid", dropInfo = { instance = "Temple of Ahn'Qiraj", boss = "Trash", dropRate = 5 }, note = "AQ40 Only" },
        
        -- Winterspring Frostsaber (Alliance Only)
        [13086] = { name = "Reins of the Winterspring Frostsaber", speed = 100, faction = "Alliance", source = "Reputation", reputation = { faction = "Wintersaber Trainers", standing = 8 }, note = "Long reputation grind" },
        
        -- Class Mounts
        [13819] = { name = "Summon Warhorse", speed = 60, faction = "Alliance", class = "Paladin", source = "Class Quest", level = 40 },
        [23214] = { name = "Summon Charger", speed = 100, faction = "Alliance", class = "Paladin", source = "Class Quest", level = 60 },
        [5784] = { name = "Summon Felsteed", speed = 60, faction = "Both", class = "Warlock", source = "Class Quest", level = 40 },
        [23161] = { name = "Summon Dreadsteed", speed = 100, faction = "Both", class = "Warlock", source = "Class Quest", level = 60 },
    },
}

-- Companion Pets Database
DB.Pets = {
    -- Vendor Pets
    Vendor = {
        [8485] = { name = "Bombay Cat", cost = 4000, vendor = "Donni Anthania", location = "Elwynn Forest", faction = "Alliance" },
        [8486] = { name = "Cornish Rex Cat", cost = 4000, vendor = "Donni Anthania", location = "Elwynn Forest", faction = "Alliance" },
        [8487] = { name = "Orange Tabby Cat", cost = 4000, vendor = "Donni Anthania", location = "Elwynn Forest", faction = "Alliance" },
        [8488] = { name = "Silver Tabby Cat", cost = 4000, vendor = "Donni Anthania", location = "Elwynn Forest", faction = "Alliance" },
        [8489] = { name = "White Kitten", cost = 6000, vendor = "Lil Timmy", location = "Stormwind (Rare Spawn)", faction = "Alliance" },
        [8490] = { name = "Siamese Cat", cost = 6000, vendor = "Dealer Rashaad", location = "Netherstorm (TBC)", faction = "Both", note = "Available in TBC" },
        [8491] = { name = "Black Tabby Cat", cost = 0, source = "Drop", dropInfo = { zone = "Hillsbrad Foothills", mob = "Dalaran Spellscribe", dropRate = 0.1 }, faction = "Both" },
        
        [8496] = { name = "Cockatiel", cost = 4000, vendor = "Narkk", location = "Booty Bay", faction = "Both" },
        [8492] = { name = "Green Wing Macaw", cost = 0, source = "Drop", dropInfo = { instance = "The Deadmines", mob = "Defias Pirate", dropRate = 1 }, faction = "Both" },
        [8494] = { name = "Hyacinth Macaw", cost = 0, source = "Drop", dropInfo = { zone = "Stranglethorn Vale", mob = "Bloodsail Pirates", dropRate = 0.01 }, faction = "Both", note = "Extremely Rare" },
        [8495] = { name = "Senegal", cost = 4000, vendor = "Narkk", location = "Booty Bay", faction = "Both" },
        
        [10392] = { name = "Crimson Snake", cost = 5000, vendor = "Xan'tish", location = "Orgrimmar", faction = "Horde" },
        [10393] = { name = "Cobra Hatchling", cost = 5000, vendor = "Xan'tish", location = "Orgrimmar", faction = "Horde" },
        
        [10394] = { name = "Brown Prairie Dog", cost = 5000, vendor = "Halpa", location = "Thunder Bluff", faction = "Horde" },
        [10398] = { name = "Prairie Dog Whistle", cost = 5000, vendor = "Halpa", location = "Thunder Bluff", faction = "Horde" },
        
        [11023] = { name = "Ancona Chicken", cost = 10000, vendor = "Magus Tirth", location = "Thousand Needles", faction = "Both" },
        
        [11026] = { name = "Tree Frog Box", cost = 10000, vendor = "Flik", location = "Darkmoon Faire", faction = "Both" },
        [11027] = { name = "Wood Frog Box", cost = 10000, vendor = "Flik", location = "Darkmoon Faire", faction = "Both" },
        
        [11825] = { name = "Pet Bombling", cost = 0, source = "Crafted", profession = "Engineering", skillReq = 205, faction = "Both" },
        [11826] = { name = "Lil' Smoky", cost = 0, source = "Crafted", profession = "Engineering", skillReq = 205, faction = "Both" },
        
        [4401] = { name = "Mechanical Squirrel", cost = 0, source = "Crafted", profession = "Engineering", skillReq = 75, faction = "Both" },
        
        [8500] = { name = "Great Horned Owl", cost = 5000, vendor = "Shylenai", location = "Darnassus", faction = "Alliance" },
        [8501] = { name = "Hawk Owl", cost = 5000, vendor = "Shylenai", location = "Darnassus", faction = "Alliance" },
        
        [8497] = { name = "Snowshoe Rabbit", cost = 2000, vendor = "Yarlyn Amberstill", location = "Dun Morogh", faction = "Alliance" },
    },
    
    -- Quest Reward Pets
    Quest = {
        [11110] = { name = "Chicken Egg", cost = 0, source = "Quest", questName = "CLUCK!", zone = "Westfall", faction = "Both" },
        [12264] = { name = "Worg Carrier", cost = 0, source = "Quest", questName = "Kibler's Exotic Pets", zone = "Blackrock Spire", faction = "Both" },
        [11474] = { name = "Sprite Darter Egg", cost = 0, source = "Quest", questName = "Becoming a Parent", zone = "Feralas", faction = "Alliance" },
        [19450] = { name = "A Jubling's Tiny Home", cost = 0, source = "Quest", questName = "Spawn of Jubjub", zone = "Darkmoon Faire", faction = "Both" },
    },
    
    -- Drop Pets
    Drop = {
        [8498] = { name = "Tiny Emerald Whelpling", source = "Drop", dropInfo = { zone = "Feralas", mob = "Noxious Whelp", dropRate = 0.1 }, faction = "Both" },
        [8499] = { name = "Tiny Crimson Whelpling", source = "Drop", dropInfo = { zone = "Wetlands", mob = "Crimson Whelp", dropRate = 0.1 }, faction = "Both" },
        [10822] = { name = "Dark Whelpling", source = "Drop", dropInfo = { zone = "Badlands/Dustwallow", mob = "Various Whelps", dropRate = 0.1 }, faction = "Both" },
        [12264] = { name = "Worg Pup", source = "Drop", dropInfo = { instance = "Lower Blackrock Spire", mob = "Quartermaster Zigris", dropRate = 5 }, faction = "Both" },
        [19462] = { name = "Disgusting Oozeling", source = "Drop", dropInfo = { zone = "Various", mob = "Oozes", dropRate = 0.05 }, note = "From Oozing Bag", faction = "Both" },
        [20371] = { name = "Azure Whelpling", source = "Drop", dropInfo = { zone = "Winterspring", mob = "Blue Dragonspawn", dropRate = 0.1 }, faction = "Both" },
    },
    
    -- Event/Seasonal Pets
    Event = {
        [21301] = { name = "Green Helper Box", source = "Event", event = "Winter Veil", faction = "Both" },
        [21308] = { name = "Red Helper Box", source = "Event", event = "Winter Veil", faction = "Both" },
        [21305] = { name = "Snowman Kit", source = "Event", event = "Winter Veil", faction = "Both" },
        [21309] = { name = "Jingling Bell", source = "Event", event = "Winter Veil", faction = "Both" },
        
        [22235] = { name = "Peddlefeet", source = "Event", event = "Love is in the Air", faction = "Both" },
        
        [23007] = { name = "Piglet's Collar", source = "Event", event = "Children's Week", faction = "Both" },
        [23015] = { name = "Rat Cage", source = "Event", event = "Children's Week", faction = "Both" },
        [23002] = { name = "Turtle Box", source = "Event", event = "Children's Week", faction = "Both" },
    },
    
    -- Rare/Special Pets
    Rare = {
        [13582] = { name = "Zergling Leash", source = "Collector's Edition", note = "WoW Collector's Edition", faction = "Both" },
        [13583] = { name = "Panda Collar", source = "Collector's Edition", note = "WoW Collector's Edition", faction = "Both" },
        [13584] = { name = "Diablo Stone", source = "Collector's Edition", note = "WoW Collector's Edition", faction = "Both" },
        
        [19054] = { name = "Lil' Murky", source = "BlizzCon", note = "BlizzCon 2005", faction = "Both" },
        [22114] = { name = "Phat Lewt Bag", source = "BlizzCon", note = "BlizzCon 2006", faction = "Both" },
    },
}

-- Helper function to format cost strings
function DB.FormatCost(costs)
    if not costs then return "N/A" end
    local parts = {}
    for _, cost in ipairs(costs) do
        if cost.type == "GOLD" then
            local gold = math.floor(cost.amount / 10000)
            local silver = math.floor(math.mod(cost.amount, 10000) / 100)
            local copper = math.mod(cost.amount, 100)
            if gold > 0 then
                table.insert(parts, string.format("%dg %ds %dc", gold, silver, copper))
            elseif silver > 0 then
                table.insert(parts, string.format("%ds %dc", silver, copper))
            else
                table.insert(parts, string.format("%dc", copper))
            end
        elseif cost.type == "HONOR" then
            table.insert(parts, string.format("%d Honor", cost.amount))
        else
            local currency = DB.CurrencyTypes[cost.type]
            if currency then
                table.insert(parts, string.format("%dx %s", cost.amount, currency.name))
            end
        end
    end
    return table.concat(parts, ", ")
end

-- Helper function to get source chain text
function DB.GetSourceChainText(itemID)
    local chain = DB.SourceChains[itemID]
    if not chain then return nil end
    
    local lines = {}
    
    if chain.dropsFrom then
        if type(chain.dropsFrom) == "table" and chain.dropsFrom.npcName then
            table.insert(lines, string.format("Drops from: %s", chain.dropsFrom.npcName))
            table.insert(lines, string.format("  Location: %s", chain.dropsFrom.location))
            if chain.dropsFrom.dropRate then
                table.insert(lines, string.format("  Drop Rate: %.1f%%", chain.dropsFrom.dropRate))
            end
        end
    end
    
    if chain.craftedFrom then
        table.insert(lines, "Crafted from:")
        for _, mat in ipairs(chain.craftedFrom) do
            table.insert(lines, string.format("  - %s (%s)", mat.name, mat.source))
        end
    end
    
    if chain.questChain then
        table.insert(lines, "Quest Chain:")
        for _, quest in ipairs(chain.questChain) do
            table.insert(lines, string.format("  - %s (%s)", quest.quest, quest.zone or quest.npc or ""))
        end
    end
    
    if chain.zone then
        table.insert(lines, string.format("Zone: %s", chain.zone))
    end
    
    if chain.instance then
        table.insert(lines, string.format("Instance: %s", chain.instance))
    end
    
    return table.concat(lines, "\n")
end

--------------------------------------------------------------------------------
-- HIERARCHICAL TREE DATA STRUCTURE
-- Organized: Zone → Subzone/Instance → NPC/Source → Items
--------------------------------------------------------------------------------

DB.HierarchyTree = {
    -- Eastern Kingdoms Zones
    ["Eastern Kingdoms"] = {
        type = "continent",
        children = {
            ["Elwynn Forest"] = {
                type = "zone",
                level = "1-10",
                faction = "Alliance",
                children = {
                    ["Goldshire"] = {
                        type = "subzone",
                        children = {
                            ["Kobold Vermin"] = {
                                type = "npc",
                                level = "1-2",
                                items = {
                                    { id = 774, name = "Malachite", quality = 2, dropRate = 0.5 },
                                    { id = 818, name = "Tigerseye", quality = 2, dropRate = 0.3 },
                                },
                            },
                            ["Kobold Worker"] = {
                                type = "npc",
                                level = "2-3",
                                items = {
                                    { id = 2589, name = "Linen Cloth", quality = 1, dropRate = 30 },
                                },
                            },
                        },
                    },
                    ["Fargodeep Mine"] = {
                        type = "subzone",
                        children = {
                            ["Kobold Tunneler"] = {
                                type = "npc",
                                level = "4-5",
                                items = {
                                    { id = 774, name = "Malachite", quality = 2, dropRate = 1 },
                                    { id = 1210, name = "Shadowgem", quality = 2, dropRate = 0.5 },
                                },
                            },
                        },
                    },
                    ["Quests"] = {
                        type = "category",
                        children = {
                            ["Kobold Camp Cleanup"] = {
                                type = "quest",
                                level = 5,
                                items = {
                                    { id = 6070, name = "Kobold Camp Cleanup Reward", quality = 1 },
                                },
                            },
                        },
                    },
                },
            },
            ["Westfall"] = {
                type = "zone",
                level = "10-20",
                faction = "Alliance",
                children = {
                    ["The Deadmines"] = {
                        type = "instance",
                        level = "17-26",
                        players = 5,
                        children = {
                            ["Rhahk'Zor"] = {
                                type = "boss",
                                level = 19,
                                items = {
                                    { id = 872, name = "Rockslicer", quality = 2, dropRate = 25 },
                                    { id = 5187, name = "Rhahk'Zor's Hammer", quality = 3, dropRate = 30 },
                                },
                            },
                            ["Sneed's Shredder"] = {
                                type = "boss",
                                level = 20,
                                items = {
                                    { id = 2169, name = "Buzzer Blade", quality = 3, dropRate = 35 },
                                    { id = 1937, name = "Buzz Saw", quality = 2, dropRate = 30 },
                                },
                            },
                            ["Gilnid"] = {
                                type = "boss",
                                level = 20,
                                items = {
                                    { id = 1156, name = "Lavishly Jeweled Ring", quality = 3, dropRate = 30 },
                                    { id = 5199, name = "Smelting Pants", quality = 2, dropRate = 35 },
                                },
                            },
                            ["Mr. Smite"] = {
                                type = "boss",
                                level = 20,
                                items = {
                                    { id = 5192, name = "Thief's Blade", quality = 3, dropRate = 30 },
                                    { id = 5196, name = "Smite's Reaver", quality = 3, dropRate = 25 },
                                },
                            },
                            ["Edwin VanCleef"] = {
                                type = "boss",
                                level = 21,
                                items = {
                                    { id = 5193, name = "Cape of the Brotherhood", quality = 3, dropRate = 20 },
                                    { id = 5191, name = "Cruel Barb", quality = 3, dropRate = 18 },
                                    { id = 5194, name = "Taskmaster Axe", quality = 3, dropRate = 15 },
                                    { id = 5195, name = "Gold-plated Buckler", quality = 2, dropRate = 15 },
                                },
                            },
                            ["Cookie"] = {
                                type = "boss",
                                level = 20,
                                items = {
                                    { id = 5198, name = "Cookie's Stirring Rod", quality = 3, dropRate = 35 },
                                    { id = 5197, name = "Cookie's Tenderizer", quality = 3, dropRate = 30 },
                                },
                            },
                            ["Trash Mobs"] = {
                                type = "trash",
                                items = {
                                    { id = 8492, name = "Green Wing Macaw", quality = 3, dropRate = 1 },
                                    { id = 1926, name = "Defias Rapier", quality = 2, dropRate = 2 },
                                    { id = 1951, name = "Blackwater Cutlass", quality = 2, dropRate = 1 },
                                },
                            },
                        },
                    },
                    ["Defias Brotherhood"] = {
                        type = "subzone",
                        children = {
                            ["Defias Pillager"] = {
                                type = "npc",
                                level = "15-16",
                                items = {
                                    { id = 2589, name = "Linen Cloth", quality = 1, dropRate = 35 },
                                    { id = 2592, name = "Wool Cloth", quality = 1, dropRate = 15 },
                                },
                            },
                        },
                    },
                },
            },
            ["Duskwood"] = {
                type = "zone",
                level = "20-30",
                faction = "Alliance",
                children = {
                    ["Darkshire"] = {
                        type = "subzone",
                        children = {
                            ["Vendors"] = {
                                type = "category",
                                children = {
                                    ["Madame Eva"] = {
                                        type = "vendor",
                                        items = {
                                            { id = 5643, name = "Recipe: Great Rage Potion", quality = 1, cost = 2000 },
                                        },
                                    },
                                },
                            },
                        },
                    },
                    ["Raven Hill Cemetery"] = {
                        type = "subzone",
                        children = {
                            ["Mor'Ladim"] = {
                                type = "rare",
                                level = 25,
                                spawnTimer = "4-6 hours",
                                items = {
                                    { id = 3185, name = "Acrobatic Staff", quality = 3, dropRate = 35 },
                                    { id = 4446, name = "Blackbone Ring", quality = 2, dropRate = 20 },
                                },
                            },
                        },
                    },
                },
            },
            ["Stranglethorn Vale"] = {
                type = "zone",
                level = "30-45",
                faction = "Both",
                children = {
                    ["Zul'Gurub"] = {
                        type = "raid",
                        level = 60,
                        players = 20,
                        children = {
                            ["High Priest Venoxis"] = {
                                type = "boss",
                                level = 62,
                                items = {
                                    { id = 19903, name = "Fang of Venoxis", quality = 4, dropRate = 15 },
                                    { id = 19900, name = "Zulian Stone Axe", quality = 4, dropRate = 12 },
                                },
                            },
                            ["Bloodlord Mandokir"] = {
                                type = "boss",
                                level = 62,
                                items = {
                                    { id = 19872, name = "Swift Razzashi Raptor", quality = 4, dropRate = 1 },
                                    { id = 19867, name = "Bloodlord's Defender", quality = 4, dropRate = 12 },
                                },
                            },
                            ["High Priest Thekal"] = {
                                type = "boss",
                                level = 62,
                                items = {
                                    { id = 19902, name = "Swift Zulian Tiger", quality = 4, dropRate = 1 },
                                    { id = 19897, name = "Betrayer's Boots", quality = 4, dropRate = 15 },
                                },
                            },
                            ["Hakkar the Soulflayer"] = {
                                type = "boss",
                                level = 63,
                                items = {
                                    { id = 19857, name = "Cloak of Consumption", quality = 4, dropRate = 15 },
                                    { id = 19859, name = "Fang of the Faceless", quality = 4, dropRate = 12 },
                                    { id = 19864, name = "Bloodcaller", quality = 4, dropRate = 10 },
                                    { id = 19862, name = "Aegis of the Blood God", quality = 4, dropRate = 8 },
                                },
                            },
                        },
                    },
                    ["Booty Bay"] = {
                        type = "subzone",
                        children = {
                            ["Vendors"] = {
                                type = "category",
                                children = {
                                    ["Narkk"] = {
                                        type = "vendor",
                                        items = {
                                            { id = 8496, name = "Cockatiel", quality = 1, cost = 4000 },
                                            { id = 8495, name = "Senegal", quality = 1, cost = 4000 },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            ["Burning Steppes"] = {
                type = "zone",
                level = "50-58",
                faction = "Both",
                children = {
                    ["Blackrock Mountain"] = {
                        type = "subzone",
                        children = {
                            ["Blackrock Depths"] = {
                                type = "instance",
                                level = "52-60",
                                players = 5,
                                children = {
                                    ["Emperor Dagran Thaurissan"] = {
                                        type = "boss",
                                        level = 59,
                                        items = {
                                            { id = 13964, name = "Ironfoe", quality = 4, dropRate = 1.5 },
                                            { id = 11684, name = "Imperial Jewel", quality = 4, dropRate = 15 },
                                            { id = 11932, name = "Guiding Stave of Wisdom", quality = 4, dropRate = 12 },
                                        },
                                    },
                                    ["General Angerforge"] = {
                                        type = "boss",
                                        level = 57,
                                        items = {
                                            { id = 11935, name = "Dregmetal Spaulders", quality = 3, dropRate = 18 },
                                            { id = 22266, name = "Libram of Constitution", quality = 3, dropRate = 8 },
                                        },
                                    },
                                },
                            },
                            ["Upper Blackrock Spire"] = {
                                type = "instance",
                                level = "55-60",
                                players = 10,
                                children = {
                                    ["Warchief Rend Blackhand"] = {
                                        type = "boss",
                                        level = 62,
                                        items = {
                                            { id = 12590, name = "Felstriker", quality = 4, dropRate = 0.7 },
                                            { id = 12587, name = "Eye of Rend", quality = 4, dropRate = 15 },
                                            { id = 12588, name = "Bonespike Shoulder", quality = 3, dropRate = 18 },
                                        },
                                    },
                                    ["General Drakkisath"] = {
                                        type = "boss",
                                        level = 62,
                                        items = {
                                            { id = 12651, name = "Blackblade of Shahram", quality = 4, dropRate = 2.5 },
                                            { id = 22253, name = "Tome of the Lost", quality = 3, dropRate = 10 },
                                        },
                                    },
                                },
                            },
                            ["Molten Core"] = {
                                type = "raid",
                                level = 60,
                                players = 40,
                                children = {
                                    ["Lucifron"] = {
                                        type = "boss",
                                        level = 62,
                                        items = {
                                            { id = 16805, name = "Felheart Gloves", quality = 4, dropRate = 18 },
                                            { id = 16863, name = "Gauntlets of Might", quality = 4, dropRate = 18 },
                                        },
                                    },
                                    ["Magmadar"] = {
                                        type = "boss",
                                        level = 62,
                                        items = {
                                            { id = 17069, name = "Striker's Mark", quality = 4, dropRate = 15 },
                                            { id = 18203, name = "Eskhandar's Right Claw", quality = 4, dropRate = 10 },
                                        },
                                    },
                                    ["Ragnaros"] = {
                                        type = "boss",
                                        level = 63,
                                        items = {
                                            { id = 17204, name = "Eye of Sulfuras", quality = 5, dropRate = 3 },
                                            { id = 18814, name = "Choker of the Fire Lord", quality = 4, dropRate = 10 },
                                            { id = 18817, name = "Crown of Destruction", quality = 4, dropRate = 12 },
                                            { id = 17102, name = "Cloak of the Shrouded Mists", quality = 4, dropRate = 15 },
                                        },
                                    },
                                },
                            },
                            ["Blackwing Lair"] = {
                                type = "raid",
                                level = 60,
                                players = 40,
                                children = {
                                    ["Razorgore the Untamed"] = {
                                        type = "boss",
                                        level = 62,
                                        items = {
                                            { id = 19335, name = "Spineshatter", quality = 4, dropRate = 15 },
                                            { id = 19336, name = "Arcane Infused Gem", quality = 4, dropRate = 18 },
                                        },
                                    },
                                    ["Nefarian"] = {
                                        type = "boss",
                                        level = 63,
                                        items = {
                                            { id = 19002, name = "Head of Nefarian", quality = 4, dropRate = 100 },
                                            { id = 19137, name = "Onslaught Girdle", quality = 4, dropRate = 8 },
                                            { id = 19003, name = "Head of Nefarian", quality = 4, dropRate = 100 },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            ["Eastern Plaguelands"] = {
                type = "zone",
                level = "53-60",
                faction = "Both",
                children = {
                    ["Stratholme"] = {
                        type = "instance",
                        level = "58-60",
                        players = 5,
                        children = {
                            ["Baron Rivendare"] = {
                                type = "boss",
                                level = 62,
                                items = {
                                    { id = 13335, name = "Deathcharger's Reins", quality = 4, dropRate = 0.02 },
                                    { id = 13505, name = "Runeblade of Baron Rivendare", quality = 4, dropRate = 0.3 },
                                    { id = 13368, name = "Bonescraper", quality = 3, dropRate = 15 },
                                },
                            },
                        },
                    },
                    ["Naxxramas"] = {
                        type = "raid",
                        level = 60,
                        players = 40,
                        children = {
                            ["Anub'Rekhan"] = {
                                type = "boss",
                                level = 63,
                                items = {
                                    { id = 22726, name = "Splinter of Atiesh", quality = 4, dropRate = 50 },
                                    { id = 22938, name = "Cryptfiend Silk Cloak", quality = 4, dropRate = 20 },
                                },
                            },
                            ["Kel'Thuzad"] = {
                                type = "boss",
                                level = 63,
                                items = {
                                    { id = 23057, name = "Veil of Eclipse", quality = 4, dropRate = 15 },
                                    { id = 23054, name = "Gressil, Dawn of Ruin", quality = 4, dropRate = 8 },
                                    { id = 22802, name = "Kingsfall", quality = 4, dropRate = 8 },
                                },
                            },
                        },
                    },
                    ["Light's Hope Chapel"] = {
                        type = "subzone",
                        children = {
                            ["Argent Dawn Vendors"] = {
                                type = "category",
                                children = {
                                    ["Quartermaster Hasana"] = {
                                        type = "vendor",
                                        reputation = "Argent Dawn",
                                        items = {
                                            { id = 22417, name = "Blessed Wizard Oil", quality = 1, cost = 50000, repReq = "Honored" },
                                            { id = 22438, name = "Onslaught Girdle", quality = 4, cost = 3000000, repReq = "Exalted" },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
    },
    
    -- Kalimdor Zones
    ["Kalimdor"] = {
        type = "continent",
        children = {
            ["Durotar"] = {
                type = "zone",
                level = "1-10",
                faction = "Horde",
                children = {
                    ["Valley of Trials"] = {
                        type = "subzone",
                        children = {
                            ["Scorpid Worker"] = {
                                type = "npc",
                                level = "1-2",
                                items = {
                                    { id = 2770, name = "Copper Ore", quality = 1, dropRate = 0.5 },
                                },
                            },
                        },
                    },
                    ["Sen'jin Village"] = {
                        type = "subzone",
                        children = {
                            ["Vendors"] = {
                                type = "category",
                                children = {
                                    ["Zjolnir"] = {
                                        type = "vendor",
                                        items = {
                                            { id = 8586, name = "Emerald Raptor", quality = 3, cost = 100000 },
                                            { id = 8591, name = "Turquoise Raptor", quality = 3, cost = 100000 },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            ["Silithus"] = {
                type = "zone",
                level = "55-60",
                faction = "Both",
                children = {
                    ["Temple of Ahn'Qiraj"] = {
                        type = "raid",
                        level = 60,
                        players = 40,
                        children = {
                            ["The Prophet Skeram"] = {
                                type = "boss",
                                level = 63,
                                items = {
                                    { id = 21706, name = "Ring of Swarming Thought", quality = 4, dropRate = 18 },
                                    { id = 21699, name = "Barrage Shoulders", quality = 4, dropRate = 15 },
                                },
                            },
                            ["C'Thun"] = {
                                type = "boss",
                                level = 63,
                                items = {
                                    { id = 21126, name = "Death's Sting", quality = 4, dropRate = 10 },
                                    { id = 21134, name = "Dark Edge of Insanity", quality = 4, dropRate = 8 },
                                    { id = 22732, name = "Mark of C'Thun", quality = 4, dropRate = 100 },
                                },
                            },
                            ["Trash Mobs"] = {
                                type = "trash",
                                items = {
                                    { id = 21218, name = "Blue Qiraji Resonating Crystal", quality = 4, dropRate = 5 },
                                    { id = 21323, name = "Green Qiraji Resonating Crystal", quality = 4, dropRate = 5 },
                                    { id = 21321, name = "Red Qiraji Resonating Crystal", quality = 4, dropRate = 5 },
                                    { id = 21324, name = "Yellow Qiraji Resonating Crystal", quality = 4, dropRate = 5 },
                                },
                            },
                        },
                    },
                    ["Ruins of Ahn'Qiraj"] = {
                        type = "raid",
                        level = 60,
                        players = 20,
                        children = {
                            ["Ossirian the Unscarred"] = {
                                type = "boss",
                                level = 63,
                                items = {
                                    { id = 21460, name = "Helm of Domination", quality = 4, dropRate = 15 },
                                    { id = 21452, name = "Staff of the Ruins", quality = 4, dropRate = 12 },
                                },
                            },
                        },
                    },
                    ["Cenarion Hold"] = {
                        type = "subzone",
                        children = {
                            ["Cenarion Circle Vendors"] = {
                                type = "category",
                                children = {
                                    ["Vargus"] = {
                                        type = "vendor",
                                        reputation = "Cenarion Circle",
                                        items = {
                                            { id = 21180, name = "Earthstrike", quality = 4, repReq = "Revered" },
                                            { id = 21181, name = "Grace of Earth", quality = 4, repReq = "Revered" },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            ["Winterspring"] = {
                type = "zone",
                level = "55-60",
                faction = "Both",
                children = {
                    ["Everlook"] = {
                        type = "subzone",
                        children = {
                            ["Wintersaber Trainers"] = {
                                type = "category",
                                faction = "Alliance",
                                children = {
                                    ["Rivern Frostwind"] = {
                                        type = "vendor",
                                        reputation = "Wintersaber Trainers",
                                        items = {
                                            { id = 13086, name = "Reins of the Winterspring Frostsaber", quality = 4, repReq = "Exalted" },
                                        },
                                    },
                                },
                            },
                        },
                    },
                    ["Rare Spawns"] = {
                        type = "category",
                        children = {
                            ["Azurous"] = {
                                type = "rare",
                                level = 58,
                                coords = { x = 58, y = 55 },
                                items = {
                                    { id = 20371, name = "Azure Whelpling", quality = 3, dropRate = 0.1 },
                                },
                            },
                        },
                    },
                },
            },
        },
    },
    
    -- World Bosses
    ["World Bosses"] = {
        type = "category",
        children = {
            ["Lord Kazzak"] = {
                type = "worldboss",
                level = 63,
                zone = "Blasted Lands",
                coords = { x = 32, y = 48 },
                respawn = "2 days",
                items = {
                    { id = 18546, name = "Infernal Headcage", quality = 4, dropRate = 15 },
                    { id = 18543, name = "Ring of Entropy", quality = 4, dropRate = 12 },
                    { id = 17113, name = "Amberseal Keeper", quality = 4, dropRate = 8 },
                },
            },
            ["Azuregos"] = {
                type = "worldboss",
                level = 63,
                zone = "Azshara",
                coords = { x = 47, y = 83 },
                respawn = "2-3 days",
                items = {
                    { id = 19132, name = "Crystal Adorned Crown", quality = 4, dropRate = 12 },
                    { id = 18202, name = "Eskhandar's Left Claw", quality = 4, dropRate = 10 },
                    { id = 17070, name = "Fang of the Mystics", quality = 4, dropRate = 12 },
                },
            },
            ["Dragons of Nightmare"] = {
                type = "category",
                children = {
                    ["Emeriss"] = {
                        type = "worldboss",
                        level = 63,
                        zone = "Various",
                        items = {
                            { id = 20623, name = "Circlet of Restless Dreams", quality = 4, dropRate = 15 },
                            { id = 20622, name = "Dragonheart Necklace", quality = 4, dropRate = 12 },
                        },
                    },
                    ["Lethon"] = {
                        type = "worldboss",
                        level = 63,
                        zone = "Various",
                        items = {
                            { id = 20623, name = "Circlet of Restless Dreams", quality = 4, dropRate = 15 },
                            { id = 20622, name = "Dragonheart Necklace", quality = 4, dropRate = 12 },
                        },
                    },
                    ["Taerar"] = {
                        type = "worldboss",
                        level = 63,
                        zone = "Various",
                        items = {
                            { id = 20623, name = "Circlet of Restless Dreams", quality = 4, dropRate = 15 },
                            { id = 20622, name = "Dragonheart Necklace", quality = 4, dropRate = 12 },
                        },
                    },
                    ["Ysondre"] = {
                        type = "worldboss",
                        level = 63,
                        zone = "Various",
                        items = {
                            { id = 20623, name = "Circlet of Restless Dreams", quality = 4, dropRate = 15 },
                            { id = 20622, name = "Dragonheart Necklace", quality = 4, dropRate = 12 },
                        },
                    },
                },
            },
        },
    },
    
    -- Professions
    ["Professions"] = {
        type = "category",
        children = {
            ["Blacksmithing"] = {
                type = "profession",
                children = {
                    ["Armorsmith"] = {
                        type = "specialization",
                        items = {
                            { id = 12618, name = "Enchanted Thorium Breastplate", quality = 4 },
                            { id = 12620, name = "Enchanted Thorium Leggings", quality = 4 },
                            { id = 12619, name = "Enchanted Thorium Helm", quality = 4 },
                        },
                    },
                    ["Weaponsmith"] = {
                        type = "specialization",
                        children = {
                            ["Swordsmith"] = {
                                type = "specialization",
                                items = {
                                    { id = 12790, name = "Arcanite Champion", quality = 4 },
                                    { id = 12798, name = "Arcanite Reaper", quality = 4 },
                                },
                            },
                            ["Hammersmith"] = {
                                type = "specialization",
                                items = {
                                    { id = 12794, name = "Masterwork Stormhammer", quality = 4 },
                                },
                            },
                            ["Axesmith"] = {
                                type = "specialization",
                                items = {
                                    { id = 12784, name = "Arcanite Reaper", quality = 4 },
                                },
                            },
                        },
                    },
                },
            },
            ["Enchanting"] = {
                type = "profession",
                children = {
                    ["High-End Enchants"] = {
                        type = "category",
                        items = {
                            { id = 16223, name = "Formula: Enchant Weapon - Crusader", quality = 2, source = "Drop" },
                            { id = 16219, name = "Formula: Enchant Weapon - Lifestealing", quality = 2, source = "Drop" },
                            { id = 20726, name = "Formula: Enchant Gloves - Threat", quality = 2, source = "Reputation" },
                        },
                    },
                },
            },
        },
    },
}

-- Quality constants for filtering
DB.QualityLevels = {
    [0] = { name = "Poor", color = "|cFF9D9D9D" },
    [1] = { name = "Common", color = "|cFFFFFFFF" },
    [2] = { name = "Uncommon", color = "|cFF1EFF00" },
    [3] = { name = "Rare", color = "|cFF0070DD" },
    [4] = { name = "Epic", color = "|cFFA335EE" },
    [5] = { name = "Legendary", color = "|cFFFF8000" },
}

-- Source types for filtering
DB.SourceTypes = {
    "Drop",
    "Quest",
    "Vendor",
    "Crafted",
    "Reputation",
    "PvP",
    "World Drop",
    "Dungeon",
    "Raid",
    "World Boss",
    "Rare Spawn",
    "Event",
    "Fishing",
}

-- Node type icons
DB.NodeTypeIcons = {
    continent = "Interface\\Icons\\INV_Misc_Map_01",
    zone = "Interface\\Icons\\INV_Misc_Map02",
    subzone = "Interface\\Icons\\Ability_Tracking",
    instance = "Interface\\Icons\\INV_Misc_Key_10",
    raid = "Interface\\Icons\\INV_Misc_Key_14",
    boss = "Interface\\Icons\\INV_Misc_Head_Dragon_01",
    worldboss = "Interface\\Icons\\INV_Misc_Head_Dragon_Black",
    npc = "Interface\\Icons\\Ability_Creature_Cursed_02",
    rare = "Interface\\Icons\\INV_Misc_Coin_02",
    vendor = "Interface\\Icons\\INV_Misc_Coin_01",
    quest = "Interface\\Icons\\INV_Misc_Note_01",
    trash = "Interface\\Icons\\INV_Misc_Bag_10",
    category = "Interface\\Icons\\INV_Misc_QuestionMark",
    profession = "Interface\\Icons\\Trade_Engineering",
    specialization = "Interface\\Icons\\Trade_BlackSmithing",
}

--------------------------------------------------------------------------------
-- ADVANCED SEARCH SYSTEM
-- Filter by source type, quality, level range, and text
--------------------------------------------------------------------------------

DB.SearchFilters = {
    -- Active search text
    searchText = "",
    
    -- Quality filter (nil = all, or specific quality number 0-5)
    minQuality = nil,
    maxQuality = nil,
    
    -- Level range filter
    minLevel = nil,
    maxLevel = nil,
    
    -- Source type filters (true = show, false/nil = hide)
    sourceTypes = {
        Drop = true,
        Quest = true,
        Vendor = true,
        Crafted = true,
        Reputation = true,
        PvP = true,
        ["World Drop"] = true,
        Dungeon = true,
        Raid = true,
        ["World Boss"] = true,
        ["Rare Spawn"] = true,
        Event = true,
        Fishing = true,
    },
    
    -- Faction filter
    faction = nil, -- nil = both, "Alliance" or "Horde"
    
    -- Collection status filter
    showCollected = true,
    showUncollected = true,
    
    -- Node type filters for tree view
    nodeTypes = {
        continent = true,
        zone = true,
        subzone = true,
        instance = true,
        raid = true,
        boss = true,
        worldboss = true,
        npc = true,
        rare = true,
        vendor = true,
        quest = true,
        trash = true,
        category = true,
        profession = true,
        specialization = true,
    },
}

-- Reset all filters to default
function DB.ResetSearchFilters()
    DB.SearchFilters.searchText = ""
    DB.SearchFilters.minQuality = nil
    DB.SearchFilters.maxQuality = nil
    DB.SearchFilters.minLevel = nil
    DB.SearchFilters.maxLevel = nil
    DB.SearchFilters.faction = nil
    DB.SearchFilters.showCollected = true
    DB.SearchFilters.showUncollected = true
    
    for sourceType, _ in pairs(DB.SearchFilters.sourceTypes) do
        DB.SearchFilters.sourceTypes[sourceType] = true
    end
    
    for nodeType, _ in pairs(DB.SearchFilters.nodeTypes) do
        DB.SearchFilters.nodeTypes[nodeType] = true
    end
end

-- Set text search filter
function DB.SetSearchText(text)
    DB.SearchFilters.searchText = text or ""
end

-- Set quality range filter
function DB.SetQualityFilter(minQual, maxQual)
    DB.SearchFilters.minQuality = minQual
    DB.SearchFilters.maxQuality = maxQual
end

-- Set level range filter
function DB.SetLevelFilter(minLvl, maxLvl)
    DB.SearchFilters.minLevel = minLvl
    DB.SearchFilters.maxLevel = maxLvl
end

-- Toggle source type filter
function DB.ToggleSourceType(sourceType)
    if DB.SearchFilters.sourceTypes[sourceType] ~= nil then
        DB.SearchFilters.sourceTypes[sourceType] = not DB.SearchFilters.sourceTypes[sourceType]
    end
end

-- Set source type filter
function DB.SetSourceType(sourceType, enabled)
    if DB.SearchFilters.sourceTypes[sourceType] ~= nil then
        DB.SearchFilters.sourceTypes[sourceType] = enabled
    end
end

-- Toggle node type filter
function DB.ToggleNodeType(nodeType)
    if DB.SearchFilters.nodeTypes[nodeType] ~= nil then
        DB.SearchFilters.nodeTypes[nodeType] = not DB.SearchFilters.nodeTypes[nodeType]
    end
end

-- Check if item passes text search
function DB.PassesTextSearch(itemName)
    if not DB.SearchFilters.searchText or DB.SearchFilters.searchText == "" then
        return true
    end
    
    local searchLower = string.lower(DB.SearchFilters.searchText)
    local nameLower = string.lower(itemName or "")
    
    return string.find(nameLower, searchLower, 1, true) ~= nil
end

-- Check if item passes quality filter
function DB.PassesQualityFilter(quality)
    if DB.SearchFilters.minQuality and quality < DB.SearchFilters.minQuality then
        return false
    end
    if DB.SearchFilters.maxQuality and quality > DB.SearchFilters.maxQuality then
        return false
    end
    return true
end

-- Check if item passes level filter
function DB.PassesLevelFilter(level)
    if not level then return true end
    
    -- Handle level ranges like "1-10"
    local minLvl, maxLvl = level, level
    if type(level) == "string" then
        local _, _, l1, l2 = string.find(level, "(%d+)%-(%d+)")
        if l1 and l2 then
            minLvl = tonumber(l1)
            maxLvl = tonumber(l2)
        else
            minLvl = tonumber(level) or 0
            maxLvl = minLvl
        end
    end
    
    if DB.SearchFilters.minLevel and maxLvl < DB.SearchFilters.minLevel then
        return false
    end
    if DB.SearchFilters.maxLevel and minLvl > DB.SearchFilters.maxLevel then
        return false
    end
    return true
end

-- Check if source type passes filter
function DB.PassesSourceTypeFilter(sourceType)
    if not sourceType then return true end
    return DB.SearchFilters.sourceTypes[sourceType] ~= false
end

-- Check if node type passes filter
function DB.PassesNodeTypeFilter(nodeType)
    if not nodeType then return true end
    return DB.SearchFilters.nodeTypes[nodeType] ~= false
end

-- Check if faction passes filter
function DB.PassesFactionFilter(faction)
    if not DB.SearchFilters.faction then return true end
    if not faction or faction == "Both" then return true end
    return faction == DB.SearchFilters.faction
end

-- Full item filter check
function DB.PassesAllFilters(item, nodeType, faction, level)
    if not DB.PassesTextSearch(item.name) then return false end
    if not DB.PassesQualityFilter(item.quality or 1) then return false end
    if not DB.PassesNodeTypeFilter(nodeType) then return false end
    if not DB.PassesFactionFilter(faction) then return false end
    if not DB.PassesLevelFilter(level) then return false end
    return true
end

-- Search items in hierarchy tree
function DB.SearchHierarchy(searchText, filters)
    local results = {}
    
    if searchText then
        DB.SetSearchText(searchText)
    end
    
    -- Apply any additional filters
    if filters then
        if filters.minQuality then DB.SearchFilters.minQuality = filters.minQuality end
        if filters.maxQuality then DB.SearchFilters.maxQuality = filters.maxQuality end
        if filters.minLevel then DB.SearchFilters.minLevel = filters.minLevel end
        if filters.maxLevel then DB.SearchFilters.maxLevel = filters.maxLevel end
        if filters.faction then DB.SearchFilters.faction = filters.faction end
    end
    
    -- Recursive search function
    local function searchNode(node, nodeName, path, parentFaction, parentLevel)
        local currentPath = path and (path .. " > " .. nodeName) or nodeName
        local nodeFaction = node.faction or parentFaction
        local nodeLevel = node.level or parentLevel
        
        -- Check items in this node
        if node.items then
            for _, item in ipairs(node.items) do
                if DB.PassesAllFilters(item, node.type, nodeFaction, nodeLevel) then
                    table.insert(results, {
                        item = item,
                        path = currentPath,
                        nodeType = node.type,
                        faction = nodeFaction,
                        level = nodeLevel,
                    })
                end
            end
        end
        
        -- Recurse into children
        if node.children then
            for childName, childNode in pairs(node.children) do
                searchNode(childNode, childName, currentPath, nodeFaction, nodeLevel)
            end
        end
    end
    
    -- Start search from root nodes
    for rootName, rootNode in pairs(DB.HierarchyTree) do
        searchNode(rootNode, rootName, nil, nil, nil)
    end
    
    -- Sort results by path then by item name
    table.sort(results, function(a, b)
        if a.path == b.path then
            return (a.item.name or "") < (b.item.name or "")
        end
        return a.path < b.path
    end)
    
    return results
end

-- Get items by source type
function DB.GetItemsBySourceType(sourceType)
    local results = {}
    
    local function searchNode(node, nodeName, path)
        local currentPath = path and (path .. " > " .. nodeName) or nodeName
        
        -- Check if this node matches the source type
        local matchesType = false
        if sourceType == "Raid" and node.type == "raid" then matchesType = true end
        if sourceType == "Dungeon" and node.type == "instance" then matchesType = true end
        if sourceType == "World Boss" and node.type == "worldboss" then matchesType = true end
        if sourceType == "Rare Spawn" and node.type == "rare" then matchesType = true end
        if sourceType == "Vendor" and node.type == "vendor" then matchesType = true end
        if sourceType == "Quest" and node.type == "quest" then matchesType = true end
        if sourceType == "Drop" and (node.type == "boss" or node.type == "npc" or node.type == "trash") then matchesType = true end
        if sourceType == "Crafted" and node.type == "profession" then matchesType = true end
        
        if matchesType and node.items then
            for _, item in ipairs(node.items) do
                table.insert(results, {
                    item = item,
                    path = currentPath,
                    nodeType = node.type,
                })
            end
        end
        
        -- Recurse into children
        if node.children then
            for childName, childNode in pairs(node.children) do
                searchNode(childNode, childName, currentPath)
            end
        end
    end
    
    for rootName, rootNode in pairs(DB.HierarchyTree) do
        searchNode(rootNode, rootName, nil)
    end
    
    return results
end

-- Get items by quality
function DB.GetItemsByQuality(quality)
    local results = {}
    
    local function searchNode(node, nodeName, path)
        local currentPath = path and (path .. " > " .. nodeName) or nodeName
        
        if node.items then
            for _, item in ipairs(node.items) do
                if item.quality == quality then
                    table.insert(results, {
                        item = item,
                        path = currentPath,
                        nodeType = node.type,
                    })
                end
            end
        end
        
        if node.children then
            for childName, childNode in pairs(node.children) do
                searchNode(childNode, childName, currentPath)
            end
        end
    end
    
    for rootName, rootNode in pairs(DB.HierarchyTree) do
        searchNode(rootNode, rootName, nil)
    end
    
    return results
end

--------------------------------------------------------------------------------
-- FILTER PRESETS SYSTEM
-- Save and load custom filter combinations
--------------------------------------------------------------------------------

-- Default presets
DB.DefaultFilterPresets = {
    ["All Items"] = {
        searchText = "",
        minQuality = nil,
        maxQuality = nil,
        minLevel = nil,
        maxLevel = nil,
        faction = nil,
        showCollected = true,
        showUncollected = true,
        sourceTypes = nil, -- nil = all enabled
        nodeTypes = nil, -- nil = all enabled
    },
    
    ["Rare+ Only"] = {
        searchText = "",
        minQuality = 3,
        maxQuality = 5,
        minLevel = nil,
        maxLevel = nil,
        faction = nil,
        showCollected = true,
        showUncollected = true,
        sourceTypes = nil,
        nodeTypes = nil,
    },
    
    ["Epic+ Only"] = {
        searchText = "",
        minQuality = 4,
        maxQuality = 5,
        minLevel = nil,
        maxLevel = nil,
        faction = nil,
        showCollected = true,
        showUncollected = true,
        sourceTypes = nil,
        nodeTypes = nil,
    },
    
    ["Legendaries"] = {
        searchText = "",
        minQuality = 5,
        maxQuality = 5,
        minLevel = nil,
        maxLevel = nil,
        faction = nil,
        showCollected = true,
        showUncollected = true,
        sourceTypes = nil,
        nodeTypes = nil,
    },
    
    ["Raid Loot"] = {
        searchText = "",
        minQuality = 3,
        maxQuality = nil,
        minLevel = 55,
        maxLevel = nil,
        faction = nil,
        showCollected = true,
        showUncollected = true,
        sourceTypes = {
            Drop = false,
            Quest = false,
            Vendor = false,
            Crafted = false,
            Reputation = false,
            PvP = false,
            ["World Drop"] = false,
            Dungeon = false,
            Raid = true,
            ["World Boss"] = false,
            ["Rare Spawn"] = false,
            Event = false,
            Fishing = false,
        },
        nodeTypes = { raid = true, boss = true },
    },
    
    ["Dungeon Loot"] = {
        searchText = "",
        minQuality = 2,
        maxQuality = nil,
        minLevel = nil,
        maxLevel = nil,
        faction = nil,
        showCollected = true,
        showUncollected = true,
        sourceTypes = {
            Drop = false,
            Quest = false,
            Vendor = false,
            Crafted = false,
            Reputation = false,
            PvP = false,
            ["World Drop"] = false,
            Dungeon = true,
            Raid = false,
            ["World Boss"] = false,
            ["Rare Spawn"] = false,
            Event = false,
            Fishing = false,
        },
        nodeTypes = { instance = true, boss = true, trash = true },
    },
    
    ["World Bosses"] = {
        searchText = "",
        minQuality = 4,
        maxQuality = nil,
        minLevel = 60,
        maxLevel = nil,
        faction = nil,
        showCollected = true,
        showUncollected = true,
        sourceTypes = {
            Drop = false,
            Quest = false,
            Vendor = false,
            Crafted = false,
            Reputation = false,
            PvP = false,
            ["World Drop"] = false,
            Dungeon = false,
            Raid = false,
            ["World Boss"] = true,
            ["Rare Spawn"] = false,
            Event = false,
            Fishing = false,
        },
        nodeTypes = { worldboss = true },
    },
    
    ["Rare Spawns"] = {
        searchText = "",
        minQuality = 2,
        maxQuality = nil,
        minLevel = nil,
        maxLevel = nil,
        faction = nil,
        showCollected = true,
        showUncollected = true,
        sourceTypes = {
            Drop = false,
            Quest = false,
            Vendor = false,
            Crafted = false,
            Reputation = false,
            PvP = false,
            ["World Drop"] = false,
            Dungeon = false,
            Raid = false,
            ["World Boss"] = false,
            ["Rare Spawn"] = true,
            Event = false,
            Fishing = false,
        },
        nodeTypes = { rare = true },
    },
    
    ["Vendor Items"] = {
        searchText = "",
        minQuality = nil,
        maxQuality = nil,
        minLevel = nil,
        maxLevel = nil,
        faction = nil,
        showCollected = true,
        showUncollected = true,
        sourceTypes = {
            Drop = false,
            Quest = false,
            Vendor = true,
            Crafted = false,
            Reputation = false,
            PvP = false,
            ["World Drop"] = false,
            Dungeon = false,
            Raid = false,
            ["World Boss"] = false,
            ["Rare Spawn"] = false,
            Event = false,
            Fishing = false,
        },
        nodeTypes = { vendor = true },
    },
    
    ["Quest Rewards"] = {
        searchText = "",
        minQuality = nil,
        maxQuality = nil,
        minLevel = nil,
        maxLevel = nil,
        faction = nil,
        showCollected = true,
        showUncollected = true,
        sourceTypes = {
            Drop = false,
            Quest = true,
            Vendor = false,
            Crafted = false,
            Reputation = false,
            PvP = false,
            ["World Drop"] = false,
            Dungeon = false,
            Raid = false,
            ["World Boss"] = false,
            ["Rare Spawn"] = false,
            Event = false,
            Fishing = false,
        },
        nodeTypes = { quest = true },
    },
    
    ["Low Level (1-20)"] = {
        searchText = "",
        minQuality = nil,
        maxQuality = nil,
        minLevel = 1,
        maxLevel = 20,
        faction = nil,
        showCollected = true,
        showUncollected = true,
        sourceTypes = nil,
        nodeTypes = nil,
    },
    
    ["Mid Level (21-40)"] = {
        searchText = "",
        minQuality = nil,
        maxQuality = nil,
        minLevel = 21,
        maxLevel = 40,
        faction = nil,
        showCollected = true,
        showUncollected = true,
        sourceTypes = nil,
        nodeTypes = nil,
    },
    
    ["High Level (41-60)"] = {
        searchText = "",
        minQuality = nil,
        maxQuality = nil,
        minLevel = 41,
        maxLevel = 60,
        faction = nil,
        showCollected = true,
        showUncollected = true,
        sourceTypes = nil,
        nodeTypes = nil,
    },
    
    ["Endgame (60)"] = {
        searchText = "",
        minQuality = 3,
        maxQuality = nil,
        minLevel = 60,
        maxLevel = nil,
        faction = nil,
        showCollected = true,
        showUncollected = true,
        sourceTypes = nil,
        nodeTypes = nil,
    },
    
    ["Alliance Only"] = {
        searchText = "",
        minQuality = nil,
        maxQuality = nil,
        minLevel = nil,
        maxLevel = nil,
        faction = "Alliance",
        showCollected = true,
        showUncollected = true,
        sourceTypes = nil,
        nodeTypes = nil,
    },
    
    ["Horde Only"] = {
        searchText = "",
        minQuality = nil,
        maxQuality = nil,
        minLevel = nil,
        maxLevel = nil,
        faction = "Horde",
        showCollected = true,
        showUncollected = true,
        sourceTypes = nil,
        nodeTypes = nil,
    },
    
    ["Uncollected Only"] = {
        searchText = "",
        minQuality = nil,
        maxQuality = nil,
        minLevel = nil,
        maxLevel = nil,
        faction = nil,
        showCollected = false,
        showUncollected = true,
        sourceTypes = nil,
        nodeTypes = nil,
    },
}

-- User-saved presets (stored in SavedVariables)
DB.UserFilterPresets = {}

-- Load a filter preset
function DB.LoadFilterPreset(presetName)
    local preset = DB.UserFilterPresets[presetName] or DB.DefaultFilterPresets[presetName]
    if not preset then
        return false, "Preset not found: " .. presetName
    end
    
    -- Apply preset values
    DB.SearchFilters.searchText = preset.searchText or ""
    DB.SearchFilters.minQuality = preset.minQuality
    DB.SearchFilters.maxQuality = preset.maxQuality
    DB.SearchFilters.minLevel = preset.minLevel
    DB.SearchFilters.maxLevel = preset.maxLevel
    DB.SearchFilters.faction = preset.faction
    DB.SearchFilters.showCollected = preset.showCollected ~= false
    DB.SearchFilters.showUncollected = preset.showUncollected ~= false
    
    -- Apply source type filters
    if preset.sourceTypes then
        for sourceType, _ in pairs(DB.SearchFilters.sourceTypes) do
            DB.SearchFilters.sourceTypes[sourceType] = preset.sourceTypes[sourceType] ~= false
        end
    else
        -- Enable all source types
        for sourceType, _ in pairs(DB.SearchFilters.sourceTypes) do
            DB.SearchFilters.sourceTypes[sourceType] = true
        end
    end
    
    -- Apply node type filters
    if preset.nodeTypes then
        -- First disable all, then enable specified ones
        for nodeType, _ in pairs(DB.SearchFilters.nodeTypes) do
            DB.SearchFilters.nodeTypes[nodeType] = preset.nodeTypes[nodeType] == true
        end
    else
        -- Enable all node types
        for nodeType, _ in pairs(DB.SearchFilters.nodeTypes) do
            DB.SearchFilters.nodeTypes[nodeType] = true
        end
    end
    
    return true, "Loaded preset: " .. presetName
end

-- Save current filters as a preset
function DB.SaveFilterPreset(presetName)
    if not presetName or presetName == "" then
        return false, "Preset name required"
    end
    
    -- Don't overwrite default presets
    if DB.DefaultFilterPresets[presetName] then
        return false, "Cannot overwrite default preset"
    end
    
    -- Create a deep copy of current filters
    local preset = {
        searchText = DB.SearchFilters.searchText,
        minQuality = DB.SearchFilters.minQuality,
        maxQuality = DB.SearchFilters.maxQuality,
        minLevel = DB.SearchFilters.minLevel,
        maxLevel = DB.SearchFilters.maxLevel,
        faction = DB.SearchFilters.faction,
        showCollected = DB.SearchFilters.showCollected,
        showUncollected = DB.SearchFilters.showUncollected,
        sourceTypes = {},
        nodeTypes = {},
    }
    
    -- Copy source type filters
    for sourceType, enabled in pairs(DB.SearchFilters.sourceTypes) do
        preset.sourceTypes[sourceType] = enabled
    end
    
    -- Copy node type filters
    for nodeType, enabled in pairs(DB.SearchFilters.nodeTypes) do
        preset.nodeTypes[nodeType] = enabled
    end
    
    DB.UserFilterPresets[presetName] = preset
    return true, "Saved preset: " .. presetName
end

-- Delete a user preset
function DB.DeleteFilterPreset(presetName)
    if DB.DefaultFilterPresets[presetName] then
        return false, "Cannot delete default preset"
    end
    
    if not DB.UserFilterPresets[presetName] then
        return false, "Preset not found: " .. presetName
    end
    
    DB.UserFilterPresets[presetName] = nil
    return true, "Deleted preset: " .. presetName
end

-- Get list of all preset names
function DB.GetFilterPresetNames()
    local names = {}
    
    -- Add default presets
    for name, _ in pairs(DB.DefaultFilterPresets) do
        table.insert(names, { name = name, isDefault = true })
    end
    
    -- Add user presets
    for name, _ in pairs(DB.UserFilterPresets) do
        table.insert(names, { name = name, isDefault = false })
    end
    
    -- Sort alphabetically
    table.sort(names, function(a, b)
        return a.name < b.name
    end)
    
    return names
end

-- Get current filter summary text
function DB.GetFilterSummary()
    local parts = {}
    
    if DB.SearchFilters.searchText and DB.SearchFilters.searchText ~= "" then
        table.insert(parts, "Text: \"" .. DB.SearchFilters.searchText .. "\"")
    end
    
    if DB.SearchFilters.minQuality or DB.SearchFilters.maxQuality then
        local minQ = DB.SearchFilters.minQuality or 0
        local maxQ = DB.SearchFilters.maxQuality or 5
        local minName = DB.QualityLevels[minQ] and DB.QualityLevels[minQ].name or "?"
        local maxName = DB.QualityLevels[maxQ] and DB.QualityLevels[maxQ].name or "?"
        if minQ == maxQ then
            table.insert(parts, "Quality: " .. minName)
        else
            table.insert(parts, "Quality: " .. minName .. " - " .. maxName)
        end
    end
    
    if DB.SearchFilters.minLevel or DB.SearchFilters.maxLevel then
        local minL = DB.SearchFilters.minLevel or 1
        local maxL = DB.SearchFilters.maxLevel or 60
        if minL == maxL then
            table.insert(parts, "Level: " .. minL)
        else
            table.insert(parts, "Level: " .. minL .. "-" .. maxL)
        end
    end
    
    if DB.SearchFilters.faction then
        table.insert(parts, "Faction: " .. DB.SearchFilters.faction)
    end
    
    if table.getn(parts) == 0 then
        return "No filters active"
    end
    
    return table.concat(parts, ", ")
end

--------------------------------------------------------------------------------
-- TREE NAVIGATION HELPERS
--------------------------------------------------------------------------------

-- Expanded state tracking
DB.TreeExpandedState = {}

-- Toggle node expanded state
function DB.ToggleNodeExpanded(path)
    DB.TreeExpandedState[path] = not DB.TreeExpandedState[path]
end

-- Check if node is expanded
function DB.IsNodeExpanded(path)
    return DB.TreeExpandedState[path] == true
end

-- Expand all nodes
function DB.ExpandAllNodes()
    local function expandAll(node, nodeName, path)
        local currentPath = path and (path .. ">" .. nodeName) or nodeName
        DB.TreeExpandedState[currentPath] = true
        
        if node.children then
            for childName, childNode in pairs(node.children) do
                expandAll(childNode, childName, currentPath)
            end
        end
    end
    
    for rootName, rootNode in pairs(DB.HierarchyTree) do
        expandAll(rootNode, rootName, nil)
    end
end

-- Collapse all nodes
function DB.CollapseAllNodes()
    DB.TreeExpandedState = {}
end

-- Get flat list of visible tree nodes for display
function DB.GetFlatTreeView()
    local result = {}
    
    local function addNode(node, nodeName, path, depth)
        local currentPath = path and (path .. ">" .. nodeName) or nodeName
        
        -- Check if this node passes filters
        if not DB.PassesNodeTypeFilter(node.type) then
            return
        end
        
        -- Check faction filter
        if node.faction and not DB.PassesFactionFilter(node.faction) then
            return
        end
        
        -- Count items that pass filters
        local itemCount = 0
        if node.items then
            for _, item in ipairs(node.items) do
                if DB.PassesAllFilters(item, node.type, node.faction, node.level) then
                    itemCount = itemCount + 1
                end
            end
        end
        
        -- Count children
        local childCount = 0
        if node.children then
            for _, _ in pairs(node.children) do
                childCount = childCount + 1
            end
        end
        
        -- Add this node to result
        table.insert(result, {
            name = nodeName,
            path = currentPath,
            depth = depth,
            type = node.type,
            level = node.level,
            faction = node.faction,
            hasChildren = childCount > 0,
            hasItems = node.items ~= nil,
            itemCount = itemCount,
            childCount = childCount,
            isExpanded = DB.IsNodeExpanded(currentPath),
            icon = DB.NodeTypeIcons[node.type],
            node = node,
        })
        
        -- If expanded, add children
        if DB.IsNodeExpanded(currentPath) and node.children then
            -- Sort children by name
            local sortedChildren = {}
            for childName, childNode in pairs(node.children) do
                table.insert(sortedChildren, { name = childName, node = childNode })
            end
            table.sort(sortedChildren, function(a, b) return a.name < b.name end)
            
            for _, child in ipairs(sortedChildren) do
                addNode(child.node, child.name, currentPath, depth + 1)
            end
        end
        
        -- If expanded and has items, add items
        if DB.IsNodeExpanded(currentPath) and node.items and itemCount > 0 then
            for _, item in ipairs(node.items) do
                if DB.PassesAllFilters(item, node.type, node.faction, node.level) then
                    table.insert(result, {
                        name = item.name,
                        path = currentPath .. ">" .. item.name,
                        depth = depth + 1,
                        type = "item",
                        isItem = true,
                        itemId = item.id,
                        quality = item.quality,
                        dropRate = item.dropRate,
                        cost = item.cost,
                        icon = "Interface\\Icons\\INV_Misc_QuestionMark", -- Will be replaced by actual icon
                    })
                end
            end
        end
    end
    
    -- Sort root nodes
    local sortedRoots = {}
    for rootName, rootNode in pairs(DB.HierarchyTree) do
        table.insert(sortedRoots, { name = rootName, node = rootNode })
    end
    table.sort(sortedRoots, function(a, b) return a.name < b.name end)
    
    -- Start from root nodes
    for _, root in ipairs(sortedRoots) do
        addNode(root.node, root.name, nil, 0)
    end
    
    return result
end

-- Get path to specific item in tree
function DB.FindItemInTree(itemId)
    local function searchNode(node, nodeName, path)
        local currentPath = path and (path .. ">" .. nodeName) or nodeName
        
        if node.items then
            for _, item in ipairs(node.items) do
                if item.id == itemId then
                    return currentPath, item
                end
            end
        end
        
        if node.children then
            for childName, childNode in pairs(node.children) do
                local foundPath, foundItem = searchNode(childNode, childName, currentPath)
                if foundPath then
                    return foundPath, foundItem
                end
            end
        end
        
        return nil, nil
    end
    
    for rootName, rootNode in pairs(DB.HierarchyTree) do
        local path, item = searchNode(rootNode, rootName, nil)
        if path then
            return path, item
        end
    end
    
    return nil, nil
end

-- Expand path to item
function DB.ExpandPathToItem(itemId)
    local path, item = DB.FindItemInTree(itemId)
    if not path then return false end
    
    -- Expand all nodes in path
    local parts = {}
    for part in string.gfind(path, "[^>]+") do
        table.insert(parts, part)
    end
    
    local currentPath = ""
    for i, part in ipairs(parts) do
        if i == 1 then
            currentPath = part
        else
            currentPath = currentPath .. ">" .. part
        end
        DB.TreeExpandedState[currentPath] = true
    end
    
    return true, path
end

-- DEBUG: Track file loading completion
if DEFAULT_CHAT_FRAME then
    local mountCats = 0
    if DB.Mounts then
        if DB.Mounts.Epic60Alliance then mountCats = mountCats + 1 end
        if DB.Mounts.Epic100Alliance then mountCats = mountCats + 1 end
        if DB.Mounts.Epic60Horde then mountCats = mountCats + 1 end
        if DB.Mounts.Epic100Horde then mountCats = mountCats + 1 end
        if DB.Mounts.Special then mountCats = mountCats + 1 end
    end
    DEFAULT_CHAT_FRAME:AddMessage("|cFF00FF00[VTT] LootDatabase.lua FINISHED! Mount categories: " .. mountCats .. "|r")
end
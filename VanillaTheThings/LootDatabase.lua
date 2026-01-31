--------------------------------------------------------------------------------
--                        V A N I L L A   T H E   T H I N G S                 --
--                   Comprehensive Loot Database (1.12.1)                     --
--------------------------------------------------------------------------------
-- Contains loot tables, vendor data, quest rewards for vanilla WoW
-- Item quality: 0=Poor, 1=Common, 2=Uncommon, 3=Rare, 4=Epic, 5=Legendary
--------------------------------------------------------------------------------

local DB = VanillaTheThings_DB

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

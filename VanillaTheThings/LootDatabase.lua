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

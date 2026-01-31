# VanillaTheThings

<p align="center">
  <img src="https://img.shields.io/badge/WoW-1.12.1-orange?style=for-the-badge" alt="WoW Version">
  <img src="https://img.shields.io/badge/Interface-11200-blue?style=for-the-badge" alt="Interface Version">
  <img src="https://img.shields.io/badge/Version-1.0.0-green?style=for-the-badge" alt="Addon Version">
</p>

A comprehensive collection tracker addon for **World of Warcraft 1.12.1 (Vanilla)**. Track your quests, reputations, recipes, exploration progress, flight paths, items, and more across all your characters!

---

## 📋 Table of Contents

- [Features](#-features)
- [Screenshots](#-screenshots)
- [Installation](#-installation)
- [Usage](#-usage)
- [Slash Commands](#-slash-commands)
- [Tracking Categories](#-tracking-categories)
- [Database Content](#-database-content)
- [File Structure](#-file-structure)
- [Saved Variables](#-saved-variables)
- [Compatibility](#-compatibility)
- [Known Limitations](#-known-limitations)
- [Contributing](#-contributing)
- [Credits](#-credits)
- [License](#-license)

---

## ✨ Features

### Collection Tracking
| Category | Description |
|----------|-------------|
| **Quests** | Track completed quests across all your characters (account-wide) |
| **Reputations** | Monitor faction standings and progress toward Exalted |
| **Professions** | View primary and secondary profession skill progress |
| **Recipes** | Track learned recipes across all crafting professions |
| **Exploration** | Track discovered zones and subzones |
| **Flight Paths** | Monitor unlocked flight points for each faction |
| **Items** | Track collected items of interest (raid drops, legendaries, etc.) |
| **Statistics** | Death count, play time, and other statistics |

### Reference Database
- **26 Dungeons** - Complete list with level ranges, locations, and faction requirements
- **7 Raids** - All vanilla raids from Onyxia to Naxxramas
- **6 World Bosses** - Kazzak, Azuregos, and the Dragons of Nightmare
- **Tier Sets** - Tier 1, Tier 2, and Tier 2.5 loot information
- **Legendary Items** - Thunderfury, Sulfuras, Atiesh, and more
- **Mount Drops** - Rare mount drop locations

### User Interface
| Component | Description |
|-----------|-------------|
| **Main Window** | Full collection browser with expandable categories and progress bars |
| **Mini List** | Compact, zone-specific list showing relevant content for your area |
| **Tracker** | Always-visible floating tracker for quick reference |
| **Minimap Button** | Draggable button for quick access to all windows |
| **Settings Panel** | Customize tracking options, filters, and display preferences |
| **Search** | Find items, quests, and recipes across your collection data |
| **Tooltips** | Enhanced hover information with source details and progress |

### Quality of Life
- 🎨 **Progress color coding** - Red → Orange → Yellow → Green based on completion
- 📊 **Account-wide tracking** - See progress across all characters
- 💾 **Automatic saving** - Your progress is saved automatically
- 🔄 **Data refresh** - Update all collection data on demand
- 🎯 **Class-colored text** - Character names shown in class colors

---

## 📸 Screenshots

*Coming soon!*

---

## 📦 Installation

### Manual Installation

1. **Download** the latest release or clone this repository

2. **Copy** the `VanillaTheThings` folder to your WoW AddOns directory:
   ```
   Windows: C:\Program Files\World of Warcraft\Interface\AddOns\
   macOS:   /Applications/World of Warcraft/Interface/AddOns/
   Linux:   ~/.wine/drive_c/.../World of Warcraft/Interface/AddOns/
   ```

3. **Verify** folder structure - should look like:
   ```
   Interface/AddOns/VanillaTheThings/VanillaTheThings.toc
   Interface/AddOns/VanillaTheThings/VanillaTheThings.lua
   ... etc
   ```

4. **Restart WoW** or type `/reload` if already in-game

5. **Enable** the addon in the character select screen AddOns menu

---

## 🎮 Usage

### Opening the Main Window
- Click the **minimap button** (VTT icon)
- Type `/vtt` in chat
- Use the keybinding (if set)

### Navigation
- **Left-click** a category to expand/collapse
- **Right-click** an item for additional options
- **Scroll** to navigate long lists
- **Drag** the minimap button to reposition it

### Mini List
The Mini List shows content relevant to your current zone:
- Quests available in your area
- Nearby dungeon entrances
- Zone-specific reputations
- Local flight paths

### Tracker
The always-visible tracker shows:
- Current zone progress
- Active quest count
- Quick statistics

---

## ⌨️ Slash Commands

| Command | Description |
|---------|-------------|
| `/vtt` | Toggle main window |
| `/vtt mini` | Toggle mini list for current zone |
| `/vtt tracker` | Toggle always-visible tracker |
| `/vtt mounts` | Toggle mount collection window |
| `/vtt pets` | Toggle pet collection window |
| `/vtt settings` | Open settings panel |
| `/vtt refresh` | Refresh all collection data |
| `/vtt reset` | Reset window positions to default |
| `/vtt search <text>` | Search the database |
| `/vtt stats` | Display statistics summary |
| `/vtt debug` | Toggle debug mode |

**Alternative command:** `/vanillathethings`

---

## 🐎 Mount & Pet Collections (NEW!)

### Mount Collection
- Dedicated window showing all available mounts
- Tracks collected/missing status per character
- Shows cost information (gold, reputation requirements)
- Includes all racial mounts (60% and 100% speed)
- PvP mounts with rank requirements
- Special mounts (ZG tiger/raptor, Baron's mount, AQ mounts)
- Class mounts (Paladin/Warlock)

### Pet Collection
- Dedicated window for companion pets
- Vendor pets with costs and locations
- Quest reward pets
- Drop pets with locations and rates
- Holiday event pets
- Rare/special pets (Collector's Edition, etc.)

---

## 💰 Cost & Currency Tracking (NEW!)

Items now show detailed cost information in tooltips:
- **Gold costs** for vendor items
- **Honor points** for PvP gear
- **Battleground marks** (AB, AV, WSG)
- **Reputation tokens** (Zandalar, Argent Dawn, Cenarion)
- **Reputation requirements** with standing needed
- **PvP rank requirements** for rank 11-14 gear

---

## 🔗 Source Chain System (NEW!)

Track the complete origin chain for items:
- **Drop information:** "Drops from Ragnaros in Molten Core (10% drop rate)"
- **Crafting chains:** Shows all materials and where to get them
- **Quest chains:** Full quest line requirements
- **Material sources:** Where to farm components

Works for legendary items (Thunderfury, Sulfuras), raid gear, dungeon epics, and crafted items.

---

## 📊 Tracking Categories

### Quests
- Quests are tracked when completed (detected via chat message)
- Stored by name hash (1.12.1 has no reliable quest ID system)
- Account-wide tracking shows which character completed each quest

### Reputations
- All faction standings tracked per character
- Progress bars show current standing and progress to next level
- Highlights when Exalted is reached

### Professions
| Type | Professions |
|------|-------------|
| **Primary** | Alchemy, Blacksmithing, Enchanting, Engineering, Herbalism, Leatherworking, Mining, Skinning, Tailoring |
| **Secondary** | Cooking, First Aid, Fishing |

### Recipes
- Automatically tracked when learned
- Sorted by profession
- Shows source information when available

### Flight Paths
- Detected when discovered
- Faction-specific paths tracked separately
- Shows total discovered vs available

### Exploration
- Zone discoveries tracked via chat messages
- Subzone tracking supported
- Completion percentage per continent

---

## 📚 Database Content

### Dungeons (26 total)
| Dungeon | Level | Players | Location |
|---------|-------|---------|----------|
| Ragefire Chasm | 13-18 | 5 | Orgrimmar |
| The Deadmines | 17-26 | 5 | Westfall |
| Wailing Caverns | 17-24 | 5 | The Barrens |
| Shadowfang Keep | 22-30 | 5 | Silverpine Forest |
| Blackfathom Deeps | 24-32 | 5 | Ashenvale |
| The Stockade | 24-32 | 5 | Stormwind City |
| Gnomeregan | 29-38 | 5 | Dun Morogh |
| Razorfen Kraul | 29-38 | 5 | The Barrens |
| Scarlet Monastery (4 wings) | 28-45 | 5 | Tirisfal Glades |
| Razorfen Downs | 37-46 | 5 | The Barrens |
| Uldaman | 41-51 | 5 | Badlands |
| Zul'Farrak | 44-54 | 5 | Tanaris |
| Maraudon | 46-55 | 5 | Desolace |
| Temple of Atal'Hakkar | 50-56 | 5 | Swamp of Sorrows |
| Blackrock Depths | 52-60 | 5 | Blackrock Mountain |
| Lower Blackrock Spire | 55-60 | 10 | Blackrock Mountain |
| Upper Blackrock Spire | 58-60 | 15 | Blackrock Mountain |
| Dire Maul (3 wings) | 56-60 | 5 | Feralas |
| Stratholme (2 sides) | 58-60 | 5 | Eastern Plaguelands |
| Scholomance | 58-60 | 5 | Western Plaguelands |

### Raids (7 total)
| Raid | Players | Location |
|------|---------|----------|
| Onyxia's Lair | 40 | Dustwallow Marsh |
| Molten Core | 40 | Blackrock Mountain |
| Blackwing Lair | 40 | Blackrock Mountain |
| Zul'Gurub | 20 | Stranglethorn Vale |
| Ruins of Ahn'Qiraj | 20 | Silithus |
| Temple of Ahn'Qiraj | 40 | Silithus |
| Naxxramas | 40 | Eastern Plaguelands |

### World Bosses
- **Lord Kazzak** - Blasted Lands
- **Azuregos** - Azshara
- **Dragons of Nightmare** - Emeriss, Lethon, Taerar, Ysondre (Various locations)

### Legendary Items
- ⚔️ **Thunderfury, Blessed Blade of the Windseeker** - Bindings from Molten Core
- 🔨 **Sulfuras, Hand of Ragnaros** - Eye of Sulfuras + Crafting
- 🏇 **Black Qiraji Resonating Crystal** - AQ War Effort reward
- 🔮 **Atiesh, Greatstaff of the Guardian** - 40 Splinters from Naxxramas

---

## 📁 File Structure

```
VanillaTheThings/
├── VanillaTheThings.toc    # Addon metadata and load order
├── VanillaTheThings.xml    # XML load order specification
├── VanillaTheThings.lua    # Core addon logic and event handling
├── UI.lua                  # Window management, rows, and display
├── Windows.xml             # UI frame templates and layouts
├── Localization.lua        # UI strings, colors, and translations
├── Database.lua            # Static game data (dungeons, raids, factions)
├── LootDatabase.lua        # Item data, loot tables, and sources
└── README.md               # This file
```

### File Descriptions

| File | Lines | Purpose |
|------|-------|---------|
| `VanillaTheThings.lua` | ~1400 | Core logic, event handlers, slash commands, tracking functions |
| `UI.lua` | ~2700 | Main window, mini list, tracker, settings, tooltips |
| `Database.lua` | ~500 | Zones, dungeons, raids, world bosses, professions, factions |
| `LootDatabase.lua` | ~670 | Raid loot, legendary items, tier sets, mount drops |
| `Localization.lua` | ~210 | All display strings, colors, translations |
| `Windows.xml` | - | Frame templates, button templates, scroll frames |

---

## 💾 Saved Variables

### Account-Wide (`VanillaTheThingsDB`)
```lua
{
    completedQuests = {},    -- Quest name hashes with completion data
    collectedItems = {},     -- Item IDs with collection data
    learnedRecipes = {},     -- Recipe IDs with learn data
    exploredAreas = {},      -- Zone names/IDs with discovery data
    knownFlightPaths = {},   -- Flight path names with discovery data
    earnedReputations = {},  -- Faction standings per character
    settings = {             -- User preferences
        minimap = { show, position, radius },
        tooltips = { enable, showProgress, showSource },
        tracking = { quests, reputations, exploration, ... },
        filters = { showCompleted, showCollected, showUnavailable },
        modes = { debug, account },
        windows = { main, mini },
        tracker = { show, x, y },
    },
    characters = {},         -- Character data (name, class, level, etc.)
    statistics = {},         -- Deaths, quests completed, etc.
}
```

### Per-Character (`VanillaTheThingsCharDB`)
```lua
{
    name = "",              -- Character name
    realm = "",             -- Realm name
    class = "",             -- Class (WARRIOR, MAGE, etc.)
    race = "",              -- Race
    faction = "",           -- Alliance/Horde
    level = 1,              -- Current level
    money = 0,              -- Current gold
    questLog = {},          -- Current quest log
    reputations = {},       -- Current rep standings
    professions = {},       -- Current profession data
    skills = {},            -- All skills
    completedQuests = {},   -- Quests completed on this character
    deaths = 0,             -- Death count
    playTime = 0,           -- Play time
}
```

---

## ⚙️ Compatibility

### Requirements
| Requirement | Version |
|-------------|---------|
| World of Warcraft | **1.12.1** |
| Interface Version | **11200** |
| Lua Version | **5.0** |

### 1.12.1 Lua Limitations
This addon is specifically written for WoW 1.12.1's Lua 5.0 environment:

| ❌ NOT Available | ✅ Used Instead |
|------------------|-----------------|
| `...` (varargs) | `arg` table |
| `string.match()` | `string.find()` with captures |
| `string.gmatch()` | `string.gfind()` |
| `select()` | Manual argument handling |
| `#table` (length) | `table.getn(t)` |
| `wipe()` | Custom implementation |
| `C_*` APIs | Classic API functions |

### What's NOT in Vanilla WoW
- No achievements system
- No mount/pet journal
- No transmog/wardrobe
- No LFG/LFR system
- No quest IDs in API
- No automatic quest tracking API

---

## ⚠️ Known Limitations

### Quest Detection
- **Issue**: WoW 1.12.1 has no API for checking quest completion status
- **Solution**: Quests are detected as complete via chat message parsing
- **Note**: If you complete a quest with the addon disabled, it won't be tracked

### Quest Identification
- **Issue**: No reliable quest ID system in 1.12.1
- **Solution**: Quests tracked by name hash (may have rare collisions)

### Exploration Tracking
- **Issue**: No exploration completion API
- **Solution**: Zone discoveries detected via chat messages ("Discovered: Zone Name")

### Recipe Detection
- **Issue**: Cannot scan tradeskill windows automatically in all cases
- **Solution**: Recipes tracked when learned (via chat message)

### Historical Data
- **Issue**: Cannot import data from before addon installation
- **Solution**: Start fresh - the addon tracks from installation onward

---

## 🤝 Contributing

Contributions are welcome! Here's how you can help:

1. **Report Bugs** - Open an issue with reproduction steps
2. **Suggest Features** - Open an issue with your idea
3. **Submit PRs** - Fork, branch, commit, and open a pull request

### Development Guidelines
- Test on WoW 1.12.1 client only
- Use Lua 5.0 compatible syntax
- Follow existing code style
- Comment complex logic

---

## 👏 Credits

- **Original AllTheThings** - Inspired by the retail WoW addon by Crieve
- **1.12.1 Port** - Adapted for vanilla WoW compatibility
- **Data Sources** - Classic WoW databases and wikis

---

## 📄 License

This project is released for the World of Warcraft 1.12.1 community.

---

<p align="center">
  <b>Happy collecting!</b><br>
  <i>Track everything. Miss nothing.</i>
</p>

## Credits

- Original AllTheThings by Crieve-Sargeras
- 1.12.1 port adapted for vanilla compatibility

## Version History

### 1.12.1-2.0.0
- Complete rewrite for WoW 1.12.1 compatibility
- Full Lua 5.0 compatible code
- Comprehensive tracking features
- Modular file structure
- Settings panel
- Search functionality
- Mini list window for current zone

## License

This addon follows the same license as the original AllTheThings project.

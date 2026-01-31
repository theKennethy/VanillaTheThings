# AllTheThings - WoW 1.12.1 Edition

A comprehensive collection tracker for World of Warcraft 1.12.1 (Vanilla).

## Features

This addon tracks your progress across many collection types available in vanilla WoW:

### Tracking Features
- **Quests** - Track completed quests across your account
- **Reputations** - Monitor faction standings and progress to Exalted
- **Professions** - View primary and secondary profession progress
- **Recipes** - Track learned recipes across all crafting professions
- **Exploration** - Track discovered zones and areas
- **Flight Paths** - Monitor unlocked flight paths
- **Items** - Track collected items of interest
- **Dungeons** - Reference list of all vanilla dungeons with level ranges
- **Raids** - Reference list of all vanilla raids
- **World Bosses** - Reference list of world boss encounters

### User Interface
- **Main Window** - Full collection browser with expandable categories
- **Mini List** - Compact zone-specific list showing relevant content
- **Minimap Button** - Quick access to open windows (draggable)
- **Settings Panel** - Customize tracking and display options
- **Search** - Find items across your collection data
- **Tooltips** - Hover info for detailed item information

## Slash Commands

- `/att` or `/allthethings` - Toggle main window
- `/att mini` - Toggle mini list window
- `/att settings` - Open settings panel
- `/att refresh` - Refresh all data
- `/att reset` - Reset window positions
- `/att search <text>` - Search collections
- `/att stats` - Show statistics summary
- `/att debug` - Toggle debug mode
- `/att help` - Show all commands

## Installation

1. Copy the `AllTheThings_1.12.1` folder to your WoW 1.12.1 AddOns directory:
   - Windows: `World of Warcraft\Interface\AddOns\`
   - Mac: `World of Warcraft/Interface/AddOns/`

2. Rename the folder to `AllTheThings` (remove the `_1.12.1` suffix)

3. Restart WoW or type `/reload` if already in-game

## File Structure

```
AllTheThings/
├── AllTheThings.toc     # Addon metadata
├── AllTheThings.xml     # Load order specification
├── Localization.lua     # UI strings and translations
├── Database.lua         # Static game data (dungeons, raids, etc.)
├── AllTheThings.lua     # Core addon logic
├── UI.lua               # Window management and list display
└── Windows.xml          # UI frame templates
```

## Saved Variables

- `AllTheThingsDB` - Account-wide saved data
  - Completed quests
  - Collected items
  - Learned recipes
  - Explored areas
  - Known flight paths
  - Settings
  - Character list

- `AllTheThingsCharDB` - Per-character data
  - Character info (name, class, level, etc.)
  - Current profession data
  - Death count

## Compatibility

This addon is specifically designed for:
- **WoW Version**: 1.12.1 (Interface: 11200)
- **Lua Version**: 5.0 (NOT 5.1+)

Key differences from modern WoW:
- Uses Lua 5.0 syntax (no `...` varargs, `string.match`, `select()`, etc.)
- No C_API functions (C_Map, C_QuestLog, etc.)
- No achievements system
- No mount/pet journal
- No transmog system
- No LFG system

## Known Limitations

1. **Quest Completion Detection**: Since 1.12.1 has no quest completion API, completed quests are detected via chat message parsing
2. **Quest IDs**: Quests are tracked by name hash since there's no reliable quest ID system
3. **Exploration**: Zone discovery is detected via chat messages
4. **No Automatic Data**: Unlike modern ATT, this version cannot automatically populate what's collectible - it tracks what you discover

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

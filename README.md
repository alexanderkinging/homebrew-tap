# Homebrew Tap for Obsidian CLI Tools

Official Homebrew tap for [Obsidian Official CLI](https://github.com/alexanderkinging/obsidian-official-cli) tools.

## Installation

```bash
# Add tap
brew tap alexanderkinging/tap

# Install Obsidian CLI Helper
brew install obsidian-cli-helper
```

## Quick Start

```bash
# Create daily note
obs-helper daily

# Add content to daily note
obs-helper daily-add "## Tasks\n- [ ] Review code"

# Create new note
obs-helper note-create "Meeting Notes" "# Meeting\n\nNotes here"

# Search notes
obs-helper search "project"

# List tasks
obs-helper tasks

# Show help
obs-helper help
```

## Prerequisites

- **Obsidian 1.12+** with Catalyst license ($25 one-time)
- **Enable CLI** in Obsidian: Settings → General → Enable CLI
- **Obsidian must be running** (CLI connects via IPC)

## Available Formulae

### obsidian-cli-helper

Simplified CLI wrapper for AI agents (Claude, Codex, Cursor, Windsurf, etc.)

**Commands:**
- `obs-helper daily` - Create/open daily note
- `obs-helper daily-add "content"` - Add to daily note
- `obs-helper note-create "name" "content"` - Create note
- `obs-helper note-read "name"` - Read note
- `obs-helper search "query"` - Search notes
- `obs-helper tasks` - List incomplete tasks
- `obs-helper task-toggle <line>` - Toggle task completion
- `obs-helper help` - Show help

## For AI Agents

### Claude Desktop

Add to `~/Library/Application Support/Claude/claude_desktop_config.json`:

```json
{
  "mcpServers": {
    "obsidian": {
      "command": "obs-helper",
      "args": []
    }
  }
}
```

### Codex

Add to `~/.codex/config.toml`:

```toml
[tools.obsidian]
command = "obs-helper"
description = "Obsidian CLI helper"
enabled = true
```

### Cursor / Windsurf

Use directly in chat - no configuration needed!

## Documentation

- **Quick Reference**: [OBSIDIAN_CLI_QUICK_REF.md](https://github.com/alexanderkinging/obsidian-official-cli/blob/master/docs/OBSIDIAN_CLI_QUICK_REF.md)
- **Full Documentation**: [SKILL.md](https://github.com/alexanderkinging/obsidian-official-cli/blob/master/SKILL.md)
- **GitHub**: https://github.com/alexanderkinging/obsidian-official-cli
- **ClawHub**: https://clawhub.ai/obsidian-cli-official

## Troubleshooting

### "Cannot connect to Obsidian"
- Ensure Obsidian is running
- Enable CLI in Settings → General → Enable CLI

### "Command not found: obs-helper"
```bash
# Reinstall
brew reinstall obsidian-cli-helper

# Check installation
which obs-helper
```

### "File not found"
- Use `file=<name>` for wikilink-style resolution (no path, no .md)
- Use `path=<path>` for exact paths (include folder and .md)

## Support

- **Issues**: https://github.com/alexanderkinging/obsidian-official-cli/issues
- **Discussions**: https://github.com/alexanderkinging/obsidian-official-cli/discussions

## License

MIT License - see [LICENSE](https://github.com/alexanderkinging/obsidian-official-cli/blob/master/LICENSE)

---

**Maintained by**: [alexanderkinging](https://github.com/alexanderkinging)

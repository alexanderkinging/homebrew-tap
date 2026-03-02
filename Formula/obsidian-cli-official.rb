class ObsidianCliOfficial < Formula
  desc "Official Obsidian CLI wrapper for AI agents"
  homepage "https://github.com/alexanderkinging/obsidian-official-cli"
  url "https://github.com/alexanderkinging/obsidian-official-cli/archive/refs/tags/v4.0.0.tar.gz"
  sha256 "4101fbc0298486d27dde08606b1d8c10443be18fe7879d7c95f0b24ad72030cd"
  license "MIT"
  version "4.0.0"

  depends_on :macos
  depends_on "node" => :optional

  def install
    # Install wrapper script as 'obs'
    bin.install "scripts/obs-helper.sh" => "obs"
    
    # Install documentation
    doc.install "docs/OBSIDIAN_CLI_QUICK_REF.md"
    doc.install "README.md"
    doc.install "SKILL.md"
  end

  def caveats
    <<~EOS
      Obsidian CLI wrapper installed as 'obs'

      Prerequisites:
        1. Obsidian 1.12+ with Catalyst license ($25)
        2. Enable CLI in Obsidian: Settings → General → Enable CLI
        3. Obsidian must be running

      Quick Start:
        obs daily                    # Open today's daily note
        obs daily:append "content"   # Add to daily note
        obs create name="Note"       # Create new note
        obs read file="Note"         # Read a note
        obs search query="keyword"   # Search notes
        obs tasks                    # List incomplete tasks
        obs help                     # Show all commands

      Documentation:
        #{doc}/OBSIDIAN_CLI_QUICK_REF.md
        #{doc}/README.md

      For AI Agents:
        - Claude Desktop: Add to claude_desktop_config.json
        - Codex: Add to ~/.codex/config.toml
        - Cursor: Use directly in chat

      Full documentation:
        https://github.com/alexanderkinging/obsidian-official-cli
        https://help.obsidian.md/cli
    EOS
  end

  test do
    system "#{bin}/obs", "help"
  end
end

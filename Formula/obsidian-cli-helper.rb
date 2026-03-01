class ObsidianCliHelper < Formula
  desc "Obsidian CLI helper for AI agents"
  homepage "https://github.com/alexanderkinging/obsidian-official-cli"
  url "https://github.com/alexanderkinging/obsidian-official-cli/archive/refs/tags/v3.3.0.tar.gz"
  sha256 "1560da7d90ab7e841965edd1f1c262aadedec9974ab250ffa458ec33cf1e413b"
  license "MIT"
  version "3.3.0"

  depends_on :macos
  depends_on "node" => :optional

  def install
    # Install helper script
    bin.install "scripts/obs-helper.sh" => "obs-helper"
    
    # Install documentation
    doc.install "docs/OBSIDIAN_CLI_QUICK_REF.md"
    doc.install "README.md"
    doc.install "SKILL.md"
  end

  def caveats
    <<~EOS
      Obsidian CLI Helper has been installed!

      Prerequisites:
        1. Obsidian 1.12+ with Catalyst license ($25)
        2. Enable CLI in Obsidian: Settings → General → Enable CLI
        3. Obsidian must be running

      Quick Start:
        obs-helper daily                    # Create daily note
        obs-helper daily-add "content"      # Add to daily note
        obs-helper note-create "name" "content"
        obs-helper search "query"
        obs-helper tasks
        obs-helper help

      Documentation:
        #{doc}/OBSIDIAN_CLI_QUICK_REF.md
        #{doc}/README.md

      For AI Agents:
        - Claude Desktop: Add to claude_desktop_config.json
        - Codex: Add to ~/.codex/config.toml
        - Cursor: Use directly in chat

      Full documentation:
        https://github.com/alexanderkinging/obsidian-official-cli
    EOS
  end

  test do
    system "#{bin}/obs-helper", "help"
  end
end

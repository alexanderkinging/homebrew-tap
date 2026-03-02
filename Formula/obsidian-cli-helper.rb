class ObsidianCliHelper < Formula
  desc "Obsidian CLI helper for AI agents (DEPRECATED: use obsidian-cli-official)"
  homepage "https://github.com/alexanderkinging/obsidian-official-cli"
  url "https://github.com/alexanderkinging/obsidian-official-cli/archive/refs/tags/v3.3.1.tar.gz"
  sha256 "df4efe937ce318ae15f3a9e4aa25f4b3a33c82644f34b248fdbd3b6da0439a2f"
  license "MIT"
  version "3.3.1"

  deprecate! date: "2026-03-02", because: "renamed to obsidian-cli-official with 'obs' command"

  depends_on :macos
  depends_on "node" => :optional

  def install
    bin.install "scripts/obs-helper.sh" => "obs-helper"
    doc.install "docs/OBSIDIAN_CLI_QUICK_REF.md"
    doc.install "README.md"
    doc.install "SKILL.md"
  end

  def caveats
    <<~EOS
      ⚠️  DEPRECATED: This formula has been renamed to obsidian-cli-official
      
      Please migrate to the new formula:
        brew uninstall obsidian-cli-helper
        brew install alexanderkinging/tap/obsidian-cli-official
      
      The new formula provides 'obs' command (shorter and cleaner):
        obs daily                    # vs obs-helper daily
        obs search query="keyword"   # vs obs-helper search "keyword"
        obs tasks                    # vs obs-helper tasks
    EOS
  end

  test do
    system "#{bin}/obs-helper", "help"
  end
end

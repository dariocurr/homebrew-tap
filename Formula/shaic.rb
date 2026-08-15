class Shaic < Formula
  desc "Sync AI-agent skills, rules, commands, and MCP servers via git"
  homepage "https://github.com/dariocurr/shaic"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dariocurr/shaic/releases/download/v0.1.0/shaic-aarch64-apple-darwin.tar.gz"
      sha256 "c7e360fffba053ba9bef92cef98dc8a53a1df4d8fa26978d3a8e0ab61a001554"
    end
    on_intel do
      url "https://github.com/dariocurr/shaic/releases/download/v0.1.0/shaic-x86_64-apple-darwin.tar.gz"
      sha256 "06df1c8d4bbcfcea4a9c9aac448cbec118135d46430a9fa747312d967e02bd9b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dariocurr/shaic/releases/download/v0.1.0/shaic-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c9c149da2b5e1cea979aac204d4dac24bfcb5db62e318fece4ba6bea7d3387cd"
    end
    on_intel do
      url "https://github.com/dariocurr/shaic/releases/download/v0.1.0/shaic-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ea58fc1c50f6102817930cc6e4cef1f541d057f0921ac596ea5630be97f7b3ab"
    end
  end

  def install
    bin.install "shaic"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shaic --version")
  end
end

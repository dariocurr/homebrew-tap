class Shaic < Formula
  desc "Sync AI-agent skills, rules, commands, and MCP servers via git"
  homepage "https://github.com/dariocurr/shaic"
  url "https://github.com/dariocurr/shaic/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "68a7ed39e8e327d767e4069a330b4521b8492faeb00c2ffd16e56a67995f7a96"
  license "MIT"
  head "https://github.com/dariocurr/shaic.git", branch: "main"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", *std_cargo_args(path: "cli")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shaic --version")
  end
end

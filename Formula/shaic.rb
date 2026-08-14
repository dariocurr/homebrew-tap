class Shaic < Formula
  desc "Sync AI-agent skills, rules, commands, and MCP servers via git"
  homepage "https://github.com/dariocurr/shaic"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dariocurr/shaic/releases/download/v0.3.3/shaic-aarch64-apple-darwin.tar.gz"
      sha256 "8e9e30338c8a9a01f5bc81ab9be06e48a95b07146fddb1b187d9fd77a02cabbf"
    end
    on_intel do
      url "https://github.com/dariocurr/shaic/releases/download/v0.3.3/shaic-x86_64-apple-darwin.tar.gz"
      sha256 "345628efc969dea952abd1f378b8c78b6b431acd1186fd1547daebc6510e0024"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dariocurr/shaic/releases/download/v0.3.3/shaic-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "75f617a04b7753d4fb2ed0e338887ed0e90ca6607371224489be80c7e412e5e4"
    end
    on_intel do
      url "https://github.com/dariocurr/shaic/releases/download/v0.3.3/shaic-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b0440f4420e24fe08be4cb0fba5a97a312b711ee7b25e0c58ae3daf06525c5d4"
    end
  end

  def install
    bin.install "shaic"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shaic --version")
  end
end

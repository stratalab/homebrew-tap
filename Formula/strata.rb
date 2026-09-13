class Strata < Formula
  desc "Embedded database for the agent era: branch, time-travel, search"
  homepage "https://stratadb.org"
  version "1.2.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/stratalab/strata-core/releases/download/v1.2.2/strata-v1.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "590e43ab66365547e080d1a2c439b696b6985c8c88e8ad982b1963dda7e46838"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/stratalab/strata-core/releases/download/v1.2.2/strata-v1.2.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "16cd2ec89f1e1dfe9458ed0d5461353cba188d49b5b4368cedb9fdeea63f53ef"
    end
    on_intel do
      url "https://github.com/stratalab/strata-core/releases/download/v1.2.2/strata-v1.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0ee629e9942d32158da7528a047bc39ca7c35d842580817f0c84d51f47f80a2b"
    end
  end

  def install
    bin.install "strata"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/strata --version")
  end
end

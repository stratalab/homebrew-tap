class Strata < Formula
  desc "Embedded database for the agent era: branch, time-travel, search"
  homepage "https://stratadb.org"
  version "1.2.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/stratalab/strata-core/releases/download/v1.2.6/strata-v1.2.6-aarch64-apple-darwin.tar.gz"
      sha256 "e84909bad7b30bfacd63702d4c58d34712297f90f2317b6bc522cbeec24cc0d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/stratalab/strata-core/releases/download/v1.2.6/strata-v1.2.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c88f92757ba932b2a407a8e9ea807ddc55fbf9634f441d0fd48556f6acb056d2"
    end
    on_intel do
      url "https://github.com/stratalab/strata-core/releases/download/v1.2.6/strata-v1.2.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "02caaa8292b71ee2d6d0de604d43ae1ed2d4071757800a935445bdd21e379053"
    end
  end

  def install
    bin.install "strata"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/strata --version")
  end
end

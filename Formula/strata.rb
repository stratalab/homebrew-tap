class Strata < Formula
  desc "Embedded database for the agent era: branch, time-travel, search"
  homepage "https://stratadb.org"
  version "1.2.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/stratalab/strata-core/releases/download/v1.2.7/strata-v1.2.7-aarch64-apple-darwin.tar.gz"
      sha256 "8c2c17e3547b4dab496bbf46eb908c8ad0dbfb5e4779fbf679640a1217e78a46"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/stratalab/strata-core/releases/download/v1.2.7/strata-v1.2.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6921a8c3c2e43c49ab3753966b006b18514fa728ccc72f2091206319a045a75f"
    end
    on_intel do
      url "https://github.com/stratalab/strata-core/releases/download/v1.2.7/strata-v1.2.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "da238723fdbb5adf0a468e1ca0d649d98072f8d54e1ed4d85a968b9dd4a2f570"
    end
  end

  def install
    bin.install "strata"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/strata --version")
  end
end

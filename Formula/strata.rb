class Strata < Formula
  desc "Embedded database for the agent era: branch, time-travel, search"
  homepage "https://stratadb.org"
  version "1.2.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/stratalab/strata-core/releases/download/v1.2.4/strata-v1.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "4cf9812d51af0303fc546fa4f3e085c45437674669bcb1fa13a9150b79fccbc8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/stratalab/strata-core/releases/download/v1.2.4/strata-v1.2.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d869559ddb07e6b289b677e7e7215466fa3d0cd33f87a9d001322e1473f460a7"
    end
    on_intel do
      url "https://github.com/stratalab/strata-core/releases/download/v1.2.4/strata-v1.2.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5382f0ff9cffb5ae4d4b64108def770b469524288bf2e49393681dc1b5708569"
    end
  end

  def install
    bin.install "strata"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/strata --version")
  end
end

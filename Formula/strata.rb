class Strata < Formula
  desc "Embedded database for the agent era: branch, time-travel, search"
  homepage "https://stratadb.org"
  version "1.2.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/stratalab/strata-core/releases/download/v1.2.5/strata-v1.2.5-aarch64-apple-darwin.tar.gz"
      sha256 "4299f3b6fab9c6c611d9466e1f2a7da0f6cf0c9d3d46b90e09b60c58c6e22a2d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/stratalab/strata-core/releases/download/v1.2.5/strata-v1.2.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "33dc84e3416fdc98a68d908047e3af2d08b812562229f2df826fbd5819dbb226"
    end
    on_intel do
      url "https://github.com/stratalab/strata-core/releases/download/v1.2.5/strata-v1.2.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8b12013da0859ed44cb703f2728e600decf13a4d47ca26c57fc6cfc6dd6856cc"
    end
  end

  def install
    bin.install "strata"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/strata --version")
  end
end

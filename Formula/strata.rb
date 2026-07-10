class Strata < Formula
  desc "Embedded database for the agent era: branch, time-travel, search"
  homepage "https://stratadb.org"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/stratalab/strata-core/releases/download/v1.0.0/strata-v1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "abe24129a0e4cafaa84d5a97175428085f55ff64411b5a0e50dafa5b7b0d9c4d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/stratalab/strata-core/releases/download/v1.0.0/strata-v1.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ed013b8fcaa12315079522b64f18c391fb008d4dc28133a16ed4bf770e3f2bf4"
    end
    on_intel do
      url "https://github.com/stratalab/strata-core/releases/download/v1.0.0/strata-v1.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "beae0eeec1dfbb3e3a158b4316b48e478986f5e2ad29b6d80f9dfea8586fe636"
    end
  end

  def install
    bin.install "strata"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/strata --version")
  end
end

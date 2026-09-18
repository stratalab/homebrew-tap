class Strata < Formula
  desc "Embedded database for the agent era: branch, time-travel, search"
  homepage "https://stratadb.org"
  version "1.2.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/stratalab/strata-core/releases/download/v1.2.3/strata-v1.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "c14a308aa7e801df8067d070d8cf89627333db43c13dc91fdfe4d6e92802e8fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/stratalab/strata-core/releases/download/v1.2.3/strata-v1.2.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c11ed626a660724494140e4ff334b7f5dcc554f09e7c696d795b684ba861260b"
    end
    on_intel do
      url "https://github.com/stratalab/strata-core/releases/download/v1.2.3/strata-v1.2.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e61b06d8ac69972e4fb14dfc5ca0208bd8d1986b60d8ec24092499271e3ad930"
    end
  end

  def install
    bin.install "strata"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/strata --version")
  end
end

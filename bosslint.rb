class Bosslint < Formula
  desc "One command to run multiple linters under Git version control"
  homepage "https://github.com/totakke/bosslint"
  version "0.5.0"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/totakke/bosslint/releases/download/v#{version}/bosslint_linux_aarch64"
      sha256 "53dab7c154e46a1f13ecef4b1509d7b9b07ac3992585f6f623cd98adbba161a1"
    else
      url "https://github.com/totakke/bosslint/releases/download/v#{version}/bosslint_linux_amd64"
      sha256 "bfdb914337138552597ae5db2a6a249492c9e6129a6bd599d8bae7c0f9f5de59"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/totakke/bosslint/releases/download/v#{version}/bosslint_macos_aarch64"
      sha256 "cef78230ee93047db4c9160a79d7b80e76c3208957fec47deb19567f59316ccc"
    else
      url "https://github.com/totakke/bosslint/releases/download/v#{version}/bosslint_macos_amd64"
      sha256 "58cb653703d7af9731426de8104629ccd576797acf6c408af1b8b640ae148731"
    end
  end

  def install
    bin.install Dir["bosslint_*"].first => "bosslint"
  end

  test do
    system bin/"bosslint", "--version"
  end
end

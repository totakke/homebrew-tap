class Bosslint < Formula
  desc "One command to run multiple linters under Git version control"
  homepage "https://github.com/totakke/bosslint"
  version "0.6.0"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/totakke/bosslint/releases/download/v#{version}/bosslint_linux_aarch64"
      sha256 "3211784f2aacd7c06ed0403ee72e6df4dc8e2a4d2f5bf293e65592977bccc008"
    else
      url "https://github.com/totakke/bosslint/releases/download/v#{version}/bosslint_linux_amd64"
      sha256 "8c14d7f5fb62e9a5b784e5262938c28e9e3a6a141053c4467bb210c3862d83e6"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/totakke/bosslint/releases/download/v#{version}/bosslint_macos_aarch64"
      sha256 "3a1534191485da3ed1028f3bd28ac823dc129e42a4183e7f9eb251a13bc036eb"
    else
      url "https://github.com/totakke/bosslint/releases/download/v#{version}/bosslint_macos_amd64"
      sha256 "8876d4f697895c2228b2cedf4a11df940971226be9dc811780f196c0f4b3231d"
    end
  end

  def install
    bin.install Dir["bosslint_*"].first => "bosslint"
  end

  test do
    system bin/"bosslint", "--version"
  end
end

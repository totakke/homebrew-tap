class Bosslint < Formula
  desc "One command to run multiple linters under Git version control"
  homepage "https://github.com/totakke/bosslint"
  version "0.6.120"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/totakke/bosslint/releases/download/v#{version}/bosslint_linux_aarch64"
      sha256 "03657cd8b04c7198acacd67cf73cf4945b60a54fde21428031528eebb27b4a42"
    else
      url "https://github.com/totakke/bosslint/releases/download/v#{version}/bosslint_linux_amd64"
      sha256 "62cdc380f18e68257b7225feffe97066c15e5cd38938cd0a9b1cfdfd2f84ff0a"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/totakke/bosslint/releases/download/v#{version}/bosslint_macos_aarch64"
      sha256 "5f2f97d465cbfd9fbb05d99868ce46dbc2a943e26aa80e908c5b2a47c0d38cf6"
    else
      url "https://github.com/totakke/bosslint/releases/download/v#{version}/bosslint_macos_amd64"
      sha256 "5b05ab8846c8c05e2ea40a593484d7af4c90ee7ef80ae057e035f83f575c2385"
    end
  end

  def install
    bin.install Dir["bosslint_*"].first => "bosslint"
  end

  test do
    system bin/"bosslint", "--version"
  end
end

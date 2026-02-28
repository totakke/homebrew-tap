class Bosslint < Formula
  desc "One command to run multiple linters under Git version control"
  homepage "https://github.com/totakke/bosslint"
  version "0.9.146"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/totakke/bosslint/releases/download/v#{version}/bosslint_linux_aarch64"
      sha256 "83425b74786f54d192e5fb06c9d6a96a8dcdf1e8993b6a4423d008511b4aaea5"
    else
      url "https://github.com/totakke/bosslint/releases/download/v#{version}/bosslint_linux_amd64"
      sha256 "053a2f92f44c59f484d4404d808bb3146191742e888c4569c79381a02df9fa6e"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/totakke/bosslint/releases/download/v#{version}/bosslint_macos_aarch64"
      sha256 "3f9c7522ce18aadc2a8a94b5c841d412948018abef6404e696836f505ecbcfa0"
    else
      url "https://github.com/totakke/bosslint/releases/download/v#{version}/bosslint_macos_amd64"
      sha256 "e214da2742690755af68f222e42a68cd28e3b989b28ba455dda7ed2cbd28b213"
    end
  end

  def install
    bin.install Dir["bosslint_*"].first => "bosslint"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bosslint --version")
  end
end

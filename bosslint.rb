class Bosslint < Formula
  desc "One command to run multiple linters under Git version control"
  homepage "https://github.com/totakke/bosslint"
  version "0.7.130"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/totakke/bosslint/releases/download/v#{version}/bosslint_linux_aarch64"
      sha256 "5fbc1c091bb7c43be15019181d9311895647ba042960746bd345c0cc4bf72509"
    else
      url "https://github.com/totakke/bosslint/releases/download/v#{version}/bosslint_linux_amd64"
      sha256 "4712f84e5f40fcfd44d59d36550584055c3a9389dbae3d0c470d88019cfeadb2"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/totakke/bosslint/releases/download/v#{version}/bosslint_macos_aarch64"
      sha256 "9e8ad0f12e3cdd0aae5b13af2a42a54a7ca5cb6af8c6d7e7611342c3417cfd37"
    else
      url "https://github.com/totakke/bosslint/releases/download/v#{version}/bosslint_macos_amd64"
      sha256 "b887adbc906fc64eb9eb0858d6126debfb02b575394cc9903f2a56804b0be62a"
    end
  end

  def install
    bin.install Dir["bosslint_*"].first => "bosslint"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bosslint --version")
  end
end

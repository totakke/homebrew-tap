class Bosslint < Formula
  desc "One command to run multiple linters under Git version control"
  homepage "https://github.com/totakke/bosslint"
  version "0.8.137"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/totakke/bosslint/releases/download/v#{version}/bosslint_linux_aarch64"
      sha256 "b1ebd81fb14fd7d48915cfff380f04547f1e3e3d0360a4da5c9557f9d1b36feb"
    else
      url "https://github.com/totakke/bosslint/releases/download/v#{version}/bosslint_linux_amd64"
      sha256 "15f7d624b8ed4dfff66487e8b9b8fc616916a9b2acfcae50c36f2eb97cb9eecc"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/totakke/bosslint/releases/download/v#{version}/bosslint_macos_aarch64"
      sha256 "b186eb69f8b0b7e10fb89c36b0190c5fade387733210e1e9ac9fb584d8c1b2b9"
    else
      url "https://github.com/totakke/bosslint/releases/download/v#{version}/bosslint_macos_amd64"
      sha256 "8b7c86b1a6ebafa07f1fc56f0556c6d5a97cf285d5c036a32a247016751ee4b7"
    end
  end

  def install
    bin.install Dir["bosslint_*"].first => "bosslint"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bosslint --version")
  end
end

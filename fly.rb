class Fly < Formula
  desc "halfpipe cli"
  homepage "https://github.com/springernature/halfpipe"
  version "4.1.0"
  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly_darwin_amd64"
  sha256 "fe80f932e0715291c4b7ffab2ccddb90c5dd4b47135731dfdc5325b5a60cad92"

  def install
    mv "fly_darwin_amd64", "fly"
    bin.install "fly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fly --version")
  end
end

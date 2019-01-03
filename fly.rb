class Fly < Formula
  desc "halfpipe cli"
  homepage "https://github.com/springernature/halfpipe"
  version "4.2.2"
  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly_darwin_amd64"
  sha256 "b8dacaddea09a58b1594186d3c92fdca3899096fc720fe431b4ca8962bf8a6d9"

  def install
    mv "fly_darwin_amd64", "fly"
    bin.install "fly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fly --version")
  end
end

class Fly < Formula
  desc "halfpipe cli"
  homepage "https://github.com/springernature/halfpipe"
  version "5.0.1"
  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly_darwin_amd64"
  sha256 "3894b059d947f9a39705eaddbac3ab8ea35dd4bd826e3154f4e0633547960a45"

  def install
    mv "fly_darwin_amd64", "fly"
    bin.install "fly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fly --version")
  end
end

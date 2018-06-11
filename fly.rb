class Fly < Formula
  desc "halfpipe cli"
  homepage "https://github.com/springernature/halfpipe"
  version "3.14.1"
  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly_darwin_amd64"
  sha256 "61fd5fe1ac796abe12b386d126a4bb876ba06d587f0a35d2b0f1186487e1f1ca"

  def install
    mv "cli", "fly"
    bin.install "fly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fly --version")
  end
end

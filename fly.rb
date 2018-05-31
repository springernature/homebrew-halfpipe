class Fly < Formula
  desc "halfpipe cli"
  homepage "https://github.com/springernature/halfpipe"
  version "3.9.2"
  url "https://concourse.halfpipe.io/api/v1/cli?arch=amd64&platform=darwin"
  sha256 "4a47a960d6d75612374bba1b8348c18caeb63c8368efba5911e8824021669df6"

  def install
    mv "cli", "fly"
    bin.install "fly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fly --version")
  end
end

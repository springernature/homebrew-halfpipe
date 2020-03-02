class Fly < Formula
  desc "halfpipe cli"
  homepage "https://github.com/springernature/halfpipe"
  version "5.7.0"
  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  sha256 "200985118ef97f51e63322e960740a96f805d974e00261ede35cc2edea4c6653"

  def install
    bin.install "fly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fly --version")
  end
end

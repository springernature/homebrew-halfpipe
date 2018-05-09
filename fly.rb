class Fly < Formula
  desc "halfpipe cli"
  homepage "https://github.com/springernature/halfpipe"
  version "3.9.2"
  url "https://concourse.halfpipe.io/api/v1/cli?arch=amd64&platform=darwin"
  sha256 "6a4eaec54b49edf8673903b9f74f425ef66c9ddbbbde89d8c0ba9bc3fd3dd63d"

  def install
    mv "fly.dms", "fly"
    bin.install "fly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fly --version")
  end
end
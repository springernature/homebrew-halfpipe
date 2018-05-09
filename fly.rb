class Fly < Formula
  desc "halfpipe cli"
  homepage "https://github.com/springernature/halfpipe"
  version "3.9.2"
  url "https://concourse.halfpipe.io/api/v1/cli?arch=amd64&platform=darwin"
  sha256 "9f345192478b74f7764829c7be16bab2b4161d15308caa7d064aac7ab150d5ea"

  def install
    mv "fly.dms", "fly"
    bin.install "fly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fly --version")
  end
end
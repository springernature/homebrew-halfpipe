class Fly < Formula
  desc "halfpipe cli"
  homepage "https://github.com/springernature/halfpipe"
  version "5.1.0"
  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  sha256 "d58fbc5f412dc991821819bc7eee9dfffed4104fa698e0e021d8cccc2899870b"

  def install
    bin.install "fly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fly --version")
  end
end

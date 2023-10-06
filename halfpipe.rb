class Halfpipe < Formula
  desc "halfpipe cli"
  homepage "https://github.com/springernature/halfpipe"
  version "3.127.0"
  url "https://springernature.jfrog.io/artifactory/halfpipe/halfpipe_darwin_#{version}"
  sha256 "e029b8f541452bcc5381f65b59091db9e2f6dfbd9f5d2b05f9d7b1e6c328b71a"

  def install
    mv "halfpipe_darwin_#{version}", "halfpipe"
    bin.install "halfpipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/halfpipe version")
  end
end

class Halfpipe < Formula
  desc "halfpipe cli"
  homepage "https://github.com/springernature/halfpipe"
  version "3.132.0"
  url "https://springernature.jfrog.io/artifactory/halfpipe/halfpipe_darwin_#{version}"
  sha256 "8fb27ad54f26986574d8bd38d8c3c1288bab391cc91e93fdf023ef8cd71a9c2b"

  def install
    mv "halfpipe_darwin_#{version}", "halfpipe"
    bin.install "halfpipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/halfpipe version")
  end
end

class Halfpipe < Formula
  desc "halfpipe cli"
  homepage "https://github.com/springernature/halfpipe"
  version "3.122.0"
  url "https://springernature.jfrog.io/artifactory/halfpipe/halfpipe_darwin_#{version}"
  sha256 "e409043e5b676d0fc0fa3bcad54fdaea869b00131f671e2ffd76a96169f0c5a1"

  def install
    mv "halfpipe_darwin_#{version}", "halfpipe"
    bin.install "halfpipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/halfpipe version")
  end
end

class Halfpipe < Formula
  desc "halfpipe cli"
  homepage "https://github.com/springernature/halfpipe"
  version "3.105.0"
  url "https://springernature.jfrog.io/artifactory/halfpipe/halfpipe_darwin_#{version}"
  sha256 "d241df04525ac50fa497bdf3a8b7ad6d918c9fac3e7323f61ef0afd7a97299ae"

  def install
    mv "halfpipe_darwin_#{version}", "halfpipe"
    bin.install "halfpipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/halfpipe version")
  end
end

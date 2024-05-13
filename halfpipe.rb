class Halfpipe < Formula
  desc "halfpipe cli"
  homepage "https://github.com/springernature/halfpipe"
  version "3.147.1"
  url "https://springernature.jfrog.io/artifactory/halfpipe/halfpipe_darwin_#{version}"
  sha256 "658ffadb7784377fb69f9e5702127b730626bbe71f71fec8bfd74424b6cb3fa0"

  def install
    mv "halfpipe_darwin_#{version}", "halfpipe"
    bin.install "halfpipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/halfpipe version")
  end
end

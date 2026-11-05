class Halfpipe < Formula
  desc "halfpipe cli"
  homepage "https://github.com/springernature/halfpipe"
  version "3.248.0"
  url "https://github.com/springernature/halfpipe/releases/download/#{version}/halfpipe_darwin_#{version}"
  sha256 "e2c914dc89fc88fe4c021ebd4d26bb27cdb0c95b13c6e4a76b39b13904411643"

  def install
    mv "halfpipe_darwin_#{version}", "halfpipe"
    bin.install "halfpipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/halfpipe version")
  end
end

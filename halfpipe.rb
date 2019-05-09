class Halfpipe < Formula
  desc "halfpipe cli"
  homepage "https://github.com/springernature/halfpipe"
  version "3.2.0"
  url "https://github.com/springernature/halfpipe/releases/download/#{version}/halfpipe_darwin_#{version}"
  sha256 "91723489a8af1556434ee0f0d77b1ae7c8ede909cdfd7942061a894ccc1706f0"

  def install
    mv "halfpipe_darwin_#{version}", "halfpipe"
    bin.install "halfpipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/halfpipe version")
  end
end
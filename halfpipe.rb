class Halfpipe < Formula
  desc "halfpipe cli"
  homepage "https://github.com/springernature/halfpipe"
  version "1.32.0"
  url "https://github.com/springernature/halfpipe/releases/download/#{version}/halfpipe_darwin_#{version}"
  sha256 "9f345192478b74f7764829c7be16bab2b4161d15308caa7d064aac7ab150d5ea"

  def install
    mv "halfpipe_darwin_#{version}", "halfpipe"
    bin.install "halfpipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/halfpipe --version")
  end
end
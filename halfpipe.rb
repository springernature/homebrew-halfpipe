class Halfpipe < Formula
  desc "halfpipe cli"
  homepage "https://github.com/springernature/halfpipe"
  url "https://github.com/springernature/halfpipe/releases/download/1.30.1/halfpipe_darwin_1.30.1"
  sha256 "cc470a2d9ccc65147080b410a06b1636fc0a214c25ddb66cef1aa17957d31c8c"

  def install
    mv "halfpipe_darwin_1.30.1", "halfpipe"
    bin.install "halfpipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/halfpipe --version")
  end
end
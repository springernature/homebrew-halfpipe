class Halfpipe < Formula
  desc "halfpipe cli"
  homepage "https://github.com/springernature/halfpipe"
  version "3.78.0"
  url "https://springernature.jfrog.io/ui/native/halfpipe/halfpipe_darwin_#{version}"
  sha256 "a1b643d953658d56a177c101279dca2ec10583fc500bccecb31fb2f5e4b26bd7"

  def install
    mv "halfpipe_darwin_#{version}", "halfpipe"
    bin.install "halfpipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/halfpipe version")
  end
end

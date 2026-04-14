class Halfpipe < Formula
  desc "halfpipe cli"
  homepage "https://github.com/springernature/halfpipe"
  version "3.213.0"
  url "https://github.com/springernature/halfpipe/releases/download/#{version}/halfpipe_darwin_#{version}"
  sha256 "c19b78bdcfa493d0aff92b7f768537233e9a017604b3ad781245e671928e56f8"

  def install
    mv "halfpipe_darwin_#{version}", "halfpipe"
    bin.install "halfpipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/halfpipe version")
  end
end

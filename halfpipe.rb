class Halfpipe < Formula
  desc "halfpipe cli"
  homepage "https://github.com/springernature/halfpipe"
  version "3.198.0"
  url "https://github.com/springernature/halfpipe/releases/download/#{version}/halfpipe_darwin_#{version}"
  sha256 "db9b1c0af0685c5f1e038eebb699edfd1eb43b3bf6cfa9b3c0e99fb36ed13581"

  def install
    mv "halfpipe_darwin_#{version}", "halfpipe"
    bin.install "halfpipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/halfpipe version")
  end
end

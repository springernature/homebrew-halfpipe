class Fly < Formula
  desc "halfpipe cli"
  homepage "https://github.com/springernature/halfpipe"
  version "4.2.1"
  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly_darwin_amd64"
  sha256 "b31665b68f7158a8c4a6fefa97272781e8e28852e0163f47161b3010fd0ae8c0"

  def install
    mv "fly_darwin_amd64", "fly"
    bin.install "fly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fly --version")
  end
end

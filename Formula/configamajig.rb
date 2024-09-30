class Configamajig < Formula
  desc "Secure image proxy server"
  homepage "https://github.com/mtintes/configamajig"
  url "https://github.com/mtintes/configamajig/archive/refs/tags/v0.0.17.tar.gz"
  license ""

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "f4b75f32f56cbcc7d501d5b509eb55c29db533c446c9694784aa94d98019b404"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "f4b75f32f56cbcc7d501d5b509eb55c29db533c446c9694784aa94d98019b404"
    sha256 cellar: :any_skip_relocation, arm64_ventura:  "f4b75f32f56cbcc7d501d5b509eb55c29db533c446c9694784aa94d98019b404"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "f4b75f32f56cbcc7d501d5b509eb55c29db533c446c9694784aa94d98019b404"
    sha256 cellar: :any_skip_relocation, sonoma:         "00ca58ccc7f73610189dda961710bf6c14260700e2ee2fcda443ef6bfb2f0e1a"
    sha256 cellar: :any_skip_relocation, ventura:        "00ca58ccc7f73610189dda961710bf6c14260700e2ee2fcda443ef6bfb2f0e1a"
    sha256 cellar: :any_skip_relocation, monterey:       "00ca58ccc7f73610189dda961710bf6c14260700e2ee2fcda443ef6bfb2f0e1a"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "9eb5d0c61e5ed94b574321267b2d9484723b422cd2ab335aa7c8622497901a9b"
  end

  depends_on "go" => :build

  def install
    system "cd", "cli"
    system "make",
    bin.install Dir["../bin/configamajig"]
  end
end

class Delve < Formula
  desc "Debugger for the Go programming language"
  homepage "https://github.com/go-delve/delve"
  url "https://github.com/go-delve/delve/archive/v1.21.1.tar.gz"
  sha256 "21dd0c98e101cd102e51ffa708d3f7d6dd32c2069b7d18bbcc35272c04dc822d"
  license "MIT"

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "0801bbbeff59c69b868cabae52ad5a6c381030500a88248b171229392d6f7754"
    sha256 cellar: :any_skip_relocation, arm64_ventura:  "19a2b76222edd3612ad6856679f1f9ad2112f177fa8767599d5521de7c88c951"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "19a2b76222edd3612ad6856679f1f9ad2112f177fa8767599d5521de7c88c951"
    sha256 cellar: :any_skip_relocation, arm64_big_sur:  "19a2b76222edd3612ad6856679f1f9ad2112f177fa8767599d5521de7c88c951"
    sha256 cellar: :any_skip_relocation, sonoma:         "26e469cc3e3c95c17b3a58fc0864bd9ef7bece83e7ecf07ba826cf7015445ee1"
    sha256 cellar: :any_skip_relocation, ventura:        "7107c64e1dad1ff8cae142972110788f7f23ac5156c8a8c416ee2a3608959960"
    sha256 cellar: :any_skip_relocation, monterey:       "7107c64e1dad1ff8cae142972110788f7f23ac5156c8a8c416ee2a3608959960"
    sha256 cellar: :any_skip_relocation, big_sur:        "7107c64e1dad1ff8cae142972110788f7f23ac5156c8a8c416ee2a3608959960"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "7c5a9ba0399258dc573dffa099c9ebb7446e3b12cef0268c7068153eac58f5d9"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: bin/"dlv"), "./cmd/dlv"
  end

  test do
    assert_match(/^Version: #{version}$/, shell_output("#{bin}/dlv version"))
  end
end

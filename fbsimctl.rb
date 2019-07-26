class Fbsimctl < Formula
  desc "A Powerful Command Line tool for automating iOS Simulators"
  homepage "https://github.com/badoo/FBSimulatorControl"
  url "https://github.com/fr0l/FBSimulatorControl/archive/7dffa75b.tar.gz"
  sha256 "7b4047768135cf1c7249d544914aebe34bd72f10e33074c6210e3fd9e8949325"
  head "https://github.com/fr0l/FBSimulatorControl.git", branch: "badoo_xcode_10"
  version "HEAD-7dffa75"

  bottle do
    root_url "https://github.com/badoo/homebrew-qa-bottles/releases/download/v1.0"
    cellar :any_skip_relocation
    sha256 "f2c9db203847c9fc8745f8f6578f83674b5ec37f2710c7f4175fd915f2ae19d1" => :mojave
    sha256 "f2c9db203847c9fc8745f8f6578f83674b5ec37f2710c7f4175fd915f2ae19d1" => :high_sierra
  end

  depends_on "carthage"
  depends_on :xcode => ["9.4.0", :build]

  def install
    system "./build.sh", "fbsimctl", "build", prefix
  end

  pour_bottle? do
    true
  end

  test do
    system "fbsimctl", "list"
  end
end

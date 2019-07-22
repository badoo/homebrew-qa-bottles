class Fbsimctl < Formula
  desc "A Powerful Command Line tool for automating iOS Simulators"
  homepage "https://github.com/badoo/FBSimulatorControl"
  url "https://github.com/badoo/FBSimulatorControl/archive/08451d7.tar.gz"
  sha256 "2c650fd17664fb576c450c7b55c49832b19c9faf689d175aa524142b2d0a8b2c"
  head "https://github.com/badoo/FBSimulatorControl.git"
  version "HEAD-dc9d279"

  bottle do
    root_url "https://github.com/badoo/homebrew-qa-bottles/releases/download/v1.0"
    cellar :any
    sha256 "b22dcc9e53d8ef9184380a2acfbc2ac8041f3560a7af96c022146f4f40da2279" => :mojave
  end

  depends_on "carthage"
  depends_on :xcode => ["10.0", :build]

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

class Fbsimctl < Formula
  desc "A Powerful Command Line tool for automating iOS Simulators"
  homepage "https://github.com/badoo/FBSimulatorControl"
  url "https://github.com/badoo/FBSimulatorControl/archive/08451d7.tar.gz"
  sha256 "2c650fd17664fb576c450c7b55c49832b19c9faf689d175aa524142b2d0a8b2c"
  head "https://github.com/badoo/FBSimulatorControl.git"
  version "HEAD-08451d7"
  revision 0

  bottle do
    root_url "https://github.com/badoo/homebrew-qa-bottles/releases/download/v1.0"
    rebuild 1
    cellar :any
    sha256 "697211c953c8612affb22010817d3ff0ecadce50bb641757b9f08122871d5ff4" => :mojave
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

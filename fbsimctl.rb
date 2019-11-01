class Fbsimctl < Formula
  desc "A Powerful Command Line tool for automating iOS Simulators"
  homepage "https://github.com/badoo/FBSimulatorControl"
  url "https://github.com/badoo/FBSimulatorControl/archive/9608b01.tar.gz"
  sha256 "ff953c121e90a547022151b49489a0441b8a160c358faf902f8a42586556d5af"
  head "https://github.com/badoo/FBSimulatorControl.git", branch: "badoo"
  version "HEAD-9608b01"

  bottle do
    root_url "https://github.com/badoo/homebrew-qa-bottles/releases/download/v1.0"
    cellar :any_skip_relocation
    sha256 "292c822cc8072e7f4ee8271a2cf1310512fccc9faecad2ea936fd23ee105972b" => :catalina
    sha256 "292c822cc8072e7f4ee8271a2cf1310512fccc9faecad2ea936fd23ee105972b" => :mojave
    sha256 "292c822cc8072e7f4ee8271a2cf1310512fccc9faecad2ea936fd23ee105972b" => :high_sierra
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

class Fbsimctl < Formula
  desc "A Powerful Command Line tool for automating iOS Simulators"
  homepage "https://github.com/badoo/FBSimulatorControl"
  url "https://github.com/badoo/FBSimulatorControl/archive/e3693e6.tar.gz"
  sha256 "fae309ff4c77d613d345d2c3dc42594b29b549227a2e6eb40e983dcb9b148a01"
  head "https://github.com/badoo/FBSimulatorControl.git", branch: "badoo"
  version "HEAD-e3693e6"

  bottle do
    root_url "https://github.com/badoo/homebrew-qa-bottles/releases/download/v1.0"
    cellar :any_skip_relocation
    sha256 "0dc45f806f5bd1d31bcee4c4685543cbd37cffeb3f82766d96a684fb9d45c8e8" => :catalina
    sha256 "0dc45f806f5bd1d31bcee4c4685543cbd37cffeb3f82766d96a684fb9d45c8e8" => :mojave
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

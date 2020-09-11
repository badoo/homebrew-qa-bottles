class Fbsimctl < Formula
  desc "A Powerful Command Line tool for automating iOS Simulators"
  homepage "https://github.com/badoo/FBSimulatorControl"
  url "https://github.com/badoo/FBSimulatorControl/archive/11f6722.tar.gz"
  sha256 "e4ffdaf75342555b2257e04d08339b1e772199845aab80e8808c28a8982aa1b8"
  head "https://github.com/badoo/FBSimulatorControl.git", branch: "badoo"
  version "HEAD-11f6722"

  bottle do
    root_url "https://github.com/badoo/homebrew-qa-bottles/releases/download/v1.0"
    cellar :any_skip_relocation
    sha256 "2ae646a699e0cd7c613477e1da11428ef17cb1de1a732377d37b3f6b610fee83" => :catalina
    sha256 "2ae646a699e0cd7c613477e1da11428ef17cb1de1a732377d37b3f6b610fee83" => :big_sur
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

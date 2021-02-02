class Fbsimctl < Formula
  desc "A Powerful Command Line tool for automating iOS Simulators"
  homepage "https://github.com/badoo/FBSimulatorControl"
  url "https://github.com/badoo/FBSimulatorControl/archive/d6d99e5.tar.gz"
  sha256 "50af6f1bb1e830a24d79dbf27484433e873b9ee24b4a02c2500335c3879a3ddf"
  head "https://github.com/badoo/FBSimulatorControl.git", branch: "badoo"
  version "HEAD-d6d99e5"

  bottle do
    root_url "https://github.com/badoo/homebrew-qa-bottles/releases/download/v1.0"
    cellar :any_skip_relocation
    sha256 "b4363a67733461c96817878b3a9b3521e7f5afecc1d930f2ce1c9765dfedd5c7" => :catalina
    sha256 "b4363a67733461c96817878b3a9b3521e7f5afecc1d930f2ce1c9765dfedd5c7" => :big_sur
    sha256 "b4363a67733461c96817878b3a9b3521e7f5afecc1d930f2ce1c9765dfedd5c7" => :mojave
  end

  def install
    fail("local builds are unsupported")
  end

  pour_bottle? do
    true
  end

  test do
    system "fbsimctl", "list"
  end
end

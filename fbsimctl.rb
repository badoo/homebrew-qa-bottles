class Fbsimctl < Formula
  desc "A Powerful Command Line tool for automating iOS Simulators"
  homepage "https://github.com/badoo/FBSimulatorControl"
  url "https://github.com/badoo/FBSimulatorControl/archive/d318e0e.tar.gz"
  sha256 "4c4c26d65db4d8fb2b0b79eacb3daee718216f1f3e350fcf591b82247ed9cfc6"
  head "https://github.com/badoo/FBSimulatorControl.git", branch: "badoo"
  version "HEAD-d318e0e"

  bottle do
    root_url "https://github.com/badoo/homebrew-qa-bottles/releases/download/v1.0"
    cellar :any_skip_relocation
    sha256 "10613870e4a51dddccec5e5ae600a2b166524a8f424bffc960ae23c69cfbd99a" => :catalina
    sha256 "10613870e4a51dddccec5e5ae600a2b166524a8f424bffc960ae23c69cfbd99a" => :big_sur
    sha256 "10613870e4a51dddccec5e5ae600a2b166524a8f424bffc960ae23c69cfbd99a" => :mojave
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

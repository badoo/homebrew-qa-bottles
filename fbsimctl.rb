class Fbsimctl < Formula
  desc "A Powerful Command Line tool for automating iOS Simulators"
  homepage "https://github.com/badoo/FBSimulatorControl"
  url "https://github.com/badoo/FBSimulatorControl/archive/d6edcb1.tar.gz"
  sha256 "486bdc39bdc4addb87b4e2f40c00ff865ea3b81a8d067f1ac60d838a1f2c90ac"
  head "https://github.com/badoo/FBSimulatorControl.git", branch: "badoo"
  version "HEAD-d6edcb1"

  bottle do
    root_url "https://github.com/badoo/homebrew-qa-bottles/releases/download/v1.0"
    cellar :any_skip_relocation
    sha256 "0a753968dabc5881afdef24159dcd8d338285bc124cb699c686a60ad1efb7a47" => :catalina
    sha256 "0a753968dabc5881afdef24159dcd8d338285bc124cb699c686a60ad1efb7a47" => :mojave
    sha256 "0a753968dabc5881afdef24159dcd8d338285bc124cb699c686a60ad1efb7a47" => :high_sierra
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

class Fbsimctl < Formula
  desc "A Powerful Command Line tool for automating iOS Simulators"
  homepage "https://github.com/badoo/FBSimulatorControl"
  url "https://github.com/badoo/FBSimulatorControl/archive/e5fbeb7.tar.gz"
  sha256 "3b0bc9cffe6e31d6e44b9b47133bb9a5e61a8bbf86f7275be2a3b7418c61685f"
  head "https://github.com/badoo/FBSimulatorControl.git", branch: "badoo"
  version "HEAD-e5fbeb7"

  bottle do
    rebuild 3
    root_url "https://github.com/badoo/homebrew-qa-bottles/releases/download/v1.0"
    cellar :any_skip_relocation
    sha256 "dc6d975e180bece688394251f30c96ea4b9169ebc1341f819ab5830fd241cf2e" => :catalina
    sha256 "dc6d975e180bece688394251f30c96ea4b9169ebc1341f819ab5830fd241cf2e" => :mojave
    sha256 "dc6d975e180bece688394251f30c96ea4b9169ebc1341f819ab5830fd241cf2e" => :high_sierra
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

class Fbsimctl < Formula
  desc "A Powerful Command Line tool for automating iOS Simulators"
  homepage "https://github.com/badoo/FBSimulatorControl"
  url "https://github.com/badoo/FBSimulatorControl/archive/87b5c21.tar.gz"
  sha256 "9d8b67fe21a0c651e30245bf34ab444a8346e1c96cf020e74eae331665fd3c3f"
  head "https://github.com/badoo/FBSimulatorControl.git", branch: "badoo"
  version "HEAD-87b5c21"

  bottle do
    root_url "https://github.com/badoo/homebrew-qa-bottles/releases/download/v1.0"
    cellar :any_skip_relocation
    sha256 "f1bb86190d45845c7c4ab3ca8d683a53f70b3a8c60f34cab955d353903e6943d" => :catalina
    sha256 "f1bb86190d45845c7c4ab3ca8d683a53f70b3a8c60f34cab955d353903e6943d" => :big_sur
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

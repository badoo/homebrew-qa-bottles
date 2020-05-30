class Fbsimctl < Formula
  desc "A Powerful Command Line tool for automating iOS Simulators"
  homepage "https://github.com/badoo/FBSimulatorControl"
  url "https://codeload.github.com/badoo/FBSimulatorControl/tar.gz/db78aaa"
  sha256 "79ff55608a86480d8e57aeb0194589da984b6ddea0e6d6de090223432733d726"
  head "https://github.com/badoo/FBSimulatorControl.git", branch: "badoo"
  version "HEAD-db78aaa"

  bottle do
    root_url "https://github.com/badoo/homebrew-qa-bottles/releases/download/v1.0"
    cellar :any_skip_relocation
    sha256 "c80f0d5356da109ca512eb0fd92ccb7a8307c417c0c26ed70e2a6e5f7709a7f9" => :catalina
    sha256 "c80f0d5356da109ca512eb0fd92ccb7a8307c417c0c26ed70e2a6e5f7709a7f9" => :mojave
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

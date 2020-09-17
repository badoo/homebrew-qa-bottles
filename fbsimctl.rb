class Fbsimctl < Formula
  desc "A Powerful Command Line tool for automating iOS Simulators"
  homepage "https://github.com/badoo/FBSimulatorControl"
  url "https://github.com/badoo/FBSimulatorControl/archive/ee4e262.tar.gz"
  sha256 "3cd852261651b9e791bec5c5ac28bc6da69b6f4a8ab37d61811659c02d2aee09"
  head "https://github.com/badoo/FBSimulatorControl.git", branch: "badoo"
  version "HEAD-ee4e262"

  bottle do
    root_url "https://github.com/badoo/homebrew-qa-bottles/releases/download/v1.0"
    cellar :any_skip_relocation
    sha256 "bdaf70f8837b413594af120c918595c1da93d74b48ba18582e05d38760b85f55" => :catalina
    sha256 "bdaf70f8837b413594af120c918595c1da93d74b48ba18582e05d38760b85f55" => :big_sur
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

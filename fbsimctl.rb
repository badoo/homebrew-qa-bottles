class Fbsimctl < Formula
  desc "A Powerful Command Line tool for automating iOS Simulators"
  homepage "https://github.com/badoo/FBSimulatorControl"
  url "https://github.com/badoo/FBSimulatorControl/archive/951a256.tar.gz"
  sha256 "d5a5ba3341229d5e0ce6f893da1e96d58975f8cdc9f147d5c04ca0651e7d662d"
  head "https://github.com/badoo/FBSimulatorControl.git", branch: "badoo"
  version "HEAD-951a256"

  bottle do
    root_url "https://github.com/badoo/homebrew-qa-bottles/releases/download/v1.0"
    cellar :any_skip_relocation
    sha256 "ff74749d50b02e51a6f83430fc0646b0ffcf8342958ee7036daa65595b2ce69f" => :catalina
    sha256 "ff74749d50b02e51a6f83430fc0646b0ffcf8342958ee7036daa65595b2ce69f" => :big_sur
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

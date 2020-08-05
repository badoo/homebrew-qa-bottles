class Fbsimctl < Formula
  desc "A Powerful Command Line tool for automating iOS Simulators"
  homepage "https://github.com/badoo/FBSimulatorControl"
  url "https://codeload.github.com/badoo/FBSimulatorControl/tar.gz/366de1f"
  sha256 "5e328886417c5b517e68331fdd459add30157a2d7e59b0bf32ca9c02123f52e7"
  head "https://github.com/badoo/FBSimulatorControl.git", branch: "badoo"
  version "HEAD-366de1f"

  bottle do
    root_url "https://github.com/badoo/homebrew-qa-bottles/releases/download/v1.0"
    cellar :any_skip_relocation
    sha256 "7df249564838613032ca65859364733c926afda0a9eb4e7f9c9d87dc4b9830fa" => :catalina
    sha256 "7df249564838613032ca65859364733c926afda0a9eb4e7f9c9d87dc4b9830fa" => :mojave
    sha256 "7df249564838613032ca65859364733c926afda0a9eb4e7f9c9d87dc4b9830fa" => :big_sur
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

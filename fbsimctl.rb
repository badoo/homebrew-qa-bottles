# typed: false
# frozen_string_literal: true

class Fbsimctl < Formula
  desc "Powerful Command-line tool for automating iOS Simulators"
  homepage "https://github.com/badoo/FBSimulatorControl"
  url "https://github.com/badoo/FBSimulatorControl/archive/d6d99e5.tar.gz"
  version "HEAD-d6d99e5"
  sha256 "50af6f1bb1e830a24d79dbf27484433e873b9ee24b4a02c2500335c3879a3ddf"
  head "https://github.com/badoo/FBSimulatorControl.git", branch: "badoo"

  bottle do
    root_url "https://github.com/badoo/homebrew-qa-bottles/releases/download/v1.0"
    sha256 cellar: :any_skip_relocation, catalina: "b4363a67733461c96817878b3a9b3521e7f5afecc1d930f2ce1c9765dfedd5c7"
    sha256 cellar: :any_skip_relocation, big_sur:  "b4363a67733461c96817878b3a9b3521e7f5afecc1d930f2ce1c9765dfedd5c7"
    sha256 cellar: :any_skip_relocation, mojave:   "b4363a67733461c96817878b3a9b3521e7f5afecc1d930f2ce1c9765dfedd5c7"
  end

  pour_bottle? do
    true
  end

  def install
    raise("local builds are unsupported")
  end

  test do
    system "fbsimctl", "list"
  end
end

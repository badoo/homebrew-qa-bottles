# typed: false
# frozen_string_literal: true

class Fbsimctl < Formula
  desc "Powerful Command-line tool for automating iOS Simulators"
  homepage "https://github.com/badoo/FBSimulatorControl"
  url "https://github.com/badoo/FBSimulatorControl/archive/refs/tags/0026866.tar.gz"
  version "HEAD-0026866"
  sha256 "ee17df66a8f89717e621efdce167367679439505564e89838f54f2c00a721bce"
  head "https://github.com/badoo/FBSimulatorControl.git", branch: "badoo"

  bottle do
    root_url "https://github.com/badoo/homebrew-qa-bottles/releases/download/v1.0"
    sha256 cellar: :any_skip_relocation, big_sur:  "539e8ee9fa074979541773070c6ffd01966afeaa78cec01f7509d315a7d58d3f"
    sha256 cellar: :any_skip_relocation, monterey: "539e8ee9fa074979541773070c6ffd01966afeaa78cec01f7509d315a7d58d3f"
    sha256 cellar: :any_skip_relocation, ventura: "539e8ee9fa074979541773070c6ffd01966afeaa78cec01f7509d315a7d58d3f"
    sha256 cellar: :any_skip_relocation, arm64_big_sur:  "539e8ee9fa074979541773070c6ffd01966afeaa78cec01f7509d315a7d58d3f"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "539e8ee9fa074979541773070c6ffd01966afeaa78cec01f7509d315a7d58d3f"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "539e8ee9fa074979541773070c6ffd01966afeaa78cec01f7509d315a7d58d3f"
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

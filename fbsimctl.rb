# typed: false
# frozen_string_literal: true

class Fbsimctl < Formula
  desc "Powerful Command-line tool for automating iOS Simulators"
  homepage "https://github.com/badoo/FBSimulatorControl"
  url "https://github.com/badoo/FBSimulatorControl/archive/refs/tags/982d46b.tar.gz"
  version "HEAD-982d46b"
  sha256 "3056d5f871436626effaf1328a33730dad8b2f262245590b6f9f92c4788f7aa3"
  head "https://github.com/badoo/FBSimulatorControl.git", branch: "badoo"

  bottle do
    root_url "https://github.com/badoo/homebrew-qa-bottles/releases/download/v1.0"
    sha256 cellar: :any_skip_relocation, big_sur:  "522ceefa2dc44b589dfdc90589e04fc62379ae5526c3f71156c8eb6140f458ef"
    sha256 cellar: :any_skip_relocation, catalina: "522ceefa2dc44b589dfdc90589e04fc62379ae5526c3f71156c8eb6140f458ef"
    sha256 cellar: :any_skip_relocation, monterey: "522ceefa2dc44b589dfdc90589e04fc62379ae5526c3f71156c8eb6140f458ef"
    sha256 cellar: :any_skip_relocation, sequoia: "522ceefa2dc44b589dfdc90589e04fc62379ae5526c3f71156c8eb6140f458ef"
    sha256 cellar: :any_skip_relocation, sonoma: "522ceefa2dc44b589dfdc90589e04fc62379ae5526c3f71156c8eb6140f458ef"
    sha256 cellar: :any_skip_relocation, ventura: "522ceefa2dc44b589dfdc90589e04fc62379ae5526c3f71156c8eb6140f458ef"
    sha256 cellar: :any_skip_relocation, arm64_big_sur:  "522ceefa2dc44b589dfdc90589e04fc62379ae5526c3f71156c8eb6140f458ef"
    sha256 cellar: :any_skip_relocation, arm64_catalina:  "522ceefa2dc44b589dfdc90589e04fc62379ae5526c3f71156c8eb6140f458ef"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "522ceefa2dc44b589dfdc90589e04fc62379ae5526c3f71156c8eb6140f458ef"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "522ceefa2dc44b589dfdc90589e04fc62379ae5526c3f71156c8eb6140f458ef"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "522ceefa2dc44b589dfdc90589e04fc62379ae5526c3f71156c8eb6140f458ef"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "522ceefa2dc44b589dfdc90589e04fc62379ae5526c3f71156c8eb6140f458ef"
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

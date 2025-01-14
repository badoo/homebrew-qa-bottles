# typed: false
# frozen_string_literal: true

class Fbsimctl < Formula
  desc "Powerful Command-line tool for automating iOS Simulators"
  homepage "https://github.com/badoo/FBSimulatorControl"
  url "https://github.com/badoo/FBSimulatorControl/archive/refs/tags/173069b.tar.gz"
  version "HEAD-173069b"
  sha256 "52a8c3c2e92ba33560afe659c2726b284caa2e0a0162c11a6680112434d1653f"
  head "https://github.com/badoo/FBSimulatorControl.git", branch: "badoo"

  bottle do
    root_url "https://github.com/badoo/homebrew-qa-bottles/releases/download/v1.0"
    sha256 cellar: :any_skip_relocation, big_sur:  "563abf19cb9177bda91ae785df782ffd0558d532b669364d35fcb668f8609f74"
    sha256 cellar: :any_skip_relocation, catalina: "563abf19cb9177bda91ae785df782ffd0558d532b669364d35fcb668f8609f74"
    sha256 cellar: :any_skip_relocation, monterey: "563abf19cb9177bda91ae785df782ffd0558d532b669364d35fcb668f8609f74"
    sha256 cellar: :any_skip_relocation, sequoia: "563abf19cb9177bda91ae785df782ffd0558d532b669364d35fcb668f8609f74"
    sha256 cellar: :any_skip_relocation, sonoma: "563abf19cb9177bda91ae785df782ffd0558d532b669364d35fcb668f8609f74"
    sha256 cellar: :any_skip_relocation, ventura: "563abf19cb9177bda91ae785df782ffd0558d532b669364d35fcb668f8609f74"
    sha256 cellar: :any_skip_relocation, arm64_big_sur:  "563abf19cb9177bda91ae785df782ffd0558d532b669364d35fcb668f8609f74"
    sha256 cellar: :any_skip_relocation, arm64_catalina:  "563abf19cb9177bda91ae785df782ffd0558d532b669364d35fcb668f8609f74"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "563abf19cb9177bda91ae785df782ffd0558d532b669364d35fcb668f8609f74"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "563abf19cb9177bda91ae785df782ffd0558d532b669364d35fcb668f8609f74"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "563abf19cb9177bda91ae785df782ffd0558d532b669364d35fcb668f8609f74"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "563abf19cb9177bda91ae785df782ffd0558d532b669364d35fcb668f8609f74"
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

# typed: false
# frozen_string_literal: true

class XchtmlreportAT210 < Formula
  desc "XCTestHTMLReport: Xcode-like HTML report for Unit and UI Tests"
  homepage "https://github.com/TitouanVanBelle/XCTestHTMLReport"
  url "https://github.com/TitouanVanBelle/XCTestHTMLReport/archive/2.1.0.tar.gz"
  sha256 "98bc4d97c18b7bfa46ca9fbe72df2351fa96acabe70f14ec5b4f9aeca7bc5b57"
  head "https://github.com/TitouanVanBelle/XCTestHTMLReport.git", branch: "develop"

  bottle do
    root_url "https://github.com/badoo/homebrew-qa-bottles/releases/download/v1.0"
    rebuild 1
    sha256 cellar: :any_skip_relocation, catalina: "0f5e96311a7aea3800c5c4424412b9c6df87a8701f569e63a5ce09197041623a"
    sha256 cellar: :any_skip_relocation, big_sur: "0f5e96311a7aea3800c5c4424412b9c6df87a8701f569e63a5ce09197041623a"
    sha256 cellar: :any_skip_relocation, mojave: "0f5e96311a7aea3800c5c4424412b9c6df87a8701f569e63a5ce09197041623a"
  end

  pour_bottle? do
    true
  end

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/xchtmlreport"
  end
end

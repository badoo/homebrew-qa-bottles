# typed: false
# frozen_string_literal: true
# brew install badoo/qa-bottles/jq@1.6
# https://github.com/badoo/homebrew-qa-bottles/blob/master/jq@1.6.rb
class JqAT16 < Formula
  desc "Lightweight and flexible command-line JSON processor"
  homepage "https://stedolan.github.io/jq/"
  url "https://github.com/stedolan/jq/releases/download/jq-1.6/jq-1.6.tar.gz"
  sha256 "5de8c8e29aaa3fb9cc6b47bb27299f271354ebb72514e3accadc7d38b5bbaa72"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
    regex(%r{href=.*?/tag/jq[._-]v?(\d+(?:\.\d+)+)["' >]}i)
  end

  bottle do
    root_url "https://github.com/badoo/homebrew-qa-bottles/releases/download/v1.0"
    rebuild 3
    sha256 cellar: :any, big_sur:  "577a1de11c52d02fc8b7115af56095dd7c7e2fbf9e517fb5839c9436afb33dd8"
    sha256 cellar: :any, catalina: "577a1de11c52d02fc8b7115af56095dd7c7e2fbf9e517fb5839c9436afb33dd8"
    sha256 cellar: :any, mojave:   "577a1de11c52d02fc8b7115af56095dd7c7e2fbf9e517fb5839c9436afb33dd8"
  end

  pour_bottle? do
    true
  end

  head do
    url "https://github.com/stedolan/jq.git"

    depends_on "autoconf" => :build
    depends_on "automake" => :build
    depends_on "libtool" => :build
  end

  depends_on "oniguruma"

  def install
    system "autoreconf", "-iv" if build.head?
    system "./configure", "--disable-dependency-tracking",
           "--disable-silent-rules",
           "--disable-maintainer-mode",
           "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    assert_equal "2\n", pipe_output("#{bin}/jq .bar", '{"foo":1, "bar":2}')
  end
end

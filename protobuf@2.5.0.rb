class ProtobufAT250 < Formula
  desc "Protocol buffers (Google's data interchange format)"

  homepage "https://github.com/protocolbuffers/protobuf/"
  url "https://github.com/protocolbuffers/protobuf/releases/download/v2.5.0/protobuf-2.5.0.tar.gz"
  sha256 "c55aa3dc538e6fd5eaf732f4eb6b98bdcb7cedb5b91d3b5bdcf29c98c293f58e"
  license "BSD-3-Clause"

  bottle do
    root_url "https://github.com/badoo/homebrew-qa-bottles/releases/download/v1.0"
    sha256 cellar: :any_skip_relocation, monterey: "33e1e6daafde7502a156724ab552a681aafdcbc0ad66079e8ee0dda4910fd69e"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "33e1e6daafde7502a156724ab552a681aafdcbc0ad66079e8ee0dda4910fd69e"
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

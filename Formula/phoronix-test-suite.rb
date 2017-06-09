class PhoronixTestSuite < Formula
  desc "Open-source automated testing/benchmarking software."
  homepage "http://www.phoronix-test-suite.com/"
  url "https://github.com/phoronix-test-suite/phoronix-test-suite/archive/v7.2.0.tar.gz"
  sha256 "20bdab1e979636476ebbfc003cbbbd36a04cc35acef825ff0d11a0b3a33a2474"

  def install
    system "./install-sh", prefix
    bash_completion.install "./pts-core/static/bash_completion"
  end

  test do
    assert_match "Trysil", shell_output("#{bin}/phoronix-test-suite version | grep -v ^$")
  end
end

class Erebus < Formula
  desc "Tor Relay Dashboard"
  homepage "https://erebus.github.io"
  # url "https://git.torproject.org/erebus.git", :branch => "master"
  head "https://github.com/erebus/erebus.git", :branch => "master"
  # sha256 :no_check

  bottle :unneeded
  depends_on "python"
  depends_on "tor"

  resource "stem" do
    url "https://pypi.python.org/packages/b3/4e/fc6bb6262fa9ca1b308aa735fc2186586106cef0cb4b4ba80aaaa3c9a071/stem-1.5.4.tar.gz"
    sha256 "3649133037ee186e80115650094a2fb2f60a23f006ebddab34d9039be9b2f7c8"
  end

  resource "cyclone" do
    url "https://pypi.python.org/packages/4c/dd/4ffe2be7df5aceb7e5ce1f1e6b2cd04d294eb30c323f35a06f199072a259/cyclone-1.1.tar.gz"
    sha256 "9b8af0c2a5d68b2b89087c2024cbf0e26b09265de3cb959afd3da04ab53b50d5"
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"run_erebus.py"
  end

  def caveats; <<-EOS.undent
    You'll need to enable the Tor Control Protocol in your torrc.
    See here for details: https://www.torproject.org/tor-manual.html.en

    You'll need to run run_erebus.py twice, once for the server and once for the client:

    Running erebus on your localhost relay.
    $python run_erebus.py
    [INFO] Erebus is running on port 8887 with dual mode.
    [INFO] Erebus server is located at http://127.0.0.1:8887
    EOS
  end
end

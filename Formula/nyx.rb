class Nyx < Formula
  desc "Terminal status monitor for Tor"
  homepage "https://www.atagar.com/arm/"
  # url "https://git.torproject.org/nyx.git", :branch => "master"
  head "https://git.torproject.org/nyx.git", :branch => "master"
  # sha256 :no_check

  bottle :unneeded
  depends_on "ncurses"
  depends_on :python
  depends_on "tor"

  resource "stem" do
    url "https://pypi.python.org/packages/b3/4e/fc6bb6262fa9ca1b308aa735fc2186586106cef0cb4b4ba80aaaa3c9a071/stem-1.5.4.tar.gz"
    sha256 "3649133037ee186e80115650094a2fb2f60a23f006ebddab34d9039be9b2f7c8"
  end

  def install
    libexec.install Dir["*"]
    #bin.write_exec_script libexec/"run_nyx"
  end

  def caveats; <<-EOS.undent
    You'll need to enable the Tor Control Protocol in your torrc.
    See here for details: https://www.torproject.org/tor-manual.html.en

    To configure Arm, copy the sample configuration from
    #{opt_libexec}/nyxrc.sample
    to ~/.nyx/nyxrc, adjusting as needed.
    EOS
  end
end

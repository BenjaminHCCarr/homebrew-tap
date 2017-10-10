class Arm < Formula
  desc "Terminal status monitor for Tor"
  homepage "https://www.atagar.com/arm/"
  url "https://www.atagar.com/arm/resources/static/arm-1.4.5.0.tar.bz2"
  sha256 "fc0e771585dde3803873b4807578060f0556cf1cac6c38840a714ffada3b28fa"
  revision 1

  bottle :unneeded

  depends_on "python"
  depends_on "tor"

  resource "stem" do
    url "https://pypi.python.org/packages/b3/4e/fc6bb6262fa9ca1b308aa735fc2186586106cef0cb4b4ba80aaaa3c9a071/stem-1.5.4.tar.gz"
    sha256 "3649133037ee186e80115650094a2fb2f60a23f006ebddab34d9039be9b2f7c8"
  end

  resource "stat" do
    url "https://pypi.python.org/packages/5b/9c/90f80cad031edc12bd003cb567e45f035dcf6aa2c29578b98a3acd62e3a3/Stat-0.5.tar.gz"
    sha256 "c5720e9106cf7bbf8737b39403f05277af258a3f9b65015a2c3ab3f5d2be8e93"
  end

  head do
    url "https://git.torproject.org/nyx.git", :branch => "master", :shallow => true
  end

  def install
    libexec.install Dir["*"]
    if build.head?
      inreplace "#{libexec}/run_nyx", "env python", "env python2.7"
      libexec.install_symlink "run_nyx" => "arm"
    end
    bin.write_exec_script libexec/"arm"
  end

  def caveats; <<-EOS.undent
    You'll need to enable the Tor Control Protocol in your torrc.
    See here for details: https://www.torproject.org/tor-manual.html.en

    To configure Arm, copy the sample configuration from
    #{opt_libexec}/armrc.sample
    to ~/.arm/armrc, adjusting as needed.
    EOS
  end
end

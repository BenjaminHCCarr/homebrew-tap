class NutMonitor < Formula
  desc "NUT-Monitor is a graphical application to monitor and manage UPSes connected to a NUT server"
  homepage "http://www.lestat.st/en/informatique/projets/nut-monitor"
  url "http://www.lestat.st/_media/informatique/projets/nut-monitor/nut-monitor-1.3.tar.gz"
  sha256 "a2e23b0372d170a9a67d55227ed4a0a6a9ae1505ad23b2004782ed9964567502"

  # depends_on "cmake" => :build
  depends_on "gtk+"
  depends_on "pygtk --with-libglade"

  # As requirements.txt is not handled, converted to resources
  resource "pynut2" do
    url "https://pypi.python.org/packages/3b/59/32ce2dcec93dbaa5c2fad285b680732753d519d3098209f6a097da872305/pynut2-2.1.2.tar.gz"
    sha256 "e0ac2406f5e38a3d4437effbb82db20f6a9f133d5687ab86f050e2885fb453a2"
  end
  # resource "GladeBuilder" do
  #   url "https://pypi.python.org/packages/42/de/053012aaf58db1ed59ab316f784fd4e02275ea7179304510ecfd394a2fa7/GladeBuilder-0.1.0.tar.gz"
  #   sha256 "d4c2df3484d9738ff1ca9a8f37ad88ecd492ba70a23e220e70ffd39706ead82b"
  # end

  def install

  end

  test do
    system "true"
  end
end

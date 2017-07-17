class Gkrellmweather < Formula
  desc "Weather plugin for the GKrellM Extensible monitoring system"
  homepage "https://sites.google.com/site/makovick/gkrellm-plugins"
  url "https://sites.google.com/site/makovick/projects/gkrellweather-2.0.8.tgz"
  sha256 "06236ad489151019e71bab4ba63b4b8b06d58c58890caed8b1a28fdd05cde16d"

  depends_on "gkrellm"
  depends_on "wget"
  depends_on "glib" => :build
  depends_on "gtk"  => :build

  def install
    system "make", "INSTALLROOT=#{prefix}"
    system "make", "INSTALLROOT=#{prefix}", "install"
  end

  test do
    true
  end
end

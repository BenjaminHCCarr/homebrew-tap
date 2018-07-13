class Gcr < Formula
  desc "A library for displaying certificates, and crypto UI, accessing
key stores."
  homepage "https://gitlab.gnome.org/GNOME/gcr"
  url "https://gitlab.gnome.org/GNOME/gcr/-/archive/3.28.0/gcr-3.28.0.tar.gz"
  sha256 "6cf269fb0e2d813ea0d574093de9de05c98ae39ba27bba74ada949f88de11e8d"

  bottle :unneeded

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "pkg-config" => :build
  depends_on "glib"
  depends_on "gpg2"
  depends_on "gtk+"
  depends_on "gtk+3"
  depends_on "libgcrypt"
  depends_on "p11-kit"
  depends_on "shared-mime-info"

  def install
    system "./autogen.sh"
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

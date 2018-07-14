class Gcr < Formula
  desc "Library for displaying certificates, and crypto UI, accessing key stores"
  homepage "https://gitlab.gnome.org/GNOME/gcr"
  url "https://gitlab.gnome.org/GNOME/gcr/-/archive/3.28.0/gcr-3.28.0.tar.gz"
  sha256 "82d9e71cda2a631ada2960fde2ec5b8ac9f5fec86093a91d1f00b08ccfa294e4"

  bottle :unneeded

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "intltool" => :build
  depends_on "pkg-config" => :build
  depends_on "gdk-pixbuf"
  depends_on "gettext"
  depends_on "glib"
  depends_on "gnupg"
  depends_on "gtk+"
  depends_on "gtk+3"
  depends_on "gtk-doc"
  depends_on "libgcrypt"
  depends_on "p11-kit"
  depends_on "shared-mime-info"

  def install
    inreplace "configure.ac", "$GTK_REQ gtk+-x11-3.0 >= $GTK_REQ)", "$GTK_REQ)"
    inreplace "./ui/frob-prompt.c", "#include <gdk/gdkx.h>", ""
    inreplace "./ui/frob-system-prompt.c", "#include <gdk/gdkx.h>", ""
    inreplace "./ui/gcr-prompt-dialog.c", "#include <gdk/gdkx.h>", ""
    inreplace "./ui/gcr-prompter-tool.c", "#include <gdk/gdkx.h>", "" 
    system "./autogen.sh"
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end
end

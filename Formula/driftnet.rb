class Driftnet < Formula
  desc "listens to network traffic and displays images from TCP stream"
  homepage "http://www.ex-parrot.com/~chris/driftnet/"
  url "http://www.ex-parrot.com/~chris/driftnet/driftnet-0.1.6.tar.gz"
  mirror "https://www.vanheusden.com/mirrors/driftnet-0.1.6.tar.gz"
  sha256 "dbdf7ead3ae14b109f88c86dedeb7524be8c257aa773a781891216f013373d6d"

  depends_on "atk" => :build
  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "cairo" => :build
  depends_on "giflib" => :build
  depends_on "gdk-pixbuf" => :build
  depends_on "glib" => :build
  depends_on "gtk+" => :build
  depends_on "gtk+3" => :build
  depends_on "pango" => :build
  depends_on "libtool" => :build
  depends_on "make" => :build
  depends_on "makedepend" => :build
  depends_on "pkg-config" => :build
  depends_on "libpcap" => :build
  depends_on "libpcap"


  def install
    inreplace "display.c", '#include <gdk/gdkx.h>', '#include <gdk/gdkquartz.h>'
    inreplace "gif.c", 'g = I->us = DGifOpenFileHandle(fileno(I->fp));', 'g = I->us = DGifOpenFileHandle(fileno(I->fp), 0);'
    inreplace "gif.c", 'DGifCloseFile((GifFileType*)I->us);', 'DGifCloseFile((GifFileType*)I->us,0);'
    inreplace "gif.c", 'DGifCloseFile(g);', 'DGifCloseFile(g,0);'
    inreplace "Makefile", '#CC = gcc', 'CC = gcc'
    inreplace "Makefile", 'CFLAGS  += `gtk-config --cflags`', 'CFLAGS  += `pkg-config --cflags`'
    inreplace "Makefile", 'LDLIBS  += -ljpeg -lungif `gtk-config --libs`', 'LDLIBS  += -ljpeg -lungif `pkg-config --libs`'
    #inreplace "Makefile", '#CFLAGS += -I/usr/local/include', 'CFLAGS += -I /usr/local/include'
    ENV.append_to_cflags "-I /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include"
    ENV.append_to_cflags "-I /Library/Developer/CommandLineTools/usr/lib/clang/8.0.0/include"
    ENV.append_to_cflags "-I /System/Library/Frameworks/Kernel.framework/Versions/A/Headers"
    ENV.append_to_cflags "-I /System/Library/Frameworks/Kernel.framework/Versions/A/Headers/sys"
    ENV.append_to_cflags "-I /usr/include"
    ENV.append_to_cflags "-I /usr/local/include"
    ENV.append_to_cflags "-I /usr/local/include/atk-1.0"
    ENV.append_to_cflags "-I /usr/local/include/cairo"
    ENV.append_to_cflags "-I /usr/local/include/gdk-pixbuf-2.0"
    ENV.append_to_cflags "-I /usr/local/include/glib-2.0"
    ENV.append_to_cflags "-I /usr/local/Cellar/glib/2.52.0/lib/glib-2.0/include"
    ENV.append_to_cflags "-I /usr/local/Cellar/gtk+/2.24.31_1/lib/gtk-2.0/include"
    ENV.append_to_cflags "-I /usr/local/include/gtk-2.0"
    #ENV.append_to_cflags "-I /usr/local/include/gtk-3.0"
    ENV.append_to_cflags "-I /usr/local/include/pango-1.0"

    system "make"
    # system "make", "install"
  end
end

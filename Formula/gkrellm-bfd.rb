class GkrellmBfd < Formula
  desc "BubbleFishyMon with gkrellm support"
  homepage "https://github.com/JNRowe-retired/bfm/"
  url "https://github.com/JNRowe-retired/bfm/archive/0.6.4.tar.gz"
  sha256 "6911aacfd8cd571f9903b5385a262ee979bd778f82f4b093ca120160a458c059"

  def install
    inreplace "Makefile", 'GTK2_CFLAGS = $(shell pkg-config gtk+-2.0 --cflags)', 'CFLAGS  += `pkg-config gtk+-2.0 --cflags`'
    inreplace "Makefile", 'GTK2_LIBS = $(shell pkg-config gtk+-2.0 --libs)', 'CFLAGS  += `pkg-config gtk+-2.0 --libs`'
    ENV.append_to_cflags "-I /usr/local/include/gtk-2.0"
    ENV.append_to_cflags "-I /usr/local/include/glib-2.0"
    ENV.append_to_cflags "-I /usr/local/include/gkrellm2"

    inreplace "fishmon.c", '#include <gdk/gdk.h>', '#include </usr/local/include/gtk-2.0/gdk/gdk.h>'
    inreplace "fishmon.c", '#include <gdk/gdkx.h>', '#include </usr/local/include/gtk-2.0/gdk/gdkquartz.h>'
    #inreplace "fishmon.c", '#include <gdk/gdkx.h>', '#include <gdk/gdkquartz.h>'
    inreplace "fishmon.c", '#include <X11/Xresource.h>', '##include <X11/Xresource.h>'

    inreplace "bubblemon.c", '#include <gdk/gdk.h>', '#include </usr/local/include/gtk-2.0/gdk/gdk.h>'
    inreplace "bubblemon.c", '#include <gdk/gdkx.h>', '#include </usr/local/include/gtk-2.0/gdk/gdkquartz.h>'
    #inreplace "bubblemon.c", '#include <gdk/gdkapplaunchcontext.h>', '#include </usr/local/include/gtk-2.0/gdk/gdkapplaunchcontext.h>'
    #inreplace "bubblemon.c", '#include <gdk/gdkx.h>', '#include <gdk/gdkquartz.h>'
    inreplace "bubblemon.c", '#include <X11/Xresource.h>', '##include <X11/Xresource.h>'

    #inreplace "gkrellm-bfm.c", '#else', '##else'
    #inreplace "gkrellm-bfm.c" , 'include <gkrellm/gkrellm.h>',
    #inreplace "gkrellm-bfm.c", '#endif', '##endif'

    system "make", "gkrellm"
  end

  test do
    system "true"
  end
end

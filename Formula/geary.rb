class Geary < Formula
  desc "Is an email application built around conversations"
  homepage "https://wiki.gnome.org/Apps/Geary"
  url "https://git.gnome.org/browse/geary/snapshot/geary-0.12.1.zip"
  sha256 "5aaffb608ec0704dd55ad59a6b0cb92300456a7e0384ef1399f3a1e9f4db1036"

  bottle :unneeded
  depends_on "cmake" => :build
  depends_on "intltool" => :build
  depends_on "pkg-config" => :build
  depends_on "desktop-file-utils"
  depends_on "enchant"
  depends_on "glib"
  depends_on "gmime"
  depends_on "gnome-doc-utils"
  depends_on "gobject-introspection"
  depends_on "grc"
  depends_on "gtk+3"
  depends_on "libcanberra"
  depends_on "libgee"
  depends_on "libnotify"
  depends_on "libsecret"
  depends_on "libxml2"
  depends_on "sqlite"
  depends_on "vala"
  # webkitgtk4-devel

  def install
    system "./configure", "--disable-desktop-update",
                          "--disable-icon-update",
                          "--disable-contractor",
                          "--prefix=#{prefix}"
    system "cmake", *std_cmake_args
    system "make", "install"
  end

  # test do
  #  assert_match "real-time", shell_output("#{bin}/gpredict -h")
  # end
end

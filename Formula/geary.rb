class Geary < Formula
  desc "Is an email application built around conversations"
  homepage "https://wiki.gnome.org/Apps/Geary"
  url "https://gitlab.gnome.org/GNOME/geary/-/archive/geary-0.12.2/geary-geary-0.12.2.tar.gz"
  sha256 "6cf269fb0e2d813ea0d574093de9de05c98ae39ba27bba74ada949f88de11e8d"

  bottle :unneeded
  depends_on "cmake" => :build
  depends_on "intltool" => :build
  depends_on "pkg-config" => :build
  depends_on "desktop-file-utils"
  depends_on "enchant"
  # depends_on "gcr"
  depends_on "gettext"
  depends_on "glib"
  depends_on "gmime"
  depends_on "gnome-doc-utils"
  depends_on "gobject-introspection"
  depends_on "gtk+3"
  depends_on "libcanberra"
  depends_on "libgcrypt"
  depends_on "libgee"
  depends_on "libnotify"
  depends_on "libsecret"
  depends_on "libxml2"
  depends_on "vala"

  def install
    system "./configure", "--disable-desktop-update",
                          "--disable-desktop-validate",
                          "--disable-icon-update",
                          "--disable-contractor",
                          "--disable-schemas-compile",
                          "--prefix=#{prefix}"
    system "cmake", *std_cmake_args
    system "make", "install"
  end

  # test do
  #  assert_match "real-time", shell_output("#{bin}/gpredict -h")
  # end
end

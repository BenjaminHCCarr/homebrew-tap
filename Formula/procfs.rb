class Procfs < Formula
  desc "/proc for macOS/OS X 64-bitthrough FUSE file system"
  homepage "https://github.com/BenjaminHCCarr/procfs"
  url "https://github.com/BenjaminHCCarr/procfs/archive/v0.0.1.tar.gz"
  sha256 "e63d29a050d2e96a6eab8b460b43167b3e350501970ccc38183b05167aa2c757"
  head "https://github.com/BenjaminHCCarr/procfs"

  depends_on "automake" => :build
  depends_on "pkg-config" => :build
  depends_on "pcre"
  depends_on :osxfuse


  def install
      system "make"
      #system "make", "install"
    end
  end

  test do
    # Functional test violates sandboxing, so punt.
    # Issue #50602; upstream issue vgough/encfs#151
    #assert_match version.to_s, shell_output("#{bin}/encfs 2>&1", 1)
  end
end

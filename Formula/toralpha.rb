class Toralpha < Formula
  desc "Anonymizing overlay network for TCP"
  homepage "https://www.torproject.org/"
  url "https://tor.eff.org/dist/tor-0.3.4.7-rc.tar.gz"
  mirror "https://dist.torproject.org/tor-0.3.4.7-rc.tar.gz"
  sha256 "d64d096983622cf44a9d557dd02e801c035a295e8d3f5d6d565cedd3f156e565"

  bottle :unneeded

  depends_on "pkg-config" => :build
  depends_on "libevent"
  depends_on "openssl"
  depends_on "libscrypt"

  conflicts_with "tor"

  def install
    args = %W[
      --disable-dependency-tracking
      --disable-silent-rules
      --prefix=#{prefix}
      --sysconfdir=#{etc}
      --localstatedir=#{var}
      --with-openssl-dir=#{Formula["openssl"].opt_prefix}
    ]

    system "./configure", *args
    system "make", "install"
  end

  def caveats; <<~EOS
    This is tracking -alpha, you should not use this if you don't know what you are doing with Tor. This is to help the Tor team test new features like scheduling.
  EOS
  end

  plist_options :manual => "tor"

  def plist; <<~EOS
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
      <dict>
        <key>Label</key>
        <string>#{plist_name}</string>
        <key>RunAtLoad</key>
        <true/>
        <key>KeepAlive</key>
        <true/>
        <key>ProgramArguments</key>
        <array>
            <string>#{opt_bin}/tor</string>
        </array>
        <key>WorkingDirectory</key>
        <string>#{HOMEBREW_PREFIX}</string>
        <key>StandardErrorPath</key>
        <string>#{var}/log/tor.log</string>
        <key>StandardOutPath</key>
        <string>#{var}/log/tor.log</string>
      </dict>
    </plist>
  EOS
  end

  test do
    pipe_output("script -q /dev/null #{bin}/tor-gencert --create-identity-key", "passwd\npasswd\n")
    assert_predicate testpath/"authority_certificate", :exist?
    assert_predicate testpath/"authority_signing_key", :exist?
    assert_predicate testpath/"authority_identity_key", :exist?
  end
end

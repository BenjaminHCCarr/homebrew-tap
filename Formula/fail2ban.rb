class Fail2ban < Formula
  desc "Scan log files and ban IPs showing malicious signs"
  homepage "http://www.fail2ban.org/"
  url "https://github.com/fail2ban/fail2ban/archive/0.9.6.tar.gz"
  sha256 "1712e4eda469513fb2f44951957a4159e0fa62cb9da16ed48e7f4f4037f0b976"

  depends_on :python

  def install
    rm "setup.cfg"
    inreplace "setup.py" do |s|
      s.gsub! %r{/etc}, etc
      s.gsub! %r{/var}, var
    end

    ENV.prepend_create_path "PYTHONPATH", "#{libexec}"
    inreplace "config/fail2ban.conf", "/var/run", (var/"run")

    inreplace "setup.py", "/usr/share/doc/fail2ban", (libexec/"doc")

    system "python", "setup.py", "install", "--prefix=#{prefix}", "--install-lib=#{libexec}"
  end

  def caveats
    <<-EOS.undent
      Before using Fail2Ban for the first time you should edit jail
      configuration and enable the jails that you want to use, for instance
      ssh-ipfw. Also make sure that they point to the correct configuration
      path. I.e. on Mountain Lion the sshd logfile should point to
      /var/log/system.log.

        * #{etc}/fail2ban/jail.conf
        * #{etc}/fail2ban/jail.d/jail.local

      The Fail2Ban wiki has two pages with instructions for macOS Server that
      describes how to set up the Jails for the standard macOS Server
      services for the respective releases. Though somewhat outdated.

        10.4: http://www.fail2ban.org/wiki/index.php/HOWTO_Mac_OS_X_Server_(10.4)
        10.5: http://www.fail2ban.org/wiki/index.php/HOWTO_Mac_OS_X_Server_(10.5)
    EOS
  end

  plist_options :startup => true

  def plist; <<-EOS.undent
      <?xml version="1.0" encoding="UTF-8"?>
      <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
      <plist version="1.0">
      <dict>
        <key>Label</key>
        <string>#{plist_name}</string>
        <key>ProgramArguments</key>
        <array>
          <string>#{opt_bin}/fail2ban-client</string>
          <string>-x</string>
          <string>start</string>
        </array>
        <key>RunAtLoad</key>
        <true/>
      </dict>
      </plist>
    EOS
  end
end

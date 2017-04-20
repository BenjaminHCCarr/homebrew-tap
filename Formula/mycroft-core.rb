class MycroftCore < Formula
  include Language::Python::Virtualenv

  desc "OpenSource Artificial Intelligence platform"
  homepage "https://mycroft.ai/"
  url "https://github.com/MycroftAI/mycroft-core/archive/release/v0.8.8.tar.gz"
  sha256 "1ef2d4911416834969235682d5e80b9a4d05be05a77ae25956ad802d7ee961dc"

  depends_on "autoconf" => :build
  depends_on "libtool" => :build
  depends_on "swig" => :build
  depends_on "python"
  depends_on "pyenv"
  depends_on "pygobject"
  depends_on "pyenv-virtualenvwrapper"
  depends_on "bison"
  depends_on "curl"
  depends_on "flac"
  depends_on "glib"
  depends_on "libffi"
  depends_on "mpg123"
  depends_on "openssl"
  depends_on "portaudio"
  depends_on "s3cmd"

  # def install
  #   system "cp mycroft-base-setup.py setup.py"
  #   venv = virtualenv_create(libexec)
  #   %w[six parsedatetime].each do |r|
  #     venv.pip_install resource(r)
  #   end
  #   venv.link_scripts(bin) { venv.pip_install buildpath }
  # end
  def install
    system "cp", "mycroft-base-setup.py", "setup.py"
    virtualenv_install_with_resources
  end
  test do
    system "true"
  end
end

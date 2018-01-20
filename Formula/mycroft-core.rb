class MycroftCore < Formula
  include Language::Python::Virtualenv

  desc "OpenSource Artificial Intelligence platform"
  homepage "https://mycroft.ai/"
  url "https://github.com/MycroftAI/mycroft-core/archive/release/v0.9.13.tar.gz"
  sha256 "ee15758ab08881725fd991602c3c29cc844098eece3da467c5de4cd2c64da337"

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
  depends_on "pulseaudio"
  depends_on "s3cmd"

  # As requirements.txt is not handled, converted to resources
  resource "six" do
    url "https://pypi.python.org/packages/b3/b2/238e2590826bfdd113244a40d9d3eb26918bd798fc187e2360a8367068db/six-1.10.0.tar.gz"
    sha256 "105f8d68616f8248e24bf0e9372ef04d3cc10104f1980f54d57b2ce73a5ad56a"
  end

  resource "requests" do
    url "https://pypi.python.org/packages/16/09/37b69de7c924d318e51ece1c4ceb679bf93be9d05973bb30c35babd596e2/requests-2.13.0.tar.gz"
    sha256 "5722cd09762faa01276230270ff16af7acf7c5c45d623868d9ba116f15791ce8"
  end

  resource "gTTS" do
    url "https://pypi.python.org/packages/9d/7d/ae1af3b5e4912a630d7aae23c43577799cf49cddd0f5a00a33791d414c2d/gTTS-1.1.7.tar.gz"
    sha256 "124dfc447056cc622989319ebb553d56cfd5c197c345cee3397b675a6da84f58"
  end

  resource "gTTS-token" do
    url "https://pypi.python.org/packages/4c/c8/dd58eba1464729095217d3acfc4f6581348c6f495ea3342ed7dbc9f9e133/gTTS-token-1.1.1.zip"
    sha256 "74badf3ba37773d8ba4a462a09b64de76a0ebd4015d667a6fdb041c2219283ef"
  end

  resource "backports.ssl-match-hostname" do
    url "https://pypi.python.org/packages/3a/15/f9e48bfd2b971ade10ad0c03babab057791c260b05322cbd3f47e27be108/backports.ssl_match_hostname-3.4.0.2.tar.gz"
    sha256 "07410e7fb09aab7bdaf5e618de66c3dac84e2e3d628352814dc4c37de321d6ae"
  end

  resource "PyAudio" do
    url "https://pypi.python.org/packages/94/3e/430d4e4e24e89b19c1df052644f69e03d64c1ae2e83f5a14bd365e0236de/PyAudio-0.2.11-cp27-cp27m-win_amd64.whl"
    sha256 "259bb9c1363be895b4f9a97e320a6017dd06bc540728c1a04eb4a7b6fe75035b"
  end

  resource "pyee" do
    url "https://pypi.python.org/packages/0b/94/6820b8b1a21ce4d6a1c807342ac35cf4d5fd89b94b3f12e10de3c34d5507/pyee-1.0.1.tar.gz"
    sha256 "445c9cd811a53eeee3dd5649a02960eef142cbbf8f6fa10e5d31ebc4f8c78f68"
  end

  resource "SpeechRecognition" do
    url "https://pypi.python.org/packages/27/42/e2f59426317908b2c8ee393ae6b2815deada625ccebca00f71ee1fec46e3/SpeechRecognition-3.1.3.tar.gz"
    sha256 "1f21af50e41f219f2c91edbf9e791a291c154b209ec2ddc261a3f76718e7bf50"
  end

  resource "tornado" do
    url "https://pypi.python.org/packages/ec/af/c40ad78dacdef134f3e08b3103c3c859b14ceb9639d344811339227b6444/tornado-4.2.1.tar.gz"
    sha256 "a16fcdc4f76b184cb82f4f9eaeeacef6113b524b26a2cb331222e4a7fa6f2969"
  end

  resource "websocket-client" do
    url "https://pypi.python.org/packages/f4/06/5552e64fee863aa9decbb4e46dccc05fe730a36f49f0d6427398837297da/websocket_client-0.32.0.tar.gz"
    sha256 "cb3ab95617ed2098d24723e3ad04ed06c4fde661400b96daa1859af965bfe040"
  end

  resource "adapt-parser" do
    url "https://pypi.python.org/packages/36/a4/3ef82c754a8fb079a98d0adb66be1e3dc7a42d6faafdf1f106924a48c352/adapt-parser-0.3.0.tar.gz"
    sha256 "9445c9be4fcf3c519d1fbc605ea289349e11c2eb581db72242b61d12cc4d337f"
  end

  resource "futures" do
    url "https://pypi.python.org/packages/4c/dc/f9473006d4c9c52d4a4e977173fbcbfb1a8ef3a57e32e885edf994fd4a45/futures-3.0.3.tar.gz"
    sha256 "2fe2342bb4fe8b8e217f0d21b5921cbe5408bf966d9f92025e707e881b198bed"
  end

  resource "future" do
    url "https://pypi.python.org/packages/00/2b/8d082ddfed935f3608cc61140df6dcbf0edea1bc3ab52fb6c29ae3e81e85/future-0.16.0.tar.gz"
    sha256 "e39ced1ab767b5936646cedba8bcce582398233d6a627067d4c6a454c90cfedb"
  end

  resource "requests-futures" do
    url "https://pypi.python.org/packages/25/43/bf8e46a309b5bb08f9d7813473ddb5f27a40d194ddf120fa4f193aa764e3/requests-futures-0.9.5.tar.gz"
    sha256 "33aa8a3b7892850701707d7e094b1e1ce7c4f7a36ff2a1dcc2da4e01a1a00f7e"
  end

  resource "parsedatetime" do
    url "https://pypi.python.org/packages/f7/e8/5fa5dd8643cd9c75d2823faf7e07657d3b440cb446c872ec71e48c813cc8/parsedatetime-1.5.tar.gz"
    sha256 "3da6be2be506f59cce32e19e30e201053e1bb4d07e25668918e00f8a49ad40ab"
  end

  resource "pyyaml" do
    url "https://pypi.python.org/packages/75/5e/b84feba55e20f8da46ead76f14a3943c8cb722d40360702b2365b91dec00/PyYAML-3.11.tar.gz"
    sha256 "c36c938a872e5ff494938b33b14aaa156cb439ec67548fcab3535bb78b0846e8"
  end

  resource "pyalsaaudio" do
    url "https://pypi.python.org/packages/0d/99/1f48912b5ffccecdd0c0c477023f4eaf45ebac6c92bc1865c7142c570d6d/pyalsaaudio-0.8.2.tar.gz"
    sha256 "b6df486f1c4035041a5f3800496b86c64e48e4a7d47f94dcbca11b0187aa3a15"
  end

  resource "xmlrunner" do
    url "https://pypi.python.org/packages/57/c0/a19e29bc6038a56bb690549573af6ea11a9d2a5c07aff2e27ed308c2cab9/xmlrunner-1.7.7.tar.gz"
    sha256 "5a6113d049eca7646111ee657266966e5bbfb0b5ceb2e83ee0772e16d7110f39"
  end

  resource "pyserial" do
    url "https://pypi.python.org/packages/69/89/24fc8c26e23710a0d8fdf9e8134b28ceeab421d3f3e0165ceca6bdb98193/pyserial-3.0.tar.gz"
    sha256 "056c2d96c83c009d8d04aad43a90f91f10f6a97d42c0d9656c2655c63fb8ff07"
  end

  resource "psutil" do
    url "https://pypi.python.org/packages/4c/03/fffda9f6e1ca56ce989362969b709bf7a7ade16abf7d82661bbec96580f5/psutil-5.2.1-cp27-none-win_amd64.whl"
    sha256 "e88fe0d0ca5a9623f0d8d6be05a82e33984f27b067f08806bf8a548ba4361b40"
  end

  resource "pocketsphinx" do
    url "https://pypi.python.org/packages/86/71/442d44face1349cd4b71aab9ba8a786e64708d617126ca262702da3d04c7/pocketsphinx-0.1.0-cp27-cp27m-win_amd64.whl"
    sha256 "1fae2207ff840ac89b7cb87798608dd716979f147986b42ab697aa48910baaa3"
  end

  resource "inflection" do
    url "https://pypi.python.org/packages/d5/35/a6eb45b4e2356fe688b21570864d4aa0d0a880ce387defe9c589112077f8/inflection-0.3.1.tar.gz"
    sha256 "18ea7fb7a7d152853386523def08736aa8c32636b047ade55f7578c4edeb16ca"
  end

  resource "pillow" do
    url "https://pypi.python.org/packages/02/62/0c7b4f876f2f76b4ab6d2f93fb76cee872fe4d45fbee3d79501bbe9e3015/Pillow-4.1.1-cp27-cp27m-manylinux1_i686.whl"
    sha256 "f63404731fa5fa0c21d00af119b867e30208e3fc148c9b13fb6a541a8df203b2"
  end

  resource "python-dateutil" do
    url "https://pypi.python.org/packages/51/fc/39a3fbde6864942e8bb24c93663734b74e281b984d1b8c4f95d64b0c21f6/python-dateutil-2.6.0.tar.gz"
    sha256 "62a2f8df3d66f878373fd0072eacf4ee52194ba302e00082828e0d263b0418d2"
  end

  resource "pychromecast" do
    url "https://pypi.python.org/packages/cf/07/9a95c424e080f4b4e3b0b58cc91e67b03ce67e7f1a4f204e886d2838665f/PyChromecast-0.7.7.tar.gz"
    sha256 "addc87ecb769c6883756081e0e775d6cac0b45b6698419d7419c589ff7f55244"
  end

  resource "python-vlc" do
    url "https://pypi.python.org/packages/43/ea/f2726b9eca7ded969d9671c583d5079f2486b8d3454f4e9d6649e0455909/python-vlc-1.1.2.tar.gz"
    sha256 "9727819d0051bfc21a17bf355f917a503be6bafdaa7c414d6bf81acc7081081d"
  end

  resource "pulsectl" do
    url "https://pypi.python.org/packages/ed/14/4734e40340ab115e53762617c8fa654255e1b6e0d72c129e47f78a02429f/pulsectl-17.7.4.tar.gz"
    sha256 "b18741b8ccd34244bc132601e0ed8fd2bd68289f52d8e415c14f3606893949b1"
  end

  resource "google-api-python-client" do
    url "https://pypi.python.org/packages/b4/b3/f9be3f2ec31491c8f74e5c7905fabe890dedb4e1e8db5c951df3c167be41/google-api-python-client-1.6.4.tar.gz"
    sha256 "bb1f27740f6596f8272a2e1033d93d68e27e8ed5d22d6ab957e3f1d3f8ce05f6"
  end

  resource "padatious" do
    url "https://pypi.python.org/packages/a1/fd/bfe9d774efb269eac603230243a1df46e5c275915df4262213c56c0b0138/padatious-0.3.7.tar.gz"
    sha256 "947f586ff699c22f210afc28492dd584fb592e31acc1e0b9e874b98ddc242c98"
  end

  def install
    system "cp", "mycroft-base-setup.py", "setup.py"
    virtualenv_install_with_resources
  end
  test do
    system "true"
  end
end

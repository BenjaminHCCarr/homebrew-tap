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

  # As requirements.txt is not handled, converted to resources
  resource "shortuuid" do
    url "https://pypi.python.org/packages/e9/41/d867be1470af87dd8af1b3462e5eae44f78ffd33cec54630d40ca6b2d0bd/shortuuid-0.4.3.tar.gz"
    sha256 "4606dbb19124d98109c00e2cafae2df8117aec02115623e18fb2abe3f766d293"
  end

  resource "pystache" do
    url "https://pypi.python.org/packages/d6/fd/eb8c212053addd941cc90baac307c00ac246ac3fce7166b86434c6eae963/pystache-0.5.4.tar.gz"
    sha256 "f7bbc265fb957b4d6c7c042b336563179444ab313fb93a719759111eabd3b85a"
  end

  resource "configobj" do
    url "https://pypi.python.org/packages/64/61/079eb60459c44929e684fa7d9e2fdca403f67d64dd9dbac27296be2e0fab/configobj-5.0.6.tar.gz"
    sha256 "a2f5650770e1c87fb335af19a9b7eb73fc05ccf22144eb68db7d00cd2bcb0902"
  end

  resource "wikipedia" do
    url "https://pypi.python.org/packages/67/35/25e68fbc99e672127cc6fbb14b8ec1ba3dfef035bf1e4c90f78f24a80b7d/wikipedia-1.4.0.tar.gz"
    sha256 "db0fad1829fdd441b1852306e9856398204dc0786d2996dd2e0c8bb8e26133b2"
  end

  resource "requests" do
    url "https://pypi.python.org/packages/bf/99/af6139323bac0ca0c6023eabbdc526579525f5584278d001dd2e169f8300/requests-2.12.5-py2.py3-none-any.whl"
    sha256 "d57dae49f4267e8cb378aff9e426c9304a78794d03e945e39bfc607355715658"
  end

  resource "pyOpenSSL" do
    url "https://pypi.python.org/packages/b1/4e/54c8995d2de887919272c2b711cd430277ec33e0f7bb88cb564244c102b6/pyOpenSSL-16.0.0-py2.py3-none-any.whl"
    sha256 "5add70cf00273bf957ca31fdb0df9b0ae4639e081897d5f86a0ae1f104901230"
  end

  resource "ndg-httpsclient" do
    url "https://pypi.python.org/packages/df/a8/e7d70a8dd58c206c57b754fe15e5eb5f302f63fb1bfde5f26a0f5b019557/ndg_httpsclient-0.4.0.tar.gz"
    sha256 "e8c155fdebd9c4bcb0810b4ed01ae1987554b1ee034dd7532d7b8fdae38a6274"
  end

  resource "pyasn1" do
    url "https://pypi.python.org/packages/48/2c/dce56c03cfe0500349e4cd1b778462f15b03615ce02d4ee7c7519c2108d1/pyasn1-0.1.9-py2.4.egg"
    sha256 "61f9d99e3cef65feb1bfe3a2eef7a93eb93819d345bf54bcd42f4e63d5204dae"
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

  resource "certifi" do
    url "https://pypi.python.org/packages/db/60/1ed0106bde7b14b363b15b17cc308aad93ba57d3582570f3ad7180ae0fae/certifi-2016.2.28-py2.py3-none-any.whl"
    sha256 "75c33d546e0a732a4606749cbadcd81929f30d8b814061ca93cde49933dbb860"
  end

  resource "PyAudio" do
    url "https://pypi.python.org/packages/06/d1/3d202c9187fb78ad6d4f8b476a8cc0ded7c1b47ca33d5dab73b959faf123/pyaudio-0.2.8.tar.gz"
    sha256 "4f85367cf79657616684487037957ac38582ecc5389b89420fe61d901b719551"
  end

  resource "pyee" do
    url "https://pypi.python.org/packages/0b/94/6820b8b1a21ce4d6a1c807342ac35cf4d5fd89b94b3f12e10de3c34d5507/pyee-1.0.1.tar.gz"
    sha256 "445c9cd811a53eeee3dd5649a02960eef142cbbf8f6fa10e5d31ebc4f8c78f68"
  end

  resource "SpeechRecognition" do
    url "https://pypi.python.org/packages/59/cc/cccea33d41bbd71dd6eaf96d7bf82bfe39a39460f62dff8501b61a90f0b5/SpeechRecognition-3.1.3-py3-none-any.whl"
    sha256 "7079e0524440275d1f86fdeead4f31659acfe061cb9ef1942db0125f7fafb22f"
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

  resource "pyowm" do
    url "https://pypi.python.org/packages/91/b4/84d7b9a86eb38d196359ce791204bae0faa8231a2ce8b6fd1269e4376b33/pyowm-2.2.1-py2.7.egg"
    sha256 "7a79fb75ffab56003c63a593f2b10499cc85fbb433c3999d52d46b74de7c09ed"
  end

  resource "wolframalpha" do
    url "https://pypi.python.org/packages/ff/55/7c062ac9f6b443c976e226393db5a9dd60f80bd64c32e5df52c9d3b9a327/wolframalpha-1.4-py2.py3-none-any.whl"
    sha256 "29e04a1aa8470fb1cba65f3342e99a2d186351edaf0166e729b89064adef47f3"
  end

  resource "futures" do
    url "https://pypi.python.org/packages/26/7d/a7e1130b63514cd7192f0ba0b53bdda7f96df88641ee0c97bfed8477f324/futures-3.0.3-py2-none-any.whl"
    sha256 "04afa2a06ab7dcca9d81717b420a7a14826061e9b2614a5c77dd24c75ccf97e4"
  end

  resource "requests-futures" do
    url "https://pypi.python.org/packages/25/43/bf8e46a309b5bb08f9d7813473ddb5f27a40d194ddf120fa4f193aa764e3/requests-futures-0.9.5.tar.gz"
    sha256 "33aa8a3b7892850701707d7e094b1e1ce7c4f7a36ff2a1dcc2da4e01a1a00f7e"
  end

  resource "astral" do
    url "https://pypi.python.org/packages/20/65/afe2cf1208ea9d6cb3fa75bf93d3dbf002822d6085378f8c22fe0c9a6a0e/astral-0.9-py2.py3-none-any.whl"
    sha256 "3903bcbdbdbcc5412467275448f900106debb89e447a479f834b4590d116025d"
  end

  resource "tzlocal" do
    url "https://pypi.python.org/packages/be/62/26c4276efdc48a00a588054a25e500d286e960e8dd7993f25d01c0fc5908/tzlocal-1.2.tar.gz"
    sha256 "438f122d684c951b22cb98aecc80fdb961b84e69542bf878c6b9a9419de09a8b"
  end

  resource "parsedatetime" do
    url "https://pypi.python.org/packages/ba/d8/6dbf446399124324606d1ed397a23b31df8fca2a1740cb356ffe0e560300/parsedatetime-1.5-py2-none-any.whl"
    sha256 "3a74f100f90d65918315fe6490771ad208bc3f13afd32d35fcfe4e8d0b3b812b"
  end

  resource "pdoc" do
    url "https://pypi.python.org/packages/d5/5a/f3951d743392004847d6fbf11f0159ac75674f69ed4578716d77c2a7f74f/pdoc-0.3.2.tar.gz"
    sha256 "7835909580d5a14a06bd3de4416cf17f86a146ecb12eeb5cd83d9a93d03e6d27"
  end

  resource "pyyaml" do
    url "https://pypi.python.org/packages/75/5e/b84feba55e20f8da46ead76f14a3943c8cb722d40360702b2365b91dec00/PyYAML-3.11.tar.gz"
    sha256 "c36c938a872e5ff494938b33b14aaa156cb439ec67548fcab3535bb78b0846e8"
  end

  resource "feedparser" do
    url "https://pypi.python.org/packages/91/d8/7d37fec71ff7c9dbcdd80d2b48bcdd86d6af502156fc93846fb0102cb2c4/feedparser-5.2.1.tar.bz2"
    sha256 "ce875495c90ebd74b179855449040003a1beb40cd13d5f037a0654251e260b02"
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

  resource "netifaces" do
    url "https://pypi.python.org/packages/bc/7c/a4b071ce6fe8ae228414d8be62f80e2a8f8c9203b6a6b0c62b2eb16181a7/netifaces-0.10.4-cp26-none-win32.whl"
    sha256 "112ee5b5a38e731ba39f3203a62796ebb7e234e976cba76b664535096078a6a2"
  end

  resource "pyjokes" do
    url "https://pypi.python.org/packages/a0/70/65457d1b197b1a0195a95128632d9a0b59d7d8ced6035c80e8467731dc76/pyjokes-0.5.0-py2.py3-none-any.whl"
    sha256 "01b90474d5c889c21cae88f0d5fc8db1334b2891a16df75cbf9a0886bfdea653"
  end

  resource "psutil" do
    url "https://pypi.python.org/packages/77/04/d5a92cb5c0e79b84294f6c99b9725806921d1d88032e9d056ca8a7ba31c1/psutil-4.1.0-cp26-none-win32.whl"
    sha256 "13aed96ad945db5c6b3d5fbe92be65330a3f2f757a300c7d1578a16efa0ece7f"
  end

  resource "pep8" do
    url "https://pypi.python.org/packages/8a/cb/7d0fdca7e03f997945fb1bd60a8ddfea5c51229b865c470b4f7a64619d20/pep8-1.7.0-py2.py3-none-any.whl"
    sha256 "4fc2e478addcf17016657dff30b2d8d611e8341fac19ccf2768802f6635d7b8a"
  end

  resource "multi_key_dict" do
    url "https://pypi.python.org/packages/6d/97/2e9c47ca1bbde6f09cb18feb887d5102e8eacd82fbc397c77b221f27a2ab/multi_key_dict-2.0.3.tar.gz"
    sha256 "deebdec17aa30a1c432cb3f437e81f8621e1c0542a0c0617a74f71e232e9939e"
  end

  resource "pocketsphinx" do
    url "https://pypi.python.org/packages/c3/83/2ef97583d8dd8c23448cff9cae22279fbf9e871ee522a72b776e09810827/pocketsphinx-0.1.0-cp27-cp27m-win32.whl"
    sha256 "36cdc1b1f2195541668d7d3dbd325e250119c6836db0aa7f1cb6d00ce79d59e8"
  end

  resource "wifi" do
    url "https://pypi.python.org/packages/fe/a9/d026afe8a400dd40122385cd690e4fff4d574ed16f5c3a0f5e3921bfd383/wifi-0.3.8.tar.gz"
    sha256 "a9880b2e91ea8420154c6826c8112a2f541bbae5641d59c5cb031d27138d7f26"
  end

  resource "pyroute2" do
    url "https://pypi.python.org/packages/b1/48/c5de65e3f8bb8bdb1873167838ddc8d8545a7bd825bdc8031d474768eeed/pyroute2-0.4.5.tar.gz"
    sha256 "d80c83fcbb6385bf126d69345cabce01d0fbb870b6ad46dd4583e6c54e775061"
  end

  resource "urllib5" do
    url "https://pypi.python.org/packages/3e/90/c4d4817e3265bb292e272923d5b7930991a6f1fba758da6269836f30fa58/urllib5-5.0.0.tar.gz"
    sha256 "df396732ad50bc6f7c9b1093cf079a2753578bcea0282b4d594449fef863daa4"
  end

  resource "pyric" do
    url "https://pypi.python.org/packages/2f/9e/affeb8a62f2a14885e88bb1ae24ab29cc55d277892c57cbe5dfc6c1d6959/PyRIC-0.1.6.tar.gz"
    sha256 "bd4ca1405c8e7031bb3bdd4671ea1911b2c33885414c1dfa7df1d3fd7f1a68a7"
  end

  resource "inflection" do
    url "https://pypi.python.org/packages/d5/35/a6eb45b4e2356fe688b21570864d4aa0d0a880ce387defe9c589112077f8/inflection-0.3.1.tar.gz"
    sha256 "18ea7fb7a7d152853386523def08736aa8c32636b047ade55f7578c4edeb16ca"
  end

  def install
    system "cp", "mycroft-base-setup.py", "setup.py"
    virtualenv_install_with_resources
  end
  test do
    system "true"
  end
end

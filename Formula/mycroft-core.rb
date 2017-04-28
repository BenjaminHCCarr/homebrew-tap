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
    url "https://pypi.python.org/packages/b6/61/7b374462d5b6b1d824977182db287758d549d8680444bad8d530195acba2/requests-2.12.5.tar.gz"
    sha256 "d902a54f08d086a7cc6e58c20e2bb225b1ae82c19c35e5925269ee94fb9fce00"
  end

  resource "pyOpenSSL" do
    url "https://pypi.python.org/packages/77/f2/bccec75ca4280a9fa762a90a1b8b152a22eac5d9c726d7da1fcbfe0a20e6/pyOpenSSL-16.0.0.tar.gz"
    sha256 "363d10ee43d062285facf4e465f4f5163f9f702f9134f0a5896f134cbb92d17d"
  end

  resource "ndg-httpsclient" do
    url "https://pypi.python.org/packages/df/a8/e7d70a8dd58c206c57b754fe15e5eb5f302f63fb1bfde5f26a0f5b019557/ndg_httpsclient-0.4.0.tar.gz"
    sha256 "e8c155fdebd9c4bcb0810b4ed01ae1987554b1ee034dd7532d7b8fdae38a6274"
  end

  resource "pyasn1" do
    url "https://pypi.python.org/packages/d5/d5/3001949087690d4931e84b29789dc91c07e8d6ee6acab193ada3d566390f/pyasn1-0.1.9-py2.5.egg"
    sha256 "1802a6dd32045e472a419db1441aecab469d33e0d2749e192abdec52101724af"
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
    url "https://pypi.python.org/packages/5c/f8/f6c54727c74579c6bbe5926f5deb9677c5810a33e11da58d1a4e2d09d041/certifi-2016.2.28.tar.gz"
    sha256 "5e8eccf95924658c97b990b50552addb64f55e1e3dfe4880456ac1f287dc79d0"
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

  resource "pyowm" do
    url "https://pypi.python.org/packages/76/73/2e0df8cc5ee67eefbe12069d1a20a72acfe1e061fa8ba43df08e7e924e2a/pyowm-2.2.1-py3.2.egg"
    sha256 "50fc29d1266a4a9dce8d19b77599b21237fbb45ad9b3bf347346c58fb7ac6d15"
  end

  resource "wolframalpha" do
    url "https://pypi.python.org/packages/7c/d7/37cf54f3f252fb4db3f717b8fc0eebaf1dd66c9710950806a2d74976128f/wolframalpha-1.4.tar.gz"
    sha256 "545e0978302e849f0ae69e8d571b56ff50d1dc3f515bebd66409fea90db88d5f"
  end

  resource "futures" do
    url "https://pypi.python.org/packages/4c/dc/f9473006d4c9c52d4a4e977173fbcbfb1a8ef3a57e32e885edf994fd4a45/futures-3.0.3.tar.gz"
    sha256 "2fe2342bb4fe8b8e217f0d21b5921cbe5408bf966d9f92025e707e881b198bed"
  end

  resource "requests-futures" do
    url "https://pypi.python.org/packages/25/43/bf8e46a309b5bb08f9d7813473ddb5f27a40d194ddf120fa4f193aa764e3/requests-futures-0.9.5.tar.gz"
    sha256 "33aa8a3b7892850701707d7e094b1e1ce7c4f7a36ff2a1dcc2da4e01a1a00f7e"
  end

  resource "astral" do
    url "https://pypi.python.org/packages/1e/6e/3b73951a64757b7b445e698dec5db1db67e72b732956b7183310973f3046/astral-0.9.zip"
    sha256 "9f838acba36f478f5e64f0d3f09a32688d4e3cbbf8007225c790768eb0c728ef"
  end

  resource "tzlocal" do
    url "https://pypi.python.org/packages/be/62/26c4276efdc48a00a588054a25e500d286e960e8dd7993f25d01c0fc5908/tzlocal-1.2.tar.gz"
    sha256 "438f122d684c951b22cb98aecc80fdb961b84e69542bf878c6b9a9419de09a8b"
  end

  resource "parsedatetime" do
    url "https://pypi.python.org/packages/f7/e8/5fa5dd8643cd9c75d2823faf7e07657d3b440cb446c872ec71e48c813cc8/parsedatetime-1.5.tar.gz"
    sha256 "3da6be2be506f59cce32e19e30e201053e1bb4d07e25668918e00f8a49ad40ab"
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
    url "https://pypi.python.org/packages/ca/f4/91a056f11751701c24f86c692d92fee290b0ba3f99f657cdeb85ad3da402/feedparser-5.2.1.tar.gz"
    sha256 "bd030652c2d08532c034c27fcd7c85868e7fa3cb2b17f230a44a6bbc92519bf9"
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
    url "https://pypi.python.org/packages/18/fa/dd13d4910aea339c0bb87d2b3838d8fd923c11869b1f6e741dbd0ff3bc00/netifaces-0.10.4.tar.gz"
    sha256 "9656a169cb83da34d732b0eb72b39373d48774aee009a3d1272b7ea2ce109cde"
  end

  resource "pyjokes" do
    url "https://pypi.python.org/packages/b4/62/79a5aa98d2db64eb4925e7ae7b9de1fa9f2e78050b5410a69371ba13a86f/pyjokes-0.5.0.tar.gz"
    sha256 "745299c99b7a4015251b4876ecd59dd62803f458a9f0540d036f0f6627dcc67e"
  end

  resource "psutil" do
    url "https://pypi.python.org/packages/71/9b/6b6f630ad4262572839033b69905d415ef152d7701ef40aa98941ba75b38/psutil-4.1.0.tar.gz"
    sha256 "c6abebec9c8833baaf1c51dd1b0259246d1d50b9b50e9a4aa66f33b1e98b8d17"
  end

  resource "pep8" do
    url "https://pypi.python.org/packages/3e/b5/1f717b85fbf5d43d81e3c603a7a2f64c9f1dabc69a1e7745bd394cc06404/pep8-1.7.0.tar.gz"
    sha256 "a113d5f5ad7a7abacef9df5ec3f2af23a20a28005921577b15dd584d099d5900"
  end

  resource "multi_key_dict" do
    url "https://pypi.python.org/packages/6d/97/2e9c47ca1bbde6f09cb18feb887d5102e8eacd82fbc397c77b221f27a2ab/multi_key_dict-2.0.3.tar.gz"
    sha256 "deebdec17aa30a1c432cb3f437e81f8621e1c0542a0c0617a74f71e232e9939e"
  end

  resource "pocketsphinx" do
    url "https://pypi.python.org/packages/25/73/1d4f4734e2afe72bec6756853e7cdcffbb05115045fcea471224537243bd/pocketsphinx-0.1.0.tar.gz"
    sha256 "2cc493ed48c1301e0d2e69b137dc646c2f8caca190ef4bce61836eac96d1796f"
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

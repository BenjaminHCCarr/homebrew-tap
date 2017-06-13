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
  depends_on "pulseaudio"
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
    url "https://pypi.python.org/packages/27/c7/a45641c83c6e28f4922ba6af3d4ae4d79b41932c2f3d77fed9e0bf878149/requests-2.17.3.tar.gz"
    sha256 "8d29f97ed1541709b57caddb77bb20592411d7ca10ec4f03275f49ee8456e225"
  end

  resource "pyOpenSSL" do
    url "https://pypi.python.org/packages/9f/32/80fe4fddeb731b7766cd09fe0b2032a91b43dae655e216792af2a6ae3190/pyOpenSSL-17.0.0.tar.gz"
    sha256 "48abfe9d2bb8eb8d8947c8452b0223b7b1be2383b332f3b4f248fe59ef0bafdd"
  end

  resource "ndg-httpsclient" do
    url "https://pypi.python.org/packages/df/a8/e7d70a8dd58c206c57b754fe15e5eb5f302f63fb1bfde5f26a0f5b019557/ndg_httpsclient-0.4.0.tar.gz"
    sha256 "e8c155fdebd9c4bcb0810b4ed01ae1987554b1ee034dd7532d7b8fdae38a6274"
  end

  resource "pyasn1" do
    url "https://pypi.python.org/packages/f7/83/377e3dd2e95f9020dbd0dfd3c47aaa7deebe3c68d3857a4e51917146ae8b/pyasn1-0.1.9.tar.gz"
    sha256 "853cacd96d1f701ddd67aa03ecc05f51890135b7262e922710112f12a2ed2a7f"
  end

  resource "gTTS" do
    url "https://pypi.python.org/packages/98/7e/14aa52d972ede7c884d1339bc2803c620c7f411578098c823d49269e8a8f/gTTS-1.2.0.tar.gz"
    sha256 "49a2423c9c38facc15b715f41f28875af78de2713c2616c8dd026201b8955ac0"
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
    url "https://pypi.python.org/packages/dd/0e/1e3b58c861d40a9ca2d7ea4ccf47271d4456ae4294c5998ad817bd1b4396/certifi-2017.4.17.tar.gz"
    sha256 "f7527ebf7461582ce95f7a9e03dd141ce810d40590834f4ec20cddd54234c10a"
  end

  resource "PyAudio" do
    url "https://pypi.python.org/packages/ab/42/b4f04721c5c5bfc196ce156b3c768998ef8c0ae3654ed29ea5020c749a6b/PyAudio-0.2.11.tar.gz"
    sha256 "93bfde30e0b64e63a46f2fd77e85c41fd51182a4a3413d9edfaf9ffaa26efb74"
  end

  resource "pyee" do
    url "https://pypi.python.org/packages/0b/94/6820b8b1a21ce4d6a1c807342ac35cf4d5fd89b94b3f12e10de3c34d5507/pyee-1.0.1.tar.gz"
    sha256 "445c9cd811a53eeee3dd5649a02960eef142cbbf8f6fa10e5d31ebc4f8c78f68"
  end

  resource "SpeechRecognition" do
    url "https://pypi.python.org/packages/ce/0f/e14418e1797e3b6326618b3b4d1940734ed55878df64812784a7b6168eb5/SpeechRecognition-3.6.0.tar.gz"
    sha256 "22391df1c5e2b4d9b9ac423e4fa29b96c99f83142fc4d06d627c0af67f4f67d7"
  end

  resource "tornado" do
    url "https://pypi.python.org/packages/df/42/a180ee540e12e2ec1007ac82a42b09dd92e5461e09c98bf465e98646d187/tornado-4.5.1.tar.gz"
    sha256 "db0904a28253cfe53e7dedc765c71596f3c53bb8a866ae50123320ec1a7b73fd"
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
    url "https://pypi.python.org/packages/2e/88/6a7efb243290f0b0529c442a367c45c6d6a75ae3efd40e920cfaac2d256a/pyowm-2.2.1.zip"
    sha256 "c2852368d89cf5520de591e3f2213b78986e56f376d0d1fa0f0c94b45b3647c4"
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

  resource "pytz" do
    url "https://pypi.python.org/packages/a4/09/c47e57fc9c7062b4e83b075d418800d322caa87ec0ac21e6308bd3a2d519/pytz-2017.2.zip"
    sha256 "f5c056e8f62d45ba8215e5cb8f50dfccb198b4b9fbea8500674f3443e4689589"
  end

  resource "tzlocal" do
    url "https://pypi.python.org/packages/be/62/26c4276efdc48a00a588054a25e500d286e960e8dd7993f25d01c0fc5908/tzlocal-1.2.tar.gz"
    sha256 "438f122d684c951b22cb98aecc80fdb961b84e69542bf878c6b9a9419de09a8b"
  end

  resource "parsedatetime" do
    url "https://pypi.python.org/packages/f7/e8/5fa5dd8643cd9c75d2823faf7e07657d3b440cb446c872ec71e48c813cc8/parsedatetime-1.5.tar.gz"
    sha256 "3da6be2be506f59cce32e19e30e201053e1bb4d07e25668918e00f8a49ad40ab"
  end

  resource "astral" do
    url "https://pypi.python.org/packages/a4/d6/c309f266677372964c6002a56a7bec2a90875338a71325e20b24d6d1e187/astral-1.4.zip"
    sha256 "e7f2c825ac101c0953812e0f4c617ca48bd9dd5f4ebf450f7ce9086ed8f5a1fe"
  end

  resource "appdirs" do
    url "https://pypi.python.org/packages/48/69/d87c60746b393309ca30761f8e2b49473d43450b150cb08f3c6df5c11be5/appdirs-1.4.3.tar.gz"
    sha256 "9e5896d1372858f8dd3344faf4e5014d21849c756c8d5701f78f8a103b372d92"
  end

  resource "asn1crypto" do
    url "https://pypi.python.org/packages/67/14/5d66588868c4304f804ebaff9397255f6ec5559e46724c2496e0f26e68d6/asn1crypto-0.22.0.tar.gz"
    sha256 "cbbadd640d3165ab24b06ef25d1dca09a3441611ac15f6a6b452474fdf0aed1a"
  end

  resource "beautifulsoup4" do
    url "https://pypi.python.org/packages/9b/a5/c6fa2d08e6c671103f9508816588e0fb9cec40444e8e72993f3d4c325936/beautifulsoup4-4.5.3.tar.gz"
    sha256 "b21ca09366fa596043578fd4188b052b46634d22059e68dd0077d9ee77e08a3e"
  end

  resource "cffi" do
    url "https://pypi.python.org/packages/5b/b9/790f8eafcdab455bcd3bd908161f802c9ce5adbf702a83aa7712fcc345b7/cffi-1.10.0.tar.gz"
    sha256 "b3b02911eb1f6ada203b0763ba924234629b51586f72a21faacc638269f4ced5"
  end

  resource "cryptography" do
    url "https://pypi.python.org/packages/ec/5f/d5bc241d06665eed93cd8d3aa7198024ce7833af7a67f6dc92df94e00588/cryptography-1.8.1.tar.gz"
    sha256 "323524312bb467565ebca7e50c8ae5e9674e544951d28a2904a50012a8828190"
  end

  resource "enum34" do
    url "https://pypi.python.org/packages/bf/3e/31d502c25302814a7c2f1d3959d2a3b3f78e509002ba91aea64993936876/enum34-1.1.6.tar.gz"
    sha256 "8ad8c4783bf61ded74527bffb48ed9b54166685e4230386a9ed9b1279e2df5b1"
  end

  resource "idna" do
    url "https://pypi.python.org/packages/d8/82/28a51052215014efc07feac7330ed758702fc0581347098a81699b5281cb/idna-2.5.tar.gz"
    sha256 "3cb5ce08046c4e3a560fc02f138d0ac63e00f8ce5901a56b32ec8b7994082aab"
  end

  resource "inflection" do
    url "https://pypi.python.org/packages/d5/35/a6eb45b4e2356fe688b21570864d4aa0d0a880ce387defe9c589112077f8/inflection-0.3.1.tar.gz"
    sha256 "18ea7fb7a7d152853386523def08736aa8c32636b047ade55f7578c4edeb16ca"
  end

  resource "ipaddress" do
    url "https://pypi.python.org/packages/4e/13/774faf38b445d0b3a844b65747175b2e0500164b7c28d78e34987a5bfe06/ipaddress-1.0.18.tar.gz"
    sha256 "5d8534c8e185f2d8a1fda1ef73f2c8f4b23264e8e30063feeb9511d492a413e1"
  end

  resource "mako" do
    url "https://pypi.python.org/packages/56/4b/cb75836863a6382199aefb3d3809937e21fa4cb0db15a4f4ba0ecc2e7e8e/Mako-1.0.6.tar.gz"
    sha256 "48559ebd872a8e77f92005884b3d88ffae552812cdf17db6768e5c3be5ebbe0d"
  end

  resource "markupsafe" do
    url "https://pypi.python.org/packages/4d/de/32d741db316d8fdb7680822dd37001ef7a448255de9699ab4bfcbdf4172b/MarkupSafe-1.0.tar.gz"
    sha256 "a6be69091dac236ea9c6bc7d012beab42010fa914c459791d627dad4910eb665"
  end

  resource "packaging" do
    url "https://pypi.python.org/packages/c6/70/bb32913de251017e266c5114d0a645f262fb10ebc9bf6de894966d124e35/packaging-16.8.tar.gz"
    sha256 "5d50835fdf0a7edf0b55e311b7c887786504efea1177abd7e69329a8e5ea619e"
  end

  resource "pbkdf2" do
    url "https://pypi.python.org/packages/02/c0/6a2376ae81beb82eda645a091684c0b0becb86b972def7849ea9066e3d5e/pbkdf2-1.3.tar.gz"
    sha256 "ac6397369f128212c43064a2b4878038dab78dab41875364554aaf2a684e6979"
  end

  resource "pycparser" do
    url "https://pypi.python.org/packages/be/64/1bb257ffb17d01f4a38d7ce686809a736837ad4371bcc5c42ba7a715c3ac/pycparser-2.17.tar.gz"
    sha256 "0aac31e917c24cb3357f5a4d5566f2cc91a19ca41862f6c3c22dc60a629673b6"
  end

  resource "pyric" do
    url "https://pypi.python.org/packages/2f/9e/affeb8a62f2a14885e88bb1ae24ab29cc55d277892c57cbe5dfc6c1d6959/PyRIC-0.1.6.tar.gz"
    sha256 "bd4ca1405c8e7031bb3bdd4671ea1911b2c33885414c1dfa7df1d3fd7f1a68a7"
  end

  resource "pytz" do
    url "https://pypi.python.org/packages/a4/09/c47e57fc9c7062b4e83b075d418800d322caa87ec0ac21e6308bd3a2d519/pytz-2017.2.zip"
    sha256 "f5c056e8f62d45ba8215e5cb8f50dfccb198b4b9fbea8500674f3443e4689589"
  end

  resource "six" do
    url "https://pypi.python.org/packages/b3/b2/238e2590826bfdd113244a40d9d3eb26918bd798fc187e2360a8367068db/six-1.10.0.tar.gz"
    sha256 "105f8d68616f8248e24bf0e9372ef04d3cc10104f1980f54d57b2ce73a5ad56a"
  end

  resource "markdown" do
    url "https://pypi.python.org/packages/source/M/Markdown/Markdown-2.4.1.tar.gz"
    sha256 "812ec5249f45edc31330b7fb06e52aaf6ab2d83aa27047df7cb6837ef2d269b6"
  end

  resource "markupsafe" do
    url "https://pypi.python.org/packages/4d/de/32d741db316d8fdb7680822dd37001ef7a448255de9699ab4bfcbdf4172b/MarkupSafe-1.0.tar.gz"
    sha256 "a6be69091dac236ea9c6bc7d012beab42010fa914c459791d627dad4910eb665"
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

  # resource "pyalsaaudio" do
  #   url "https://pypi.python.org/packages/52/b6/44871791929d9d7e11325af0b7be711388dfeeab17147988f044a41a6d83/pyalsaaudio-0.8.4.tar.gz"
  #   sha256 "84e8f8da544d7f4bd96479ce4a237600077984d9be1d7f16c1d9a492ecf50085"
  # end

  resource "pulsectl" do
    url "https://pypi.python.org/packages/2b/25/522767df79458d0bd5c357ef2190caab657cd5ccd88404a9977f66de2f4b/pulsectl-17.1.3.tar.gz"
    sha256 "21a74ae064a1ee48c6b276ca2c5069154c1766ccd5166d41c1b2ce93971468fe"
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
    url "https://pypi.python.org/packages/a0/4e/70c500da7558d2a8e67fd8cfd33f5a4b90faf7163d7e4023fa989a89902a/pocketsphinx-0.1.3.tar.gz"
    sha256 "ac125aadefc85ab78706a4d18ae66c3dcf89eb9e2a0cbd88c7a6086df420346d"
  end

  # resource "wifi" do
  #   url "https://pypi.python.org/packages/fe/a9/d026afe8a400dd40122385cd690e4fff4d574ed16f5c3a0f5e3921bfd383/wifi-0.3.8.tar.gz"
  #   sha256 "a9880b2e91ea8420154c6826c8112a2f541bbae5641d59c5cb031d27138d7f26"
  # end

  resource "pyroute2" do
    url "https://pypi.python.org/packages/0a/b1/987345ef81de7f0670cff0bf207f4b1e6a11d6f090b704cbda4ade119976/pyroute2-0.4.15.tar.gz"
    sha256 "273530e78261ac5e9e2985f12fad9e6c4231f8e49b8c285c05a23dcda5afce58"
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
    inreplace "mycroft-base-setup.py", "'wifi'", ""
    inreplace "mycroft-base-setup.py", "'mycroft-wifi-setup-client=mycroft.client.wifisetup.main:main',", ""
    system "cp", "mycroft-base-setup.py", "setup.py"
    inreplace "requirements.txt", "wifi==0.3.8", ""
    inreplace "requirements.txt", "astral==0.9", "astral==1.4"
    inreplace "requirements.txt", "pyalsaaudio==0.8.2", "pulsectl==17.1.3"
    inreplace "mycroft/client/enclosure/__init__.py", "alsaaudio", "pulsectl"
    virtualenv_install_with_resources
  end
  test do
    system "true"
  end
end

cask 'menubar-toggle' do
  version '2.0.3'
  sha256 '4586f3b2218188475610354f14c95e08b988d6d190eecc3f04258d25ca3543a6'

  url "https://github.com/sxmichaels/menubar-toggle/releases/download/2.0.3/menubar-toggle-v#{version}-binary-el_capitan.tar.gz"
  appcast 'https://github.com/sxmichaels/menubar-toggle/releases.atom',
          checkpoint: '68cf362d53c3967a0e05a7351068b06beb61b1ccb3a2ccd0a48561faf12d4cf4'
  name 'menubar-toggle'
  homepage 'https://github.com/sxmichaels/menubar-toggle/'

  conflicts_with formula: 'menubar-toggle'
  depends_on macos: '>= 10.11'

  binary 'menubar-toggle'
end

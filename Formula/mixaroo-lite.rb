class MixarooLite < Formula
  desc "AI-powered CLI tool that generates playlists and creates YouTube playback links"
  homepage "https://github.com/schoolofai/mixaroo-lite"
  url "https://registry.npmjs.org/mixaroo-lite/-/mixaroo-lite-1.0.3.tgz"
  sha256 "c164d3bf272d3437d8139bf0ec3a4081efcf964946259e35760cc1126d0d8f08"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "mx-lite", shell_output("#{bin}/mx-lite --help")
  end
end

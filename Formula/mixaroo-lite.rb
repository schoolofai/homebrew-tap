class MixarooLite < Formula
  desc "AI-powered CLI tool that generates playlists and creates YouTube playback links"
  homepage "https://github.com/schoolofai/mixaroo-lite"
  url "https://registry.npmjs.org/mixaroo-lite/-/mixaroo-lite-1.0.4.tgz"
  sha256 "479732d45f91222e7d46d0a29a5ef6e0140254ac77e2d55a1abec63eac023e48"
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

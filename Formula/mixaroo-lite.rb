class MixarooLite < Formula
  desc "AI-powered CLI tool that generates playlists and creates YouTube playback links"
  homepage "https://github.com/schoolofai/mixaroo-lite"
  url "https://registry.npmjs.org/mixaroo-lite/-/mixaroo-lite-1.0.0.tgz"
  sha256 "7dd91091d24d67ccde9c2f953ca7a697c51cbbc2ae6731a5c91a112af512ed4d"
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

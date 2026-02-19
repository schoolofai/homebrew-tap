class MixarooLite < Formula
  desc "AI-powered CLI tool that generates playlists and creates YouTube playback links"
  homepage "https://github.com/schoolofai/mixaroo-lite"
  url "https://registry.npmjs.org/mixaroo-lite/-/mixaroo-lite-1.0.2.tgz"
  sha256 "85d4f1fda462f99423fc625f4ab5df1c44f8190e34ce657f57766fd083d4ae83"
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

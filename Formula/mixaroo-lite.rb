class MixarooLite < Formula
  desc "AI-powered CLI tool that generates playlists and creates YouTube playback links"
  homepage "https://github.com/schoolofai/mixaroo-lite"
  url "https://registry.npmjs.org/mixaroo-lite/-/mixaroo-lite-1.0.1.tgz"
  sha256 "aa0efa50c072c5dc827b6d9573eff4d4308e1cd76577322c4b2d78e9bbc5d238"
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

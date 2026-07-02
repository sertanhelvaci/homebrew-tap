class Pathrule < Formula
  desc "Path-scoped memories, rules, and skills for AI coding agents"
  homepage "https://www.pathrule.io"
  url "https://registry.npmjs.org/@pathrule/cli/-/cli-0.1.4.tgz"
  sha256 "ee2d247b8b0e66310b21399738e7d55b596a2577e9d73add319db2f3a4b5ea6b"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.1.4", shell_output("#{bin}/pathrule --version")
  end
end

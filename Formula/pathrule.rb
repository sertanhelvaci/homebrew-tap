class Pathrule < Formula
  desc "Local AI workspace runtime"
  homepage "https://pathrule.io"
  url "https://app.pathrule.io/downloads/pathrule-cli-0.0.1-node20-universal.tar.gz"
  sha256 "9b83055b4a3a012335b43460d9c4fdd1a4613feb2cd08af7b02a11bd4971bcab"
  license :cannot_represent
  depends_on "node"

  def install
    libexec.install Dir["*"]
    (bin/"pathrule").write <<~EOS
      #!/bin/bash
      exec "#{Formula["node"].opt_bin}/node" "#{libexec}/dist/index.js" "$@"
    EOS
  end

  test do
    system bin/"pathrule", "--version"
  end
end

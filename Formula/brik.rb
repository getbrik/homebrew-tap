class Brik < Formula
  desc "Portable CI/CD pipeline system"
  homepage "https://github.com/getbrik/brik"
  url "https://github.com/getbrik/brik.git",
      tag:      "v0.3.0"
  license "MPL-2.0"
  head "https://github.com/getbrik/brik.git", branch: "main"

  depends_on "bash"
  depends_on "yq"
  depends_on "jq"

  def install
    prefix.install Dir["*"]
    # The real CLI script is now at #{prefix}/bin/brik.
    # Rename it so the shim can call it without recursion.
    mv prefix/"bin"/"brik", prefix/"bin"/"brik-cli"
    (bin/"brik").unlink if (bin/"brik").exist?
    (bin/"brik").write <<~EOS
      #!/usr/bin/env bash
      BRIK_HOME="${BRIK_HOME:-#{prefix}}"
      export BRIK_HOME
      exec "${BRIK_HOME}/bin/brik-cli" "$@"
    EOS
  end

  test do
    system "#{bin}/brik", "version"
  end
end

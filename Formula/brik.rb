class Brik < Formula
  desc "Portable CI/CD pipeline system"
  homepage "https://github.com/getbrik/brik"
  url "https://github.com/getbrik/brik.git",
      tag:      "v0.1.0"
  license "MPL-2.0"
  head "https://github.com/getbrik/brik.git", branch: "main"

  depends_on "bash"
  depends_on "yq"
  depends_on "jq"

  def install
    prefix.install Dir["*"]
    # Replace bin/brik with a shim that sets BRIK_HOME to the Homebrew prefix
    (bin/"brik").unlink if (bin/"brik").exist?
    (bin/"brik").write <<~EOS
      #!/usr/bin/env bash
      BRIK_HOME="${BRIK_HOME:-#{prefix}}"
      export BRIK_HOME
      if [ ! -f "${BRIK_HOME}/bin/brik" ]; then
          printf 'brik: runtime not found at %s\\n' "${BRIK_HOME}" >&2
          exit 1
      fi
      exec "${BRIK_HOME}/bin/brik" "$@"
    EOS
  end

  test do
    system "#{bin}/brik", "version"
  end
end

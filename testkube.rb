# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.3.1-test"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.3.1-test/testkube_1.3.1-test_macOS_x86_64.tar.gz"
      sha256 "04c12d4844344b0dda56dc58fcf61b6b4d5fe1a42518ee0fa1da163a56ac28c9"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.3.1-test/testkube_1.3.1-test_macOS_arm64.tar.gz"
      sha256 "e3e6a26afd49f0d54f191b69aca463cb3b15ed8810722d61e67bb1bed84b503d"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.3.1-test/testkube_1.3.1-test_Linux_x86_64.tar.gz"
      sha256 "974544dc00a9ef42f924cefb2e35102faf18146778806fd085549df3a0790a07"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.3.1-test/testkube_1.3.1-test_Linux_arm64.tar.gz"
      sha256 "ab037db6501f1ca107031236011ab5c888925f478014cc0cd4f018ecd8d37401"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end
end

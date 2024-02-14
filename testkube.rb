# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.16.29-beta2"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.16.29-beta2/testkube_1.16.29-beta2_Darwin_arm64.tar.gz"
      sha256 "9776f56206f82a791353846551063eb17d0760506fd753aee9f8e5993abeb268"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.16.29-beta2/testkube_1.16.29-beta2_Darwin_x86_64.tar.gz"
      sha256 "16954dbde3fdc7d17aaf3a0eb1b59ba9297115006d201186f07784a5840de570"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.16.29-beta2/testkube_1.16.29-beta2_Linux_arm64.tar.gz"
      sha256 "933516527a4c0081c7f49efe7a7469b8805000f4c9ff15dee9626fd5954d3c1f"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.16.29-beta2/testkube_1.16.29-beta2_Linux_x86_64.tar.gz"
      sha256 "a023b0b144b8e4042c8e0533f6b8e0d053650d5ba1a61ae685f92d95d739f963"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end

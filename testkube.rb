# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.9.22-beta026"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.9.22-beta026/testkube_1.9.22-beta026_macOS_arm64.tar.gz"
      sha256 "301f7dbabc5000c809c035480136085db65c865c81734b96274ddf2f2bc25d15"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.9.22-beta026/testkube_1.9.22-beta026_macOS_x86_64.tar.gz"
      sha256 "c5a25d5ffa309b789ad7f62d737085c07bd85643dea88c868fc7064be4f4ae80"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.9.22-beta026/testkube_1.9.22-beta026_Linux_arm64.tar.gz"
      sha256 "9620a3074a6152d322dd566824ad625537128e76cf223fe14c41ece71a8f3df8"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.9.22-beta026/testkube_1.9.22-beta026_Linux_x86_64.tar.gz"
      sha256 "5557ed3d5003f0fce422be2965e02416d0af5e8750a212601b8b19b079e07fce"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end

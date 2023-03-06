# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.9.22-beta013"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.9.22-beta013/testkube_1.9.22-beta013_macOS_x86_64.tar.gz"
      sha256 "7b76b4d9e8b975cadd4ed820b3b4360522a20595eeb9d38c2ea14d07fced353a"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.9.22-beta013/testkube_1.9.22-beta013_macOS_arm64.tar.gz"
      sha256 "357f3ebc571bbf0e7da3b012f7db4084cdc2e8cdd92795a85cceb12cbbfd90f9"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.9.22-beta013/testkube_1.9.22-beta013_Linux_x86_64.tar.gz"
      sha256 "779ab01bbb52a461ebd4a7f93c0063220dad227dd635e906c64ad915fb2272f9"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.9.22-beta013/testkube_1.9.22-beta013_Linux_arm64.tar.gz"
      sha256 "2fa3aca47bad2c0ffc238c335608bd48360f988f83789ed53c4541dbb29b23c0"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end

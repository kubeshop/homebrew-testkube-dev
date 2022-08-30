# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.5.3-beta002"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.5.3-beta002/testkube_1.5.3-beta002_macOS_x86_64.tar.gz"
      sha256 "41e6e01943a5bf4384a8718c0b89ba7ceecca7e4df31b89cb1770e86f5d121e0"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.5.3-beta002/testkube_1.5.3-beta002_macOS_arm64.tar.gz"
      sha256 "3e7e5bf19220d16586e58ed8fc3e5715b1291764d197094dd7d9f6bbc85eeb65"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.5.3-beta002/testkube_1.5.3-beta002_Linux_arm64.tar.gz"
      sha256 "bfdbf9c8d2a4b144341cec138f388d5670a421cdfb96383957ca0609e6f25423"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.5.3-beta002/testkube_1.5.3-beta002_Linux_x86_64.tar.gz"
      sha256 "7620c43866bd646e9d301fa5625df39446f3c185af2ee901177c4dff00693609"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.16.30-beta2"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.16.30-beta2/testkube_1.16.30-beta2_Darwin_x86_64.tar.gz"
      sha256 "795c5bb8e93113ae81d9bbebc461dc6d276ad12bd4874a38b0779326da8cf73a"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.16.30-beta2/testkube_1.16.30-beta2_Darwin_arm64.tar.gz"
      sha256 "4c5c7c9ee457ce9254a8f0aa668407950667ec083b71fbb8f343eb3a9b4106b7"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.16.30-beta2/testkube_1.16.30-beta2_Linux_arm64.tar.gz"
      sha256 "adc12db1534f6e7afc24ef61c98823f193c286484b3d3ca651ba7fe7c0b38726"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.16.30-beta2/testkube_1.16.30-beta2_Linux_x86_64.tar.gz"
      sha256 "e031afbfcf01c189af22e7ccb1c2bdd4126707194aa26890976685b31c9d79c1"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end

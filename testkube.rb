# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.9.15-beta001"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.9.15-beta001/testkube_1.9.15-beta001_macOS_x86_64.tar.gz"
      sha256 "b9fa9a13b552e14e252dff545e15eb9b3d95eb8733a65967dc739f873af732b9"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.9.15-beta001/testkube_1.9.15-beta001_macOS_arm64.tar.gz"
      sha256 "d4cdfcf8d710b3da437b6071b26a077c2c52c5efa6760715a79b1d9b509d381a"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.9.15-beta001/testkube_1.9.15-beta001_Linux_arm64.tar.gz"
      sha256 "cbaac21d6b8bfa7a0aa47b791a213bdabb874c8f232b708321b1fb0185ac460a"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.9.15-beta001/testkube_1.9.15-beta001_Linux_x86_64.tar.gz"
      sha256 "85f143cf15deb61c1f1faffcc38148d776254ae66714375c2ac45867ee389ec4"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end

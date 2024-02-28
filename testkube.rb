# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.16.32-beta002"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.16.32-beta002/testkube_1.16.32-beta002_Darwin_arm64.tar.gz"
      sha256 "370adea6dab26541a8c7bbe0fb4a93e77fce4bd3492fd4a8cbafa3608193f117"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.16.32-beta002/testkube_1.16.32-beta002_Darwin_x86_64.tar.gz"
      sha256 "3497f611f75ca68030687bc09a37def1ba373d720645a62bbf4764259467af34"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.16.32-beta002/testkube_1.16.32-beta002_Linux_x86_64.tar.gz"
      sha256 "0ba327bf1dfdcb36773b9ee050420af6e3e23940b78e9340191defc81987f9a7"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.16.32-beta002/testkube_1.16.32-beta002_Linux_arm64.tar.gz"
      sha256 "73f353f1e0e6d492eadbfe4a8bd46d5eb3ab872dee935653882b614f1c8e43b9"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.7.32-beta001"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.7.32-beta001/testkube_1.7.32-beta001_macOS_arm64.tar.gz"
      sha256 "948f32a367d7a93b320c8004742d4e64eea39b1d7dd9f58a7a75b6ee2f459734"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.7.32-beta001/testkube_1.7.32-beta001_macOS_x86_64.tar.gz"
      sha256 "99c99846dbfceab6c0e9267c0e02a2c19777d7a852cd782d87423f9019697c62"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.7.32-beta001/testkube_1.7.32-beta001_Linux_x86_64.tar.gz"
      sha256 "838e1c85074b4ad93b7f3e0bd165265899b17dc45a65a9314ae225ff665c750a"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.7.32-beta001/testkube_1.7.32-beta001_Linux_arm64.tar.gz"
      sha256 "4a98a3d5d8254f1678e83e7b9d5d8ef6b36c5ef715396fe574a11a142446d38a"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "0.10.4-beta002"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.10.4-beta002/testkube_0.10.4-beta002_macOS_x86_64.tar.gz"
      sha256 "dea743e0f1fd691076d95c9dc2312c10060011b1334dfbe6c63ef8a013074960"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v0.10.4-beta002/testkube_0.10.4-beta002_macOS_arm64.tar.gz"
      sha256 "d5d002f82e1ff22048b6a8fe384820f746690ea489c2c31f0b281f4b5cbcfa5c"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.10.4-beta002/testkube_0.10.4-beta002_Linux_x86_64.tar.gz"
      sha256 "6ce8f6ec61f5f275f5478846178f8e1e0d2029d7d7305274677cd0c24ad4ce7b"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v0.10.4-beta002/testkube_0.10.4-beta002_Linux_arm64.tar.gz"
      sha256 "15a2f2485fdc0ec66350edd2c557823fccf8bd3f2f906d1143eb6b07b5746f3d"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end
end

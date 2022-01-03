# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "0.7.6-beta004"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v0.7.6-beta004/testkube_0.7.6-beta004_macOS_arm64.tar.gz"
      sha256 "a2fc4badd265e34040645c7fce96cbf02bf67de7de7de70f655bbede51dcd528"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.7.6-beta004/testkube_0.7.6-beta004_macOS_x86_64.tar.gz"
      sha256 "840421e265a46b713e2b632ff6cca94838ee5ea12e75c998123d32047f31c54a"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.7.6-beta004/testkube_0.7.6-beta004_Linux_x86_64.tar.gz"
      sha256 "e891415cb3a3c2aae110e4bdb0f8b83b933335fae96bf45990c439aac5394925"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v0.7.6-beta004/testkube_0.7.6-beta004_Linux_arm64.tar.gz"
      sha256 "84ac3256e5787bf590c045255a9b5d7e15e9b7fdea516768baefaf3c8739d1f3"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end
end

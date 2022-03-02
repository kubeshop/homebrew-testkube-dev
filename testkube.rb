# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "0.9.18-beta004"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v0.9.18-beta004/testkube_0.9.18-beta004_macOS_arm64.tar.gz"
      sha256 "6c30f3eb0406e5f777cbc3a3e59644ce48b511598043c7c17216f65c8120cd18"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.9.18-beta004/testkube_0.9.18-beta004_macOS_x86_64.tar.gz"
      sha256 "e600808702394bfd6699a9db1c204bf2a58772f53be01137889ae304b7535409"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v0.9.18-beta004/testkube_0.9.18-beta004_Linux_arm64.tar.gz"
      sha256 "85ffb6bb0d16a6aeb696d6f4617c1ee7dd926b4e851b4c1aaf731b30bd9f506f"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.9.18-beta004/testkube_0.9.18-beta004_Linux_x86_64.tar.gz"
      sha256 "12f2b78a53f0256ca1dc6cff95ce9e4d66055485f521e5d4b7017533e7ca4077"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end
end

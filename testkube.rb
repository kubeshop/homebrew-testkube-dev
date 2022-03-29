# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "0.11.5-beta2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v0.11.5-beta2/testkube_0.11.5-beta2_macOS_arm64.tar.gz"
      sha256 "481f55286543bfc573ad65a469625550c8a44130b51a6aa09408f3f4e96d19cb"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.11.5-beta2/testkube_0.11.5-beta2_macOS_x86_64.tar.gz"
      sha256 "259fc392318a5fedd304e80e6535ba540a69181e5c130fb5181c0f5213ef303f"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.11.5-beta2/testkube_0.11.5-beta2_Linux_x86_64.tar.gz"
      sha256 "9fe08bef5340d6601e5abd95e761242cec614d25dc5be34d663869be6168191f"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v0.11.5-beta2/testkube_0.11.5-beta2_Linux_arm64.tar.gz"
      sha256 "92fa246f509f4ead7b6fadb3d640733dea0242fadecadaddda0be5d33e1a6ba9"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end
end

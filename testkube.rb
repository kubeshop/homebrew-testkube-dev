# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "0.8.2-beta001"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.8.2-beta001/testkube_0.8.2-beta001_macOS_x86_64.tar.gz"
      sha256 "96a3c33946be81395e1b738fff094016b3418c106de205e69facdaf33774d0df"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v0.8.2-beta001/testkube_0.8.2-beta001_macOS_arm64.tar.gz"
      sha256 "36742364a7cda51aee7e99edd621b73024b4defed20d987b8fd1c7e624397e62"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.8.2-beta001/testkube_0.8.2-beta001_Linux_x86_64.tar.gz"
      sha256 "8f6bfc641310891a72b21d985f997eff3269044ccc005f7a9e5ebda54249a95e"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v0.8.2-beta001/testkube_0.8.2-beta001_Linux_arm64.tar.gz"
      sha256 "06557ef0f2c3dc04bdc507f8790f36bcab8aaf3db0ab83892365a4f2a2ba42f2"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end
end

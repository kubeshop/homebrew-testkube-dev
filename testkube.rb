# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "0.9.17-beta002"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v0.9.17-beta002/testkube_0.9.17-beta002_macOS_arm64.tar.gz"
      sha256 "660c86df305a3652595cbd8b8bf51d37632d2f86bc6497f33420878ea5891780"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.9.17-beta002/testkube_0.9.17-beta002_macOS_x86_64.tar.gz"
      sha256 "4d6c409dfb6fa5d892218e19f37499e813597e4a0ab0a35c80a5efed8300820f"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.9.17-beta002/testkube_0.9.17-beta002_Linux_x86_64.tar.gz"
      sha256 "fccdd3249b1de425e808f3d2a45a2badf57eb759dd3e25c2db4270446d1ea7fa"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v0.9.17-beta002/testkube_0.9.17-beta002_Linux_arm64.tar.gz"
      sha256 "f8593fe928159049975aec0d2d84093cd0d775244837642e8aa495b4e918c088"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end
end

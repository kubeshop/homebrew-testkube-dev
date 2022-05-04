# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.0.13-test06"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.0.13-test06/testkube_1.0.13-test06_macOS_x86_64.tar.gz"
      sha256 "c41c8053f0ce8ffe6dba0f1710762f76bf0ed4679f6da2463d0839fd325ab86d"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.0.13-test06/testkube_1.0.13-test06_macOS_arm64.tar.gz"
      sha256 "c41c8053f0ce8ffe6dba0f1710762f76bf0ed4679f6da2463d0839fd325ab86d"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.0.13-test06/testkube_1.0.13-test06_Linux_x86_64.tar.gz"
      sha256 "c41c8053f0ce8ffe6dba0f1710762f76bf0ed4679f6da2463d0839fd325ab86d"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.0.13-test06/testkube_1.0.13-test06_Linux_arm64.tar.gz"
      sha256 "c41c8053f0ce8ffe6dba0f1710762f76bf0ed4679f6da2463d0839fd325ab86d"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end
end

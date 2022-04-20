# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.0.8-beta012"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.0.8-beta012/testkube_1.0.8-beta012_macOS_x86_64.tar.gz"
      sha256 "991692e14427ace58b94045ded2a66d9d6276d94170ba3dfc182f6937bb9576e"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.0.8-beta012/testkube_1.0.8-beta012_macOS_arm64.tar.gz"
      sha256 "2a95e2a26c27ab2a567c55814691893402d37c43e6ffa73827a3eef97ea5ad08"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.0.8-beta012/testkube_1.0.8-beta012_Linux_x86_64.tar.gz"
      sha256 "dbbbdce255050b5e9e720dd08664d148011d2e713ad1e6bc82cb668a548fc4e7"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.0.8-beta012/testkube_1.0.8-beta012_Linux_arm64.tar.gz"
      sha256 "b5af8940fa97751feae556987db0254a2df04cc2b55f86d3fa74b7a83ac8ff82"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end
end

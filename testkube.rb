# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "0.11.14-beta2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v0.11.14-beta2/testkube_0.11.14-beta2_macOS_arm64.tar.gz"
      sha256 "a13b2037c1cc4567123c74e60b0d2e7256e2ea290641b18071fc8fe672d12c17"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.11.14-beta2/testkube_0.11.14-beta2_macOS_x86_64.tar.gz"
      sha256 "c98ed6306e4d535dba7b97d26f7f3e8479fda309deb80a4b5347a01aaaadcc0d"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.11.14-beta2/testkube_0.11.14-beta2_Linux_x86_64.tar.gz"
      sha256 "121edaf038facd0c18472b6863cc896f65507f48769aebfe4c8ccc9c8e1fa73e"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v0.11.14-beta2/testkube_0.11.14-beta2_Linux_arm64.tar.gz"
      sha256 "03da695610390dab47931d8119c11a02fefcaaeba402c96ca1797faf6b718e0a"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end
end

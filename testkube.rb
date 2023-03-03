# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.9.22-beta001"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.9.22-beta001/testkube_1.9.22-beta001_macOS_arm64.tar.gz"
      sha256 "8dc22e9ad487a71d55e5ec33eea0925e55c35641f6b7f32485299c8061e91135"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.9.22-beta001/testkube_1.9.22-beta001_macOS_x86_64.tar.gz"
      sha256 "0612b8bbb10ffea52a0affc7eabc6377736671aaed34a1387aae7ff6d655de56"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.9.22-beta001/testkube_1.9.22-beta001_Linux_arm64.tar.gz"
      sha256 "5e58b2dff5c32b71eb8b043faa10029e2ee60b9de468a7b16e803038d06db87d"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.9.22-beta001/testkube_1.9.22-beta001_Linux_x86_64.tar.gz"
      sha256 "d939c9f6568be1a2fcb3d187b3d96d7619bd9bd4bd2c4d78c70eb7d0855432ea"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end

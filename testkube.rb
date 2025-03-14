# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.17.69-beta025"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    on_intel do
      url "https://github.com/kubeshop/testkube/releases/download/v1.17.69-beta025/testkube_1.17.69-beta025_Darwin_x86_64.tar.gz"
      sha256 "b5d2d6d6d6fa55307096241920305049454ad20ac21127ba69bbdaadb1bee298"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    on_arm do
      url "https://github.com/kubeshop/testkube/releases/download/v1.17.69-beta025/testkube_1.17.69-beta025_Darwin_arm64.tar.gz"
      sha256 "edd270adea4e621bd8358e36e8e73645c4e662340f815fcafdd8afa767cd5d43"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kubeshop/testkube/releases/download/v1.17.69-beta025/testkube_1.17.69-beta025_Linux_x86_64.tar.gz"
        sha256 "10c2149f7d304d9d2508ae6f8c8b494aed46bd98df61c67037e08c1cd6cbede6"

        def install
          bin.install "kubectl-testkube"
          ln_s bin/"kubectl-testkube", bin/"tk"
          ln_s bin/"kubectl-testkube", bin/"testkube"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kubeshop/testkube/releases/download/v1.17.69-beta025/testkube_1.17.69-beta025_Linux_arm64.tar.gz"
        sha256 "bc4b30fd2cb91fc662c4995ff02f85b7db80f679212692436bbdfb1dd59aa9db"

        def install
          bin.install "kubectl-testkube"
          ln_s bin/"kubectl-testkube", bin/"tk"
          ln_s bin/"kubectl-testkube", bin/"testkube"
        end
      end
    end
  end
end

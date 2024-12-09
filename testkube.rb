# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.17.69-beta012"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    on_intel do
      url "https://github.com/kubeshop/testkube/releases/download/v1.17.69-beta012/testkube_1.17.69-beta012_Darwin_x86_64.tar.gz"
      sha256 "48c0c4bb576fed46dcad48aca246d43e78c858c40f44730d7a10f0c83a27d39d"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    on_arm do
      url "https://github.com/kubeshop/testkube/releases/download/v1.17.69-beta012/testkube_1.17.69-beta012_Darwin_arm64.tar.gz"
      sha256 "ccf0ca6a0344122e0026a13c89b63e44efd9f877f30d4ab43fd2373dde315a35"

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
        url "https://github.com/kubeshop/testkube/releases/download/v1.17.69-beta012/testkube_1.17.69-beta012_Linux_x86_64.tar.gz"
        sha256 "1d76081adbb2741b513fd603f6060ea6ecabffd0e7869e6b952c3b2f0fdc325e"

        def install
          bin.install "kubectl-testkube"
          ln_s bin/"kubectl-testkube", bin/"tk"
          ln_s bin/"kubectl-testkube", bin/"testkube"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kubeshop/testkube/releases/download/v1.17.69-beta012/testkube_1.17.69-beta012_Linux_arm64.tar.gz"
        sha256 "43a641839eb5b3204ec031c29619689a88163a2e4d041b4320a237e6b98fef6a"

        def install
          bin.install "kubectl-testkube"
          ln_s bin/"kubectl-testkube", bin/"tk"
          ln_s bin/"kubectl-testkube", bin/"testkube"
        end
      end
    end
  end
end

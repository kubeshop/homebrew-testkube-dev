# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.17.51-beta001"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    on_intel do
      url "https://github.com/kubeshop/testkube/releases/download/v1.17.51-beta001/testkube_1.17.51-beta001_Darwin_x86_64.tar.gz"
      sha256 "c5f5fb826a9688ac2bcc691366b4ea5b487fda7b12559c8b541add14969659f8"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    on_arm do
      url "https://github.com/kubeshop/testkube/releases/download/v1.17.51-beta001/testkube_1.17.51-beta001_Darwin_arm64.tar.gz"
      sha256 "8da13fd2c5547caa91c02082cd8f6963db37b882dc7a9341f223496be4e70312"

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
        url "https://github.com/kubeshop/testkube/releases/download/v1.17.51-beta001/testkube_1.17.51-beta001_Linux_x86_64.tar.gz"
        sha256 "8dddbb58b7d2b5011a1531b1587a11cba222a9d3b5e1793f3e82dfc129c012b8"

        def install
          bin.install "kubectl-testkube"
          ln_s bin/"kubectl-testkube", bin/"tk"
          ln_s bin/"kubectl-testkube", bin/"testkube"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kubeshop/testkube/releases/download/v1.17.51-beta001/testkube_1.17.51-beta001_Linux_arm64.tar.gz"
        sha256 "228ac5ee6eeed3c871aa1308648a60126bfa7012421110483b375035840ee10b"

        def install
          bin.install "kubectl-testkube"
          ln_s bin/"kubectl-testkube", bin/"tk"
          ln_s bin/"kubectl-testkube", bin/"testkube"
        end
      end
    end
  end
end

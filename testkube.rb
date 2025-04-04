# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.17.69-beta031"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    on_intel do
      url "https://github.com/kubeshop/testkube/releases/download/v1.17.69-beta031/testkube_1.17.69-beta031_Darwin_x86_64.tar.gz"
      sha256 "dca505fd7c1a7efcd52cc9983e81074ae4a5fb1b2f3d6f81ca1f177151847cb6"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    on_arm do
      url "https://github.com/kubeshop/testkube/releases/download/v1.17.69-beta031/testkube_1.17.69-beta031_Darwin_arm64.tar.gz"
      sha256 "9163f8b49ad69b09689eda6c66ed52fc88d0e3e16ada87dd75accd4bbb0e58b1"

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
        url "https://github.com/kubeshop/testkube/releases/download/v1.17.69-beta031/testkube_1.17.69-beta031_Linux_x86_64.tar.gz"
        sha256 "b07f2960f0eb0590fd89f23185dd3e21e4bffea9038d20ffc92374cd4e261cee"

        def install
          bin.install "kubectl-testkube"
          ln_s bin/"kubectl-testkube", bin/"tk"
          ln_s bin/"kubectl-testkube", bin/"testkube"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kubeshop/testkube/releases/download/v1.17.69-beta031/testkube_1.17.69-beta031_Linux_arm64.tar.gz"
        sha256 "f605409f9f8ded0c53a39c8e2a16bdd6347377f3947d645ed031e003d4f5408d"

        def install
          bin.install "kubectl-testkube"
          ln_s bin/"kubectl-testkube", bin/"tk"
          ln_s bin/"kubectl-testkube", bin/"testkube"
        end
      end
    end
  end
end

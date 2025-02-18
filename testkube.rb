# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.17.69-beta023"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    on_intel do
      url "https://github.com/kubeshop/testkube/releases/download/v1.17.69-beta023/testkube_1.17.69-beta023_Darwin_x86_64.tar.gz"
      sha256 "f05b411aaaee252768615b2d4a007077581566ef75f80ad344aac80cb0bbde27"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    on_arm do
      url "https://github.com/kubeshop/testkube/releases/download/v1.17.69-beta023/testkube_1.17.69-beta023_Darwin_arm64.tar.gz"
      sha256 "90420c17983acbdc6a9f22e734c0ef64503392063a22e31a1a06e122a05c43f5"

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
        url "https://github.com/kubeshop/testkube/releases/download/v1.17.69-beta023/testkube_1.17.69-beta023_Linux_x86_64.tar.gz"
        sha256 "6dc65e968cc4bb3857fec62c19f2061bbcaeaac0f4ac26ad8801acc5aa6f43c8"

        def install
          bin.install "kubectl-testkube"
          ln_s bin/"kubectl-testkube", bin/"tk"
          ln_s bin/"kubectl-testkube", bin/"testkube"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kubeshop/testkube/releases/download/v1.17.69-beta023/testkube_1.17.69-beta023_Linux_arm64.tar.gz"
        sha256 "c439366e846996fa8cd260271851e82d9c027868ddf1a5d010fbd0df00fb472c"

        def install
          bin.install "kubectl-testkube"
          ln_s bin/"kubectl-testkube", bin/"tk"
          ln_s bin/"kubectl-testkube", bin/"testkube"
        end
      end
    end
  end
end

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.17.69-beta019"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    on_intel do
      url "https://github.com/kubeshop/testkube/releases/download/v1.17.69-beta019/testkube_1.17.69-beta019_Darwin_x86_64.tar.gz"
      sha256 "c8d84e84dda977bac1519b4df8410afa9d8c23e51a64c71b30ddb4201c96a34c"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    on_arm do
      url "https://github.com/kubeshop/testkube/releases/download/v1.17.69-beta019/testkube_1.17.69-beta019_Darwin_arm64.tar.gz"
      sha256 "1c83f1c8faf0584dcbc09693e49f00859be1993d61af24e4d6c47bc821e04951"

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
        url "https://github.com/kubeshop/testkube/releases/download/v1.17.69-beta019/testkube_1.17.69-beta019_Linux_x86_64.tar.gz"
        sha256 "63da00c4129fa02f3869761d7a38a66368008b4efc128108774b0edcebdff9f2"

        def install
          bin.install "kubectl-testkube"
          ln_s bin/"kubectl-testkube", bin/"tk"
          ln_s bin/"kubectl-testkube", bin/"testkube"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kubeshop/testkube/releases/download/v1.17.69-beta019/testkube_1.17.69-beta019_Linux_arm64.tar.gz"
        sha256 "e31610dc6d11544b90c84e685b771c60c754fe4554a99d566cbc7121ee4d82d5"

        def install
          bin.install "kubectl-testkube"
          ln_s bin/"kubectl-testkube", bin/"tk"
          ln_s bin/"kubectl-testkube", bin/"testkube"
        end
      end
    end
  end
end

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.8.12-beta002"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.8.12-beta002/testkube_1.8.12-beta002_macOS_x86_64.tar.gz"
      sha256 "fb18ebda1c78d75a83079c49ea65c32d2b056850bd7b45ddf0b19333593422d3"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.8.12-beta002/testkube_1.8.12-beta002_macOS_arm64.tar.gz"
      sha256 "7c967db18d732722212674ebf44fc22695ff913e0c19f929ae00caceab986b65"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.8.12-beta002/testkube_1.8.12-beta002_Linux_arm64.tar.gz"
      sha256 "f41c897fc9d123c30aebf892caac0f4b3c866175ff94e1babcef35309f154773"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.8.12-beta002/testkube_1.8.12-beta002_Linux_x86_64.tar.gz"
      sha256 "588db90faa0b350691c593a5253d2e43062c4668ceffad2c3f23e474ce9d697e"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end

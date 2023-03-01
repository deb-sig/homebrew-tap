# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class DoubleEntryGenerator < Formula
  desc "Rule-based double-entry bookkeeping importer (from Alipay/WeChat/Huobi to Beancount)."
  homepage "https://github.com/deb-sig/double-entry-generator"
  version "2.0.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/deb-sig/double-entry-generator/releases/download/v2.0.0/double-entry-generator_2.0.0_Darwin_all.tar.gz"
    sha256 "fc7bad9fe4390cf0c4bc811878b2738f4301228adb6e593ec1b21e6190f6665c"

    def install
      bin.install "double-entry-generator"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/deb-sig/double-entry-generator/releases/download/v2.0.0/double-entry-generator_2.0.0_Linux_x86_64.tar.gz"
      sha256 "e17531c1cd16e6709a4dc470e2c7427055e8a6c3ac697579241b4b3ffd5e72da"

      def install
        bin.install "double-entry-generator"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deb-sig/double-entry-generator/releases/download/v2.0.0/double-entry-generator_2.0.0_Linux_arm64.tar.gz"
      sha256 "597cd54405b0fed72953818a577df1e9425cc2eab9d964a0a457f6c2bea71cd3"

      def install
        bin.install "double-entry-generator"
      end
    end
  end

  def caveats
    <<~EOS
      Please run `double-entry-generator help` for more help.
    EOS
  end

  test do
    system "#{bin}/double-entry-generator version"
  end
end

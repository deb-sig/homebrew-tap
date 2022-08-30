# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class DoubleEntryGenerator < Formula
  desc "Rule-based double-entry bookkeeping importer (from Alipay/WeChat/Huobi to Beancount)."
  homepage "https://github.com/deb-sig/double-entry-generator"
  version "0.0.0-test-brew.6"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/deb-sig/double-entry-generator/releases/download/v0.0.0-test-brew.6/double-entry-generator_0.0.0-test-brew.6_Darwin_all.tar.gz"
    sha256 "1cba08f8c29d7839c533cc4c02a714911b88e523c91b37fadf410384b0a67a36"

    def install
      bin.install "double-entry-generator"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/deb-sig/double-entry-generator/releases/download/v0.0.0-test-brew.6/double-entry-generator_0.0.0-test-brew.6_Linux_x86_64.tar.gz"
      sha256 "1d19c355eee676cd794f21eb99957ff702661869921acba698c7f969891a7f42"

      def install
        bin.install "double-entry-generator"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deb-sig/double-entry-generator/releases/download/v0.0.0-test-brew.6/double-entry-generator_0.0.0-test-brew.6_Linux_arm64.tar.gz"
      sha256 "73d5b006258cbbf3908677bf1053ea1850f04e334a86516c7c1dcb3792473309"

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

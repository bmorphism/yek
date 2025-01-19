class Yek < Formula
  desc "A tool to chunk and serialize repository content for LLM consumption"
  homepage "https://github.com/bodo-run/yek"
  version "0.13.4"
  head "https://github.com/bodo-run/yek.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bodo-run/yek/releases/download/v#{version}/yek-aarch64-apple-darwin.tar.gz"
      sha256 "2a4edcb4b767b6e53dff37a8d4889fa635f19e43b6a508a6c54f807eac031303"  # arm64
    else
      url "https://github.com/bodo-run/yek/releases/download/v#{version}/yek-x86_64-apple-darwin.tar.gz"
      sha256 "34896ad65e8ae7c5e93d90e87f15656b67ed5b7596492863d1da80e548ba7301"  # x86_64
    end
  end

  on_linux do
    url "https://github.com/bodo-run/yek/releases/download/v#{version}/yek-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "96d8cef5a2487185ea4786083e6480e05af5340a1a8bbfcdde0a912f235c6349"  # linux
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "yek"
      else
        bin.install "yek"
      end
    else
      bin.install "yek"
    end
  end

  test do
    system "#{bin}/yek", "--version"
  end
end 
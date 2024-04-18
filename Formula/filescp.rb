class Filescp < Formula
    desc "a simple file scp"
    homepage "https://github.com/x690607895/fileScp"
  
    if Hardware::CPU.intel?
      url "https://github.com/x690607895/fileScp/releases/download/release-v1.0.0/fileScp-cli-macos-amd64.tar.gz"
      sha256 "dbd8238bee189a2f6d0bcb258b155b4ab954df1aa1968a086b36dba40cb7f5e1"
    elsif Hardware::CPU.arm?
      url "https://github.com/x690607895/fileScp/releases/download/release-v1.0.0/fileScp-cli-macos-arm64.tar.gz"
      sha256 "5ba188648e384f62827660148e874f0d94729c95a2058d1c665b01b919a7d287"
    end
  
    version "1.0.0"
  
    def install
      if Hardware::CPU.intel?
        bin.install "filescp"
      elsif Hardware::CPU.arm?
        bin.install "filescp"
      end
    end
  
  end
  
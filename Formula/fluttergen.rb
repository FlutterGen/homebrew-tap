class Fluttergen < Formula
  version "v1.1.0"
  desc "A command-line tool for The Flutter code generator for your assets, fonts, colors, … — Get rid of all String-based APIs. by Dart."
  homepage "https://github.com/FlutterGen/flutter_gen"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/FlutterGen/flutter_gen/releases/download/#{version}/fluttergen-macos.tar.gz"
    sha256 "56ad2aed321b79e3b0fb3aa3406bbc4e70b30738ebe81323ae015d04fea7c98a"
  elsif OS.linux?
    url "https://github.com/FlutterGen/flutter_gen/releases/download/#{version}/fluttergen-linux.tar.gz"
    sha256 "191d0e7c78d6c76e8ebaaaa9b64a8a7e70d5c3cdf803732dcd07413b611b8549"
  end

  def install
    bin.install "fluttergen"
  end

  test do
    system "#{bin}/fluttergen", "-h"
  end
end

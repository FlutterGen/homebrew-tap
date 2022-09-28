class Fluttergen < Formula
  version "v5.0.0"
  desc "A command-line tool for The Flutter code generator for your assets, fonts, colors, … — Get rid of all String-based APIs. by Dart."
  homepage "https://github.com/FlutterGen/flutter_gen"

  if OS.mac?
    url "https://github.com/FlutterGen/flutter_gen/releases/download/#{version}/fluttergen-macos.tar.gz"
    sha256 "7ca4f7fa1ff45e8d4718e7ae94c1ea134eff38c0d250144e3bdec814113509af"
  elsif OS.linux?
    url "https://github.com/FlutterGen/flutter_gen/releases/download/#{version}/fluttergen-linux.tar.gz"
    sha256 "d126de4ae5fc519c2ceed3f779973e419b8b1969e784fd8c60496157ad94268a"
  end

  def install
    bin.install "fluttergen"
  end

  test do
    system "#{bin}/fluttergen", "-h"
  end
end

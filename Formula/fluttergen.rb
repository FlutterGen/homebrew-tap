class Fluttergen < Formula
  version "v1.0.1"
  desc "A command-line tool for The Flutter code generator for your assets, fonts, colors, … — Get rid of all String-based APIs. by Dart."
  homepage "https://github.com/FlutterGen/flutter_gen"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/wasabeef/flutter_gen/releases/download/#{version}/fluttergen-macos.tar.gz"
    sha256 "23815e7343e4d8f68803c11a2a6f3ebe79c401ab2b6bd4279a34c40e58a8568a"
  elsif OS.linux?
    url "https://github.com/wasabeef/flutter_gen/releases/download/#{version}/fluttergen-linux.tar.gz"
    sha256 "15705952b5f0cff9e49a140dbd298bbff427d39670cca032fa27ba169648e855"
  end

  def install
    bin.install "fluttergen"
  end

  test do
    system "#{bin}/fluttergen", "-h"
  end
end

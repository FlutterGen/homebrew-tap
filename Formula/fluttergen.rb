class Fluttergen < Formula
  version "v1.0.0"
  desc "A command-line tool for The Flutter code generator for your assets, fonts, colors, … — Get rid of all String-based APIs. by Dart."
  homepage "https://github.com/FlutterGen/flutter_gen"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/wasabeef/flutter_gen/releases/download/#{version}/fluttergen-macos.tar.gz"
    sha256 "c26c04fac6429b41e15d5fe38f09b7642ef79cb136f6c054c94d97f92faf6106"
  elsif OS.linux?
    url "https://github.com/wasabeef/flutter_gen/releases/download/#{version}/fluttergen-linux.tar.gz"
    sha256 "81df4ea9a2fd135b04eb68c2be68b333871f53eb70f78ddcf05ef1fd31ec3e73"
  end

  def install
    bin.install "fluttergen"
  end

  test do
    system "#{bin}/fluttergen", "-h"
  end
end

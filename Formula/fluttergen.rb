class Fluttergen < Formula
  version "v5.1.0"
  desc "A command-line tool for The Flutter code generator for your assets, fonts, colors, … — Get rid of all String-based APIs. by Dart."
  homepage "https://github.com/FlutterGen/flutter_gen"

  if OS.mac?
    url "https://github.com/FlutterGen/flutter_gen/releases/download/#{version}/fluttergen-macos.tar.gz"
    sha256 "ac9c54a0c51932f56a500895067b09db38f8a3fc443f6aa6d0d2076ef2d8ba11"
  elsif OS.linux?
    url "https://github.com/FlutterGen/flutter_gen/releases/download/#{version}/fluttergen-linux.tar.gz"
    sha256 "c0b9e1043d48c7f347f7383e4530e3aa3c0bc2e749ac5f502ca2cf5821dcc976"
  end

  def install
    bin.install "fluttergen"
  end

  test do
    system "#{bin}/fluttergen", "-h"
  end
end

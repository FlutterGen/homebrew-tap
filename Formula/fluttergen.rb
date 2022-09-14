class Fluttergen < Formula
  version ""
  desc "A command-line tool for The Flutter code generator for your assets, fonts, colors, … — Get rid of all String-based APIs. by Dart."
  homepage "https://github.com/FlutterGen/flutter_gen"

  if OS.mac?
    url "https://github.com/FlutterGen/flutter_gen/releases/download/#{version}/fluttergen-macos.tar.gz"
    sha256 "c90ed11eeebe25946707f2b23bd8ef6f5055f274e7b6b89159f28459086bb4e7"
  elsif OS.linux?
    url "https://github.com/FlutterGen/flutter_gen/releases/download/#{version}/fluttergen-linux.tar.gz"
    sha256 "b732e1c03b43e58d84082ea8c6b161ed6eb102df7337e910010d3e9ed5a55071"
  end

  def install
    bin.install "fluttergen"
  end

  test do
    system "#{bin}/fluttergen", "-h"
  end
end

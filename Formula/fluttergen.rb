class Fluttergen < Formula
  version "v0.9.9"
  desc "A command-line tool for The Flutter code generator for your assets, fonts, colors, … — Get rid of all String-based APIs. by Dart."
  homepage "https://github.com/FlutterGen/flutter_gen"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/wasabeef/flutter_gen/releases/download/#{version}/fluttergen-macos.tar.gz"
    sha256 "e4535bddb579a084a5bb355422f50d215d23ce881d48216c48908bc348683c45"
  elsif OS.linux?
    url "https://github.com/wasabeef/flutter_gen/releases/download/#{version}/fluttergen-linux.tar.gz"
    sha256 "f7342e71977a1583019697f41ac67766fd558d33d5d716d729b908ed2e92d6fc"
  end

  def install
    bin.install "fluttergen"
  end

  test do
    system "#{bin}/fluttergen", "-h"
  end
end

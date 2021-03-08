class Fluttergen < Formula
  version "v2.0.2"
  desc "A command-line tool for The Flutter code generator for your assets, fonts, colors, … — Get rid of all String-based APIs. by Dart."
  homepage "https://github.com/FlutterGen/flutter_gen"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/FlutterGen/flutter_gen/releases/download/#{version}/fluttergen-macos.tar.gz"
    sha256 "5e8c992e8cd4667afb01eb2445d95f4110172246b72d2667caeef5abad084d33"
  elsif OS.linux?
    url "https://github.com/FlutterGen/flutter_gen/releases/download/#{version}/fluttergen-linux.tar.gz"
    sha256 "0ce0d625e77698efcae2a2f47be5d694c3d2a5116f2d0d622669913f6307a306"
  end

  def install
    bin.install "fluttergen"
  end

  test do
    system "#{bin}/fluttergen", "-h"
  end
end

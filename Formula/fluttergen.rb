class Fluttergen < Formula
  version "v3.1.2"
  desc "A command-line tool for The Flutter code generator for your assets, fonts, colors, … — Get rid of all String-based APIs. by Dart."
  homepage "https://github.com/FlutterGen/flutter_gen"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/FlutterGen/flutter_gen/releases/download/#{version}/fluttergen-macos.tar.gz"
    sha256 "a1de20ee83d747e12092a87909eb7ca7a3756060e7b677fe26711a3ccb5a72c9"
  elsif OS.linux?
    url "https://github.com/FlutterGen/flutter_gen/releases/download/#{version}/fluttergen-linux.tar.gz"
    sha256 "6da7ca3cddcdd228aeb84d1bb8021f9b9bd36836101c63100496bed3fb61b594"
  end

  def install
    bin.install "fluttergen"
  end

  test do
    system "#{bin}/fluttergen", "-h"
  end
end

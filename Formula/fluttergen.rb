class Fluttergen < Formula
  version "v2.0.1"
  desc "A command-line tool for The Flutter code generator for your assets, fonts, colors, … — Get rid of all String-based APIs. by Dart."
  homepage "https://github.com/FlutterGen/flutter_gen"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/FlutterGen/flutter_gen/releases/download/#{version}/fluttergen-macos.tar.gz"
    sha256 "b18b5900137703983d11b9a6aa16b61d0b5d30cbd1ca03aa06bf05ed5f1c564d"
  elsif OS.linux?
    url "https://github.com/FlutterGen/flutter_gen/releases/download/#{version}/fluttergen-linux.tar.gz"
    sha256 "5871a31f8f02e287e309a9cab0584b5fd587ab4e6075a305de6d74fa4ecc715b"
  end

  def install
    bin.install "fluttergen"
  end

  test do
    system "#{bin}/fluttergen", "-h"
  end
end

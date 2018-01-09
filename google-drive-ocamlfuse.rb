require "formula"

class Google-Drive-Ocamlfuse < Formula
  url "https://github.com/astrada/google-drive-ocamlfuse/tarball/master.tar.gz"
  homepage "https://github.com/astrada/google-drive-ocamlfuse"
  sha256 "86d17752180945b8d76048e5671ccd6149bdb36d"

  depends_on "ocaml"
  depends_on "opam"

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
#   system "cmake", ".", *std_cmake_args
    system "make install"
  end
end

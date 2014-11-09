with (import <nixpkgs> {});
derivation {
  name = "hello";
  builder = "${bash}/bin/bash";
  args = [ ./hello_builder.sh ];
  inherit gnutar gzip gnumake gcc binutils coreutils gawk gnused gnugrep;
  src = fetchurl {
    url = "http://ftp.gnu.org/gnu/hello/hello-2.9.tar.gz";
    md5 = "67607d2616a0faaf5bc94c59dca7c3cb";
  };
  system = builtins.currentSystem;
}


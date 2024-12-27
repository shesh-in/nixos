{
  pkgs ? import <nixpkgs> {},
  lib, ...
}:
pkgs.stdenv.mkDerivation rec {
  pname = "adi1090x-plymouth";
  version = "0.0.1";

  src = pkgs.fetchgit {
    url = "https://github.com/adi1090x/plymouth-themes";
    sha256 = "sha256-e3lRgIBzDkKcWEp5yyRCzQJM6yyTjYC5XmNUZZroDuw=";
   };

  buildInputs = [
    pkgs.git
  ];

  configurePhase = ''
mkdir -p $out/share/plymouth/themes/
  '';

  buildPhase = ''
  '';

  installPhase = ''
  cp -r pack_3/dna $out/share/plymouth/themes
cat pack_3/dna/dna.plymouth | sed  "s@\/usr\/@$out\/@" > $out/share/plymouth/themes/dna/dna.plymouth
  '';
}


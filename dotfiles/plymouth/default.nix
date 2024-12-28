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
  cp -r pack_2/dark_planet $out/share/plymouth/themes
cat pack_2/dark_planet/dark_planet.plymouth | sed  "s@\/usr\/@$out\/@" > $out/share/plymouth/themes/dark_planet/dark_planet.plymouth
  '';
}


{
    nixpkgs = {
        config = {
            allowUnfree = true;
            permittedInsecurePackages = [
                "electron-25.9.0"
                "adobe-reader-9.5.5"
            ];
        };
        overlays = [
            (import ../dotfiles/plymouth/define.nix) 
        ];
    };
}

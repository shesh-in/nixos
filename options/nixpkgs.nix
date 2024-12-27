{
    nixpkgs = {
        config = {
            allowUnfree = true;
            permittedInsecurePackages = [
                "electron-25.9.0"
            ];
        };
        overlays = [
            (import ../dotfiles/plymouth/define.nix) 
        ];
    };
}

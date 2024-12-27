{ config, lib, pkgs, home, ... }: {
    # Устанавливает один шрифт из пакета nerdfonts
    fonts.fontconfig.enable = true;
    home.packages = [
        (pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    ];

    # Эквивалентный код (устанавливающий только выбранные шрифты из пакета),
    # но не для home manager, а для nixpkgs:
    #home.fonts.packages = with pkgs; [
    #    (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    #];

}

{ pkgs, ... }:
{
    console = {
        earlySetup = true;
        #font = "${pkgs.nerd-fonts.jetbrains-mono}/share/fonts/truetype/NerdFonts/JetBrainsMono/JetBrainsMonoNLNerdFont-Regular.ttf";
        #packages = with pkgs; [ nerd-fonts.jetbrains-mono ];
        font = "${pkgs.terminus_font}/share/consolefonts/ter-m16b.psf.gz";
        packages = with pkgs; [ terminus_font ];
        keyMap = "us";
    };
}

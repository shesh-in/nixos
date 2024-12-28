{ pkgs, ... }:
{
    console = {
        earlySetup = true;
        font = "${pkgs.nerd-fonts.jetbrains-mono}/share/fonts/truetype/NerdFonts/JetBrainsMono/JetBrainsMonoNLNerdFont-Regular.ttf";
        packages = with pkgs; [ nerd-fonts.jetbrains-mono ];
        keyMap = "us";
    };
}

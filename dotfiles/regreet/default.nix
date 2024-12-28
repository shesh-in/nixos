{ pkgs, lib, ... }:
{
    programs.regreet = {
        enable = true;

        #font.name = "JetBrainsMonoNLNerdFont-Regular";
        #font.package = pkgs.nerd-fonts.jetbrains-mono;
        #font.size = 16;

       # settings = {
        #    
        #};
    };
}

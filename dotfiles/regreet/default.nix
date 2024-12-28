{ pkgs, lib, ... }:
{
    programs.regreet = {
        enable = true;

        font.name = "JetBrainsMonoNLNerdFont-Regular";
        font.package = pkgs.ner-fonts.jetbrains-mono;
        font.size = 16;

       # settings = {
        #    
        #};
    };
}

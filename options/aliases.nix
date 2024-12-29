{ config, lib, pkgs, ...}:
{
    programs.zsh.shellAliases = {
        "_" = "sudo";
        l = "ls -alh --color=tty";
        ll = "ls -l";
        grep = "grep --color=auto";
        rm = "echo \"This is not the command you are looking for.\"; false";
    };
}

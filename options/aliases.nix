{ config, lib, pkgs, ...}:
{
    programs.zsh.shellAliases = {
        _ = "sudo";
        l = "ls -alh --color = tty";
        ll = "las -l";
        grep = "grep --color=auto";
    };
}

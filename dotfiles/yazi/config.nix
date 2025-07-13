{ config, lib, pkgs, home, ... }:
{
    programs.yazi = {
        enable = true;
        settings = {
            opener = {
                open = [
                    {
                        run = "zathura \"\$@\"";
                        orphan = true;
                        name = "*.djvu";
                    }
                    {
                        run = "zathura \"\$@\"";
                        orphan = true;
                        name = "*.epub";
                    }
                    {
                        run = "acroread \"\$@\"";
                        orphan = true;
                        name = "*.pdf";
                    }
                    {
                        run = "pinta \"\$@\"";
                        orphan = true;
                        name = "*.jpg";
                    }
                    {
                        run = "pinta \"\$@\"";
                        orphan = true;
                        name = "*.jpeg";
                    }
                ];
            };
        };
    };
}

# Конфигурация SSH для ПК

{ config, lib, pkgs, ... }: {
    services.openssh = {
        enable = true;
        settings = {
            PasswordAuthentication = false; # только по ключу
            PermitRootLogin = "no";        # запрет заходить под рутом
        };
    };
}

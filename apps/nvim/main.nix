# Основной конфиг nvim. 
# Подключается на уровне ОС.

{ config, lib, pkgs, ... }: {

    # Ставим переменные окружения
    environment.variables = {
        EDITOR = "nvim";
        VISUAL = "nvim";
    };
}

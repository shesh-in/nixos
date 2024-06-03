# Пакеты, необходимые для работы графического интерфейса.

{ config, lib, pkgs, home, ... }: {
    home.packages = with pkgs; [
        wayland		# графический сервер
	    hyprland	# композитор
	    wofi 		# меню
	    eww-wayland	# виджеты
	    alacritty	# терминал 

        wl-clipboard

        grim        # для скриншотов
        slurp   

	    brightnessctl	# управление яркостью
	    wev		        # перехватывает input events
        xorg.xlsclients # посмотреть, что работает на иксах
        xwayland        # слой совместимости с иксами
    ];
}

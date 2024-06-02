# Пакеты, необходимые для работы графического интерфейса.

{ config, lib, pkgs, home, ... }: {
    home.packages = with pkgs; [
        wayland		# графический сервер
	    hyprland	# композитор
	    wofi 		# меню
	    eww-wayland	# виджеты
	    alacritty	# терминал 
	    clipman		# буфер обмена

	    brightnessctl	# управление яркостью
	    wev		# перехватывает input events
    ];
}

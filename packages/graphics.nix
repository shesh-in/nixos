# Пакеты, необходимые для работы графического интерфейса.

{ config, lib, pkgs, home, ... }: {
    home.packages = with pkgs; [
        wayland		# графический сервер
	    hyprland	# композитор
	    wofi 		# меню
	    eww-wayland	# виджеты
	    alacritty	# терминал 

	    brightnessctl	# управление яркостью
	    wev		        # перехватывает input events

        github-desktop  # gui для гита
    ];
}

# Здесь декларируются пакеты, которые устанавливаются на всю систему,
# т.е. доступны всем пользователям. 
# Предполагается, что это базовые утилиты, поэтому этот файл
# применяется ко всем машинам.

{ config, lib, pkgs, ... }: {
	
    # Удалить все предустановленные пакеты
    # они определены вот здесь:
    # https://github.com/NixOS/nixpkgs/blob/nixos-unstable/nixos/modules/config/system-path.nix
    environment.defaultPackages = [ ];

    environment.systemPackages = with pkgs; [
    	neovim			# текстовый редактор
	networkmanager		# подключение к сети
	zsh			# шелл


	grub2			# загрузчик ос
	os-prober		# для multi-boot
	efibootmgr		# управление UEFI
	
	git
	home-manager		# утилита для конфигурации пользователя

	sysstat			# набор программ для отслеживания состояния системы
	lm_sensors		# команда sensors - температура процессора
	udisks			# подключение removable drives
	htop			# таблица процессов
	
    	tree			# показывает структуру директорий
    ];
}

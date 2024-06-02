# Точка входа.

{
    description = "Shesh's NixOS configuration.";

    inputs = {
	nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";

	# home-manager позволяет настраивать пользовательское окружение,
	# т.е. конфижить не system-wide, а для конкретных пользователей.
	home-manager = {
	    url = "github:nix-community/home-manager/release-23.11";
	    inputs.nixpkgs.follows = "nixpkgs";
	};
    };

    outputs = { self, nixpkgs, home-manager, ... }@inputs: {
	nixosConfigurations = {

	    # Здесь определяются различные сборки системы. 
	    # При выполнении nixos-rebuild switch ищется файл /etc/nixos/flake.nix,
	    # а затем в его секции outputs проверяется наличие атрибута nixosConfigurations.hostname,
	    # где hostname - это имя хоста машины, на которой запускается команда. 
	    # Затем определение этого атрибута используется для конфигурации системы.

	    # Отключить автоопределение атрибута по имени хоста можно:
	    # для этого надо задать его явно вместе с самим файлом:
	    # $ sudo nixos-rebuild switch --flake /path/to/this/flake#preferred-hostname

	    # Выгрузка сброки с Github:
	    # $ sudo nixos-rebuild switch --flake github:owner/repo#hostname

	    # Основная ветка - ноутбук MSI Summit
	    msi-summit = nixpkgs.lib.nixosSystem {
	        system = "x86_64-linux";
	        modules = [ 
	    	    # Здесь включаются файлы, которые он будет смотреть дальше. 
		    # В данном конфиге здесь идёт перенаправление на 
		    # файл соответствующей машины в каталоге hosts, 
		    ./hosts/msi-summit/default.nix  # тут определяются все настройки машины
		    				    # включая создание пользователей
		    

		    # ещё тут включается home-manager
		    # и устанавливается взаимно-однозначное соответствие
		    # между каждым пользователем и его home-файлом.
		    home-manager.nixosModules.home-manager {
		        home-manager.useGlobalPkgs = true;
		        home-manager.useUserPackages = true;
			# Здесь задаётся взаимно-однозначное соответствие между 
			# пользователями и их файлами.
		    	home-manager.users.shesh = import ./hosts/msi-summit/users/shesh.nix;
		    }
	        ];
	    };
	};
    };
}

# В этом файле выбираются те модули, которые необходимо подключить для машины MSI Summit.
# В одной директории с этим файлом лежат те и только те модули, которые для этой машины индивидуальны
# (это автоматически сгенерированный hardware-configuration и настройщик гибернации swap).
# Конфиги, которые можно использовать на других машинах, в этой директории лежать НЕ должны. 

{ config, lib, pkgs, ... }: {
    
    imports = [
    	# Индивидуальные для машины файлы
    	#./system/hardware-configuration.nix 	# Сгенерирован автоматически, не трогать
	    #./system/version.nix			# Сгенерирован автоматически, не трогать
	    #./system/swap.nix			# Обеспечивает гибернацию
	
	    # Создание пользователей
	    ./users/create.nix

	    # Загрузчик 
	    ../../boot/grub2-multiboot.nix  # grub2 с включённым os-prober
    
        # Основные настройки
	    ../../basics/main-hypr.nix		# Локали, дефолтный шелл, etc.


        # SSH
        ../../apps/ssh/pc.nix           # Только по паролю, без рута

	    # Пакеты, доступные руту.
	    # Остальные пакеты определяются для каждого пользователя в его файле. 
	    ../../packages/systemwide.nix

	    ../../configuration.nix 
    ];
    
    system.autoUpgrade.enable = true;
    system.autoUpgrade.allowReboot = false;

    # Имя хоста
    networking.hostName = "msi-summit";
}

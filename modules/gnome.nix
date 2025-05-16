{pkgs , ...}: {
	services.xserver = {
    enable = true;
		desktopManager = {
      gnome.enable = true;
    };
  };
	services.displayManager.defaultSession = "gnome";
	
	services.libinput = {
		enable = true;
		mouse.accelProfile = "flat";
	};

	services.xserver.videoDrivers = [ "nvidia" ];
	hardware.nvidia.open = false;
}

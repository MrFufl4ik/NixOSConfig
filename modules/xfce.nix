{pkgs , ...}: {
	services.xserver = {
    enable = true;
		desktopManager = {
      xfce.enable = true;
    };
  };
	services.displayManager.defaultSession = "xfce";
	
	services.libinput = {
		enable = true;
		mouse.accelProfile = "flat";
	};

	services.xserver.videoDrivers = [ "nvidia" ];
	hardware.nvidia.open = false;
}

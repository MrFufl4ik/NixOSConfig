{config, pkgs, ...}: {
	programs.hyprland = {
    		enable = true;
    		xwayland.enable = true;
  	};

	services.xserver.videoDrivers = ["nvidia"];

  environment.systemPackages = with pkgs; [
    hyprshot
    wl-clipboard
    alacritty
    wofi
    swww
    waybar
  ];

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

	hardware.nvidia = {
    		modesetting.enable = true;
    		open = false;
    		nvidiaSettings = true;
        powerManagement.enable = true;
	};
  boot.kernelParams = [ "nvidia.NVreg_PreserveVideoMemoryAllocations=1" ];

}

{config, ...}: {
	networking.firewall.enable = false;
	networking.networkmanager.enable = true;

	boot.extraModulePackages = with config.boot.kernelPackages; [ rtl8821au ];
}

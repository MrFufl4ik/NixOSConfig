{ config, pkgs, ...}: {
	home = {
		username = "mrfufl4ik";
		homeDirectory = "/home/mrfufl4ik";
		stateVersion = "24.11";
	};

	imports = [ ./modules/bootstrap.nix ];
}

{pkgs, ...}: {
	nixpkgs = {
		config = {
			allowUnfree = true;
			allowUnfreePredicate = (_: true);
		};
	};
	home.packages = [
		pkgs.discord
		pkgs.telegram-desktop
		pkgs.keepassxc
		pkgs.krita
	];
}

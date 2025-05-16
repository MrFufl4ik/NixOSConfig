{pkgs, ...}: {
	gtk = {
		enable = true;
		font.name = "Jetbrains Mono";
    theme = {
      name = "adw-gtk3";
      package = pkgs.adw-gtk3;
    };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };
	};
}

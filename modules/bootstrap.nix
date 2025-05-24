{
	imports = [
    ./systemd-boot.nix
    ./fstab.nix
    ./network.nix

    ./console.nix
    ./nixvim/nixvim.nix
		
    ./user.nix
    ./openssh.nix
    ./amneziavpn.nix
    ./env.nix

    ./steam.nix
    ./virtualbox.nix

    #explorer
    ./thunar.nix

		#de
		./pipewire.nix
		#./xfce.nix
		./hyprland.nix
    #./gnome.nix
	];
}

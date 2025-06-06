{ config, pkgs, unstable, ...}: {
	nixpkgs.config = {
    		allowUnfree = true;
  };
	environment.systemPackages = with pkgs; [
		#coding stuff
		git
		bc
		gnumake
    (python3.withPackages (ps: with ps; [ requests ]))
    cmake

    #ide
    #steam-run-free
    emacs

		#cli utils
		fastfetch
		wget
		unzip
		imagemagick
    dex
		cava
    fd
    jdk21_headless
    appimage-run
    rcon

    #vulkan
    vulkan-loader
    vulkan-tools
    libva

    #minecraft
    prismlauncher

    #video
    #davinci-resolve

		#vpn
		unstable.legacyPackages.${pkgs.system}.amnezia-vpn
    
    #gui
    feh
    mpv
    scrcpy
		ffmpeg-full
		obs-studio
    #amberol
    filezilla
    qbittorrent

    #wayland
    woomer

    #explorers
    xarchiver

 		#libreoffice
 		libreoffice

		#icons
 		papirus-icon-theme

		#other
		home-manager
	];
	fonts.packages = with pkgs; [
		jetbrains-mono
		noto-fonts
		noto-fonts-emoji
		twemoji-color-font
		font-awesome
		powerline-fonts
		powerline-symbols
  ];
	boot.extraModulePackages = with config.boot.kernelPackages; [ amneziawg ];
}

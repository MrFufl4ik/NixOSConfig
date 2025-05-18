{

  imports = [
  	./modules/bootstrap.nix
  ];

  programs.nixvim = {
  	enable = true;

		defaultEditor = true;
    #colorschemes.oxocarbon.enable = true;
    #colorschemes.jb.enable = true;
	};
}

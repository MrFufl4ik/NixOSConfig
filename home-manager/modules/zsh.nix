{
	programs = {
		zsh = {
			enable = true;
			enableCompletion = true;

			shellAliases =
      let
        flakeDir = "~/nix";
      in {
				nrebuild = "sudo nixos-rebuild switch --flake ${flakeDir}";
      	nupdate = "nix flake update ${flakeDir}";
      	nupgrade = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}";

      	nhomemanager = "home-manager switch --flake ${flakeDir}";

				conf = "nvim ${flakeDir}/configuration.nix";
      	pkgs = "nvim ${flakeDir}/packages.nix";

      	se = "sudoedit";
				cl = "clear";
      	ff = "fastfetch";
    	};

			oh-my-zsh = {
				enable = true;
				theme = "gentoo";
			};
		};
	};
}

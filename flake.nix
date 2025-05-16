{
	description = "My system config!";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
		unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
		home-manager = {
			url = "github:nix-community/home-manager/release-24.11";
			inputs.nixpkgs.follows = "nixpkgs";
		};
    nixvim = {
      url = "github:nix-community/nixvim/nixos-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
	};

	outputs = { self, nixpkgs, unstable, home-manager, ...}@inputs: {
		nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
			system = "x86_64-linux";
			specialArgs = { inherit unstable; };
			modules = [
				./configuration.nix
        inputs.nixvim.nixosModules.nixvim
			];
		};
		homeConfigurations.mrfufl4ik = home-manager.lib.homeManagerConfiguration {
			pkgs = nixpkgs.legacyPackages."x86_64-linux";
			modules = [ ./home-manager/home.nix ];
		};
	};
}

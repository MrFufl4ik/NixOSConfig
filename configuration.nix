# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ config, lib, pkgs, ... }:

{
  imports = [
		./hardware-configuration.nix
		./packages.nix
		./modules/bootstrap.nix
	];

  networking.hostName = "nixos";
  time.timeZone = "Asia/Omsk";
  i18n.defaultLocale = "ru_RU.UTF-8";

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  
  system.stateVersion = "24.11";
}


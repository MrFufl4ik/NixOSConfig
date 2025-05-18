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


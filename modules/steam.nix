{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    steam
    steam-run
  ];
 
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };
}

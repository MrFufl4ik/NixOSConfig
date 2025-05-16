{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    xfce.thunar
    ffmpegthumbnailer
  ];
  services.tumbler.enable = true;
  services.gvfs.enable = true;
}

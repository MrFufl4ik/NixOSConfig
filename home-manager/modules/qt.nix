{pkgs, ...}: {
  qt = {
    enable = true;
    platformTheme.name = "adwaita";
    style.name = "adwaita";
  };
}

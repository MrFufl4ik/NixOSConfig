{ config, pkgs, ... }:
{
  programs.alacritty = {
    enable = true;
    
    settings = {
      font = {
        normal = {
          family = "JetBrains Mono";
          style = "SemiBold";
        };
        size = 13;
        offset.y = 2;
      };
      
      colors = {
        primary = {
          #background = "#10131c";
          background = "#181818";
          foreground = "#bbc2cf";
        };
        #normal = {
        #  black = "#32344a";
        #  red = "#f7768e";
        #  green = "#9ece6a";
        #  yellow = "#e0af68";
        #  blue = "#7aa2f7";
        #  magenta = "#ad8ee6";
        #  cyan = "#449dab";
        #  white = "#787c99";
        #};
        #bright = {
        #  black = "#444b6a";
        #  red = "#ff7a93";
        #  green = "#b9f27c";
        #  yellow = "#ff9e64";
        #  blue = "#7da6ff";
        #  magenta = "#bb9af7";
        #  cyan = "#0db9d7";
        #  white = "#acb0d0";
        #};
      };
      #window = {
      #  opacity = 0.5;
      #};
    };
  };
}

{
	wayland.windowManager.hyprland = {
		enable = true;
		xwayland.enable = true;

		settings = {
			monitor = ",1920x1080@144,auto,1";

			"$mainMod" = "SUPER";
			"$terminal" = "alacritty";
			"$menu" = "wofi --show drun";
			"$explorer" = "thunar";
      "$emacs" = "emacs";
			"$printrg" = "hyprshot -m region -o /home/mrfufl4ik/screenshotes";
			"$printfull" = "hyprshot -m region -o /home/mrfufl4ik/screenshotes";

			env = [
				"XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"
        "XDG_SESSION_DESKTOP,Hyprland"
        "XCURSOR_SIZE,24"
				"XCURSOR_THEME,Bibata-Modern-Ice"
        "QT_QPA_PLATFORM,wayland"
        "LIBVA_DRIVER_NAME,nvidia"
        "__GLX_VENDOR_LIBRARY_NAME,nvidia"
			];

			input = {
				kb_layout = "us,ru";
				kb_options = "grp:caps_toggle";

				follow_mouse = false;
				accel_profile = "flat";
			};

			bind = [
				#base
				"$mainMod, Return, exec, $terminal"
				"$mainMod, d, exec, $menu"
				"$mainMod, e, exec, $explorer"
        "$mainMod, q, exec, $emacs"
        "$mainMod SHIFT, f1, exit"
				"$mainMod, c, killactive"
        "$mainMod, v, togglefloating"
        "$mainMod, f, fullscreen"


				#window focus
				"$mainMod, left, movefocus, l"
				"$mainMod, right, movefocus, r"
				"$mainMod, up, movefocus, u"
				"$mainMod, down, movefocus, d"

				#go to workspaces
				"$mainMod, 1, workspace, 1"
				"$mainMod, 2, workspace, 2"
				"$mainMod, 3, workspace, 3"
				"$mainMod, 4, workspace, 4"
				"$mainMod, 5, workspace, 5"
				"$mainMod, 6, workspace, 6"
				"$mainMod, 7, workspace, 7"
				"$mainMod, 8, workspace, 8"
				"$mainMod, 9, workspace, 9"
				"$mainMod, 0, workspace, 10"

				#move window to workspace
				"$mainMod SHIFT, 1, movetoworkspace, 1"
				"$mainMod SHIFT, 2, movetoworkspace, 2"
				"$mainMod SHIFT, 3, movetoworkspace, 3"
				"$mainMod SHIFT, 4, movetoworkspace, 4"
				"$mainMod SHIFT, 5, movetoworkspace, 5"
				"$mainMod SHIFT, 6, movetoworkspace, 6"
				"$mainMod SHIFT, 7, movetoworkspace, 7"
				"$mainMod SHIFT, 8, movetoworkspace, 8"
				"$mainMod SHIFT, 9, movetoworkspace, 9"
				"$mainMod SHIFT, 0, movetoworkspace, 10"

        #print
        ", PRINT, exec, $printrg"
        "SHIFT, PRINT, exec, $printfull"
        
        #woomer
        ", SCROLL_LOCK, exec, woomer"

        #waybar
        "$mainMod, B, exec, pkill -SIGUSR1 waybar"
        "$mainMod, W, exec, pkill -SIGUSR2 waybar"
			];

			bindm = [
				"$mainMod, mouse:272, movewindow"
				"$mainMod, mouse:273, resizewindow"
			];

      exec-once = [
        "swww-daemon"
        "swww img ~/wallpapers/wallpaper6.png"
        "waybar"
      ];

      windowrule = [
        "float, ^(feh)$"
        "float, ^(mpv)$"
        "noanim, title:^(woomer)$"
        "float, title:^(Prism Launcher 9.4)$"
        "size 595 487, title:^(Prism Launcher 9.4)$"
      ];
	
			decoration = {
        rounding = 10;

        blur = {
          enabled = true;
          size = 16;
          passes = 2;
          new_optimizations = true;
        };

				shadow = {
					enabled = true;
					range = 4;
					render_power = 3;
					color = "rgba(1a1a1aee)";
				};
			};

      general = {
        gaps_in = 5;
        gaps_out = 20;
        border_size = 3;
        "col.active_border" = "rgba(33ccffee) rgba(00ff99ee) 45deg";
        "col.inactive_border" = "rgba(595959aa)";
      };

      animations = {
        enabled = true;

        bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";
        # bezier = "myBezier, 0.33, 0.82, 0.9, -0.08";

        animation = [
          "windows,     1, 7,  myBezier"
          "windowsOut,  1, 7,  default, popin 80%"
          "border,      1, 10, default"
          "borderangle, 1, 8,  default"
          "fade,        1, 7,  default"
          "workspaces,  1, 6,  default"
        ];
      };

			misc = {
				disable_hyprland_logo = true;
			};
		};
	};
}

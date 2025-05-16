{
	#programs.grim = true;
	
	wayland.windowManager.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
    config = rec {
      modifier = "Mod4";
      terminal = "foot";
			gaps.inner = 2;
			gaps.outer = 2;
			focus.followMouse = false;
    };
		xwayland = true;
  };

}

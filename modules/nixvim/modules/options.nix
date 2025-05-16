{
	programs.nixvim = {
		clipboard = {
      register = "unnamedplus";
      providers.wl-copy.enable = true;
		};
    
		opts = {
			number = true;
			hidden = true;
			swapfile = false;
      undofile = true;
			updatetime = 100;

			tabstop = 2;
			shiftwidth = 2;
			expandtab = true;
			autoindent = true;

      scrolloff = 12;

      cursorline = false;
      cursorcolumn = false;
      signcolumn = "yes";
      colorcolumn = "100";
		};
	};
}

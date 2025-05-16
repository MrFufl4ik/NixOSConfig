{ config, lib, ... }: {
  programs.nixvim = {
    globals = {
      mapleader = "\\";
      maplocalleader = "\\";
    };

    keymaps = let
      normal =
        lib.mapAttrsToList
        (key: action: {
          mode = "n";
          inherit action key;
        })
        {
          # Open Neotree
          #"<leader>n" = ":Neotree<CR>";

          # Esc to clear search results
          "<esc>" = ":noh<CR>";

          "<F18>" = ":IncRename ";

          # back and fourth between the two most recent files
          "<C-c>" = ":b#<CR>";

          # close by Ctrl+x
          "<C-x>" = ":close<CR>";

          "<M-k>" = ":move-2<CR>";
          "<M-j>" = ":move+<CR>";
        };
    in
      config.nixvim.helpers.keymaps.mkKeymaps
      {options.silent = true;}
      (normal);
  };
}

{ pkgs, ... }:
{
  programs.nixvim = {
    extraPlugins = [
      (pkgs.vimUtils.buildVimPlugin {
        name = "jb-color-scheme";  # Укажите любое имя
        src = pkgs.fetchFromGitHub {
          owner = "nickkadutskyi";
          repo = "jb.nvim";
          tag = "v0.1";
          sha256 = "byYvkLCNkjwoGk5I786TZaEvQZfwTGNIsqB1PLxt8so=";
        };
      })
    ];
    colorscheme = "jb";
  };
}

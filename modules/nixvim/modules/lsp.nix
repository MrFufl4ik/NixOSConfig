{pkgs, ...}: {
  programs.nixvim.plugins = {
    treesitter = {
      enable = true;
      nixvimInjections = true;
      folding = false;
      settings.indent.enable = true;
    };

    treesitter-refactor = {
      enable = true;
      highlightDefinitions = {
        enable = true;
        clearOnCursorMove = false;
      };
    };

    hmts.enable = true;

    lsp = {
      enable = true;
      servers = {
        clangd = {
          enable = true;
          package = pkgs.llvmPackages_19.clang-tools;
          extraOptions = {
            cmd = [ "clangd" "--background-index" "--clang-tidy" "--header-insertion=never" ];
            initializationOptions = {
              clangdFileStatus = true;
              fallbackFlags = [ "-std=c++19" ];
            };
          };
        };
        nil_ls.enable = true;
      };
    };
  };
}

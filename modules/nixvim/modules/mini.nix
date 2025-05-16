{
  programs.nixvim.plugins.mini = {
    enable = true;

    modules = {
      align = {};
      pairs = {};
      clue = {};
      cursorword = {};
      doc = {};
      extra = {};
      indentscope = {};
      trailspace = {};
      misc = {};
      surround = {};
    };
  };
}

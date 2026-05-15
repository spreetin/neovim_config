{
  flake.modules.neovim."lang_haskell" = {
    plugins = {
      lint.lintersByFt.haskell = [ "hlint" ];
      haskell-tools = {
        enable = true;
        enableTelescope = true;
      };
    };
  };
}

{
  flake.modules.neovim."lang_haskell" =
    { pkgs, ... }:
    {
      lsp.servers.hls.enable = true;
      extraPackages = with pkgs; [ hlint ];
      plugins.lint.lintersByFt.haskell = [ "hlint" ];
    };
}

{
  flake.modules.neovim."lang_nix" = {
    lsp.servers.nixd.enable = true;
    plugins = {
      conform-nvim.settings.formatters_by_ft.nix = [ "nixfmt" ];
      lint.lintersByFt.nix = [ "statix" ];
      nix-develop.enable = true;
      nix.enable = true;
    };
  };
}

{
  flake.modules.neovim."lang_rust" =
    { pkgs, ... }:
    {
      lsp.servers.rust_analyzer.enable = true;
      extraPackages = with pkgs; [ rustfmt ];
      plugins.conform-nvim.settings.formatters_by_ft.rust = [ "rustfmt" ];
    };
}

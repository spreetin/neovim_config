{
  flake.modules.neovim."lang_css" =
    { pkgs, ... }:
    {
      lsp.servers.cssls.enable = true;
      extraPackages = with pkgs; [ prettier ];
      plugins.conform-nvim.settings.formatters_by_ft.css = [ "prettier" ];
    };
}

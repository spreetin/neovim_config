{
  flake.modules.neovim."lang_json" =
    { pkgs, ... }:
    {
      lsp.servers.jsonls.enable = true;
      extraPackages = with pkgs; [
        prettier
      ];
      plugins.conform-nvim.settings.formatters_by_ft.json = [ "prettier" ];
    };
}

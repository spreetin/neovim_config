{
  flake.modules.neovim."lang_yaml" =
    { pkgs, ... }:
    {
      lsp.servers.yamlls.enable = true;
      extraPackages = with pkgs; [
        prettier
        yamllint
      ];
      plugins.conform-nvim.settings.formatters_by_ft.yaml = [ "prettier" ];
      plugins.lint.lintersByFt.yaml = [ "yamllint" ];
    };
}

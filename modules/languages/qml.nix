{
  flake.modules.neovim."lang_qml" =
    { pkgs, ... }:
    {
      lsp.servers.qmlls.enable = true;
      extraPackages = with pkgs; [ kdePackages.qtdeclarative ];
      plugins.conform-nvim.settings.formatters_by_ft.qml = [ "qmlformat" ];
      plugins.lint.lintersByFt.qml = [ "qmllint" ];
    };
}

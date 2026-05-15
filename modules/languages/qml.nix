{
  flake.modules.neovim."lang_qml" = {
    lsp.servers.qmlls.enable = true;
    plugins = {
      conform-nvim.settings.formatters_by_ft.qml = [ "qmlformat" ];
      lint.lintersByFt.qml = [ "qmllint" ];
    };
  };
}

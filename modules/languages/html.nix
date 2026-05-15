{
  flake.modules.neovim."lang_html" = {
    lsp.servers.html.enable = true;
    plugins = {
      conform-nvim.settings.formatters_by_ft.html = [ "prettier" ];
      lint.lintersByFt.html = [ "tidy" ];
    };
  };
}

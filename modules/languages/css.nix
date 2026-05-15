{
  flake.modules.neovim."lang_css" = {
    lsp.servers = {
      cssls.enable = true;
      css_variables.enable = true;
    };
    plugins = {
      conform-nvim.settings.formatters_by_ft.css = [ "prettier" ];
      lint.lintersByFt.css = [ "stylelint" ];
    };
  };
}

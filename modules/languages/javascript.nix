{
  flake.modules.neovim."lang_javascript" = {
    lsp.servers.ts_ls.enable = true;
    plugins = {
      conform-nvim.settings.formatters_by_ft.javascript = [ "prettier" ];
      lint.lintersByFt.javascript = [ "jshint" ];
      typescript-tools.enable = true;
    };
  };
}

{
  flake.modules.neovim."lang_sql" = {
    lsp.servers.sqlls.enable = true;
    plugins = {
      conform-nvim.settings.formatters_by_ft.sql = [ "sqlfluff" ];
      lint.lintersByFt.sql = [ "sqlfluff" ];
    };
  };
}

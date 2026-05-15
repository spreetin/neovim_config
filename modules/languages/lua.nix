{
  flake.modules.neovim."lang_lua" = {
    lsp.servers.lua_ls.enable = true;
    plugins = {
      conform-nvim.settings.formatters_by_ft.lua = [ "stylua" ];
      lint.lintersByFt.lua = [ "luacheck" ];
    };
  };
}

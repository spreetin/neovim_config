{
  flake.modules.neovim."lang_lua" =
    { pkgs, ... }:
    {
      lsp.servers.lua_ls.enable = true;
      extraPackages = with pkgs; [
        stylua
        luaPackages.luacheck
      ];
      plugins = {
        conform-nvim.settings.formatters_by_ft.lua = [ "stylua" ];
        lint.lintersByFt.lua = [ "luacheck" ];
      };
    };
}

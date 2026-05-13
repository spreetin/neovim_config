{
  flake.modules.neovim."lang_typescript" =
    { pkgs, ... }:
    {
      lsp.servers.ts_ls.enable = true;
      extraPackages = with pkgs; [
        prettier
        jshint
      ];
      plugins = {
        conform-nvim.settings.formatters_by_ft = {
          javascript = [ "prettier" ];
        };
        lint.lintersByFt = {
          javascript = [ "jshint" ];
        };
        typescript-tools.enable = true;
      };
    };
}

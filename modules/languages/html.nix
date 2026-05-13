{
  flake.modules.neovim."lang_html" =
    { pkgs, ... }:
    {
      extraPackages = with pkgs; [
        prettier
        html-tidy
      ];
      plugins.conform-nvim.settings.formatters_by_ft.html = [ "prettier" ];
      plugins.lint.lintersByFt.html = [ "tidy" ];
    };
}

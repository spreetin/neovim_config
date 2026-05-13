{
  flake.modules.neovim."lang_python" =
    { pkgs, ... }:
    {
      lsp.servers.pylsp.enable = true;
      extraPackages = with pkgs; [
        black
        pylint
      ];
      plugins.conform-nvim.settings.formatters_by_ft.python = [ "black" ];
      plugins.lint.lintersByFt.python = [ "pylint" ];
    };
}

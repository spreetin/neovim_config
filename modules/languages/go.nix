{
  flake.modules.neovim."lang_go" =
    { pkgs, ... }:
    {
      extraPackages = with pkgs; [
        gofumpt
        golangci-lint
      ];
      plugins.conform-nvim.settings.formatters_by_ft.go = [ "gofumpt" ];
      plugins.lint.lintersByFt.go = [ "golangcilint" ];
    };
}

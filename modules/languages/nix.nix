{
  flake.modules.neovim."lang_nix" =
    { pkgs, ... }:
    {
      lsp.servers.nixd.enable = true;
      extraPackages = with pkgs; [
        nixfmt
        statix
      ];
      plugins = {
        conform-nvim.settings.formatters_by_ft.nix = [ "nixfmt" ];
        lint.lintersByFt.nix = [ "statix" ];
        nix-develop.enable = true;
        nix.enable = true;
      };
    };
}

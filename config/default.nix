{ pkgs, ... }:
{
  # Import all your configuration modules here
  imports = [
    ./plugins

    ./config.nix
    ./keybinds.nix
    ./lsp.nix
  ];

  withRuby = false;
  extraPackages = with pkgs; [
    fzf
    lazygit
    ripgrep
  ];
  colorschemes.catppuccin.enable = true;
  colorscheme = "catppuccin";
}

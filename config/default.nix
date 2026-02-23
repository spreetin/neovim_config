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
    curl
    fzf
    git
    lazygit
    ripgrep
    nodePackages.nodejs
    perl
    python315
    ruby
  ];
  colorschemes.catppuccin.enable = true;
  colorscheme = "catppuccin";
  performance = {
    byteCompileLua.enable = true;
  };
}

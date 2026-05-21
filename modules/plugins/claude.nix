{
  flake.modules.neovim.claude = {
    nixpkgs.config.allowUnfree = true;
    plugins.claude-code = {
      enable = true;
    };
  };
}

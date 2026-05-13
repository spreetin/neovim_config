{
  inputs,
  config,
  ...
}:
{
  flake.modules.neovim."config_minimal" = {
    imports = with config.flake.modules.neovim; [
      common
      blink-cmp
      mini
      snacks
      treesitter
      which-key
    ];
  };
}

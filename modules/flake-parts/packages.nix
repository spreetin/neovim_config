{ inputs, config, ... }:
{
  perSystem =
    { system, ... }:
    let
      nixvim' = inputs.nixvim.legacyPackages.${system};
      mkModule = module: {
        nixpkgs.config.allowUnfree = true;
        inherit system;
        module = module;
        extraSpecialArgs = { };
      };
    in
    {
      packages = {
        default = nixvim'.makeNixvimWithModule (mkModule config.flake.modules.neovim."config_default");
        full = nixvim'.makeNixvimWithModule (mkModule config.flake.modules.neovim."config_full");
        small = nixvim'.makeNixvimWithModule (mkModule config.flake.modules.neovim."config_small");
        minimal = nixvim'.makeNixvimWithModule (mkModule config.flake.modules.neovim."config_minimal");
      };
    };
}

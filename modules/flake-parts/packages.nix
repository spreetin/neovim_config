{ inputs, config, ... }:
{
  perSystem =
    { system, ... }:
    let
      nixvim' = inputs.nixvim.legacyPackages.${system};
      mkModule = module: {
        inherit system;
        module = module;
        extraSpecialArgs = { };
      };
    in
    {
      packages = {
        default = nixvim'.makeNixvimWithModule (mkModule config.flake.modules.neovim."config_default");
        small = nixvim'.makeNixvimWithModule (mkModule config.flake.modules.neovim."config_small");
        minimal = nixvim'.makeNixvimWithModule (mkModule config.flake.modules.neovim."config_minimal");
      };
    };
}

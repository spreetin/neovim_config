{
  flake.modules.neovim.parsers =
    { pkgs, ... }:
    {
      extraPackages = with pkgs; [
        nodejs
        perl
        python315
        ruby
      ];
    };
}

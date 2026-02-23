{
  description = "My neovim config, using nvf. WIP.";

  inputs = {
    #nixpkgs.url = "github:NixOS/nixpkgs/c0b0e0fddf73fd517c3471e546c0df87a42d53f4";  #cad22e7d996aea55ecab064e84834289143e44a0";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nvf = {
      url = "github:NotAShelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {nixpkgs, nvf,...}: {
    packages.x86_64-linux.default = (nvf.lib.neovimConfiguration {
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
      modules = [
        (import ./config.nix {pkgs = nixpkgs.legacyPackages.x86_64-linux; lib = nixpkgs.lib;})
      ];
    }).neovim;
  };
}

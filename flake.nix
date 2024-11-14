{
  description = "My Neovim Nix modules.";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs?rev=ad3f60580aa2bbc095050867deb0e0335c2269f1";
  };

  outputs =
    { nixpkgs, ... }:
    let
      forAllSystems = nixpkgs.lib.genAttrs nixpkgs.lib.systems.flakeExposed;
    in
    {
      darwinModules.default = import ./nix/modules;
      formatter = forAllSystems (system: nixpkgs.legacyPackages.${system}.nixfmt-rfc-style);
      nixosModules.default = import ./nix/modules;
    };
}

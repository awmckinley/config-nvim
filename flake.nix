{
  description = "My Neovim Nix modules.";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs?rev=ccc0c2126893dd20963580b6478d1a10a4512185";
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

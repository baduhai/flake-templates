{
  description = "Template for a nix package";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = import nixpkgs { inherit system; };
      in with pkgs; {
        devShells.default = mkShell { packages = [ ]; };
        packages = {
          default = self.packages."${system}".package;
          "package" = pkgs.callPackage ./package.nix { };
        };
      });
}

{
  description = "nix-darwin flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:nix-darwin/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    flake-parts.url = "github:hercules-ci/flake-parts";
    flake-parts.inputs.nixpkgs-lib.follows = "nixpkgs";
  };

  outputs = inputs@{ flake-parts, nixpkgs, nix-darwin, self }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "aarch64-darwin"
        "x86_64-darwin"
      ];

      flake = {
        darwinConfigurations.default = nix-darwin.lib.darwinSystem {
          system = "aarch64-darwin";
          specialArgs = { inherit self; };
          modules = [
            ./system.nix
            ./mac.nix
            ./yabai.nix
            ./skhd.nix
          ];
        };
      };
    };
}

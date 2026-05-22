{
  description = "nix-darwin flake for yabai setup";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:nix-darwin/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
  };
  outputs = inputs@{ self, nix-darwin, nixpkgs }:
  let
    configuration = { pkgs, ... }: {
      environment.systemPackages = with pkgs;
      [
        vim
        ffmpeg
      ];
      nix.settings.experimental-features = "nix-command flakes";
      system.configurationRevision = self.rev or self.dirtyRev or null;
      system.stateVersion = 6;
      system.primaryUser = "kurosiko";
      nixpkgs.hostPlatform = "aarch64-darwin";
      fonts.packages = with pkgs;[
        
      ];
    };
  in
  {
    darwinConfigurations."macos" = nix-darwin.lib.darwinSystem {
      modules = [
        configuration
        ./mac.nix
        ./yabai.nix
      ];
    };
  };
}

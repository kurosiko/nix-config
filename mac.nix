{pkgs,...}:{
  nixpkgs.hostPlatform = "aarch64-darwin";
  system.stateVersion = 5;

  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = "nix-command flakes";
  system.defaults = {
    dock = {
      autohide = true;
      show-recents = false;
      tilesize = 48;
    };
    finder = {
      AppleShowAllExtensions = true;
      FXEnableExtensionChangeWarning = true;
    };
    trackpad = {
      Clicking = true;
      TrackpadThreeFinderDrag = true;
    };
  };
  programs.zsh.enable = true;
}
{pkgs,...}:{
  nixpkgs.hostPlatform = "aarch64-darwin";
  system.stateVersion = 5;

  nixpkg.config.allowUnfree = true;
  nix.settings.experimental-feature = "nix-command flakes"
  system.defaults = {
    dock = {
      autohide = true;
      show-recents = false;
      tilesize = 48;
    };
    finder = {
      AppleShowAllExtensions = true;
      FxEnableExtensionChangeWarning = true;
    };
    trackpad = {
      Clicking = true;
      TrackpadThreeFinderDrag = true;
    }
  };
  
  programs.zsh.enable = true;
}
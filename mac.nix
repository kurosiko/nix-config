{pkgs,...}:{
  system.defaults = {
    dock = {
      autohide = true;
      show-recents = false;
    };
    finder = {
      AppleShowAllExtensions = true;
      FXEnableExtensionChangeWarning = true;
    };
    trackpad = {
      Clicking = true;
      TrackpadThreeFingerDrag = false;
    };
  };
  programs.zsh.enable = true;
  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };
}

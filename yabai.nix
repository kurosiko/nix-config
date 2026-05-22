{pkgs,...}:{
  services.yabai = {
    enable = true;
    package = pkgs.yabai;
    config = {
      layout = "bsp";
      window_gap=10;
      top_padding=10;
      bottom_padding=10;
      left_padding=10;
      right_padding=10;

      focus_follows_mouse = "autofocus";
      window_placement = "second_child";
      
    };
  };
}
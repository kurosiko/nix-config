{pkgs,...}:{
  services.yabai = {
    enable = true;
    package = pkgs.yabai;
    config = {
      layout = "bsp";
      window_gap = 5;
      top_padding = 5;
      bottom_padding = 5;
      left_padding = 5;
      right_padding = 5;

      focus_follows_mouse = "autofocus";
      window_placement = "second_child";
      mouse_follows_focus = "off";
      window_shadow = "on";
      window_opacity = "off";
      active_window_opacity = "1.0";
      normal_window_opacity = "0.90";
      window_border = "off";
      window_border_width = 2;
      active_window_border_color = "0xffcba6f7";
      normal_window_border_color = "0xff313244";
      insert_feedback_color = "0xffa6e3a1";
      split_ratio = "0.50";
      auto_balance = "off";
      mouse_modifier = "fn";
      mouse_action1 = "move";
      mouse_action2 = "resize";
      mouse_drop_action = "swap";
    };
    extraConfig = ''
      # Rules
      yabai -m rule --add app="^System Settings$" manage=off
      yabai -m rule --add app="^Calculator$" manage=off

      echo "yabai configuration loaded.."
    '';
  };
}

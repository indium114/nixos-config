{
  pkgs,
  ...
}:

{

  services.openssh.enable = true;
  services.printing = {
    enable = true;
    drivers = [
      pkgs.gutenprint
      pkgs.gutenprintBin
      pkgs.cnijfilter2
    ];
  };
  services.avahi.enable = true;
  services.displayManager.ly.enable = true;
  services.udisks2.enable = true;
  services.gvfs.enable = true;
  services.dbus = {
    enable = true;
    packages = [ pkgs.dconf ];
  };

  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-gnome
      pkgs.xdg-desktop-portal-gtk
    ];
    config.common.default = "gtk";
  };

  services.blueman.enable = true;
  services.flatpak.enable = true;
  services.locate = {
    enable = true;
    package = pkgs.plocate;
    prunePaths = [
      "/tmp"
      "/var/tmp"
      "/var/cache"
      "/media"
      "/nix/store"
      "/home/indium114/.cargo"
      "/home/indium114/go"
      "/home/indium114/.cache"
      "/home/indium114/.librewolf"
      "/home/indium114/.mozilla"
      "/home/indium114/.password-store"
      "/home/indium114/.steam"
    ];
  };
  services.yarr.enable = true;
  services.auto-cpufreq = {
    enable = true;
    settings = {
      charger = {
        governor = "performance";
        turbo = "always";
      };
      battery = {
        governor = "powersave";
        turbo = "never";
      };
    };
  };
  services.upower.enable = true;
  programs.kwybars = {
    enable = true;
    systemd.enable = true;
    settings = {
      overlay = {
        monitor_mode = "primary";
        layer = "background";
        position = "bottom";
        full_length = true;
        height = 90;
        anchor_margin = 0;
        margin_left = 0;
        margin_right = 100;
        margin_bottom = 0;
      };

      visualizer = {
        layout = "wave";
        bars = 10;
        framerate = 60;
        wave_stroke_width = 6;
        wave_fill = true;
        wave_glow = false;
        wave_smoothing = 0.8;
        wave_motion_smoothing = 0.1;
        wave_amplitude = 1.3;
        color_mode = "gradient";
        color_rgba = "rgba(180, 190, 254, 0.7)";
        color2_rgba = "rgba(137, 180, 250, 0.7)";
      };
    };
  };

}

{
  pkgs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    xwayland-satellite
    waybar
    ghostty
    awww
    fastfetch
    cava
    hyprlock
    starship
    papirus-icon-theme
    (catppuccin-gtk.override {
      variant = "mocha";
      accents = [ "mauve" ];
    })
    catppuccin-cursors.mochaMauve
    pipes-rs
    sunsetr
  ];

  programs.niri.enable = true;

}

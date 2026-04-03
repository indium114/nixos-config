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
    hyprpolkitagent
    cava
    cmatrix
    hyprlock
    starship
    rmpc
    btop
    wlogout
    papirus-icon-theme
    (catppuccin-gtk.override {
      variant = "mocha";
      accents = [ "mauve" ];
    })
    catppuccin-cursors.mochaMauve
    pipes
    sunsetr
    swayidle
    wl-kbptr
    wlrctl
  ];

  programs.niri.enable = true;

}

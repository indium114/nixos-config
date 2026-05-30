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

}

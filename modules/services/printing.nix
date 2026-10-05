{
  pkgs,
  ...
}:

{

  services.printing = {
    enable = true;
    drivers = [
      pkgs.cups-filters
      pkgs.cups-browsed
      pkgs.gutenprint
      pkgs.gutenprintBin
      pkgs.cnijfilter2
    ];
  };
  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;
  };

}

{
  pkgs,
  ...
}:

{

  users.users.indium114 = {
    isNormalUser = true;
    description = "indium114";
    extraGroups = [
      "networkmanager"
      "wheel"
      "lp"
      "lpadmin"
      "scanner"
      "libvirtd"
      "docker"
      "dialout"
    ];
    shell = pkgs.nushell;
    packages = with pkgs; [ ];
  };

  users.groups.plocate = {};

}

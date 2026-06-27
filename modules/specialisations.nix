{
  pkgs,
  lib,
  ...
}:

{

  specialisation.zen.configuration = {
    boot.kernelPackages = lib.mkForce pkgs.linuxPackages_zen;
    system.nixos.tags = [ "zen-kernel" ];
  };

}

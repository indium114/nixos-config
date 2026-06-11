{
  pkgs,
  ...
}:

{

  specialisation.zen.configuration = {
    boot.kernelPackages = pkgs.linuxPackages_zen;
    system.nixos.tags = [ "zen-kernel" ];
  };

}

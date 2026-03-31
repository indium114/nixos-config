{
  ...
}:

{

  virtualisation.libvirtd.enable = true;
  virtualisation.virtualbox.host = {
    enable = true;
    enableExtensionPack = true;
    enableKvm = true;
  };
  programs.virt-manager.enable = true;

}

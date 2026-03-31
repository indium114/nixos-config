{
  ...
}:

{

  virtualisation.libvirtd.enable = true;
  virtualisation.virtualbox.host = {
    enable = true;
    enableExtensionPack = true;
  };
  programs.virt-manager.enable = true;

}

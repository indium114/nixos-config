{
  ...
}:

{

  networking.hostName = "frosties";
  networking.networkmanager.enable = true;
  networking.firewall.enable = false;

  services.tailscale = {
    enable = true;
  };

}

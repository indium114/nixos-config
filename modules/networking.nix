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

  services.yggdrasil = {
    enable = true;
    settings = {
      Peers = [
        "tls://yggdrasil.deavmi.assigned.network:2001"
        "tls://yg-mel.magicum.net:23800"
        "tls://yg-syd.magicum.net:23700"
      ];
    };
  };

}

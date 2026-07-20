{
  pkgs,
  ...
}:

{

  environment.systemPackages = with pkgs; [
    librewolf
    proton-vpn
    wireguard-tools
    transmission_4-gtk
    networkmanagerapplet
    aria2
    tuba
    pipeline
    dino
    hydroxide
    bulletty
  ];

  programs.wireshark = {
    enable = true;
    dumpcap.enable = true;
    package = pkgs.wireshark;
  };

}

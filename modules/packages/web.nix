{
  pkgs,
  ...
}:

{

  environment.systemPackages = with pkgs; [
    librewolf
    proton-vpn
    wireguard-tools
    fractal
    transmission_4-gtk
    networkmanagerapplet
    aria2
    tuba
  ];

}

{
  pkgs,
  ...
}:

{

  environment.systemPackages = with pkgs; [
    librewolf
    protonvpn-gui
    wireguard-tools
  ];

}

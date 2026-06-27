{
  pkgs,
  ...
}:

{

  environment.systemPackages = with pkgs; [
    # librewolf
    proton-vpn
    wireguard-tools
    transmission_4-gtk
    networkmanagerapplet
    aria2
    tuba
    pipeline
    dino
    newsflash
    hydroxide
  ];

  # nixpkgs.config.permittedInsecurePackages = [
  #   "librewolf-${pkgs.librewolf.version}"
  #   "librewolf-unwrapped-${pkgs.librewolf-unwrapped.version}"
  # ];

  programs.wireshark = {
    enable = true;
    dumpcap.enable = true;
  };

}

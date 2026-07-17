{
  pkgs,
  ...
}:

{

  environment.systemPackages = with pkgs; [
    loupe
    rhythmbox
    kdePackages.kdenlive
    playerctl
    vlc
    crosspipe
    wiremix
  ];

  programs.obs-studio.enable = true;

}

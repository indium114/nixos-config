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
    blanket
    gnome-podcasts
    wf-recorder
  ];

  programs.obs-studio.enable = true;

}

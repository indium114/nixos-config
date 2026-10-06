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
    metadata-cleaner
  ];

  programs.obs-studio.enable = true;

}

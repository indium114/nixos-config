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
    pavucontrol
    crosspipe
  ];

  programs.obs-studio.enable = true;

}

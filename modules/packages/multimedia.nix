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
    cine
  ];

  programs.obs-studio.enable = true;

}

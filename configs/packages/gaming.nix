{
  pkgs,
  ...
}:

{

  environment.systemPackages = with pkgs; [
    teeworlds
    mangohud
    prismlauncher
    osu-lazer-bin
    classicube
    wineWow64Packages.stable
    joycond
    joycond-cemuhook
    cemu
  ];

  programs.steam.enable = true;
  programs.gamemode.enable = true;

}

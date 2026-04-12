{
  pkgs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    zathura
    libreoffice
    aerc
    drawing
    obsidian
  ];

}

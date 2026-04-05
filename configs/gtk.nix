{
  pkgs,
  ...
}:

{

  gtk = {
    enable = true;
    # cursorTheme = {
    #   name = "catppuccin-mocha-dark";
    #   package = pkgs.catppuccin-cursors.mochaMauve;
    # };
    iconTheme = {
      package = pkgs.papirus-icon-theme;
      name = "Papirus-Dark";
    };
  };

}

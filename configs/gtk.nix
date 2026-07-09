{
  pkgs,
  ...
}:

{

  gtk = {
    enable = true;
    theme = {
      name = "catppuccin-mocha-mauve-standard";
      package = (
        pkgs.catppuccin-gtk.override {
          variant = "mocha";
          accents = [ "mauve" ];
        }
      );
    };
  };

}

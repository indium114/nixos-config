{
  pkgs,
  ...
}:

{

  stylix = {
    enable = true;
    autoEnable = true;
    image = ./configs/wallpaper.jpg;
    base16Scheme = {
      base00 = "#2b2b3b";
      base01 = "#1e1e33";
      base02 = "#5c5e7f";
      base03 = "#5f627c";
      base04 = "#636579";
      base05 = "#f3e2f3";
      base06 = "#d7a3fa";
      base07 = "#a6b3f7";
      base08 = "#f9a4b2";
      base09 = "#f7cfa6";
      base0A = "#f7eaa6";
      base0B = "#dcf7a6";
      base0C = "#a6f7cf";
      base0D = "#a6dcf7";
      base0E = "#c1a6f7";
      base0F = "#ebb2b2";
    };
    fonts = {
      serif = {
        package = pkgs.lato;
        name = "Lato Black";
      };
      sansSerif = {
        package = pkgs.lato;
        name = "Lato Black";
      };
      monospace = {
        package = pkgs.martian-mono;
        name = "Martian Mono Cn Md";
      };
      emoji = {
        package = pkgs.noto-fonts-color-emoji;
        name = "Noto Color Emoji";
      };
    };
    targets = {
      gtksourceview.enable = false;
    };
  };

}

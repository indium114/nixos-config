{
  pkgs,
  ...
}:

{

  fonts.packages = [
    pkgs.nerd-fonts.martian-mono
    pkgs.lato
  ];

  fonts.fontconfig.defaultFonts = {
    sansSerif = [
      "Lato Black"
    ];
    serif = [
      "Lato Black"
    ];
    monospace = [
      "Martian Mono Condensed Semibold"
    ];
  };

}

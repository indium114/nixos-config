{
  pkgs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    wget
    bat
    tmux
    eza
    swaynotificationcenter
    man
    figlet
    zoxide
    delta
    networkmanagerapplet
    gum
    chafa
    yt-dlp
    vhs
    glow
    charm-freeze
    yazi
    croc
    tlrc
    ripgrep
    ncdu
    fd
    superfile
    television
    lutgen
    ffmpeg
    libXcursor
    fzf
    localsend
    nemo
    nemo-fileroller
    nemo-emblems
    nemo-preview
    file-roller
    wl-clipboard
    keepassxc
    fractal
    nh
    nix-output-monitor
    nvd
    carapace
    pass
    proton-authenticator
    home-manager
    transmission_4-gtk
    cliphist
  ];

  programs.appimage.enable = true;

}

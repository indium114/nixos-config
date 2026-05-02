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
    gum
    chafa
    yt-dlp
    glow
    charm-freeze
    yazi
    croc
    tlrc
    ripgrep
    ncdu
    fd
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
    nh
    nix-output-monitor
    nvd
    carapace
    pass
    proton-authenticator
    home-manager
    cliphist
    gnome-disk-utility
  ];

  programs.appimage.enable = true;

}

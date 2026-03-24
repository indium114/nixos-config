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
    nh
    nix-output-monitor
    nvd
    carapace
    pass
    proton-authenticator
    home-manager
    cliphist
  ];

  programs.appimage.enable = true;

}

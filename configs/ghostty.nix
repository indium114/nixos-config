{
  ...
}:

{

  programs.ghostty = {
    enable = true;
    settings = {
      theme = "catppuccin-mocha";
      font-family = "Martian Mono Cn Md";
      background-opacity = 0.78;
      window-padding-x = 8.8;
      widnow-padding-y = 8.8;
      command = "tmux";
      bell-features = [ "no-audio" "attention" ];
    };
  };

}

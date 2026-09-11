{
  pkgs,
  ...
}:

{

  programs.nushell = {
    enable = true;
    settings = {
      edit_mode = "helix";
      history.file_format = "sqlite";
      show_banner = false;
    };
    extraConfig = ''
      use std/dirs

      if not ( "/home/indium114/.recording_mode" | path exists ) {
      	recall list
      	fastcards amount
      	hocusfocus currentsession
      }
      open ~/.scripts/motds.txt | lines | shuffle | first | print $"󰆈 ($in)"

      # keybindings
      $env.config.keybindings ++= [
          {
              name: helix-insert_mode
              modifier: none
              keycode: char_u003B
              mode: helix_normal
              event: { send: HelixChangeMode mode: "insert" }
          },
          {
              name: helix-disable_h
              modifier: none
              keycode: char_h
              mode: helix_normal
              event: { send: None }
          },
          {
              name: helix-move_up
              modifier: none
              keycode: char_i
              mode: helix_normal
              event: { edit: MoveLineUp }
          },
          {
              name: helix-move_left
              modifier: none
              keycode: char_j
              mode: helix_normal
              event: { edit: MoveLeft }
          },
          {
              name: helix-move_down
              modifier: none
              keycode: char_k
              mode: helix_normal
              event: { edit: MoveLineDown }
          },
          {
              name: helix-move_right
              modifier: none
              keycode: char_l
              mode: helix_normal
              event: { edit: MoveRight }
          },
      ]
    '';
    environmentVariables = {
      BAT_THEME = "Catppuccin Mocha";
      EDITOR = "${pkgs.helix}/bin/hx";
      GOPATH = "/home/indium114/go";
      JUST_CHOOSER = "tv";
      PROMPT_INDICATOR_VI_INSERT = "";
      PROMPT_INDICATOR_VI_NORMAL = ": ";
    };
    extraEnv = ''
      $env.GPG_TTY = (tty)
      $env.PATH = ( $env.PATH | prepend "/home/indium114/.scripts" | prepend "/home/indium114/.local/bin" )
    '';
    shellAliases = {
      # ls aliases
      _eza = "eza --icons=always --group-directories-first";
      l = "pricetag file ls --grid";
      la = "pricetag file ls --grid -a";
      ll = "pricetag file ls -a";
      lt = "eza --icons=always --group-directories-first --tree --level 1";
      tree = "eza --icon=always --group-directories-first --tree --level 1";
      # file operation aliases
      cd = "z";
      cp = "cp -vp";
      mkdir = "mkdir -v";
      mv = "mv -vp";
      rm = "rubbish";
      cat = "bat";
      # git aliases
      ga = "git add";
      gb = "git blame";
      gc = "git commit";
      gd = "git diff";
      gp = "git push";
      gs = "git status";
      lg = "lazygit";
      # recall aliases
      Ta = "recall add";
      Tb = "recall busy";
      Tc = "recall clean";
      Td = "recall done";
      Tl = "recall list";
      Tn = "recall backburner";
      # dirs aliases
      da = "dirs add";
      dg = "dirs goto";
      dr = "dirs drop";
      dn = "dirs next";
      dp = "dirs prev";
      # miscellaneous aliases
      cal = "cal -t";
      clear = "clear -k";
      man = "${pkgs.tlrc}/bin/tldr";
      ncdu = "ncdu --color dark --show-percent";
    };
  };

}

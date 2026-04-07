{
  ...
}:

{

  programs.tmux = {
    enable = true;

    terminal = "tmux-256color";
    baseIndex = 1;
    mouse = true;

    extraConfig = ''
      set -g renumber-windows on
      set -g allow-passthrough on

      ### Leader Key
      set -g prefix M-Space
      unbind C-b
      bind M-Space send-prefix

      ### Splits
      bind | split-window -h
      bind - split-window -v
      unbind '"'
      unbind %

      ### Pane Navigation (IJKL)
      bind i select-pane -U
      bind j select-pane -L
      bind k select-pane -D
      bind l select-pane -R

      ### Pane Resizing (Shift+IJKL)
      bind -r I resize-pane -U 5
      bind -r J resize-pane -L 5
      bind -r K resize-pane -D 5
      bind -r L resize-pane -R 5

      ### Tabs
      bind n new-window
      bind w kill-window
      bind Tab next-window
      bind r command-prompt "rename-window %%"

      ### Statusline stuff
      set -g status-interval 5

      # Style
      set -g status-style "bg=#2b2b3b,fg=#f3e2f3"
      set -g status-justify left

      # Remove default separators
      set -g window-status-separator ""

      # Left side length
      set -g status-left-length 40

      set -g status-left "\
      #[bg=#c1a6f7] #[bg=#2b2b3b] \
      #[fg=#c1a6f7,bold]#H \
      #[default] "

      set -g window-status-format "\
      #[bg=#2b2b3b,fg=#a6b3f7] \
      #[bg=#313244,fg=#a6b3f7] #I #W \
      #[bg=#2b2b3b,fg=#313224] "

      set -g window-status-current-format "\
      #[bg=#2b2b3b,fg=#2b2b3b,bold] \
      #[bg=#c1a6f7,fg=#2b2b3b,bold] #I #W \
      #[bg=#2b2b3b,fg=#c1a6f7] "
      set -g status-right-length 80

      set -g status-right "\
      #[bg=#cba6f7,fg=#2b2b3b]  #(tmux display-message -p '#{pane_current_command}') \
      #[default] \
      #[bg=#dcf7a6,fg=#2b2b3b]  #S \
      #[default] \
      #[bg=#a6dcf7,fg=#2b2b3b]  #(uptime | sed 's/^[^,]*up *//; s/, *[[:digit:]]* user.*//; s/ day.*, */d /; s/ hr\\(s*\\).*/h/; s/ min\\(s*\\).*/m/; s/ sec\\(s*\\).*/s/; s/\\([0-9]\\{1,2\\}\\):\\([0-9]\\{1,2\\}\\)/\\1h \\2m/') \
      #[default]"

      set -g status-style "bg=#{?client_prefix,#f9a4b2,#2b2b3b},fg=#a6b3f7"
    '';
  };

}

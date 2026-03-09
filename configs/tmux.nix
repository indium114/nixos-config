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
    '';
  };
}

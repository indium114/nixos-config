{
  ...
}:

{

  programs.fastfetch = {
    enable = true;
    settings = {
      "$schema" = "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json";
      "display" = {
        "separator" = " ";
      };
      "modules" = [
        "break"
        {
          "key" = "╭───────────╮";
          "type" = "custom";
        }
        {
          "key" = "│  user    │";
          "type" = "title";
        }
        {
          "key" = "│ 󰣖 os      │";
          "type" = "os";
        }
        {
          "key" = "│  device  │";
          "type" = "host";
        }
        {
          "key" = "│  kernel  │";
          "type" = "kernel";
        }
        {
          "key" = "│ 󰏗 pkgs    │";
          "type" = "packages";
        }
        {
          "key" = "│ 󱂬 wm      │";
          "type" = "wm";
        }
        {
          "key" = "│  shell   │";
          "type" = "shell";
        }
        {
          "key" = "│  cpu     │";
          "type" = "cpu";
        }
        {
          "key" = "│ 󰢮 gpu     │";
          "type" = "gpu";
        }
        {
          "key" = "│  ram     │";
          "type" = "memory";
        }
        {
          "key" = "│  disk    │";
          "type" = "disk";
        }
        {
          "key" = "│  battery │";
          "type" = "battery";
        }
        {
          "key" = "│  palette │";
          "symbol" = "circle";
          "type" = "colors";
        }
        {
          "key" = "╰───────────╯";
          "type" = "custom";
        }
      ];
    };
  };

}

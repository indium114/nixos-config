{
  ...
}:

{

  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        position = "left";
        layer = "top";
        modules-center = [
          "tray"
          "temperature"
          "pulseaudio"
          "battery"
          "mpris"
          "niri/workspaces"
          "clock"
        ];
        "clock" = {
          rotate = 90;
          format = "<span foreground='#c1a6f7'> </span>{:%H:%M}";
          tooltip-format = "<big>{ =%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
        };
        "battery" = {
          rotate = 90;
          states = {
            warning = 30;
            critical = 15;
          };
          format = "<span size='13000' foreground='#89dceb'>{icon} </span> {capacity}%";
          format-warning = "<span size='13000' foreground='#f7cfa6'>{icon} </span> {capacity}%";
          format-critical = "<span size='13000' foreground='#f9a4b2'>{icon} </span> {capacity}%";
          format-charging = "<span size='13000' foreground='#dcf7a6'> </span>{capacity}%";
          format-plugged = "<span size='13000' foreground='#a6b3f7'> </span>{capacity}%";
          format-alt = "<span size='13000' foreground='#a6f7cf'>{icon} </span> {time}";
          format-full = "<span size='13000' foreground='#a6f7cf'>󱟢 </span>{capacity}%";
          format-icons = [
            ""
            ""
            ""
            ""
            ""
          ];
          tooltip-format = "{time}";
        };
        "pulseaudio" = {
          rotate = 90;
          format = "{icon} {volume}%";
          format-muted = " Muted";
          format-icons = {
            default = [
              ""
              ""
              " "
            ];
          };
          on-click = "pavucontrol";
        };
        "mpris" = {
          rotate = 90;
          format = "{player_icon} {dynamic}";
          format-paused = "{status_icon} <i>{dynamic}</i>";
          interval = 1;
          player-icons = {
            default = "";
            vlc = "󱍼";
          };
          status-icons = {
            paused = "";
          };
          max-length = 25;
        };
        "temperature" = {
          rotate = 90;
          hwmon-path = "/sys/class/hwmon/hwmon3/temp1_input";
          critical-threshold = 70;
          warning-threshold = 60;
          format = "{icon} {temperatureC}°C";
          format-icons = [
            ""
            ""
            ""
          ];
        };
        "custom/spacer" = {
          rotate = 90;
          format = "|";
        };
        "niri/workspaces" = {
          "rotate" = 90;
          "format" = "{icon}";
          "on-click" = "activate";
          "format-icons" = {
            "active" = "";
            "urgent" = "";
            "default" = "";
          };
        };
      };
    };
    style = ''
      * {
        font-family: "Martian Mono Condensed SemiBold";
        font-size: 16px;
        min-height: 0;
        font-weight: bold;
        padding: 0;
        margin: 3;
        border: none;
        border-radius: 0px;
      }

      .modules-center {
        background: rgba(17, 17, 27, 0.85);
        border-radius: 24px;
        padding: 2px 1px;
      }

      window#waybar {
        background: transparent;
        color: @base0E;
        /* transition-property: background-color; */
        /* transition-duration: 0.1s; */
        /* border-right: 1px solid @surface0; */
      }

      #window {
        margin: 3px;
        padding-left: 3;
        padding-right: 3;
      }

      button {
        box-shadow: inset 0 -3px transparent;
        border: none;
        border-radius: 0;
      }

      button:hover {
        background: inherit;
        color: @base0E;
      }

      #workspaces button {
        padding: 0 4px;
        border-radius: 16px;
      }

      #workspaces button.focused {
        color: @base0E;
      }

      #workspaces button.active {
        background: linear-gradient(@base0E, @base07);
        border-radius: 16px;
        color: @base02;
        transition: all 0.3s ease-in-out;
      }

      #workspaces button.urgent {
        background-color: @base08;
      }

      #pulseaudio,
      #clock,
      #battery,
      #cpu,
      #memory,
      #disk,
      #temperature,
      #backlight,
      #wireplumber,
      #tray,
      #network,
      #mode,
      #scratchpad,
      #custom-pacman,
      #workspaces,
      #mpris {
        margin-top: 2px;
        margin-bottom: 2px;
        margin-left: 4px;
        margin-right: 4px;
        /* padding-left: 4px; */
        /* padding-right: 4px; */
        padding-top: 4px;
        padding-bottom: 4px;
        /* background: rgba(17, 17, 27, 0.85); */
        border-radius: 10px;
        min-width: 0;
      }

      #clock {
        color: @base0E;
        /* border-right: 2px solid @flamingo; */
      }

      #clock.date {
        color: @base0E;
        /* border-right: 2px solid @base0E; */
      }

      #pulseaudio {
        color: @base0E;
        /* border-right: 2px solid @pink; */
      }

      #network {
        color: @peach;
        /* border-right: 2px solid @peach; */
      }

      #idle_inhibitor {
        margin-right: 12px;
        color: #7cb342;
      }

      #idle_inhibitor.activated {
        color: @peach;
      }

      #battery {
        color: @base0E;
        /* border-right: 2px solid @base0E; */
      }

      /* If workspaces is the leftmost module, omit left margin */
      .modules-left > widget:first-child > #workspaces {
        margin-left: 0;
      }

      /* If workspaces is the rightmost module, omit right margin */
      .modules-right > widget:last-child > #workspaces {
        margin-right: 0;
      }

      #custom-vpn {
        color: @peach;
        border-radius: 15px;
        padding-left: 6px;
        padding-right: 6px;
      }

      #mpris {
        color: @base0F;
        /* border-right: 2px solid @base0F; */
      }

      #tray {
        color: @overlay1;
        /* border-right: 2px solid @overlay1; */
      }

      #temperature {
        color: @base0E;
        /* border-right: 2px solid @base0E; */
      }

      #temperature.warning {
        color: @base0A;
      }

      #temperature.critical {
        color: @base08;
      }

      #custom-spacer {
        color: transparent;
        background: transparent;
      }
    '';
  };

}

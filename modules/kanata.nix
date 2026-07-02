{
  ...
}:

{

  services.kanata = {
    enable = true;

    keyboards = {
      internalKeyboard = {
        devices = [ "/dev/input/by-path/platform-i8042-serio-0-event-kbd" ];

        config = ''
          (defsrc
            caps
          )

          (deflayer base
            esc
          )
        '';
      };
    };
  };

}

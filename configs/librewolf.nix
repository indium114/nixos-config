{
  pkgs,
  ...
}:

{

  programs.librewolf = {
    enable = true;
    nativeMessagingHosts = [
      pkgs.passff-host
    ];
  };

}

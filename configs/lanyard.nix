{
  inputs,
  ...
}:

{

  imports = [
    inputs.lanyard.homeModules.default
  ];

  programs.lanyard = {
    enable = true;
    enableNushellIntegration = true;
    keys = ''
      id_ed25519
    '';
  };

}

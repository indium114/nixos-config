{
  inputs,
  ...
}:

{

  imports = [
    inputs.zdir.homeModules.default
  ];

  programs.zdir = {
    enable = true;
    enableNushellIntegration = true;
  };

}

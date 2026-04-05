{
  lib,
  ...
}:

{

  programs.helix.enable = true;
  xdg.configFile."helix/runtime/queries/markdown/highlights.scm".source = lib.mkForce ./helix/highlights.scm;
  xdg.configFile."helix/config.toml".source = lib.mkForce ./helix/config.toml;
  xdg.configFile."helix/languages.toml".source = lib.mkForce ./helix/languages.toml;

}

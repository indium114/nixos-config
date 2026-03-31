{
  ...
}:

{

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 3d";
    persistent = true;
  };

}

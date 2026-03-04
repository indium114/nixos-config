{
  ...
}:

{

  nix.gc = {
    automatic = true;
    interval = "weekly";
    options = "--delete-older-than 14d";
  };

}

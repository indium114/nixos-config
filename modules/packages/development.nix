{
  pkgs,
  ...
}:

{

  environment.systemPackages = with pkgs; [
    helix
    craftos-pc
    git
    git-lfs
    gh
    soft-serve
    just
    tea
    lazygit
    android-studio
    android-tools
  ];

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

}

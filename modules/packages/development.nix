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
    forgejo-cli
    lazygit
  ];

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

}

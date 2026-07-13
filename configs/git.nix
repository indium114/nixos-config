{
  pkgs,
  ...
}:

{

  programs.git = {
    enable = true;
    lfs.enable = true;
    signing.key = "FEC7A1E40F1A528B865CA0B862495C1658832CF0";

    includes = [
      { path = ./catppuccin.gitconfig; }
    ];

    settings = {
      user.name = "indium114";
      user.email = "156162907+indium114@users.noreply.github.com";
      init.defaultBranch = "main";
      core.pager = "${pkgs.delta}/bin/delta";
      interactive.diffFilter = "${pkgs.delta}/bin/delta --color-only";
      merge.conflictStyle = "zdiff3";
      advice.detachedHead = false;
      commit.gpgSign = true;
      tag.gpgSign = true;

      delta = {
        navigate = true;
        dark = true;
        features = "catppuccin-mocha";
      };
    };
  };

}

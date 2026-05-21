{
  pkgs,
  ...
}:

{

  environment.systemPackages = with pkgs; [
    tree-sitter
    nixfmt
    nixd
    marksman
    pandoc
    typst
    tinymist
    markdown-oxide
  ];

}

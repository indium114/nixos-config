{
  pkgs,
  ...
}:

{

  environment.systemPackages = with pkgs; [
    tree-sitter
    nixfmt
    nixd
    pandoc
    typst
    tinymist
    markdown-oxide
  ];

}

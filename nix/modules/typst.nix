{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # integrated language service for Typst
    # replaces: typst-lsp
    tinymist

    # format your Typst source code
    typstyle
  ];
}

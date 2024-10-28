{
  isDarwin,
  lib,
  pkgs,
  ...
}:
{
  environment.systemPackages =
    with pkgs;
    [
      # language server for emmet.io
      # replaces: emmet-ls
      emmet-language-server

      # HTML language server and templating language library
      superhtml
    ]
    ++ lib.optionals pkgs.stdenv.isLinux [
      # HTML/CSS/JSON/ESLint language servers
      vscode-langservers-extracted
    ];
}
// lib.optionalAttrs isDarwin {
  homebrew.brews = [
    # HTML/CSS/JSON/ESLint language servers
    "vscode-langservers-extracted"
  ];
}

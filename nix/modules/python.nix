{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # type checker for the Python language
    basedpyright

    # high-level dynamically-typed programming language
    (python3.withPackages (
      ps: with ps; [
        # implementation of the Debug Adapter Protocol for Python
        debugpy
      ]
    ))

    # modern Python package and dependency manager supporting the latest PEP standards
    # replaces: poetry, uv
    pdm

    # extremely fast Python linter
    # replaces: black
    ruff
  ];
}

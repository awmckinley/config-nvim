#!/usr/bin/env -S just --justfile

[doc("list available recipes")]
help:
    @just --list

[doc("format Nix files")]
fmt:
    rm -f ./result
    nix fmt

[doc("launch Nix repl")]
repl:
    nix repl --expr "builtins.getFlake \"$(pwd)\""

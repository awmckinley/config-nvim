{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # general-purpose programming language and toolchain
    zig
  ];
}

{ pkgs, ... }:
{
  documentation.nixos.enable = false;

  programs = {
    zsh.enable = true;
    hyprland = {
      enable = true;
      xwayland.enable = true;
    };
  };

  users.users.assailance = {
    isNormalUser = true;
    shell = pkgs.zsh;

    extraGroups = [
      "networkmanager"
      "wheel"
      "lp"
    ];
  };
}

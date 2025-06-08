{ pkgs, ... }:
{
  services = {
    dbus.enable = true;
    libinput.enable = true;
    udisks2.enable = true;

    avahi = {
      enable = true;
      nssmdns4 = true;
      openFirewall = true;
    };

    #displayManager = {
    #  defaultSession = "hyprland-uwsm";
	
    #  gdm = {
    #    enable = true;
    #    theme = "catppuccin-mocha";
    #    package = pkgs.kdePackages.sddm;
    #    wayland.enable = true;
    #  };
    #};

    flatpak.enable = true;

    pipewire = {
      enable = true;
      alsa.enable = true;
      pulse.enable = true;
      wireplumber.enable = true;
    };

    printing.enable = true;

    displayManager.defaultSession = "gnome";
    xserver = {
      desktopManager.gnome.enable = true;
      displayManager.gdm.enable = true;
      enable = true;
      excludePackages = [ pkgs.xterm ];
      videoDrivers = [ "amdgpu" ];

      xkb = {
        layout = "us,ru";
        # variant = "nodeadkeys";
  	variant = "workman,";
  	options = "grp:alt_shift_toggle";
      };
    };
  };
}

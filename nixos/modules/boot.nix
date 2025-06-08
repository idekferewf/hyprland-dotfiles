{ pkgs, ... }:
{
  boot = {
    initrd.kernelModules = [ "amdgpu" ];
    kernelPackages = pkgs.linuxPackages_latest;
    kernelParams = [ "mem_sleep_default=deep" ];

    loader = {
      timeout = 10;
      
      grub = {
        enable = true;
        device = "/dev/sda";
        useOSProber = true;

        theme =
          pkgs.fetchFromGitHub {
            owner = "catppuccin";
            repo = "grub";
            rev = "88f6124757331fd3a37c8a69473021389b7663ad";
            sha256 = "0rih0ra7jw48zpxrqwwrw1v0xay7h9727445wfbnrz6xwrcwbibv";
          }
          + "/src/catppuccin-mocha-grub-theme/";
      };
    };
  };
}

{ pkgs, ... }:
{
  boot.loader = {
    efi = {
      canTouchEfiVariables = true;
      efiSysMountPoint = "/boot";
    };
    grub = {
      enable = true;
      efiSupport = true;
      configurationLimit = 42;
      device = "nodev";
      useOSProber = true;
      extraEntries = ''
	menuentry "Windows" {
	  insmod part_gpt
	  insmod fat
	  insmod search_fs_uuid
	  insmod chain
	  search --fs-uuid --set=root $FS_UUID
	  chainloader /EFI/Microsoft/Boot/bootmgfw.efi
	}
      '';
    };
  };
}

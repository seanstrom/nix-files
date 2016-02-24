# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, ... }:

{
  imports =
    [ <nixpkgs/nixos/modules/installer/scan/not-detected.nix>
    ];

  boot.initrd.availableKernelModules = [ "xhci_pci" "ehci_pci" "ahci" "usb_storage" ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/f04be6e7-a5e1-42e4-88fc-df5a6741cc8d";
      fsType = "ext4";
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/6F26-099F";
      fsType = "vfat";
    };

  swapDevices =
    # [ { device = "/dev/disk/by-uuid/5411b34e-7e87-40c1-8c31-a5661e454b3f"; }
    # ];
    [ { device = "/dev/disk/by-uuid/59555dc2-3271-4e55-b627-751897027ac5"; }
    ];


  nix.maxJobs = 8;
}

# pm-flashtool
Tool for Flashing CM+PM as LXC Container

# Typical workflow.. (How it works)

- Waits for device to be in fastboot mode,
- Downloads twrp recovery and flashes into recovery
- Boots into recovery
- Downloads cm.zip and pushes it to /cache
- Creates command file with
```
--update_package=/cache/cm.zip
```
- pushes it to /cache/recovery/command
- Reboots into recovery
- TODO: flash pm rootfs

# Howto use

To run..

```
./flash-plasma-phone
```

This

a) Downloads the files required in ~/.cache/plasmaphone
b) Flashes cyanogenmod
c) Puts togather lxc and plasma rootfs

After that you can run

```
adb root
adb shell
mkdir -p /data/lxc/containers/system/rootfs/sys/fs/cgroup/
lxc-start -n system -F
```

to get login console

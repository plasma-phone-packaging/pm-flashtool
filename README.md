# flashtool
Tool for Flashing CM+PM as LXC Container

# Typical workflow..

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

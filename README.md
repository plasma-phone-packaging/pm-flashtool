# pm-flashtool
Tool for Flashing CM+PM as LXC Container

# Typical workflow.. (How it works)

- Waits for device to be in fastboot mode,
- Downloads twrp recovery and flashes into recovery
- Boots into recovery
- Downloads cm.zip and pushes it to /cache
- Creates command file with
```
--update_package=/sdcard/cm.zip
```
- pushes it to /cache/recovery/command
- Reboots into recovery
- recovery installs cm.zip
- reboots in system
- Installs lxc and plasma rootfs

# Howto use

To run..

```
git clone https://github.com/plasma-phone-packaging/pm-flashtool.git
cd pm-flashtool
./pm-flash
```

Without options pm-flash script downloads all files again, pass '-c' to let it use cache instead

```
./pm-flash -c
```

This

a) Downloads the files required in ~/.cache/plasmaphone
b) Flashes cyanogenmod
c) Puts togather lxc and plasma rootfs

After that you can run

```
adb root
adb shell
lxc-start -n system -F
```

to get login console and plasma started

Multirom version
----------------
See instructions here : https://community.kde.org/Plasma/Mobile/CyanogenModBase#MultiROM_instructions_.28For_dualboot.29

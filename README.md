# pm-flashtool
Tool for flashing Plasma Mobile and Halium

# Typical workflow.. (How it works)

- Waits for device to be in fastboot mode,
- Downloads Plama Mobile rootfs and the  boot, recovery, and system images 
- Boots into recovery
- Installs Plasma Mobile on the device using `rootstock-toch-install`

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

This won't download the required files again and use previously downloaded files instead. 


After that your phone should reboot into Plasma Mobile.

To get a console login, try

`$ ssh phablet@10.15.19.82`

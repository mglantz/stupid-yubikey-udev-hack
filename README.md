# If your screen automatically locks when you use your YubiKey for sudo
Then it's either because udev has a bug or I can't write udev rules.

Whatever it is, this does work.
Look at this stuff before using it. This is as ugly as it comes and works for me. Does it work for you? No idea.
```
git clone https://github.com/mglantz/stupid-yubikey-udev-hack
cp stupid-yubikey-udev-hack/yubi-lock.sh /usr/bin/yubi-lock.sh
chmod a+rx /usr/bin/yubi-lock.sh
cp stupid-yubikey-udev-hack/sudo /etc/pam.d/sudo
```

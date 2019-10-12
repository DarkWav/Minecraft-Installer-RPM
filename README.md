# Minecraft-Installer-RPM
## Unofficial Minecraft installer for [Fedora](https://getfedora.org) and [openSUSE](https://www.opensuse.org/)
### This is just a quick script to package the official Minecraft launcher into <br> a rpm package based on the official AUR build script.
### Used Libraries:<br> * [The AUR repo](https://aur.archlinux.org/packages/minecraft-launcher)<br> * [The Official Minecraft Launcher](https://www.minecraft.net/de-de/download/alternative/)<br> * [My Unofficial Specfile](https://github.com/DarkWav/DarkWav.github.io/blob/master/minecraft-launcher.spec)

### While the Script and the Specfile are released under the GGPLv3 all other libraries are still properties of their respective owners!

## Requirements: 
<b>* A working Java Installation (preferrably Java 8)
* A working Internet Connection<br></b>
* The following commands must be available:<pre>rpmbuild<br>wget<br>tar<br>bash</pre>
### Installing dependencies on openSUSE (Terminal):
<pre>sudo zypper in rpm-build wget bsdtar bash</pre>
### Installing dependencies on Fedora (Terminal):
<pre>sudo dnf in rpm-build wget bsdtar bash</pre>

## Usage:
1. Download [minecraft-installer.sh](https://darkwav.github.io/minecraft-installer.sh)<br>2. Open a Terminal at the location where you downloaded the Installer<br>3. Make the Installer executable (Type in Terminal):<pre>chmod +x minecraft-installer.sh</pre>4. Run the Installer (Type in Terminal):<pre>./minecraft-installer.sh</pre> 5. If you want to install a Launcher Update, just run the Installer again<br>6. To uninstall the Launcher, run <pre>sudo rpm -e minecraft-launcher</pre>7. Have fun!

## Disclaimer:

### I am not responsible for any harm or damage this script might do to your computer.<br> While it is possible for this script to work on [RHEL](https://www.redhat.com/en/technologies/linux-platforms/enterprise-linux) / [CentOS](https://centos.org) / [SLE](https://www.suse.com/products/desktop) / [PCLinuxOS](https://www.pclinuxos.com/) / [OpenMandriva](https://www.openmandriva.org) / [Mageia](https://www.mageia.org) it is only guaranteed to do so with [Fedora](https://getfedora.org) and [openSUSE](https://www.opensuse.org).

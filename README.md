# Minecraft-Installer-RPM
## Unofficial Minecraft installer for [Fedora](https://getfedora.org) and [openSUSE](https://www.opensuse.org/)
### This is just a quick script to package the official Minecraft launcher into <br> a rpm package based on the official AUR build script.
### Used Libraries:<br> * [The AUR repo](https://aur.archlinux.org/packages/minecraft-launcher)<br> * [The Official Minecraft Launcher](https://www.minecraft.net/download/alternative/)<br> * [My Unofficial Specfile](https://github.com/DarkWav/Specfile-Cloud/blob/master/minecraft-launcher.spec)

### While the Script and the Specfile are released under the GGPLv3 all other libraries are still properties of their respective owners!

## Requirements: 
* <b>A working Java Installation (preferrably Java 8)</b>
* <b>A working Internet Connection<br></b>
* <b>The following commands must be available:</b><pre>rpmbuild<br>wget<br>tar<br>bash</pre>

<b>Installing dependencies in openSUSE (Terminal):</b>
<pre>sudo zypper in rpm-build wget bsdtar bash gconf2</pre>
<b>Installing dependencies in Fedora (Terminal):</b>
<pre>sudo dnf in rpm-build wget bsdtar bash</pre>

## Usage:
<b>1. Download [minecraft-installer.sh](https://darkwav.github.io/minecraft-installer.sh)<br></b>
<b>2. Open a Terminal at the location where you downloaded the Installer<br></b>
<b>3. Make the Installer executable (Type in Terminal):</b><pre>chmod +x minecraft-installer.sh</pre>
<b>4. Run the Installer (Type in Terminal):</b><pre>./minecraft-installer.sh</pre>
<b>5. If you want to install a Launcher Update, just run the Installer again<br></b>
<b>6. To uninstall the Launcher, run </b><pre>sudo rpm -e minecraft-launcher</pre>
<b>7. Have fun!</b>

## Disclaimer:

### I am not responsible for any harm or damage this script might do to your computer.<br> While it is possible for this script to work on [RHEL](https://www.redhat.com/en/technologies/linux-platforms/enterprise-linux) / [CentOS](https://centos.org) / [SLE](https://www.suse.com/products/desktop) / [PCLinuxOS](https://www.pclinuxos.com/) / [openMandriva](https://www.openmandriva.org) / [Mageia](https://www.mageia.org) it is only guaranteed to do so with [Fedora](https://getfedora.org) and [openSUSE](https://www.opensuse.org).

### Current Status for non-supported distros:
* <b>RHEL: Working</b>
* <b>CentOS: Working</b>
* <b>SLE: Working</b>
* <b>PCLinuxOS: BORKED (libcef.so dependency issue)</b>
* <b>Mageia: Working</b>
* <b>openMandriva: Not Tested</b>

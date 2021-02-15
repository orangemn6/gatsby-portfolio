---
title: How to install GalliumOS on a chromebook
categories: ['linux']
image: '../blog-1/e4d5ed47ee58aa859995cae2a4e83221.webp'
imageCredit: https://dribbble.com/shots/13972666-faces
date: "2020-12-30T23:12:17-05:00"
time: 3
description: "SPEEEEED"
---


**Note**: to do this, all your chromeOS data will be wiped. I recommend reading through all of this post before starting.

This post is about how I got my chromebook dual booting galliumOS.

![my galliumOS](https://i.postimg.cc/Kjggpd08/galliumos.png)

**Step one**: go into Developer mode.
-------------------------------------

Developer mode is a setting that lets you do development. It's not on by default because it also makes it easier to install a malicious package. (APKs, or android packages, can't be opened without developer mode.)

To turn on developer mode, hold down the `esc` and `reload` key, then tap the `power` key. You will be greeted by a very scary popup saying "CHROMEOS IS MISSING OR DAMAGED." Hit `control-D`, and then it will say something along the lines of "START DEVELOPER MODE? all your data will be wiped." press `enter`. It will start.

**Step two**: login
-------------------

Your computer will restart and say "OS VERIFICATION IS OFF." Press `control-D`.

since starting Developer mode wiped all your data, you will have to log in again, etc. If you don't want to that, you can just go into guest mode.

**Step two**: install [Chrx](https://chrx.org/)
-----------------------------------------------

You will have to install and run Chrx, which is really easy. Just one curl command:

    cd ; curl -Os https://chrx.org/go && sh go
    

Copy and paste that command in chrosh shell (`ctrl-alt-T` and then type `shell`.)

Go through the install script. At the bottom, it will have a "diagnosis." If it says it will only succeed if it has a firmware update keep that in mind. Reboot.

**Step two.two**: Update firmware
---------------------------------

If you need to update your firmware, you will have to download [MrChromebox](https://mrchromebox.tech/). Type this in the crosh shell:

    cd; curl -LO https://mrchromebox.tech/firmware-util.sh && sudo bash firmware-util.sh
    

You will see this menu:

![MrChromebox menu](https://mrchromebox.tech/images/fwutil_main.png)

Press 1 to update the firmware. (When you do this, you will install BIOS \[Basic Input/Output System\]).

**Step three**: repeat "step six"
---------------------------------

Type this command in chrosh (again):

    cd ; curl -Os https://chrx.org/go && sh go
    

That will install GaliumOS.

**Step four**: Get into GalliumOS
---------------------------------

Reboot. This time, when you have to type `control-D`, type `control-L`. It will go into BIOS, then GalliumOS. Username is `chrx` and password is `chrx`.

**Bonus**: install whatever OSes you want
-----------------------------------------

Since you have BIOS installed, you drive can boot into any flash as you wish. Just stick it into your chromebook, get into seaBIOS (`control-L`), and press `esc`. then it will tell you to select which drive to boot out of with a corresponding number.

---
title: Ventoy Multiboot USB
author: Jacob Goldstein
type: post
date: 2020-10-23T19:00:00
categories:
  - Linux
tags:
  - Linux
---

**Ventoy** is a free, open source and cross-platform program to create
multiboot USB drives in Linux and MS Windows. You don't need to format
your USB devices over and over. Just create a bootable USB drive once
and add as many as ISOs you want in future. Ventoy will automatically
create the menu entries for the newly added ISOs and add them to the
boot menu. Once you created the multiboot USB, boot your system with the
USB drive, select the ISO you want to load and start using it in no
time. It is that simple!

### Features

Ventoy ships with dozens of useful features as listed below.

<span class="underline"></span>

-   Very easy to install and use.
-   Fast (limited only by the speed of copying iso file).
-   You don't need to extract the ISOs. Just boot from the ISO file
    directly.
-   It supports Legacy + UEFI.
-   Supports UEFI Secure Boot.
-   Persistence storage support.
-   You can create bootable drives with ISO files larger than 4GB.
-   Almost all type of OSes are supported. The developer claims more
    than 200 ISO files have been tested with Ventoy.
-   Auto installation supported. Meaning - you can add your template or
    script for unattended deployment. For instance, kickstart script for
    Redhat/CentOS, autoYast xml for SUSE, preseed script for Debian. Put
    a script or template in the USB drive and tell ventoy to use it for
    unattended installation. You can also update these scripts at any
    time. No need to create a new ISO file, just use the original ISO.
-   Read-only to USB drive during boot.
-   The normal usage of USB drives is unaffected. Meaning - you can use
    the USB drives for other purposes (E.g. File copy)
-   Upgrade Ventoy when a new version is available without recreating
    the bootable USB drive again. Data nondestructive during version
    upgrade.
-   No need to update Ventoy when a new distro is released.
-   To add a new OS, just copy/paste the ISO into the USB drive. No need
    to start all over again.
-   Supports Memdisk mode. On some machines the ISOs may not load. In
    such cases, you can use Memdisk mode. In this mode, Ventoy will load
    the whole ISO file into memory and then boot it.
-   Plugin Framework.
-   Native boot menu style for Legacy & UEFI.
-   Cross-platform. It supports Linux and Windows.
-   Free and Open source!!

Create Multiboot USB Drives With Ventoy In Linux
------------------------------------------------

First, you need to find your USB drive name.

I am going to use fdisk command to find my USB drive details:

    $ sudo fdisk -l

**Sample output:**

    [...]
    Disk /dev/sdc: 14.54 GiB, 15597568000 bytes, 30464000 sectors
    Disk model: Cruzer Blade    
    Units: sectors of 1 * 512 = 512 bytes
    Sector size (logical/physical): 512 bytes / 512 bytes
    I/O size (minimum/optimal): 512 bytes / 512 bytes
    Disklabel type: dos
    Disk identifier: 0x4d924612

As you can see, my USB drive name is <span
style="color: #ff0000;">**/dev/sdc**</span>.

Next, download the latest Ventoy script from the [**releases
page**](https://github.com/ventoy/Ventoy/releases). As of writing this
guide the latest version was 1.0.10.

Go to the location where you downloaded the script and extract it. I
have extracted it in a folder named "ventoy" in Desktop. Cd into the
Ventoy directory:

    $ cd ventoy

Now, run the following command to create multiboot USB drive:

    $ sudo sh Ventoy2Disk.sh -I /dev/sdc

Replace "/dev/sdc" with your USB drive name.

Here, the uppercase "I" will **force install ventoy** to sdc (no matter
installed or not). If you use lowercase **i**, it install ventoy to sdc
and fail if disk is already installed with ventoy.

To enable secure boot support, use **-s** flag. By default, this option
is disabled.

    $ sudo sh Ventoy2Disk.sh -I -s /dev/sdc

You will be prompted to confirm the USB bootable creation process.
Double check the USB drive name and type **Y** and press ENTER to
continue:

**Sample output:**

    ***********************************************************
    *                Ventoy2Disk Script                       *
    *             longpanda  [email protected]                 *
    ***********************************************************

    Disk : /dev/sdc
    Model: SanDisk Cruzer Blade (scsi)
    Size : 14 GB

    Attention:
    You will install Ventoy to /dev/sdc.
    All the data on the disk /dev/sdc will be lost!!!

    Continue? (y/n)y

    All the data on the disk /dev/sdc will be lost!!!
    Double-check. Continue? (y/n)y

    Create partitions on /dev/sdc by parted ...
    Done
    mkfs on disk partitions ...
    create efi fat fs /dev/sdc2 ...
    mkfs.fat 4.1 (2017-01-24)
    success
    mkexfatfs 1.3.0
    Creating... done.
    Flushing... done.
    File system created successfully.
    writing data to disk ...
    sync data ...
    esp partition processing ...

    Install Ventoy to /dev/sdc successfully finished.

[<img src="data:image/svg+xml,%3Csvg%20xmlns=&#39;http://www.w3.org/2000/svg&#39;%20viewBox=&#39;0%200%201366%20691&#39;%3E%3C/svg%3E" alt="How To Create Multiboot USB Drives With Ventoy In Linux OS" class="aligncenter wp-image-24240 size-full" width="1366" height="691" /><img src="https://ostechnix.com/wp-content/uploads/2020/05/Create-Multiboot-USB-Drives-With-Ventoy-In-Linux-1.png" alt="How To Create Multiboot USB Drives With Ventoy In Linux OS" class="aligncenter wp-image-24240 size-full" sizes="(max-width: 1366px) 100vw, 1366px" srcset="https://ostechnix.com/wp-content/uploads/2020/05/Create-Multiboot-USB-Drives-With-Ventoy-In-Linux-1.png 1366w, https://ostechnix.com/wp-content/uploads/2020/05/Create-Multiboot-USB-Drives-With-Ventoy-In-Linux-1-300x152.png 300w, https://ostechnix.com/wp-content/uploads/2020/05/Create-Multiboot-USB-Drives-With-Ventoy-In-Linux-1-1024x518.png 1024w, https://ostechnix.com/wp-content/uploads/2020/05/Create-Multiboot-USB-Drives-With-Ventoy-In-Linux-1-768x388.png 768w, https://ostechnix.com/wp-content/uploads/2020/05/Create-Multiboot-USB-Drives-With-Ventoy-In-Linux-1-720x364.png 720w, https://ostechnix.com/wp-content/uploads/2020/05/Create-Multiboot-USB-Drives-With-Ventoy-In-Linux-1-520x263.png 520w, https://ostechnix.com/wp-content/uploads/2020/05/Create-Multiboot-USB-Drives-With-Ventoy-In-Linux-1-320x162.png 320w" width="1366" height="691" />](https://ostechnix.com/wp-content/uploads/2020/05/Create-Multiboot-USB-Drives-With-Ventoy-In-Linux-1.png)

After a few seconds, the multiboot USB drive will be created. The above
command will create two partitions. You can verify it with fdisk
command:

    $ sudo fdisk -l

**Sample output:**

    Disk /dev/sdc: 14.54 GiB, 15597568000 bytes, 30464000 sectors
    Disk model: Cruzer Blade    
    Units: sectors of 1 * 512 = 512 bytes
    Sector size (logical/physical): 512 bytes / 512 bytes
    I/O size (minimum/optimal): 512 bytes / 512 bytes
    Disklabel type: dos
    Disk identifier: 0x9f2f0556

    Device     Boot    Start      End  Sectors  Size Id Type
    /dev/sdc1           2048 30398463 30396416 14.5G  7 HPFS/NTFS/exFAT
    /dev/sdc2  *    30398464 30463999    65536   32M ef EFI (FAT-12/16/32)

Now open your file manager and copy the ISO files in the first
partition. Don't worry if you can't find which one is the first
partition. Your file manager will display the first partition only.

[<img src="data:image/svg+xml,%3Csvg%20xmlns=&#39;http://www.w3.org/2000/svg&#39;%20viewBox=&#39;0%200%201366%20691&#39;%3E%3C/svg%3E" alt="Copy ISO files to USB bootable drive created with Ventoy" class="aligncenter size-full wp-image-23582" width="1366" height="691" /><img src="https://ostechnix.com/wp-content/uploads/2020/05/Copy-ISO-files-to-USB-bootable-drive.png" alt="Copy ISO files to USB bootable drive created with Ventoy" class="aligncenter size-full wp-image-23582" sizes="(max-width: 1366px) 100vw, 1366px" srcset="https://ostechnix.com/wp-content/uploads/2020/05/Copy-ISO-files-to-USB-bootable-drive.png 1366w, https://ostechnix.com/wp-content/uploads/2020/05/Copy-ISO-files-to-USB-bootable-drive-300x152.png 300w, https://ostechnix.com/wp-content/uploads/2020/05/Copy-ISO-files-to-USB-bootable-drive-1024x518.png 1024w, https://ostechnix.com/wp-content/uploads/2020/05/Copy-ISO-files-to-USB-bootable-drive-768x388.png 768w, https://ostechnix.com/wp-content/uploads/2020/05/Copy-ISO-files-to-USB-bootable-drive-720x364.png 720w, https://ostechnix.com/wp-content/uploads/2020/05/Copy-ISO-files-to-USB-bootable-drive-520x263.png 520w, https://ostechnix.com/wp-content/uploads/2020/05/Copy-ISO-files-to-USB-bootable-drive-320x162.png 320w" width="1366" height="691" />](https://ostechnix.com/wp-content/uploads/2020/05/Copy-ISO-files-to-USB-bootable-drive.png)

Alternatively, go to the location where you saved ISO files and copy all
ISO files from command line with rsync like below:

    $ rsync *.iso /media/$USER/ventoy/ --progress -ah

Please note that in some Linux distros, the USB might be mounted under
**"/run/media/"** location.

Done! We have just created multiboot USB drive with Ventoy.

Boot your system with USB drive and you will be pleased with the Ventoy
boot menu:

[<img src="data:image/svg+xml,%3Csvg%20xmlns=&#39;http://www.w3.org/2000/svg&#39;%20viewBox=&#39;0%200%201013%20600&#39;%3E%3C/svg%3E" alt="Ventoy multiboot menu" class="aligncenter size-full wp-image-23583" width="1013" height="600" /><img src="https://ostechnix.com/wp-content/uploads/2020/05/Ventoy-multiboot-menu.png" alt="Ventoy multiboot menu" class="aligncenter size-full wp-image-23583" sizes="(max-width: 1013px) 100vw, 1013px" srcset="https://ostechnix.com/wp-content/uploads/2020/05/Ventoy-multiboot-menu.png 1013w, https://ostechnix.com/wp-content/uploads/2020/05/Ventoy-multiboot-menu-300x178.png 300w, https://ostechnix.com/wp-content/uploads/2020/05/Ventoy-multiboot-menu-768x455.png 768w, https://ostechnix.com/wp-content/uploads/2020/05/Ventoy-multiboot-menu-720x426.png 720w, https://ostechnix.com/wp-content/uploads/2020/05/Ventoy-multiboot-menu-520x308.png 520w, https://ostechnix.com/wp-content/uploads/2020/05/Ventoy-multiboot-menu-320x190.png 320w" width="1013" height="600" />](https://ostechnix.com/wp-content/uploads/2020/05/Ventoy-multiboot-menu.png)

Choose the OS that you want to boot and hit ENTER to load it!

Here is the short visual demo of multiboot USB flash drive created with
Ventoy:

Cool, isn't it? Indeed!


### Load ISO images to RAM

Like I already mentioned, the ISO images may not boot in some machines,
especially in Legacy BIOS mode. Here is where "Memdisk" mode comes in
help. When Memdisk mode is enabled, Ventoy will load the whole ISO image
file into memory and boot it from there.

To enable Memdisk mode, press <span
style="color: #ff0000;">**F1**</span> key before selecting the OS. You
will see the notification on the top right corner when the Memdisk mode
is enabled.

[<img src="data:image/svg+xml,%3Csvg%20xmlns=&#39;http://www.w3.org/2000/svg&#39;%20viewBox=&#39;0%200%201014%20608&#39;%3E%3C/svg%3E" alt="Enable Memdisk mode in Ventoy" class="aligncenter size-full wp-image-23584" width="1014" height="608" /><img src="https://ostechnix.com/wp-content/uploads/2020/05/Enable-Memdisk-mode-in-Ventoy.png" alt="Enable Memdisk mode in Ventoy" class="aligncenter size-full wp-image-23584" sizes="(max-width: 1014px) 100vw, 1014px" srcset="https://ostechnix.com/wp-content/uploads/2020/05/Enable-Memdisk-mode-in-Ventoy.png 1014w, https://ostechnix.com/wp-content/uploads/2020/05/Enable-Memdisk-mode-in-Ventoy-300x180.png 300w, https://ostechnix.com/wp-content/uploads/2020/05/Enable-Memdisk-mode-in-Ventoy-768x460.png 768w, https://ostechnix.com/wp-content/uploads/2020/05/Enable-Memdisk-mode-in-Ventoy-720x432.png 720w, https://ostechnix.com/wp-content/uploads/2020/05/Enable-Memdisk-mode-in-Ventoy-520x312.png 520w, https://ostechnix.com/wp-content/uploads/2020/05/Enable-Memdisk-mode-in-Ventoy-320x192.png 320w" width="1014" height="608" />](https://ostechnix.com/wp-content/uploads/2020/05/Enable-Memdisk-mode-in-Ventoy.png)

Now the ISO will be loaded to memory.

[<img src="data:image/svg+xml,%3Csvg%20xmlns=&#39;http://www.w3.org/2000/svg&#39;%20viewBox=&#39;0%200%201016%20603&#39;%3E%3C/svg%3E" alt="Load ISO to memory in Ventoy" class="aligncenter size-full wp-image-23585" width="1016" height="603" /><img src="https://ostechnix.com/wp-content/uploads/2020/05/Load-ISO-to-memory-in-Ventoy.png" alt="Load ISO to memory in Ventoy" class="aligncenter size-full wp-image-23585" sizes="(max-width: 1016px) 100vw, 1016px" srcset="https://ostechnix.com/wp-content/uploads/2020/05/Load-ISO-to-memory-in-Ventoy.png 1016w, https://ostechnix.com/wp-content/uploads/2020/05/Load-ISO-to-memory-in-Ventoy-300x178.png 300w, https://ostechnix.com/wp-content/uploads/2020/05/Load-ISO-to-memory-in-Ventoy-768x456.png 768w, https://ostechnix.com/wp-content/uploads/2020/05/Load-ISO-to-memory-in-Ventoy-720x427.png 720w, https://ostechnix.com/wp-content/uploads/2020/05/Load-ISO-to-memory-in-Ventoy-520x309.png 520w, https://ostechnix.com/wp-content/uploads/2020/05/Load-ISO-to-memory-in-Ventoy-320x190.png 320w" width="1016" height="603" />](https://ostechnix.com/wp-content/uploads/2020/05/Load-ISO-to-memory-in-Ventoy.png)

To switch back to normal mode, press F1 key again.

### Creating persistent bootable USB

We know now how to create multiboot USB drives with Ventoy in Linux.
Using this bootable USB, we can test the Linux distributions without
actually having to install them on the hard drive. When you are on the
Live OS, you can do all sort of things, such as installing applications,
downloading files, playing media, creating files and folders,
customizing it as per your liking and a lot more. However once you
reboot the system, all of the said changes will be gone. If you want to
make all changes remain intact even after rebooted the system, you
should create a persistent bootable USB drive.

Ventoy can able to make persistent USB bootable drive. To know how to do
it, refer the link given below.

-   [**Create Persistent Bootable USB Using Ventoy In
    Linux**](https://www.jacobgoldstein.tk/posts/2020/10/ventoy-persistence/)

#### Conclusion

Believe or not, Ventoy is one of the easiest, quickest and ingenious
tool ever I have used to create multiboot (persistent and
non-persistent) USB flash drives in Linux. It just works out of the box!
Give it a try. You won't be disappointed!

###### Security concerns related to Ventoy

The Ventoy website, forum and some files hosted in that site have been
flagged as Malware/Trojan by some Antivirus software. Check the issues
posted in the project's GitHub page:

-   <https://github.com/ventoy/Ventoy/issues/22>
-   <https://github.com/ventoy/Ventoy/issues/83>
-   <https://github.com/ventoy/Ventoy/issues/31>

However, Manjaro packager **"Linux Aarhus"** has argued after code
review why there is no reasonable doubt on the security aspects of this
application. He claims "there is no obfuscated code". So, I guess Ventoy
is **safe** to use. Please check this link to read the full
discussion:--&gt;
<https://forum.manjaro.org/t/community-ventoy-compile-from-source/143714/6>

------------------------------------------------------------------------

**Related read:**

-   [**Etcher – A Beautiful App To Create Bootable USB Drives And SD
    Cards**](https://ostechnix.com/etcher-beauitiful-app-create-bootable-sd-cards-usb-drives/)
-   [**Popsicle – Create Multiple Bootable USB Drives At
    Once**](https://ostechnix.com/popsicle-create-multiple-bootable-usb-drives-at-once/)
-   [**How To Create Persistent Live USB On
    Ubuntu**](https://ostechnix.com/how-to-create-persistent-live-usb-on-ubuntu/)
-   [**Bootiso Lets You Safely Create Bootable USB
    Drive**](https://ostechnix.com/bootiso-lets-you-safely-create-bootable-usb-drive/)
-   [**MultiCD – Create Multiboot CD, DVD, and USB
    Images**](https://ostechnix.com/multicd-create-multiboot-cd-dvd-usb-images/)
-   [**How To Create Bootable USB Drive Using dd
    Command**](https://ostechnix.com/how-to-create-bootable-usb-drive-using-dd-command/)
-   [**How To Write An ISO To The USB Drive Directly From The
    Internet**](https://ostechnix.com/how-to-write-an-iso-to-the-usb-drive-directly-from-the-internet/)
-   [**How To Create An ISO From A Bootable USB Drive In
    Linux**](https://ostechnix.com/create-iso-bootable-usb-drive-linux/)
-   [**How To Create Custom Ubuntu Live CD
    Image**](https://ostechnix.com/create-custom-ubuntu-live-cd-image/)

------------------------------------------------------------------------

**Resources:**

-   [**Ventoy Website**](https://www.ventoy.net/en/index.html)
-   [**Ventoy GitHub Repository**](https://github.com/ventoy/Ventoy)

**Thanks for stopping by!**


[bootable
usb](https://ostechnix.com/tag/bootable-usb/)[Commandline](https://ostechnix.com/tag/commandline/)[Linux](https://ostechnix.com/tag/linux/)[Multiboot
USB](https://ostechnix.com/tag/multiboot-usb/)[Open
source](https://ostechnix.com/tag/open-source/)[Ventoy](https://ostechnix.com/tag/ventoy/)

<span class="single-comment-o">11 comments</span>

<span class="post-share-item post-share-plike"> <span
class="count-number-like">3</span><span
class="penci-post-like single-like-button"></span> </span>

<a href="https://www.facebook.com/sharer/sharer.php?u=https://ostechnix.com/how-to-create-multiboot-usb-drives-with-ventoy-in-linux/" class="post-share-item post-share-facebook"><em></em><span class="dt-share">Facebook</span></a><a href="https://twitter.com/intent/tweet?text=Check%20out%20this%20article:%20How%20To%20Create%20Multiboot%20USB%20Drives%20With%20Ventoy%20In%20Linux%20-%20https://ostechnix.com/how-to-create-multiboot-usb-drives-with-ventoy-in-linux/" class="post-share-item post-share-twitter"><em></em><span class="dt-share">Twitter</span></a><a href="https://www.linkedin.com/shareArticle?mini=true&amp;url=https%3A%2F%2Fostechnix.com%2Fhow-to-create-multiboot-usb-drives-with-ventoy-in-linux%2F&amp;title=How%20To%20Create%20Multiboot%20USB%20Drives%20With%20Ventoy%20In%20Linux" class="post-share-item post-share-linkedin"><em></em><span class="dt-share">Linkedin</span></a><a href="https://reddit.com/submit?url=https%3A%2F%2Fostechnix.com%2Fhow-to-create-multiboot-usb-drives-with-ventoy-in-linux%2F&amp;title=How%20To%20Create%20Multiboot%20USB%20Drives%20With%20Ventoy%20In%20Linux" class="post-share-item post-share-reddit"><em></em><span class="dt-share">Reddit</span></a><a href="https://api.whatsapp.com/send?text=How%20To%20Create%20Multiboot%20USB%20Drives%20With%20Ventoy%20In%20Linux%20%0A%0A%20https%3A%2F%2Fostechnix.com%2Fhow-to-create-multiboot-usb-drives-with-ventoy-in-linux%2F" class="post-share-item post-share-whatsapp"><em></em><span class="dt-share">Whatsapp</span></a><a href="https://telegram.me/share/url?url=https%3A%2F%2Fostechnix.com%2Fhow-to-create-multiboot-usb-drives-with-ventoy-in-linux%2F&amp;text=How%20To%20Create%20Multiboot%20USB%20Drives%20With%20Ventoy%20In%20Linux" class="post-share-item post-share-telegram"><em></em><span class="dt-share">Telegram</span></a><a href="/cdn-cgi/l/email-protection#aa95d9dfc8c0cfc9de97e2c5dd8f989afec58f989ae9d8cfcbdecf8f989ae7dfc6dec3c8c5c5de8f989afff9e88f989aeed8c3dccfd98f989afdc3dec28f989afccfc4dec5d38f989ae3c48f989ae6c3c4dfd28c899a999291e8e5eef397c2dededad9908585c5d9decfc9c2c4c3d284c9c5c785c2c5dd87dec587c9d8cfcbdecf87c7dfc6dec3c8c5c5de87dfd9c887ced8c3dccfd987ddc3dec287dccfc4dec5d387c3c487c6c3c4dfd285" class="post-share-item post-share-email"><em></em><span class="dt-share">Email</span></a>

<img src="data:image/svg+xml,%3Csvg%20xmlns=&#39;http://www.w3.org/2000/svg&#39;%20viewBox=&#39;0%200%20100%20100&#39;%3E%3C/svg%3E" class="avatar avatar-100 photo" width="100" height="100" />

<img src="https://secure.gravatar.com/avatar/82930172130088777d42141847e45c10?s=100&amp;d=mm&amp;r=g" class="avatar avatar-100 photo" srcset="https://secure.gravatar.com/avatar/82930172130088777d42141847e45c10?s=200&amp;d=mm&amp;r=g 2x" width="100" height="100" />

##### [sk](https://ostechnix.com/author/sk/ "Posts by sk")

I am Senthil Kumar, more commonly known as SK to my friends, from India.
I love to read, write and explore topics on Linux, Unix and all other
technology related stuff.

<a href="https://ostechnix.com/" class="author-social"><em></em></a>
<a href="https://facebook.com/ostechnix" class="author-social"><em></em></a>
<a href="https://twitter.com/ostechnix" class="author-social"><em></em></a>
<a href="https://www.linkedin.com/in/ostechnix/" class="author-social"><em></em></a>

Previous post

[](https://ostechnix.com/g-desktop-suite-google-drive-desktop-app-made-with-electron/)

##### G Desktop Suite – A Google Drive Desktop App Made With Electron

Next post

[](https://ostechnix.com/how-to-boot-from-usb-drive-in-virtualbox-in-linux/)

##### How To Boot From USB Drive In Virtualbox In Linux

#### You May Also Like

<a href="https://ostechnix.com/clipgrab-youtube-downloader-converter/" class="related-thumb penci-image-holder owl-lazy" title="ClipGrab – A Free, multi-platform YouTube Downloader and Converter"></a>

### [ClipGrab – A Free, multi-platform YouTube Downloader and...](https://ostechnix.com/clipgrab-youtube-downloader-converter/)

<span class="date">June 29, 2016</span>

<a href="https://ostechnix.com/how-to-create-a-custom-ubuntu-live-iso-image-with-cubic/" class="related-thumb penci-image-holder owl-lazy" title="How To Create A Custom Ubuntu Live ISO Image With Cubic"></a>

### [How To Create A Custom Ubuntu Live ISO...](https://ostechnix.com/how-to-create-a-custom-ubuntu-live-iso-image-with-cubic/)

<span class="date">October 23, 2020</span>

<a href="https://ostechnix.com/how-to-add-microsofts-linux-software-repository/" class="related-thumb penci-image-holder owl-lazy" title="How To Add Microsoft’s Linux Software Repository"></a>

### [How To Add Microsoft’s Linux Software Repository](https://ostechnix.com/how-to-add-microsofts-linux-software-repository/)

<span class="date">October 22, 2020</span>

<a href="https://ostechnix.com/how-to-install-microsoft-edge-on-linux/" class="related-thumb penci-image-holder owl-lazy" title="How To Install Microsoft Edge On Linux"></a>

### [How To Install Microsoft Edge On Linux](https://ostechnix.com/how-to-install-microsoft-edge-on-linux/)

<span class="date">October 21, 2020</span>

<a href="https://ostechnix.com/how-to-find-the-mounted-filesystem-type-in-linux/" class="related-thumb penci-image-holder owl-lazy" title="How To Find The Mounted Filesystem Type In Linux"></a>

### [How To Find The Mounted Filesystem Type In...](https://ostechnix.com/how-to-find-the-mounted-filesystem-type-in-linux/)

<span class="date">July 16, 2018</span>

<a href="https://ostechnix.com/how-to-view-disk-usage-with-duf-on-linux-and-unix/" class="related-thumb penci-image-holder owl-lazy" title="How To View Disk Usage With Duf On Linux And Unix"></a>

### [How To View Disk Usage With Duf On...](https://ostechnix.com/how-to-view-disk-usage-with-duf-on-linux-and-unix/)

<span class="date">September 28, 2020</span>

#### 11 comments

<img src="data:image/svg+xml,%3Csvg%20xmlns=&#39;http://www.w3.org/2000/svg&#39;%20viewBox=&#39;0%200%20100%20100&#39;%3E%3C/svg%3E" class="avatar avatar-100 photo" width="100" height="100" />

<img src="https://secure.gravatar.com/avatar/080406f7b49cd60e5e9344d30fd6d898?s=100&amp;d=mm&amp;r=g" class="avatar avatar-100 photo" srcset="https://secure.gravatar.com/avatar/080406f7b49cd60e5e9344d30fd6d898?s=200&amp;d=mm&amp;r=g 2x" width="100" height="100" />

<span class="author" itemprop="creator"
itemtype="https://schema.org/Person"><span
itemprop="name">Sathish</span></span> <span class="date"
datetime="2020-05-27T17:40:10+05:30"
title="Wednesday, May 27, 2020, 5:40 pm" itemprop="commentTime">May 27,
2020 - 5:40 pm</span>

This is useful.  
Thank you for sharing.

<span class="reply">
<a href="#comment-78420" class="comment-reply-link">Reply</a> </span>

<img src="data:image/svg+xml,%3Csvg%20xmlns=&#39;http://www.w3.org/2000/svg&#39;%20viewBox=&#39;0%200%20100%20100&#39;%3E%3C/svg%3E" class="avatar avatar-100 photo" width="100" height="100" />

<img src="https://secure.gravatar.com/avatar/3ae7e716bec771ee43b5e50721d9fd17?s=100&amp;d=mm&amp;r=g" class="avatar avatar-100 photo" srcset="https://secure.gravatar.com/avatar/3ae7e716bec771ee43b5e50721d9fd17?s=200&amp;d=mm&amp;r=g 2x" width="100" height="100" />

<span class="author" itemprop="creator"
itemtype="https://schema.org/Person"><span itemprop="name">Jules
Randolph</span></span> <span class="date"
datetime="2020-06-05T17:06:44+05:30"
title="Friday, June 5, 2020, 5:06 pm" itemprop="commentTime">June 5,
2020 - 5:06 pm</span>

(author of AUR comment) I think you can remove the caution note. Manjaro
packager Linux Aarhus has argued after code review why there is no
reasonable doubt on the security aspects of this application:
<https://forum.manjaro.org/t/community-ventoy-compile-from-source/143714/6>  
I also edited the AUR comment to reflect the conclusions of his code
review. Thank you.

<span class="reply">
<a href="#comment-78641" class="comment-reply-link">Reply</a> </span>

<img src="data:image/svg+xml,%3Csvg%20xmlns=&#39;http://www.w3.org/2000/svg&#39;%20viewBox=&#39;0%200%20100%20100&#39;%3E%3C/svg%3E" class="avatar avatar-100 photo" width="100" height="100" />

<img src="https://secure.gravatar.com/avatar/82930172130088777d42141847e45c10?s=100&amp;d=mm&amp;r=g" class="avatar avatar-100 photo" srcset="https://secure.gravatar.com/avatar/82930172130088777d42141847e45c10?s=200&amp;d=mm&amp;r=g 2x" width="100" height="100" />

<span class="author" itemprop="creator"
itemtype="https://schema.org/Person"><span
itemprop="name"><a href="https://ostechnix.com/" class="url">sk</a></span></span>
<span class="date" datetime="2020-06-05T17:32:06+05:30"
title="Friday, June 5, 2020, 5:32 pm" itemprop="commentTime">June 5,
2020 - 5:32 pm</span>

I removed your comment. Thanks for your update.

<span class="reply">
<a href="#comment-78642" class="comment-reply-link">Reply</a> </span>

<img src="data:image/svg+xml,%3Csvg%20xmlns=&#39;http://www.w3.org/2000/svg&#39;%20viewBox=&#39;0%200%20100%20100&#39;%3E%3C/svg%3E" class="avatar avatar-100 photo" width="100" height="100" />

<img src="https://secure.gravatar.com/avatar/3ae7e716bec771ee43b5e50721d9fd17?s=100&amp;d=mm&amp;r=g" class="avatar avatar-100 photo" srcset="https://secure.gravatar.com/avatar/3ae7e716bec771ee43b5e50721d9fd17?s=200&amp;d=mm&amp;r=g 2x" width="100" height="100" />

<span class="author" itemprop="creator"
itemtype="https://schema.org/Person"><span itemprop="name">Jules
Randolph</span></span> <span class="date"
datetime="2020-06-05T18:08:39+05:30"
title="Friday, June 5, 2020, 6:08 pm" itemprop="commentTime">June 5,
2020 - 6:08 pm</span>

Also, I added a comment in this very thread that showed virus detections
in VT shrank from 19 to only 2 in the latest release. I really think
it’s safe 🙂

<span class="reply">
<a href="#comment-78644" class="comment-reply-link">Reply</a> </span>

<img src="data:image/svg+xml,%3Csvg%20xmlns=&#39;http://www.w3.org/2000/svg&#39;%20viewBox=&#39;0%200%20100%20100&#39;%3E%3C/svg%3E" class="avatar avatar-100 photo" width="100" height="100" />

<img src="https://secure.gravatar.com/avatar/dd3c928c2d74fa03f5b3574b1219a731?s=100&amp;d=mm&amp;r=g" class="avatar avatar-100 photo" srcset="https://secure.gravatar.com/avatar/dd3c928c2d74fa03f5b3574b1219a731?s=200&amp;d=mm&amp;r=g 2x" width="100" height="100" />

<span class="author" itemprop="creator"
itemtype="https://schema.org/Person"><span
itemprop="name">Roberto</span></span> <span class="date"
datetime="2020-06-24T06:50:38+05:30"
title="Wednesday, June 24, 2020, 6:50 am" itemprop="commentTime">June
24, 2020 - 6:50 am</span>

Thanks for the clear instructions. I tried many other options, but none
of them worked properly. Ventoy works like a charm. It’s exactly what I
was looking for. I’m glad I found your tutorial 🙂

<span class="reply">
<a href="#comment-79215" class="comment-reply-link">Reply</a> </span>

<img src="data:image/svg+xml,%3Csvg%20xmlns=&#39;http://www.w3.org/2000/svg&#39;%20viewBox=&#39;0%200%20100%20100&#39;%3E%3C/svg%3E" class="avatar avatar-100 photo" width="100" height="100" />

<img src="https://secure.gravatar.com/avatar/3eda6fcd3204ef285fa52176c28c4d3e?s=100&amp;d=mm&amp;r=g" class="avatar avatar-100 photo" srcset="https://secure.gravatar.com/avatar/3eda6fcd3204ef285fa52176c28c4d3e?s=200&amp;d=mm&amp;r=g 2x" width="100" height="100" />

<span class="author" itemprop="creator"
itemtype="https://schema.org/Person"><span
itemprop="name">Jim</span></span> <span class="date"
datetime="2020-09-25T22:59:49+05:30"
title="Friday, September 25, 2020, 10:59 pm"
itemprop="commentTime">September 25, 2020 - 10:59 pm</span>

Thank you for writing such an easy to follow tutorial. You rock!

<span class="reply">
<a href="#comment-80835" class="comment-reply-link">Reply</a> </span>

<img src="data:image/svg+xml,%3Csvg%20xmlns=&#39;http://www.w3.org/2000/svg&#39;%20viewBox=&#39;0%200%20100%20100&#39;%3E%3C/svg%3E" class="avatar avatar-100 photo" width="100" height="100" />

<img src="https://secure.gravatar.com/avatar/7566f5e29822f87e3d5607cc89012dd2?s=100&amp;d=mm&amp;r=g" class="avatar avatar-100 photo" srcset="https://secure.gravatar.com/avatar/7566f5e29822f87e3d5607cc89012dd2?s=200&amp;d=mm&amp;r=g 2x" width="100" height="100" />

<span class="author" itemprop="creator"
itemtype="https://schema.org/Person"><span
itemprop="name">Rod</span></span> <span class="date"
datetime="2020-10-20T20:51:41+05:30"
title="Tuesday, October 20, 2020, 8:51 pm"
itemprop="commentTime">October 20, 2020 - 8:51 pm</span>

attempts to install ventoy to usb via raspberry pi 4 have failed  
error message – some tools can not run in current system. please check
log.text – which says hex dump fail ???

im a newbi at all this

<span class="reply">
<a href="#comment-81253" class="comment-reply-link">Reply</a> </span>

<img src="data:image/svg+xml,%3Csvg%20xmlns=&#39;http://www.w3.org/2000/svg&#39;%20viewBox=&#39;0%200%20100%20100&#39;%3E%3C/svg%3E" class="avatar avatar-100 photo" width="100" height="100" />

<img src="https://secure.gravatar.com/avatar/82930172130088777d42141847e45c10?s=100&amp;d=mm&amp;r=g" class="avatar avatar-100 photo" srcset="https://secure.gravatar.com/avatar/82930172130088777d42141847e45c10?s=200&amp;d=mm&amp;r=g 2x" width="100" height="100" />

<span class="author" itemprop="creator"
itemtype="https://schema.org/Person"><span
itemprop="name"><a href="https://ostechnix.com/" class="url">sk</a></span></span>
<span class="date" datetime="2020-10-20T22:24:50+05:30"
title="Tuesday, October 20, 2020, 10:24 pm"
itemprop="commentTime">October 20, 2020 - 10:24 pm</span>

Please check the solution posted in Ventoy issue tracker -&gt;
<https://github.com/ventoy/Ventoy/issues/70>

<span class="reply">
<a href="#comment-81254" class="comment-reply-link">Reply</a> </span>

<img src="data:image/svg+xml,%3Csvg%20xmlns=&#39;http://www.w3.org/2000/svg&#39;%20viewBox=&#39;0%200%20100%20100&#39;%3E%3C/svg%3E" class="avatar avatar-100 photo" width="100" height="100" />

<img src="https://secure.gravatar.com/avatar/404425633ab99e2905817dc5563d52cd?s=100&amp;d=mm&amp;r=g" class="avatar avatar-100 photo" srcset="https://secure.gravatar.com/avatar/404425633ab99e2905817dc5563d52cd?s=200&amp;d=mm&amp;r=g 2x" width="100" height="100" />

<span class="author" itemprop="creator"
itemtype="https://schema.org/Person"><span itemprop="name">youareadu
deperfect</span></span> <span class="date"
datetime="2020-10-22T00:04:59+05:30"
title="Thursday, October 22, 2020, 12:04 am"
itemprop="commentTime">October 22, 2020 - 12:04 am</span>

great tutorial…thanks from id 🙂

<span class="reply">
<a href="#comment-81271" class="comment-reply-link">Reply</a> </span>

<img src="data:image/svg+xml,%3Csvg%20xmlns=&#39;http://www.w3.org/2000/svg&#39;%20viewBox=&#39;0%200%20100%20100&#39;%3E%3C/svg%3E" class="avatar avatar-100 photo" width="100" height="100" />

<img src="https://secure.gravatar.com/avatar/7566f5e29822f87e3d5607cc89012dd2?s=100&amp;d=mm&amp;r=g" class="avatar avatar-100 photo" srcset="https://secure.gravatar.com/avatar/7566f5e29822f87e3d5607cc89012dd2?s=200&amp;d=mm&amp;r=g 2x" width="100" height="100" />

<span class="author" itemprop="creator"
itemtype="https://schema.org/Person"><span
itemprop="name">Rod</span></span> <span class="date"
datetime="2020-10-25T17:25:40+05:30"
title="Sunday, October 25, 2020, 5:25 pm" itemprop="commentTime">October
25, 2020 - 5:25 pm</span>

tried to install on raspberry pi 4 get error  
./tool/ventoy\_lib.sh: line 55: ./tool/mkexfatfs\_32: cannot execute
binary file: exec format error

<span class="reply">
<a href="#comment-81334" class="comment-reply-link">Reply</a> </span>

<img src="data:image/svg+xml,%3Csvg%20xmlns=&#39;http://www.w3.org/2000/svg&#39;%20viewBox=&#39;0%200%20100%20100&#39;%3E%3C/svg%3E" class="avatar avatar-100 photo" width="100" height="100" />

<img src="https://secure.gravatar.com/avatar/82930172130088777d42141847e45c10?s=100&amp;d=mm&amp;r=g" class="avatar avatar-100 photo" srcset="https://secure.gravatar.com/avatar/82930172130088777d42141847e45c10?s=200&amp;d=mm&amp;r=g 2x" width="100" height="100" />

<span class="author" itemprop="creator"
itemtype="https://schema.org/Person"><span
itemprop="name"><a href="https://ostechnix.com/" class="url">sk</a></span></span>
<span class="date" datetime="2020-10-25T22:09:11+05:30"
title="Sunday, October 25, 2020, 10:09 pm"
itemprop="commentTime">October 25, 2020 - 10:09 pm</span>

Never tried Ventoy in Raspberry Pi. Please post the issue in Ventoy
GitHub. Good luck.

<span class="reply">
<a href="#comment-81335" class="comment-reply-link">Reply</a> </span>

### Leave a Comment <span class="small"><a href="/how-to-create-multiboot-usb-drives-with-ventoy-in-linux/#respond" id="cancel-comment-reply-link">Cancel Reply</a></span>

<span class="comment-form-cookies-text"
for="wp-comment-cookies-consent">Save my name, email, and website in
this browser for the next time I comment.</span>

\* By using this form you agree with the storage and handling of your
data by this website.

This site uses Akismet to reduce spam. [Learn how your comment data is
processed](https://akismet.com/privacy/).

#### <span class="inner-arrow">Social Networks</span>

[<span
style="font-size: 14px">Facebook</span>](https://www.facebook.com/ostechnix/)
[<span
style="font-size: 14px">Twitter</span>](https://twitter.com/ostechnix)
[<span
style="font-size: 14px">Linkedin</span>](https://in.linkedin.com/in/ostechnix)
[<span
style="font-size: 14px">Reddit</span>](https://www.reddit.com/r/OSTechNix/)

<span class="underline"></span>

#### <span class="inner-arrow">Recent Posts</span>

-   [How To Create A Custom Ubuntu Live ISO Image With
    Cubic](https://ostechnix.com/how-to-create-a-custom-ubuntu-live-iso-image-with-cubic/)
-   [How To Add Microsoft’s Linux Software
    Repository](https://ostechnix.com/how-to-add-microsofts-linux-software-repository/)
-   [How To Install Microsoft Edge On
    Linux](https://ostechnix.com/how-to-install-microsoft-edge-on-linux/)
-   [How To List Filesystems In Linux Using
    Lfs](https://ostechnix.com/how-to-list-filesystems-in-linux-using-lfs/)
-   [Transfer Files Between Computers And Mobile Devices By Scanning QR
    Codes](https://ostechnix.com/transfer-files-between-computers-and-mobile-devices-by-scanning-qr-codes/)

#### <span class="inner-arrow">Popular Posts</span>

-   <span class="order-border-number"> <span
    class="number-post">1</span> </span>
    <a href="https://ostechnix.com/find-size-directory-linux/" class="penci-image-holder penci-lazy" title="How To Find The Size Of A Directory In Linux"></a>

    #### [How To Find The Size Of A Directory In Linux](https://ostechnix.com/find-size-directory-linux/ "How To Find The Size Of A Directory In Linux")

    <span class="side-item-meta">December 26, 2017</span>

-   <span class="order-border-number"> <span
    class="number-post">2</span> </span>
    <a href="https://ostechnix.com/youtube-dl-tutorial-with-examples-for-beginners/" class="penci-image-holder penci-lazy small-fix-size" title="Youtube-dl Tutorial With Examples For Beginners"></a>

    #### [Youtube-dl Tutorial With Examples For Beginners](https://ostechnix.com/youtube-dl-tutorial-with-examples-for-beginners/ "Youtube-dl Tutorial With Examples For Beginners")

    <span class="side-item-meta">June 26, 2019</span>

-   <span class="order-border-number"> <span
    class="number-post">3</span> </span>
    <a href="https://ostechnix.com/how-to-fix-broken-ubuntu-os-without-reinstalling-it/" class="penci-image-holder penci-lazy small-fix-size" title="How To Fix Broken Ubuntu OS Without Reinstalling It"></a>

    #### [How To Fix Broken Ubuntu OS Without Reinstalling It](https://ostechnix.com/how-to-fix-broken-ubuntu-os-without-reinstalling-it/ "How To Fix Broken Ubuntu OS Without Reinstalling It")

    <span class="side-item-meta">April 25, 2020</span>

#### <span class="inner-arrow">Tweets</span>

<span class="icon-tweets"></span>

Beware of ad-blockers. \#Chromium \#Adblocker \#Browserextension
<https://t.co/T7G2Wt9JKS>

24-Oct-2020

<a href="https://twitter.com/intent/tweet?in_reply_to=1320052468760203264" class="reply">Reply</a>
<a href="https://twitter.com/intent/retweet?tweet_id=1320052468760203264" class="retweet">Retweet</a>
<a href="https://twitter.com/intent/favorite?tweet_id=1320052468760203264" class="favorite">Favorite</a>

Youtube-dl github repository has been taken down due to DMCA takedown
notice from the RIAA (Recording Industry Asso… <https://t.co/3U6pU6Wepy>

24-Oct-2020

<a href="https://twitter.com/intent/tweet?in_reply_to=1319868154793717760" class="reply">Reply</a>
<a href="https://twitter.com/intent/retweet?tweet_id=1319868154793717760" class="retweet">Retweet</a>
<a href="https://twitter.com/intent/favorite?tweet_id=1319868154793717760" class="favorite">Favorite</a>

How To Create A Custom Ubuntu Live ISO Image With Cubic \#Ubuntu
\#CustomISO \#Livecd \#Cubic \#Linux <https://t.co/6oMyAOP5NF>

23-Oct-2020

<a href="https://twitter.com/intent/tweet?in_reply_to=1319642203942105091" class="reply">Reply</a>
<a href="https://twitter.com/intent/retweet?tweet_id=1319642203942105091" class="retweet">Retweet</a>
<a href="https://twitter.com/intent/favorite?tweet_id=1319642203942105091" class="favorite">Favorite</a>

How To Add Microsoft's Linux Software Repository \#Microsoft \#Linux
\#Software \#Repository <https://t.co/uVXaI27EW0>

22-Oct-2020

<a href="https://twitter.com/intent/tweet?in_reply_to=1319296293173252097" class="reply">Reply</a>
<a href="https://twitter.com/intent/retweet?tweet_id=1319296293173252097" class="retweet">Retweet</a>
<a href="https://twitter.com/intent/favorite?tweet_id=1319296293173252097" class="favorite">Favorite</a>

The Debian Project donates 10 000$ to PeerTube's roadmap towards v3 (p2p
livestreaming) development! \#Peertube… <https://t.co/KYcY8RPSk7>

22-Oct-2020

<a href="https://twitter.com/intent/tweet?in_reply_to=1319222703438458880" class="reply">Reply</a>
<a href="https://twitter.com/intent/retweet?tweet_id=1319222703438458880" class="retweet">Retweet</a>
<a href="https://twitter.com/intent/favorite?tweet_id=1319222703438458880" class="favorite">Favorite</a>

#### <span class="inner-arrow">Categories</span>

Categories Select Category Active Directory Domain Controller  (2)
Android  (32) Antergos  (38) Apple  (2)    macOS  (2) Audio/Video
Converters  (4) Audio/Video Tools  (1) Backup tools  (12) BASH  (14)
   Bash Tips  (5) Blockchain  (15)    Ethereum  (1) Bootable USB  (2)
Browser Addons/Extensions  (1) Browsers  (7)    Chromium  (5)    Google
chrome  (4)    Microsoft Edge  (1)    Mozilla Firefox  (5) Cloud  (8)
Cloud storage  (1)    Dropbox  (1) CMS  (1)    Wordpress  (1) Command
line fun  (20) Command line utilities  (415) Cryptocurrency  (12)
Cryptography  (15) Data recovery  (1) Data science  (1) Database  (25)
   MariaDB  (1)    MySQL  (20) DevOps  (4) Directory servers  (1)    389
Directory server  (1)    Fedora Directory Server  (1) DNS  (3) Download
managers  (3) DuckDuckGo  (1) Ebooks  (2) Emulators  (12) Encryption /
Decryption  (24) Facebook  (1)    WhatsApp  (1) FAQ  (693) File
system  (4)    Stacked filesystem  (1)       eCryptfs  (1) File
Transfer  (9) Fileserver  (12) Frameworks  (2) FTP Server  (7)
Games  (12) Github  (1)    git  (1) GNOME  (1) Google  (4)    Google
Drive  (1) Groupware  (1) Image editors  (1) Internet  (4)    Email  (1)
   Web-based software  (2) Internet hacks  (19) Internet Of Things
(IoT)  (1) Interview  (1) Java  (1) Kali Linux  (3) LAMP Stack  (3) LDAP
server  (3) LEMP Stack  (2) Letsencrypt  (1) Linux  (889)    Linux
Kernel  (33)       Kernel Live Patching  (2) Linux Administration  (404)
Linux Basics  (479) Linux Commands  (350) Linux Containers  (13) Linux
Distributions  (370)    Arch Linux  (78)    CentOS  (62)    Debian  (64)
   Elementary OS  (5)    Fedora  (41)    Linux Mint  (93)    Mageia  (2)
   Mandrake  (3)    Mandriva  (4)    NixOS  (1)    openSUSE  (12)    Pop
OS  (11)    Red Hat Enterprise Linux  (42)    Scientific Linux  (33)
   SUSE  (11)    Ubuntu  (224) Linux Foundation  (3)    Hyperledger  (3)
   Hyperledger Fabric  (1)    Hyperledger Sawtooth  (1) Linux
Networking  (7) Linux Tips & Tricks  (66) Log server  (1) Machine
Learning  (1) MacOS  (2) Mailserver  (5) Management Tools  (3)
   Cockpit  (3) Manual pages  (1) Messengers  (2) Microsoft  (5)
   Windows  (4) Microsoft Windows  (14) Mobile  (13) Monitoring
Tools  (15) Music/media players  (1) Network attached storage  (2)
Opensource  (424) Package management  (102) Password manager  (1)
Phpmyadmin  (1) Programming  (65)    Golang  (3)    Java  (1)
   Nim  (1)    Nodejs  (6)    Perl  (2)    PHP  (5)    Python  (17)    R
Language  (1)    Racket  (2)    Rust  (4) Protection  (2)    Coronavirus
(COVID-19)  (1) Raspberry Pi  (2) Releases  (21) Remote desktop
connection  (4) Reviews  (60) Rust  (4) Scripting  (37)    Shell
Scripts  (1) Secure Shell (SSH)  (11) Security  (53) Self-host  (2)
   File sharing  (2) Social Networking  (3) Storages  (2)    DAS  (1)
   JBOD  (1)    NAS  (1)    RAID  (1)    SAN  (1) Streaming media
servers  (3)    Jellyfin  (1) Technology  (93)    News  (69) Terminal
Emulators  (4) Terminal hacks  (7) Terminal multiplexers  (4)    GNU
Screen  (3)    Tmux  (2) Text editors  (4)    Vim  (4)       Vim
Tips  (2) Tips and Tricks  (539) Tor  (1) Trouble shooting  (134)
Uncategorized  (2) Unix  (54)    FreeBSD  (21) Unix/Linux
Beginners  (347) Utilities  (457) Version Control System  (1) Virtual
drives  (2) Virtual Private Servers  (1) Virtualization  (66)
   Containers  (8)    Docker  (21)    Gnome Boxes  (1)    KVM  (22)
   Oracle VirtualBox  (25)    QEMU  (7)    Vagrant  (4) VPN  (4) Web
browsers  (1) Web hosting  (3) Webserver  (23)    Apache  (14)
   Nginx  (8) Wikipedia  (1) Windows Networking  (1) YouTube  (4)

#### <span class="inner-arrow">Blog Archive</span>

Blog Archive Select Month October 2020  (13) September 2020  (15) August
2020  (15) July 2020  (18) June 2020  (25) May 2020  (27) April 2020
 (32) March 2020  (21) February 2020  (19) January 2020  (22) December
2019  (13) November 2019  (9) October 2019  (10) September 2019  (11)
August 2019  (18) July 2019  (17) June 2019  (10) May 2019  (13) April
2019  (12) March 2019  (9) February 2019  (10) January 2019  (9)
December 2018  (6) November 2018  (12) October 2018  (18) September 2018
 (19) August 2018  (18) July 2018  (15) June 2018  (15) May 2018  (16)
April 2018  (21) March 2018  (22) February 2018  (16) January 2018  (19)
December 2017  (23) November 2017  (22) October 2017  (17) September
2017  (25) August 2017  (24) July 2017  (23) June 2017  (16) May 2017
 (22) April 2017  (25) March 2017  (33) February 2017  (34) January 2017
 (25) December 2016  (20) November 2016  (15) October 2016  (10)
September 2016  (12) August 2016  (23) July 2016  (6) June 2016  (15)
May 2016  (13) April 2016  (20) March 2016  (26) February 2016  (22)
January 2016  (4) November 2015  (1) October 2015  (5) September 2015
 (9) August 2015  (1) December 2013  (3) April 2013  (1) March 2013  (2)
February 2013  (3) January 2013  (10) December 2012  (6) November 2012
 (1)

#### <span class="inner-arrow">Newsletter</span>

Subscribe our Newsletter for new posts. Stay updated from your inbox!

<span style="display:block; margin-top:-15px; margin-bottom:15px">We
Respect your Privacy.</span>

#### <span class="inner-arrow">About OSTechNix</span>

[<img src="data:image/svg+xml,%3Csvg%20xmlns=&#39;http://www.w3.org/2000/svg&#39;%20viewBox=&#39;0%200%20340%2068&#39;%3E%3C/svg%3E" alt="Ostechnix Footer Logo" class="aligncenter wp-image-25308 size-full" width="340" height="68" /><img src="https://ostechnix.com/wp-content/uploads/2020/08/ostechnixcom-footer-new-logo.png" alt="Ostechnix Footer Logo" class="aligncenter wp-image-25308 size-full" sizes="(max-width: 340px) 100vw, 340px" srcset="https://ostechnix.com/wp-content/uploads/2020/08/ostechnixcom-footer-new-logo.png 340w, https://ostechnix.com/wp-content/uploads/2020/08/ostechnixcom-footer-new-logo-300x60.png 300w" width="340" height="68" />](https://ostechnix.com/)

 

OSTechNix (Open Source, Technology, Nix\*) regularly publishes the
latest news, how-to articles, tutorials and tips & tricks about free and
opensource software and technology.

[<span
style="font-size: 13px">Facebook</span>](https://www.facebook.com/ostechnix/)
[<span
style="font-size: 13px">Twitter</span>](https://twitter.com/ostechnix)
[<span
style="font-size: 13px">Linkedin</span>](https://in.linkedin.com/in/ostechnix)
[<span
style="font-size: 13px">Youtube</span>](https://www.youtube.com/channel/UC4GsixqwFwsy95oKhpKIS9g)
[<span
style="font-size: 13px">Email</span>](/cdn-cgi/l/email-protection#4a23242c250a25393e2f292224233264292527)
[<span
style="font-size: 13px">Reddit</span>](https://www.reddit.com/r/OSTechNix/)
[<span
style="font-size: 13px">RSS</span>](https://feeds.feedburner.com/Ostechnix)

#### <span class="inner-arrow">Popular Posts</span>

-   <span class="order-border-number"> <span
    class="number-post">1</span> </span>
    <a href="https://ostechnix.com/find-size-directory-linux/" class="penci-image-holder penci-lazy small-fix-size" title="How To Find The Size Of A Directory In Linux"></a>

    #### [How To Find The Size Of A Directory In Linux](https://ostechnix.com/find-size-directory-linux/ "How To Find The Size Of A Directory In Linux")

    <span class="side-item-meta">December 26, 2017</span>

-   <span class="order-border-number"> <span
    class="number-post">2</span> </span>
    <a href="https://ostechnix.com/youtube-dl-tutorial-with-examples-for-beginners/" class="penci-image-holder penci-lazy small-fix-size" title="Youtube-dl Tutorial With Examples For Beginners"></a>

    #### [Youtube-dl Tutorial With Examples For Beginners](https://ostechnix.com/youtube-dl-tutorial-with-examples-for-beginners/ "Youtube-dl Tutorial With Examples For Beginners")

    <span class="side-item-meta">June 26, 2019</span>

-   <span class="order-border-number"> <span
    class="number-post">3</span> </span>
    <a href="https://ostechnix.com/how-to-fix-broken-ubuntu-os-without-reinstalling-it/" class="penci-image-holder penci-lazy small-fix-size" title="How To Fix Broken Ubuntu OS Without Reinstalling It"></a>

    #### [How To Fix Broken Ubuntu OS Without Reinstalling It](https://ostechnix.com/how-to-fix-broken-ubuntu-os-without-reinstalling-it/ "How To Fix Broken Ubuntu OS Without Reinstalling It")

    <span class="side-item-meta">April 25, 2020</span>

#### <span class="inner-arrow">Editor’s Picks</span>

-   <a href="https://ostechnix.com/how-to-create-a-custom-ubuntu-live-iso-image-with-cubic/" class="penci-image-holder penci-lazy small-fix-size" title="How To Create A Custom Ubuntu Live ISO Image With Cubic"></a>

    #### [How To Create A Custom Ubuntu Live ISO Image With Cubic](https://ostechnix.com/how-to-create-a-custom-ubuntu-live-iso-image-with-cubic/ "How To Create A Custom Ubuntu Live ISO Image With Cubic")

    <span class="side-item-meta">October 23, 2020</span>

-   <a href="https://ostechnix.com/how-to-add-microsofts-linux-software-repository/" class="penci-image-holder penci-lazy small-fix-size" title="How To Add Microsoft’s Linux Software Repository"></a>

    #### [How To Add Microsoft’s Linux Software Repository](https://ostechnix.com/how-to-add-microsofts-linux-software-repository/ "How To Add Microsoft’s Linux Software Repository")

    <span class="side-item-meta">October 22, 2020</span>

-   <a href="https://ostechnix.com/how-to-install-microsoft-edge-on-linux/" class="penci-image-holder penci-lazy small-fix-size" title="How To Install Microsoft Edge On Linux"></a>

    #### [How To Install Microsoft Edge On Linux](https://ostechnix.com/how-to-install-microsoft-edge-on-linux/ "How To Install Microsoft Edge On Linux")

    <span class="side-item-meta">October 21, 2020</span>

-   <span
    id="menu-item-5200">[About](https://ostechnix.com/about/ "About Us")</span>
-   <span id="menu-item-5199">[Contact
    Us](https://ostechnix.com/contact-us/)</span>
-   <span id="menu-item-5201">[Privacy
    Policy](https://ostechnix.com/privacy-policy/)</span>
-   <span
    id="menu-item-5203">[Sitemap](https://ostechnix.com/sitemap/)</span>
-   <span id="menu-item-5202">[Terms and
    Conditions](https://ostechnix.com/terms-and-conditions/)</span>

OSTechNix © 2020. All Rights Reserved. Designed and Developed by
[Anblik](https://anblik.com). This site is licensed under [CC BY-NC
4.0](https://creativecommons.org/licenses/by-nc/4.0/).

<span id="penci-close-hbg"></span>

[<img src="https://ostechnix.com/wp-content/themes/soledad/images/penci-holder.png" alt="OSTechNix" class="penci-lazy" />](https://ostechnix.com/)

-   [Home](https://ostechnix.com/)
-   [Open Source](https://ostechnix.com/category/opensource/)
-   [Technology](https://ostechnix.com/category/technology/)
-   [Linux](https://ostechnix.com/category/linux/)
    -   [Linux Basics](https://ostechnix.com/category/linux-basics/)
    -   [Linux
        Distributions](https://ostechnix.com/category/linux_distributions/)
        -   [Arch
            Linux](https://ostechnix.com/category/linux_distributions/arch-linux/)
        -   [CentOS](https://ostechnix.com/category/linux_distributions/centos/)
        -   [Debian](https://ostechnix.com/category/linux_distributions/debian/)
        -   [Fedora](https://ostechnix.com/category/linux_distributions/fedora/)
        -   [Linux
            Mint](https://ostechnix.com/category/linux_distributions/linuxmint/)
        -   [Mageia](https://ostechnix.com/category/linux_distributions/mageia/)
        -   [Mandrake](https://ostechnix.com/category/linux_distributions/mandrake/)
        -   [Mandriva](https://ostechnix.com/category/linux_distributions/mandriva/)
        -   [openSUSE](https://ostechnix.com/category/linux_distributions/opensuse/)
        -   [Red Hat Enterprise
            Linux](https://ostechnix.com/category/linux_distributions/red-hat-enterprise-linux/)
        -   [Scientific
            Linux](https://ostechnix.com/category/linux_distributions/scientific-linux/)
-   [Unix](https://ostechnix.com/category/unix/)
    -   [FreeBSD](https://ostechnix.com/category/unix/freebsd/)
-   [Free Ebooks And
    Videos](https://ostechnix.tradepub.com/category/information-technology/1207/)
-   [Donate](https://ostechnix.com/donate/)
-   [Contact Us](https://ostechnix.com/contact-us/)

OSTechNix © 2020. All Rights Reserved. Designed and Developed by
[Anblik](https://anblik.com). This site is licensed under [CC BY-NC
4.0](https://creativecommons.org/licenses/by-nc/4.0/).

[](https://www.facebook.com/ostechnix/)
[](https://twitter.com/ostechnix)
[](https://in.linkedin.com/in/ostechnix)
[](https://www.youtube.com/channel/UC4GsixqwFwsy95oKhpKIS9g)
[](/cdn-cgi/l/email-protection#6f060109002f001c1b0a0c07010617410c0002)
[](https://www.reddit.com/r/OSTechNix/)
[](https://feeds.feedburner.com/Ostechnix)

### Read Also<span class="penci-close-rltpopup">x</span>

<a href="https://ostechnix.com/how-to-repeat-a-command-until-it-succeeds-in-linux/" class="rltpopup-thumb penci-image-holder penci-lazy" title="How To Repeat A Command Until It Succeeds In Linux"></a>

#### <a href="https://ostechnix.com/how-to-repeat-a-command-until-it-succeeds-in-linux/" class="rltpopup-title">How To Repeat A Command Until It...</a>

<span class="date">May 19, 2020</span>

<a href="https://ostechnix.com/camicri-cube-installing-packages-offline-ubuntu-systems/" class="rltpopup-thumb penci-image-holder penci-lazy" title="Camicri Cube – Installing Packages On Offline Ubuntu Systems"></a>

#### <a href="https://ostechnix.com/camicri-cube-installing-packages-offline-ubuntu-systems/" class="rltpopup-title">Camicri Cube – Installing Packages On Offline...</a>

<span class="date">December 8, 2017</span>

<a href="https://ostechnix.com/extract-particular-pages-pdf-file/" class="rltpopup-thumb penci-image-holder penci-lazy" title="How To Split or Extract Particular Pages From A PDF File"></a>

#### <a href="https://ostechnix.com/extract-particular-pages-pdf-file/" class="rltpopup-title">How To Split or Extract Particular Pages...</a>

<span class="date">August 6, 2016</span>

This website uses cookies to improve your experience. We'll assume
you're ok with this, but you can opt-out if you wish.
<a href="#" class="penci-gprd-accept">Accept</a>
<a href="https://ostechnix.com/terms-and-conditions/" class="penci-gprd-more">Read More</a>

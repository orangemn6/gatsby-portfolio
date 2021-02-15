---
title: Ventoy Persistence
author: Jacob Goldstein
type: post
date: 2020-10-25T19:00:00
categories:
  - Linux
tags:
  - Linux
---

A while ago, I have discussed how to [**create multiboot USB drives
with
Ventoy**](https://www.jacobgoldstein.tk/posts/2020/10/ventoy-multiboot-usb/)
application. Today, I will see how to create persistent bootable USB
using Ventoy in Linux. As you may already know, a regular bootable
medium allows us to test the Linux distributions without having to
install them on the hard drive. When you are on a Live OS, you can do
all sort of things, such as installing applications, downloading files,
playing media, creating files and folders, customizing it as per your
liking and a lot more. However once you reboot the system, all of the
said changes will be lost. Because, you are working on a live OS. That's
how a live bootable medium works! What if you want to make all changes
remain intact even after rebooted the system? This is where persistent
bootable USB drives comes in help.

A bootable USB drive with persistent storage support will enable you to
install programs, customize the OS and store data permanently. Nothing
will be lost after reboot or shutdown. All changes will remain intact
and you can use a USB bootable drive as a portable Linux system. Ventoy
currently allows us to configure persistence support for Ubuntu, MX
Linux, Linux Mint, Elementary OS and Zorin OS.

<span class="underline"></span>

Create Persistent Bootable USB Using Ventoy In Linux
----------------------------------------------------

I assume you already have created a live bootable USB with Ventoy as
described in the link attached in the first paragraph.

Open your Terminal and navigate to the folder where you have extracted
the Ventoy script.

I have extracted it in a folder named “ventoy” in my $HOME directory. Cd
into the Ventoy directory:

    $ cd ventoy

This folder will contain the following contents:

    boot CreatePersistentImg.sh log.txt tool ventoy Ventoy2Disk.sh

Now, run the "CreatePersistentImg.sh" script to create a backend image
file named **"persistence.img"** with **1 GB** in size, with **EXT4**
filesystem and with label **casper-rw**.

    $ sudo sh CreatePersistentImg.sh

Or,

    $ sudo ./CreatePersistentImg.sh

You can also create a specific size image using **-s** flag like below.
The following command will create image file with **2 GB** in size.

    $ sudo sh CreatePersistentImg.sh -s 2048

Or,

    $ sudo ./CreatePersistentImg.sh -s 2048

Here, **-s 2048** indicates the size of the image file in **MB**. You
can increase or decrease the size as you wish. You can also choose
different filesystem, for example **xfs**, like below:

    $ sudo sh CreatePersistentImg.sh -s 2048 -t xfs

Like I already said, the above commands will create an image called
"persistence.img" with label casper-rw. Different distributions use
different Labels by default, for example Ubuntu use casper-rw and MX
Linux use MX-Persist.

You can use **-l** flag to set the label:

    $ sudo sh CreatePersistentImg.sh -l MX-Persist

For the purpose of this guide, I am going to create an image file of
size 4 GB in EXT4 filesystem, with label casper-rw using command:

    $ sudo ./CreatePersistentImg.sh -s 4096

**Sample output:**

    4096+0 records in
    4096+0 records out
    4294967296 bytes (4.3 GB, 4.0 GiB) copied, 55.1246 s, 77.9 MB/s
    mke2fs 1.45.5 (07-Jan-2020)
    Creating filesystem with 1048576 4k blocks and 262144 inodes
    Filesystem UUID: bdd96096-eab5-4806-a206-909d94e96b1e
    Superblock backups stored on blocks: 
        32768, 98304, 163840, 229376, 294912, 819200, 884736

    Allocating group tables: done                            
    Writing inode tables: done                            
    Creating journal (16384 blocks): done
    Writing superblocks and filesystem accounting information: done

[<img src="data:image/svg+xml,%3Csvg%20xmlns=&#39;http://www.w3.org/2000/svg&#39;%20viewBox=&#39;0%200%20799%20363&#39;%3E%3C/svg%3E" alt="Create Persistent Bootable USB Using Ventoy In Linux" class="aligncenter size-full wp-image-23919" width="799" height="363" /><img src="https://ostechnix.com/wp-content/uploads/2020/06/Create-Persistent-Bootable-USB-Using-Ventoy-In-Linux.png" alt="Create Persistent Bootable USB Using Ventoy In Linux" class="aligncenter size-full wp-image-23919" sizes="(max-width: 799px) 100vw, 799px" srcset="https://ostechnix.com/wp-content/uploads/2020/06/Create-Persistent-Bootable-USB-Using-Ventoy-In-Linux.png 799w, https://ostechnix.com/wp-content/uploads/2020/06/Create-Persistent-Bootable-USB-Using-Ventoy-In-Linux-300x136.png 300w, https://ostechnix.com/wp-content/uploads/2020/06/Create-Persistent-Bootable-USB-Using-Ventoy-In-Linux-768x349.png 768w, https://ostechnix.com/wp-content/uploads/2020/06/Create-Persistent-Bootable-USB-Using-Ventoy-In-Linux-720x327.png 720w, https://ostechnix.com/wp-content/uploads/2020/06/Create-Persistent-Bootable-USB-Using-Ventoy-In-Linux-520x236.png 520w, https://ostechnix.com/wp-content/uploads/2020/06/Create-Persistent-Bootable-USB-Using-Ventoy-In-Linux-320x145.png 320w" width="799" height="363" />](https://ostechnix.com/wp-content/uploads/2020/06/Create-Persistent-Bootable-USB-Using-Ventoy-In-Linux.png)

This command will create a file named "persistence.img" inside ventoy
folder.

Verify if the image file is created or not using "ls" command:

    $ ls -lh

**Sample output:**

    total 4.1G
    drwxr-xr-x 2 sk   sk   4.0K May 30 16:51 boot
    -rwxr--r-- 1 sk   sk   1.5K May 30 16:51 CreatePersistentImg.sh
    -rw-r--r-- 1 root root  518 Jun  8 15:33 log.txt
    -rw-r--r-- 1 root root 4.0G Jun  8 17:12 persistence.img
    drwxrwxrwx 2 sk   sk   4.0K Jun  8 15:28 tool
    drwxr-xr-x 2 sk   sk   4.0K May 30 16:51 ventoy
    -rwxr--r-- 1 sk   sk   1.2K May 30 16:51 Ventoy2Disk.sh

Now copy the newly created persistence.img file to your Ventoy bootable
USB drive.

Next create a folder called **"ventoy"** in your bootable USB drive. And
then create **"ventoy.json"** file inside the ventoy folder.

Open ventoy.json file in any text editor and add the menu entries for
your ISOs in the ventoy.json file.

I am going to configure persistence USB bootable support for Ubuntu
20.04 ISO, so I have added the following lines:

    {
        "persistence" : [
            {
                "image": "/ubuntu-20.04-desktop-amd64.iso",
                "backend": "/persistence.img"
            }
        ]
    }

[<img src="data:image/svg+xml,%3Csvg%20xmlns=&#39;http://www.w3.org/2000/svg&#39;%20viewBox=&#39;0%200%20744%20467&#39;%3E%3C/svg%3E" alt="Configure persistence USB bootable support for Ubuntu with ventoy" class="aligncenter size-full wp-image-23924" width="744" height="467" /><img src="https://ostechnix.com/wp-content/uploads/2020/06/Configure-persistence-USB-bootable-support-for-Ubuntu-with-ventoy.png" alt="Configure persistence USB bootable support for Ubuntu with ventoy" class="aligncenter size-full wp-image-23924" sizes="(max-width: 744px) 100vw, 744px" srcset="https://ostechnix.com/wp-content/uploads/2020/06/Configure-persistence-USB-bootable-support-for-Ubuntu-with-ventoy.png 744w, https://ostechnix.com/wp-content/uploads/2020/06/Configure-persistence-USB-bootable-support-for-Ubuntu-with-ventoy-300x188.png 300w, https://ostechnix.com/wp-content/uploads/2020/06/Configure-persistence-USB-bootable-support-for-Ubuntu-with-ventoy-720x452.png 720w, https://ostechnix.com/wp-content/uploads/2020/06/Configure-persistence-USB-bootable-support-for-Ubuntu-with-ventoy-520x326.png 520w, https://ostechnix.com/wp-content/uploads/2020/06/Configure-persistence-USB-bootable-support-for-Ubuntu-with-ventoy-320x201.png 320w" width="744" height="467" />](https://ostechnix.com/wp-content/uploads/2020/06/Configure-persistence-USB-bootable-support-for-Ubuntu-with-ventoy.png)

Make sure the ISO and persistence.img files are stored in the <span
style="color: #ff0000;">**root of the USB drive**</span>. Also make sure
the <span style="color: #ff0000;">**filenames and syntax are
correct**</span>. And more importantly, the ISO <span
style="color: #ff0000;">**filenames should not contain any spaces or
special characters**</span>. If you missed a comma or a curly bracket or
double quotes, the persistence support will not work.

After adding the above lines, save and close the file.

Now boot your system with the newly created USB bootable drive.

Choose Ubuntu 20.04 ISO for which you have added persistence support
from the boot menu:

[<img src="data:image/svg+xml,%3Csvg%20xmlns=&#39;http://www.w3.org/2000/svg&#39;%20viewBox=&#39;0%200%201013%20602&#39;%3E%3C/svg%3E" alt="Ventoy boot menu" class="aligncenter size-full wp-image-23921" width="1013" height="602" /><img src="https://ostechnix.com/wp-content/uploads/2020/06/Ventoy-boot-menu.png" alt="Ventoy boot menu" class="aligncenter size-full wp-image-23921" sizes="(max-width: 1013px) 100vw, 1013px" srcset="https://ostechnix.com/wp-content/uploads/2020/06/Ventoy-boot-menu.png 1013w, https://ostechnix.com/wp-content/uploads/2020/06/Ventoy-boot-menu-300x178.png 300w, https://ostechnix.com/wp-content/uploads/2020/06/Ventoy-boot-menu-768x456.png 768w, https://ostechnix.com/wp-content/uploads/2020/06/Ventoy-boot-menu-720x428.png 720w, https://ostechnix.com/wp-content/uploads/2020/06/Ventoy-boot-menu-520x309.png 520w, https://ostechnix.com/wp-content/uploads/2020/06/Ventoy-boot-menu-320x190.png 320w" width="1013" height="602" />](https://ostechnix.com/wp-content/uploads/2020/06/Ventoy-boot-menu.png)

You will then see another menu that you lets you to boot with or without
persistence as shown in the following screenshot:

[<img src="data:image/svg+xml,%3Csvg%20xmlns=&#39;http://www.w3.org/2000/svg&#39;%20viewBox=&#39;0%200%20998%20591&#39;%3E%3C/svg%3E" alt="Create Persistent Bootable USB Using Ventoy" class="aligncenter size-full wp-image-23920" width="998" height="591" /><img src="https://ostechnix.com/wp-content/uploads/2020/06/Create-Persistent-Bootable-USB-Using-Ventoy.png" alt="Create Persistent Bootable USB Using Ventoy" class="aligncenter size-full wp-image-23920" sizes="(max-width: 998px) 100vw, 998px" srcset="https://ostechnix.com/wp-content/uploads/2020/06/Create-Persistent-Bootable-USB-Using-Ventoy.png 998w, https://ostechnix.com/wp-content/uploads/2020/06/Create-Persistent-Bootable-USB-Using-Ventoy-300x178.png 300w, https://ostechnix.com/wp-content/uploads/2020/06/Create-Persistent-Bootable-USB-Using-Ventoy-768x455.png 768w, https://ostechnix.com/wp-content/uploads/2020/06/Create-Persistent-Bootable-USB-Using-Ventoy-720x426.png 720w, https://ostechnix.com/wp-content/uploads/2020/06/Create-Persistent-Bootable-USB-Using-Ventoy-520x308.png 520w, https://ostechnix.com/wp-content/uploads/2020/06/Create-Persistent-Bootable-USB-Using-Ventoy-320x189.png 320w" width="998" height="591" />](https://ostechnix.com/wp-content/uploads/2020/06/Create-Persistent-Bootable-USB-Using-Ventoy.png)

------------------------------------------------------------------------

------------------------------------------------------------------------

### Create multiboot persistent USB with Ventoy

In the above example, I have created only one persistence bootable USB
with Ubuntu 20.04 LTS. Ventoy allows you to create multiboot persistent
USB as well.

To enable persistent support for multiple ISOs, we need to change the
ventoy.json file to match with the exact path of ISO file and
persistence.img.

For example, I am going to configure persistence support for Ubuntu
18.04 and Ubuntu 20.04. So, I added the following lines in my
ventoy.json file:

    {
        "persistence" : [
            {
                "image": "/ubuntu-20.04-desktop-amd64.iso",
                "backend": "/persistence.img"
            },
            {
                "image": "/ubuntu-18.04.3-desktop-amd64.iso",
                "backend": "/persistence.img"
            }
        ]
    }

[<img src="data:image/svg+xml,%3Csvg%20xmlns=&#39;http://www.w3.org/2000/svg&#39;%20viewBox=&#39;0%200%20744%20467&#39;%3E%3C/svg%3E" alt="Configure multiboot persistent USB with Ventoy" class="aligncenter size-full wp-image-23934" width="744" height="467" /><img src="https://ostechnix.com/wp-content/uploads/2020/06/Configure-multiboot-persistent-USB-with-Ventoy.png" alt="Configure multiboot persistent USB with Ventoy" class="aligncenter size-full wp-image-23934" sizes="(max-width: 744px) 100vw, 744px" srcset="https://ostechnix.com/wp-content/uploads/2020/06/Configure-multiboot-persistent-USB-with-Ventoy.png 744w, https://ostechnix.com/wp-content/uploads/2020/06/Configure-multiboot-persistent-USB-with-Ventoy-300x188.png 300w, https://ostechnix.com/wp-content/uploads/2020/06/Configure-multiboot-persistent-USB-with-Ventoy-720x452.png 720w, https://ostechnix.com/wp-content/uploads/2020/06/Configure-multiboot-persistent-USB-with-Ventoy-520x326.png 520w, https://ostechnix.com/wp-content/uploads/2020/06/Configure-multiboot-persistent-USB-with-Ventoy-320x201.png 320w" width="744" height="467" />](https://ostechnix.com/wp-content/uploads/2020/06/Configure-multiboot-persistent-USB-with-Ventoy.png)

You can use the same backend image (persistence.img) between multiple
ISOs as long as it can be supported by the distros. Again, please make
sure you have specified the exact path and filename. If there are any
missing brackets, commas, colon, the persistence support will not work.

Save and close the file.

Now we have enabled persistence boot for both Ubuntu 18.04 and Ubuntu
20.04 ISOs. Boot your system with Ventoy and select the OS you want to
load:

[<img src="data:image/svg+xml,%3Csvg%20xmlns=&#39;http://www.w3.org/2000/svg&#39;%20viewBox=&#39;0%200%201016%20601&#39;%3E%3C/svg%3E" alt="Ventoy multiboot menu" class="aligncenter size-full wp-image-23935" width="1016" height="601" /><img src="https://ostechnix.com/wp-content/uploads/2020/06/Ventoy-multiboot-menu.png" alt="Ventoy multiboot menu" class="aligncenter size-full wp-image-23935" sizes="(max-width: 1016px) 100vw, 1016px" srcset="https://ostechnix.com/wp-content/uploads/2020/06/Ventoy-multiboot-menu.png 1016w, https://ostechnix.com/wp-content/uploads/2020/06/Ventoy-multiboot-menu-300x177.png 300w, https://ostechnix.com/wp-content/uploads/2020/06/Ventoy-multiboot-menu-768x454.png 768w, https://ostechnix.com/wp-content/uploads/2020/06/Ventoy-multiboot-menu-720x426.png 720w, https://ostechnix.com/wp-content/uploads/2020/06/Ventoy-multiboot-menu-520x308.png 520w, https://ostechnix.com/wp-content/uploads/2020/06/Ventoy-multiboot-menu-320x189.png 320w" width="1016" height="601" />](https://ostechnix.com/wp-content/uploads/2020/06/Ventoy-multiboot-menu.png)

And finally boot into the OS with persistence support:

[<img src="data:image/svg+xml,%3Csvg%20xmlns=&#39;http://www.w3.org/2000/svg&#39;%20viewBox=&#39;0%200%201007%20600&#39;%3E%3C/svg%3E" alt="Create multiboot persistent USB with Ventoy" class="aligncenter size-full wp-image-23936" width="1007" height="600" /><img src="https://ostechnix.com/wp-content/uploads/2020/06/Create-multiboot-persistent-USB-with-Ventoy.png" alt="Create multiboot persistent USB with Ventoy" class="aligncenter size-full wp-image-23936" sizes="(max-width: 1007px) 100vw, 1007px" srcset="https://ostechnix.com/wp-content/uploads/2020/06/Create-multiboot-persistent-USB-with-Ventoy.png 1007w, https://ostechnix.com/wp-content/uploads/2020/06/Create-multiboot-persistent-USB-with-Ventoy-300x179.png 300w, https://ostechnix.com/wp-content/uploads/2020/06/Create-multiboot-persistent-USB-with-Ventoy-768x458.png 768w, https://ostechnix.com/wp-content/uploads/2020/06/Create-multiboot-persistent-USB-with-Ventoy-720x429.png 720w, https://ostechnix.com/wp-content/uploads/2020/06/Create-multiboot-persistent-USB-with-Ventoy-520x310.png 520w, https://ostechnix.com/wp-content/uploads/2020/06/Create-multiboot-persistent-USB-with-Ventoy-320x191.png 320w" width="1007" height="600" />](https://ostechnix.com/wp-content/uploads/2020/06/Create-multiboot-persistent-USB-with-Ventoy.png)

#### Save files in custom location

In our above examples, we have stored the ISOs and persistence.img files
in the root of the USB drive. If you have stored the files in a separate
directories for the sake of easy navigation, you must mention the exact
path in the ventoy.json file.

For instance, I am going to save the ISOs in a directory named **"ISO"**
and persistence.img files in a directory named **"persistence"**. Here
is my Ventoy file contents:

    {
        "persistence" : [
            {
                "image": "/ISO/ubuntu-20.04-desktop-amd64.iso",
                "backend": "/persistence/persistence.img"
            },
            {
                "image": "/ISO/ubuntu-18.04.3-desktop-amd64.iso",
                "backend": "/persistence/persistence.img"
            }
        ]
    }

For more details, refer Ventoy help:

    $ sh CreatePersistentImg.sh --help

Hope this helps.

**Resource:**

-   [**Ventoy
    documentation**](https://www.ventoy.net/en/plugin_persistence.html)

**Thanks for stopping by!**

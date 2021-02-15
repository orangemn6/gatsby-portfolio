---
title: Dual Boot Linux Mint and Windows 10
categories: ['Linux']
image: '../blog-1/e4d5ed47ee58aa859995cae2a4e83221.webp'
imageCredit: https://dribbble.com/shots/13972666-faces
date: "2020-09-29T19:00:00"
time: 3
description: "Run both at once!"
---

# Dual Boot Linux Mint 20 and Windows 10 

With recent rapid increases in information technology, every user wants to customize their operating system environment according to their needs. Today, we will talk about the most popular Linux Mint 20 distribution, known as Ulyana. Linux Mint is an open-source, flexible, community-based Linux operating system in which you can customize operating environments and applications on-demand. As compared to Windows, Linux Mint is a much more secure platform. Sometimes, developers who work on Windows may also require the Linux platform to perform their daily development tasks. For this purpose, it is easy to install the Linux Mint 20 along with Microsoft Windows OS. 

This article shows you how to install Linux Mint 20 along with Microsoft Windows 10. In this tutorial, we assumed that Windows 10 is already installed on your system. We will use the existing system to dual boot the Linux Mint 20 distro and the Windows 10 OS. Certain modern systems have UEFI in place of BIOS, and in this case, you would change the EFI configuration settings and disable the secure boot part.

### Prerequisites

The following prerequisites are necessary to install Linux Mint 20 with Windows 10 on your system:

* Your system should be connected to a power supply.
* Your system must have a good internet connection to download the supporting software and updates.
* The free space on your disk should be at least 15GB to install Linux Mint 20, which is larger than the space taken by this OS because more space will be needed for upcoming system updates.
* Linux Mint 20 ISO version burned to a USB drive.
* A Windows 10 bootable live USB (for preventive measures).

Note: Windows 10 must be installed before the installation of Linux Mint 20 can begin.

Once these prerequisites are fulfilled, you can now begin installing Linux Mint 20 with Windows 10. Follow the steps below to install Linux Mint 20 alongside Windows 10.

### Create A Backup of Your System

First, you must create a backup of your USB data and Windows 10 so that no data is lost in the process. Adding a new system can mess with the new environment. For your convenience, it is recommended that you save your data on an external hard drive. It is recommended to create a Windows 10 backup so that, in case of any trouble, you can run the default backup of your Windows 10 and your data will be safe from harm.

### Download the ISO File of Linux Mint 20

Next, download the Linux Mint 20 ISO file. To do so, open the browser and type the URL . Download the ISO file from the given URL.

![][1]

After successfully completing the download process, now, you will create a bootable USB to install Linux Mint 20.

### Make a Bootable USB Drive

To make a bootable USB drive, we will use a tool known as "RUFUS." This section shows you how to download Rufus and how to create a bootable USB drive with this tool. First, you will need to format the USB drive. Make sure that your USB is in FAT32 format. If it is not, then first, you will convert the USB into FAT32 and apply the format option on it.

Perform the following steps to format your USB into FAT32 format.

1. Plug the USB drive into your system.
2. Now, right-click on the USB and select the format option.
3. A dialogue box will appear on the window. Check that the USB is in FAT32 and select the checkbox true for quick formatting, then click the 'START' button.

Now, your USB drive is in FAT32 format.

We will use Rufus to make a bootable USB drive. Perform the following steps to download and install Rufus:

1\. Download the Rufus setup from the official website, given below: 

![][2]

2\. Save the downloaded setup file of Rufus. Run and install Rufus by clicking on it.

3\. After successfully executing the setup file, click the 'SELECT' button and a browse file dialogue box will display on the screen.

4\. Choose the Linux Mint 20 ISO image file in it and click the 'START' button.

![][3]

5\. The process to create the bootable USB drive will now begin. The status will become green on completion of this process.

![][4]

The bootable USB has been created successfully. You will likely have to clear some free space in the system to install Linux Mint 20. A disk management Windows utility can be used to shrink the disk space to make room to install the Linux Mint 20 distro.

### Create Partitions for Linux Mint 20 Installation

We will use the Windows disk management tool to create space for the Linux Mint 20 system. Perform the following steps to create drive space using the disk management tool:

1\. Right-click the Windows Start button. Here, type the diskmgmt.msc command to open the disk partitioning window.

![][5]

2\. The disk partitioning window will appear on your system screen.

![][6]

3\. Select the 'C' drive of your system and right-click on it. A dropdown list will display, from which you will select the 'Shrink Volume' option.

![][7]

4\. After selecting this option, a dialog box will display on-screen, into which you will enter the size in MBs, according to your needs. Then, click the 'Shrink' button to perform the shrink operation.

![][8]

5\. Note that an unallocated space partition has been created after performing this action. This partition is where you will install Linux Mint 20.

![C:UsersDELLDesktop1.PNG][9]

As you can see, an unallocated partition has been created. It is now time to move on to installing the Linux Mint 20 distro on your system.

### Execute and Install Linux Mint 20

In this step, you will install Linux Mint 20 on your system. Perform the following steps to run Linux Mint on your system:

1\. Plug in the bootable USB with the appropriate drive and reboot your system. Usually, the F10, F12, and F2 keys are used for the reboot. Hit the 'F12' bootable key to boot the Linux Mint 20 ISO image file.

2\. The boot-up menu will now display on your system screen. Select the boot from the USB drive and continue the process.

3\. After completing the booting process, select 'Start Linux Mint' and press **Enter**.

![][10]

4\. Select the 'Install Linux Mint 20' option.

![][11]

5\. The Linux Mint installation wizard will display. In the first screen of the wizard, select the language for the Linux Mint 20 installation and click 'Continue.'

![][12]

6\. In the next window, select a keyboard layout for your Linux Mint 20 distro and press the 'Continue' option.

![][13]

7\. In the window that follows, install the multimedia codecs and click the 'Continue' button.

![][14]

8\. In the next window, if you select the first option, then you will simply install Linux Mint alongside Windows 10 on your system. But, if you want to do a manual partition, then choose the 'Something Else' option. Select the 'Continue' option to proceed further.

![][15]

9\. On the next screen, select the 'Free space' hard drive option and create the Linux Mint 20 partition by hitting the '+' button.

![][16]

We are creating the following partitions:

* Root partition  –  /   – 10340 MB

![][17]

* Boot partition –    /boot   –  2011 MB

![][18]

* Swap filesystem  – 4000 MB

![][19]

10\. On the 'Create partition' pop-up, specify the size of the partition and also the mount point (/). Then, click 'OK.' The complete partition table should display on the window.

11\. Next, click the 'Install Now' button.

![][20]

12\. In the next window, select your location from the map and press the 'Continue' button to continue the installation.

![][21]

13\. In the next window, enter your name, your system name, the nick-name, and the password, hitting the 'Continue' option to move on.

![][22]

Now, the installation is in progress. A progress bar will display on a new screen. You cannot interfere in the installation process at this stage.

![][23]

14\. After successfully completing the installation process, eject the USB from your system and press the 'Restart Now' button to reboot the system.

![][24]

After restarting the system, the following window will display on the start screen.

![][25]

15\. Congratulations! Select the 'Linux Mint 20 Cinnamon' option and you can start working on this system immediately.

### Conclusion

This article taught you how to create a bootable USB drive with the Rufus tool. You also explored how to dual boot Linux Mint 20 and Windows 10 operating systems. I hope this tutorial will help you use these two systems. By using Linux Mint 20, you can explore more features of this operating environment. 

[1]: https://linuxhint.com/wp-content/uploads/2020/09/word-image-1196.png
[2]: https://linuxhint.com/wp-content/uploads/2020/09/word-image-1197.png
[3]: https://linuxhint.com/wp-content/uploads/2020/09/word-image-1198.png
[4]: https://linuxhint.com/wp-content/uploads/2020/09/word-image-1199.png
[5]: https://linuxhint.com/wp-content/uploads/2020/09/word-image-1200.png
[6]: https://linuxhint.com/wp-content/uploads/2020/09/word-image-1201.png
[7]: https://linuxhint.com/wp-content/uploads/2020/09/word-image-1202.png
[8]: https://linuxhint.com/wp-content/uploads/2020/09/word-image-1203.png
[9]: https://linuxhint.com/wp-content/uploads/2020/09/c-users-dell-desktop-1-png.png
[10]: https://linuxhint.com/wp-content/uploads/2020/09/word-image-1204.png
[11]: https://linuxhint.com/wp-content/uploads/2020/09/word-image-1205.png
[12]: https://linuxhint.com/wp-content/uploads/2020/09/word-image-1206.png
[13]: https://linuxhint.com/wp-content/uploads/2020/09/word-image-1207.png
[14]: https://linuxhint.com/wp-content/uploads/2020/09/word-image-1210.png
[15]: https://linuxhint.com/wp-content/uploads/2020/09/word-image-1212.png
[16]: https://linuxhint.com/wp-content/uploads/2020/09/word-image-1215.png
[17]: https://linuxhint.com/wp-content/uploads/2020/09/word-image-1217.png
[18]: https://linuxhint.com/wp-content/uploads/2020/09/word-image-1218.png
[19]: https://linuxhint.com/wp-content/uploads/2020/09/word-image-1219.png
[20]: https://linuxhint.com/wp-content/uploads/2020/09/word-image-1220.png
[21]: https://linuxhint.com/wp-content/uploads/2020/09/word-image-1221.png
[22]: https://linuxhint.com/wp-content/uploads/2020/09/word-image-1222.png
[23]: https://linuxhint.com/wp-content/uploads/2020/09/word-image-1223.png
[24]: https://linuxhint.com/wp-content/uploads/2020/09/word-image-1224.png
[25]: https://linuxhint.com/wp-content/uploads/2020/09/word-image-1225.png

  

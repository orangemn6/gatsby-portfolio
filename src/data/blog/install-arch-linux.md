---
title: Install Arch Linux
categories: ['Linux']
image: '../blog-1/e4d5ed47ee58aa859995cae2a4e83221.webp'
imageCredit: https://dribbble.com/shots/13972666-faces
date: "2021-01-04T12:17:55-05:00"
time: 3
description: "WARNING EXPERTS ONLY"
---

_**Brief: This tutorial shows you how to install Arch Linux in easy to follow steps.**_

[Arch Linux](https://www.archlinux.org/) is a general-purpose rolling release Linux distribution which is very popular among the [DIY](https://en.wikipedia.org/wiki/Do_it_yourself) enthusiasts and hardcore Linux users.

The default installation covers only a minimal base system and expects the end user to configure the system by himself/herself.

This is why installing [Arch Linux is a challenge in itself](https://itsfoss.com/why-arch-linux/) but at the same time, it is a learning opportunity for intermediate Linux users.

I am going to show you how to install Arch Linux. Please follow the steps carefully and read the instructions properly.

## How to install Arch Linux

The installation steps can differ at some points depending upon [whether you have a UEFI or legacy BIOS system](https://itsfoss.com/check-uefi-or-bios/). Most new system come with UEFI these days.

I have written it here with focus on the UEFI system but I'll also mention the steps that are different for the legacy BIOS systems.

Warning!

The method discussed here **wipes out existing operating system**(s) from your computer and install Arch Linux on it. So if you are going to follow this tutorial, make sure that you have backed up your files or else you'll lose all of it. You have been warned.

But before you see how to install Arch Linux from a USB, please make sure that you have the following requirements:

## Requirements for installing Arch Linux:

– A x86_64 (i.e. 64 bit) compatible machine
– Minimum 512 MB of RAM (recommended 2 GB)
– At least 2 GB of free disk space (recommended 20 GB for basic usage with a desktop environment)
– An active internet connection
– A USB drive with minimum 2 GB of storage capacity
– Familiarity with Linux command line

Once you have made sure that you have all the requirements, let's proceed to install Arch Linux.

### Step 1: Download the Arch Linux ISO

You can download the ISO from the official website. Both direct download and torrent links are available.

[Download Arch Linux](https://www.archlinux.org/download/)

### Step 2: Create a live USB of Arch Linux

You will have to create a live USB of Arch Linux from the ISO you just downloaded.

You may use [Etcher](https://www.balena.io/etcher/) GUI tool to create the live USB. It is available for both Windows and Linux.

![](https://i1.wp.com/itsfoss.com/wp-content/uploads/2020/01/arch_linux_live_usb.jpg?resize=800%2C532&ssl=1)

Using Etcher to create Arch Linux live USB

Alternatively, if you are on Linux, you can use the [dd command](https://linuxhandbook.com/dd-command/) to create a live USB. Replace _/path/to/archlinux.iso_ with the path where you have downloaded the ISO file, and _/dev/sdx_ with your USB drive in the example below. You can get your drive information using [_lsblk_ ;](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/deployment_guide/s1-sysinfo-filesystems) command.

```
dd bs=4M if=/path/to/archlinux.iso of=/dev/sdx status=progress && sync
```

### Step 3: Boot from the live USB

**_Do note that in some cases, you may not be able to boot from live USB with secure boot enabled. If that's the case with you, disable the secure boot first._**

Once you have created a live USB for Arch Linux, shut down your PC. Plugin your USB and boot your system. While booting keep pressing F2, F10 or F12 key (depending upon your system) to go into boot settings.

In here, select to boot from USB or removable disk. Once you do that and the system boots, you should see an option like this:


Select Boot Arch Linux (x86_64). After various checks, Arch Linux will boot to login prompt with root user.

#### Not using US keyboard? Read this

The default keyboard layout in the live session is US. While most English language keyboards will work just fine, the same cannot be true for French, German and other keyboards.

If you face difficulty, you can list out all the supported keyboard layout:

```
ls /usr/share/kbd/keymaps/**/*.map.gz
```

And then change the layout to the an appropriate one using **_loadkeys command_**. For example, if you want German keyboard, this is what you'll use:

```
loadkeys de-latin1
```

Next steps include partitioning disk, creating the filesystem and mounting it.

**_Again, read all the instructions properly and follow each steps carefully. You miss one step or ignore something and you'll have a difficult time installing Arch._**

### Step 4: Partition the disks

For partitioning the disks, we'll [use command line based partition manager](https://itsfoss.com/partition-managers-linux/) fdisk.

Use this command to list all the disk and partitions on your system:

```
fdisk -l
```

**Your hard disk should be labelled /dev/sda or /dev/nvme0n1. Please use the appropriate disk labeling for your system. I am using /dev/sda because that's more common.**

First, select the disk you are going to format and partition:

```
fdisk /dev/sda
```

I suggest that you delete any existing partitions on the disk using command **d**. Once you have the entire disk space free, it's time to create new partitions with command **n**.

#### Check if you have UEFI mode enabled

Some steps are different for UEFI and non-UEFI systems.You should verify if you have UEFI enabled system or not. Use this command:

```
ls /sys/firmware/efi/efivars
```

If this directory exists, you have a UEFI enabled system. You should follow the steps for UEFI system. The steps that differ are clearly mentioned.

#### Create an ESP partition (For UEFI systems only)

**If you have a UEFI system**, you **must** create an EFI partition at the beginning of your disk. Otherwise, skip this step.

When you enter n, it will ask you to choose a disk number, enter 1. Stay with the default block size, when it asks for the partition size, enter +512M.

![](https://i2.wp.com/itsfoss.com/wp-content/uploads/2020/01/efi_system_partition-1.png?resize=709%2C140&ssl=1)

Creating EFI System Partition | Image Credit
[Sacha](https://medium.com/@sacharin0/installing-a-bootloader-in-arch-f57e6fd5a9e7)

One important steps is to change the type of the EFI partition to EFI System (instead of Linux system).

Enter **t** to change type. Enter L to see all the partition types available and then enter its corresponding number to the EFI system.

![](https://i2.wp.com/itsfoss.com/wp-content/uploads/2020/01/efi_system_partition.png?resize=501%2C75&ssl=1)

Change type of EFI System Partition | Image Credit
[Sacha](https://medium.com/@sacharin0/installing-a-bootloader-in-arch-f57e6fd5a9e7)

#### Create root partition

You need to create root partition _**for both UEFI and legacy systems**_.

The common partitioning practice was/is to create root, swap and home partitions separately. You may just create a single root partition and [create a swapfile](https://itsfoss.com/create-swap-file-linux/) and home under the root directory itself.

So, in this approach, we'll have a single root partition, no swap, no home.

While you are in the fdisk command, press n to create a new partition. It will automatically give it partition number 2. This time keep on pressing enter to allocate entire remaining disk space to the root partition.

![](https://i0.wp.com/itsfoss.com/wp-content/uploads/2017/11/4-root-partition.png?resize=789%2C431&ssl=1)

Picture for representational purpose only

When you are done with the disk partitioning, enter **w** command to write the changes to the disk and exit out of fdisk command.

### Step 4: Create filesystem

Now that you have your disk partitions ready, it's time to create filesystem on it. Follow the steps for your system

#### Creating filesystem for UEFI system

So, you have two disk partitions and the first one is EFI type. Create a [FAT32 file system](https://en.wikipedia.org/wiki/File_Allocation_Table) on it using the [mkfs command](https://linuxhandbook.com/mkfs-command/):

```
mkfs.fat -F32 /dev/sda1
```

Now create an Ext4 filesystem on the root partition:

```
mkfs.ext4 /dev/sda2
```

#### Creating filesystem for non-UEFI system

For non-UEFI system, you only have one single root partition. So just make it ext4:

```
mkfs.ext4 /dev/sda1
```

### Step 5: Connect to WiFi

You can connect to WiFi interactively using this helpful utility called wifi-menu. Just enter this command and follow the steps:

```
wifi-menu
```

You should be able to see the active connections and connect to them using the password. Once you are connected, check if you could use internet by using the ping command:

```
ping google.com
```

If you get bytes in reply, you are connected. Use Ctrl+C to stop the ping reply.

### Step 6: Select an appropriate mirror

This is a big problem with installing Arch Linux. If you just go on installing it, you might find that the downloads are way too slow. In some cases, it's so slow that the download fails.

It's because the mirrorlist (located in /etc/pacman.d/mirrorlist) has a huge number of mirrors but not in a good order. The top mirror is chosen automatically and it may not always be a good choice.

Thankfully, there is a fix for that. First sync the pacman repository so that you can download and install software:

```
pacman -Syy
```

Now, install reflector too that you can use to list the fresh and fast mirrors located in your country:

```
pacman -S reflector
```

Make a backup of mirror list (just in case):

```
cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
```

Now, get the good mirror list with reflector and save it to mirrorlist. You can change the country from US to your own country.

```
reflector -c "US" -f 12 -l 10 -n 12 --save /etc/pacman.d/mirrorlist
```

All good to go now.

### Step 7: Install Arch Linux

Since you have all the things ready, it's time to finally install the Arch Linux. You'll be installing it on the root directory so mount it first.

**Do you remember the name of the root partition**? Use it to mount it:

```
mount /dev/sda2 /mnt
```

With root mounted, it's time to use the wonderful [pacstrap script](https://git.archlinux.org/arch-install-scripts.git/tree/pacstrap.in) to install all the necessary packages:

```
pacstrap /mnt base linux linux-firmware vim nano
```

It will take some time to download and install these packages. If the downloads get interrupted, no need to panic. You can run the above command once again and it resumed the download.

I have added Vim and Nano text editor to the list because you'll need to edit some files post installation.

### Step 8: Configure the installed Arch system

Generate a [fstab file](https://en.wikipedia.org/wiki/Fstab) to define how disk partitions, block devices or remote file systems are mounted into the filesystem.

```
genfstab -U /mnt >> /mnt/etc/fstab
```

Now use [arch-chroot](https://wiki.archlinux.org/index.php/Chroot#Using_arch-chroot) and enter the mounted disk as root. Actually, now you are using the just installed Arch Linux system on the disk. You'll have to do some configuration changes to the installed system so that you could run it properly when you boot from the disk.

```
arch-chroot /mnt
```

#### Setting Timezone

To [set up timezone on Linux](https://itsfoss.com/change-timezone-ubuntu/), you can use timedatectl command. First find your time zone:

```
timedatectl list-timezones
```

And then set it up like this (replace Europe/Paris with your desired time zone):

```
timedatectl set-timezone Europe/Paris
```

#### Setting up Locale

This is what sets the language, numbering, date and currency formats for your system.

The file _**/etc/locale.gen**_ contains all the local settings and system language in a commented format.

Open the file using Vim or Nano editor and uncomment (remove the # from the start of the line) the language you prefer. I have used **en_GB.UTF-8** (English with Great Britain).

Now generate the locale config in /etc directory file using the below commands one by one:

```
locale-gen
echo LANG=en_GB.UTF-8 > /etc/locale.conf
export LANG=en_GB.UTF-8
```

Both locale and timezone settings can be changed later on as well when you are using your Arch Linux system.

#### Network configuration

Create a _**/etc/hostname**_ file and add the hostname entry to this file. [Hostname](https://itsfoss.com/change-hostname-ubuntu/) is basically the name of your computer on the network.

In my case, I'll set the hostname as **_myarch_**. You can choose whatever you want:

```
echo myarch > /etc/hostname
```

The next part is to create the hosts file:

```
touch /etc/hosts
```

And edit this /etc/hosts file with Vim or Nano editor to add the following lines to it (replace myarch with hostname you chose earlier):

```
127.0.0.1	localhost
::1		localhost
127.0.1.1	myarch
```

#### Set up root passwd

You should also set the password for the root account using the passwd command:

```
passwd
```

### Step 9: Install Grub bootloader

This is one of the crucial steps and it differs for UEFI and non-UEFI systems. Let me show it for the UEFI systems first.

Make sure that you are still using arch-chroot. Install required packages:

```
pacman -S grub efibootmgr
```

Create the directory where EFI partition will be mounted:

```
mkdir /boot/efi
```

Now, mount the ESP partition you had created

```
mount /dev/sda1 /boot/efi
```

Install grub like this:

```
grub-install --target=x86_64-efi --bootloader-id=GRUB --efi-directory=/boot/efi
```

One last step:

```
grub-mkconfig -o /boot/grub/grub.cfg
```

#### Install grub on Non-UEFI systems

Install grub package first:

```
pacman -S grub
```

And then install grub like this (don't put the disk number sda1, just the disk name sda):

```
grub-install /dev/sda
```

Last step:

```
grub-mkconfig -o /boot/grub/grub.cfg
```

### Step 10: Install a desktop environment (GNOME in this case)

First step is to install X environment. Type the below command to install the [Xorg as display server](https://itsfoss.com/display-server/).

```
pacman -S xorg
```

Now, you can install GNOME desktop environment on Arch Linux using:

```
pacman -S gnome
```

The last step includes enabling the display manager GDM for Arch. I also suggest enabling Network Manager

```
systemctl start gdm.service
systemctl enable gdm.service
systemctl enable NetworkManager.service
```

Now exit from chroot using the exit command:

```
exit
```

And then shutdown your system

```
shutdown now
```

Don't forget to take out the live USB before powering on the system again. If everything goes well, you should see the Grub screen and then the GNOME login screen.

If you want KDE desktop, please follow this [tutorial about installing KDE on Arch Linux](https://itsfoss.com/install-kde-arch-linux/).

### Final Words on Arch Linux installation

A similar approach has been demonstrated in this video (watch in full screen to see the commands) by It's FOSS reader Gonzalo Tormo:

You might have realized by now that installing Arch Linux is not as easy as [installing Ubuntu](https://itsfoss.com/install-ubuntu/). However, with a little patience, you can surely accomplish it and then tell the world that you use Arch Linux.

Arch Linux installation itself provides a great deal of learning. I recommend a few essential [things to do after installing Arch Linux](https://itsfoss.com/things-to-do-after-installing-arch-linux/) where you'll find steps to install various other desktop environments and learn more about the OS. You can keep playing with it and see how powerful Arch is.

Let us know in the comments if you face any difficulty while installing Arch Linux.



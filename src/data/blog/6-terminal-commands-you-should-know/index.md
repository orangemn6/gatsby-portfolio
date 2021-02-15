---
title: "6 Terminal Commands You Should Know"
author: Jacob Goldstein
date: 2020-10-28T10:05:01-04:00
draft: true
comments: true
categories:
 - Shell
 - Linux
tags:
 - Shell
 - Linux
---


# 6 Terminal Commands You Should Know

From switching your private keys to directory listings with hidden files

![](https://cdn-images-1.medium.com/max/7764/1*e1iypsouAGB6jABtPW-JyA.jpeg)

As a developer, there are two key things that are paramount to a productive setup: *speed and efficiency.*

The more time you take to accomplish simple tasks like searching for files or displaying their contents, the more is taken from critical development time. When working on the command-line, things like aliases and custom functions can speed things up and let you get back to developing more quickly.

If every time you need to perform basic tasks you have to make a trip to Stack Overflow or do some Googling that’s time you could have put towards more important things — like writing code!

Below is a list of helpful commands I’ve put together for accomplishing repetitive (sometimes annoying) tasks:

## 1. SSH Agent and Private Keys

    alias addkey='eval $(ssh-agent) && ssh-add'

Have you ever finished working on a feature and tried to push your Git changes up to GitHub or access a remote server via SSH only to get an error or a password prompt? The most likely culprit is that you restarted your computer at some point and lost your SSH agent (along with any added keys).

One easy way to fix this is by restarting your agent and re-adding the SSH keys. You can add this alias to your bash profile — then all you have to do is type: addkey to get back up and running. Feel free to change “addkey” to something more suited to your style.

Keep in mind that the ssh-add command expects your key to be placed in ~/.ssh/id_rsa in order for it to be added automatically. If you’ve renamed your key or have multiple keys you want to add you can specify the name using a path as an argument, like this:

    ssh-add ~/.ssh/my_special_key

You can even add this to your bash profile so it gets executed every time you open a new terminal window! Here’s [a great article](https://medium.com/@adamtowers/how-to-customize-your-terminal-and-bash-profile-from-scratch-9ab079256380) by [Adam Towers](undefined) on customizing your profile.

Now you’ll never forget to add your keys again!

## 2. Network Discovery with Ping6

    ping6 -I en0 ff02::1

You’ve heard of ping, but what about its (*s*cary*) *brother ping6, designed for pinging IPv6 addresses?

You can do the same obvious things like pinging IPv6 addresses and seeing replies, but there are more useful features hidden under the hood — if you know where to look.

When you pass this special address (which is a prefix) to ping6 and specify which interface to send from (replacing en0 with your own) you can see who responds and view their addresses.

This is useful for network discovery and even for gaining access to systems you’ve misplaced the address of. I frequently interact with a lot of equipment that uses IPv6 addresses and I have a hard time remembering them. Being able to send a quick command and “see what's around” on your local network is super useful.

If you struggle with grasping the core concepts of IPv6 (like I do) there is an amazing write-up on both IPv6 and IPv4 [here](https://medium.com/coding-in-simple-english/a-beginners-guide-to-ipv4-and-ipv6-anatomy-fcc9444b0d4d) from [Joe Cardillo](undefined).

## 3. Detailed Directory Listing

    alias ll='ls -lah'

This is a common alias for listing the contents of a directory but with the added speed of showing hidden files, in list form, with added detail, and in a human-readable format. So, instead of simple, unhelpful output — like this:

![Listing a directory with plain ‘ls’](https://cdn-images-1.medium.com/max/2000/1*XpOBWSxotoQo5HfOEIFU_A.png)*Listing a directory with plain ‘ls’*

You get much more detailed output, like this:

![Listing a directory with detailed ‘ls’](https://cdn-images-1.medium.com/max/2000/1*0LacD9qh4hI4dA8SEgdAkw.png)*Listing a directory with detailed ‘ls’*

You’ll immediately know which items are directories, their user/group permissions, how large they are and when they were created/modified. I use this all the time to see when data is being written to files or checking who has access to a particular directory. Neat!

## 4. Current Directory Size

    du -sch ./*

This is a straightforward command that will list the size of each item in your current working directory. This is useful if you are trying to scope out large files or directories for cleanup.

The output looks like this:

    148K ./dir1
    136K ./dir2
    722M ./dir3
     45M ./dir4
    8.0K ./dir5
     43M ./dir6
    4.0K ./dir7
    121M ./dir8
    257M ./dir9
      0B ./dir10
    1.2G total

## 5. Finding Nested Files

    find . -name <filename>

Did you forget which directory a file was in? find to the rescue! If you replace <filename> with the name of the file you’re searching for then find will descend through all the directories (starting with the one you’re in) searching for your file.

Once the file has been found you’ll get some output like this which shows you where the file lives so you can grab it and get back to work:

    ./dir1/dir2/file.ext

There are many ways to search for files. You can even install other dedicated utilities that have more bells and whistles. But find is readily available across multiple distros and straightforward to use.

## 6. Watch

If you haven’t used watch you are missing out! The idea is simple, you pass *something to do* and *how often to do it* and it *does it*. Let’s take a look at an example:

    watch -n 1 'cat test.txt'

This tells watch that we want to perform our cat command every 1 second/s. Once you run this command the screen will be rewritten to display the contents of the file just like if you had used less to display it. In the corner there will be a timer showing you each time the contents are re-displayed.

    Every 1.0s: cat test.txt                                                                                                          hostname.local: Fri Jan  3 08:57:29 2020

    line1
    line2
    line3

This is useful if you have output piped into a file and want to see the changes as they happen. You could also tail -f the file but using watch is much cleaner because the screen is rewritten each time and watch handles the looping interval easily for you.

This is not available in every distribution by default but is easily installed with apt-get, yum, or brew to get started.

*I hope you’ve enjoyed this list of useful and fun terminal commands! Maybe you’ll even implement some of these into your own workflow to speed things up and work more efficiently. What are some of your own favorite commands you’ve come up with?*
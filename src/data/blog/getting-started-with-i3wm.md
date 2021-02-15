---
title: Getting started with i3wm
categories: ['Linux']
image: '../blog-1/e4d5ed47ee58aa859995cae2a4e83221.webp'
imageCredit: https://dribbble.com/shots/13972666-faces
date: "2020-11-26T05:00:00Z"
time: 3
description: "Not as hard as you think..."
---

# Getting Started with i3wm

My friends always get surprised when I show them how do I use i3. Unfortunately, the problem of using i3 is probably the same as in vi. You won’t be able to use alt+tab and everything is command-based, so by the end of the day, restart your computer to select an GUI will be easier, but I hope that after a few days (or maybe weeks) using it, you won’t want to use anything else.

i3 isn’t like Gnome or Unity, because it doesn’t have basic things like brightness shortcut, so you need to configure that. Keep in mind that i3 is just a [tiling window manager](https://en.wikipedia.org/wiki/Tiling_window_manager), you won’t have big icons on your desktop.

i3wm has a large learning curve and people will give up before it starts to make sense (again, just like *vi*).

I won’t cover installation topics and stuff, because you can easily find the instructions for your operation system.

## Configuring

My **~/.config/i3** has a single file called **config**, which will be created after you install i3wm. These are my main modifications:

<iframe src="https://medium.com/media/3aa846b66025ad2192e06d65eb832be8" frameborder=0></iframe>

My desktop looks like this:

![My workspace with i3wm. Pretty simple, huh?](https://cdn-images-1.medium.com/max/2732/1*vCkSOFUACbptQMUIv7FDzw.png)*My workspace with i3wm. Pretty simple, huh?*

I set system colors based on arc-theme. My browser and GTK use that theme too. You can find install instructions for that at [Bruno’s i3wm-conf repository](https://github.com/brunodles/i3wm-conf).

You can find some inspirations and config files [searching at DeviantArt](http://www.deviantart.com/browse/all/?section=&global=1&q=i3wm).

## Navigating

Since you doesn’t have alt+tab and your program’s window now behave different, you need to get used with the navigation on i3wm.
My mod key is set to *WIN* key, so if I want to open a new program, I tap *WIN+d* (will open Rofi) and for terminal, *WIN+return*.

To change the focus between the programs that are currently in your workspace, you can use *WIN+{arrow keys}*. Just like Gnome, i3 has multiple worspaces, and you can navigate on that using *WIN+{number of your workspace}*.

## Window Management

When you search about i3 every screenshot you find will look like this:

![Source: [https://i3wm.org/screenshots/](https://i3wm.org/screenshots/)](https://cdn-images-1.medium.com/max/2560/1*D1vE7H5xKfXOox6YaIjbuQ.png)*Source: [https://i3wm.org/screenshots/](https://i3wm.org/screenshots/)*

The main goal here is to adjust your programs like tiles in your screen and [they are a tree](https://www.youtube.com/watch?v=AWA8Pl57UBY)!

## Rofi

While using i3 you don’t have a menu bar where you can select the program you want to open. By default i3 comes with **dmenu**, but I use [Rofi](https://davedavenport.github.io/rofi/) in run mode to make the same thing. As mentioned before, if I want to open a new program, I call *WIN+d* and insert **the command that opens the program.** e.g., if you want to open computer system’s config, you must call *gnome-control-center;* if system’s monitor you call *gnome-system-monitor. *Open browsers is easier but at the beginning, after install a new program, you might get lost.

## Memory usage

Maybe, all that stuff may look hard to you, but you can re-think after see how much it costs to my computer to run it.

![Sooo lightweight :)](https://cdn-images-1.medium.com/max/2000/1*oP7sf68o307tMOgArPPpZw.png)*Sooo lightweight :)*

For more info about i3, see [its docs](https://i3wm.org/docs/).

I hope this article is a useful hello world to you :) See ya!

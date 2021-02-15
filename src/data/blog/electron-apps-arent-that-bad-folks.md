---
title: Electron Apps Aren't That Bad, Folks
categories: ['frameworks', 'linux', 'webdev', 'performance']
image: '../blog-1/e4d5ed47ee58aa859995cae2a4e83221.webp'
imageCredit: https://dribbble.com/shots/13972666-faces
date: "2021-02-04T13:18:37-05:00"
time: 3
description: "Some reasons why"
---


![electron is bad meme](https://149366088.v2.pressablecdn.com/wp-content/uploads/2017/04/you-should-feel-bad-electron-is-bad-and-you-should-feel-bad.jpg)**I get it.[  
](https://149366088.v2.pressablecdn.com/wp-content/uploads/2017/04/generic.jpg)**

You’re not a big fan of desktop apps built using [Electron](https://electron.atom.io/).

You want me to stop writing about them.

You don’t intend to use them.

You flat out hate them.

I hear you loud and clear.

And yet…

Electron Apps Aren’t All That Bad, Folks
----------------------------------------

Rather like [Mono](https://en.wikipedia.org/wiki/Mono_(software))¹ apps a few years back, Electron apps have a really bad rep among Linux users.

They’re seen as the new evil incarnate; a trojan framework here to siphon off native app development for the benefit of a shadowy, Linux-hating cabal.

> ‘Electron isn’t evil incarnate, but an accessible open-source app development framework’

All nonsense, of course.

Electron is simply an **accessible open-source app development framework**. It lets web developers create desktop apps using the technologies they’re already familiar with, like JavaScript, HTML, and CSS.

This angle — low barrier to entry — is why Electron is proving so popular, and so quickly. Developers who might never have made a desktop app can now push the envelope, get creative, and bring their ideas to life using existing skills.

And because any app made in Electron has the potential to run on Windows, macOS and Linux — and in theory [Electron apps could run on Android and iOS](https://discuss.atom.io/t/electron-on-ios-android/18223/21) (not that Apple would allow it) — the pool of potential users is massive, which helps incentivise its adoption.

> ‘Developers who might never have made a desktop app now can’

But it’s not solely just web developers who take advantage of the tech.

Sometimes there’s just little value in wasting time to do something that Electron can do, especially when it’s there, ready to be used. Even developers versed in traditional coding languages sometimes turn to Electron because it often lets them build what they want a little faster (in time).

Shouldn’t this broadening of development via an open-source framework be a good thing?

But some people act like no apps are better than Electron apps.

### But I Understand Why You Don’t Like Them

[![electron apps in window spread](https://149366088.v2.pressablecdn.com/wp-content/uploads/2017/07/multiple-electron-apps-750x469.jpg)](https://149366088.v2.pressablecdn.com/wp-content/uploads/2017/07/multiple-electron-apps.jpg)

Running multiple Electron apps uses a lot of memory

> ‘Many criticisms flung in the direction of Electron are totally valid…’

In writing this riposte let me be clear about one thing: **I am not saying Electron is perfect.** 

I’m also not saying I prefer Electron apps over native ones, or that I think it’s always the right tool for the job, or any other cliche.

A great many of the criticisms flung in the direction of Electron, like its engorged resource usage, big install size, etc, are totally valid.

But some of these criticisms are presented out of context, while others are so over-egged you could serve them on toast to [earn a Michelin star](https://en.wikipedia.org/wiki/Michelin_Guide).

#### 1\. Electron Apps Still Require Technical Nous To Build

[![](https://149366088.v2.pressablecdn.com/wp-content/uploads/2017/07/Screen-Shot-2017-07-18-at-20.15.21-750x486.png)](https://149366088.v2.pressablecdn.com/wp-content/uploads/2017/07/Screen-Shot-2017-07-18-at-20.15.21.png)

The Electron framework makes it easy to get started, but things _are_ a bit more involved than slapping a URL in a WYSIWG box to get a fully-formed “app” spat out at the other end.

> ‘Electron makes it easy to get started, but things are a bit more involved than slapping a URL in a box’

Building anything, from a LEGO battleship to a pure Qt/Qml word processor, takes effort, time and intent. Electron developers still need HTML/CSS/JavaScript knowledge, and have experience with Node.js.

But because these languages are cross-platform, and thank to an increasing array of node.js modules, Electron gives devs a big headstart. That these apps can also use web technologies to interact with desktop features like the system tray, native notifications, global keyboard shortcuts, MPRIS, etc, is yet another incentive.

The applications and services we use day-to-day are (increasingly) migrating online. But in many cases the of workflow of a desktop web app trumps the (relative) inefficiency of having to switch between multiple browser tabs in the same window.

Or to put it another way, I — and many others — like web apps when they behave like desktop apps. And Electron is well positioned to bridge that gap.

#### 2\. Electron Apps Aren’t _Always_ Web-Wrappers

[![etcher image writer on ubuntu](https://149366088.v2.pressablecdn.com/wp-content/uploads/2017/05/etcher-image-writer-ubuntu-750x283.jpg)](https://149366088.v2.pressablecdn.com/wp-content/uploads/2017/05/etcher-image-writer-ubuntu.jpg)

Electron is a heavy framework for building basic apps. That’s not denied. But it’s wrong to assume that all Electron apps are basic.

Take something like [Etcher](http://www.omgubuntu.co.uk/2016/09/etcher-image-writer-beta-release), a cross-platform ISO and IMG writer, or the (now defunct) desktop email client Nylas Mail. These are more than web-wrappers; they’re proper apps with a proper role.

And, even when Electron apps aren’t anything more than window dressing don’t overlook the features or convenience it provides — this can outweigh whatever uptick in RAM usage there’ll be for the 15 minutes it’s open.

#### 3\. Besides, RAM Is There To Be Used

[![the atom text editor snap app on ubuntu 17.04](https://149366088.v2.pressablecdn.com/wp-content/uploads/2017/05/atom-text-editor-on-ubuntu-1704-750x469.jpg)](https://149366088.v2.pressablecdn.com/wp-content/uploads/2017/05/atom-text-editor-on-ubuntu-1704.jpg)

Most Electon apps have a purpose and are only run for a short period. Few people, I imagine, run multiple Electron apps constantly, side-by-side.

And even if they do we’re not talking about RAM usage in the GBs.

Is a 100MiB spike in RAM usage while I make a Github commit in Atom **really an issue** if that’s pretty much all I’m doing at that moment?

The choice is doing something productive or having an extra 100MiB of RAM sat idle, doing nothing.

#### A World of Electron Beyond Ubuntu

[![stacer 1.0.7](https://149366088.v2.pressablecdn.com/wp-content/uploads/2017/06/new-stacer-system-app-hero-350x200.jpg)](https://149366088.v2.pressablecdn.com/wp-content/uploads/2017/06/new-stacer-system-app-hero.jpg)

Stacer — a system tool built for Ubuntu

But let’s not forget that most developers building Electron apps aren’t building them specifically for Linux. Yup, reality shock: it’s not all about us.

There are some really great Electron apps that are **not** available on Linux, like macOS-only [subtitle finder **Caption**](https://getcaption.co/) and the Windows-only [newsreader **Headlines**](https://github.com/MedZed/Electron-Headlines).

There are even a few paid Electron apps around, like macOS [SVG convertor **Trym**](http://kontentapps.com/trym) (I’d pay $4 for the functionality of that app) and [**DeckHub**](https://getdeckhub.com/), a Tweetdeck inspired app for Github.

For a hobbyist developer, Electron gives them everything they need to build, shape and share a desktop app without needing to learn an entire new language or framework.

And those apps, given enough attention, mean you might not even know that you’re using something written on top of Electron.

Electron sure as heck isn’t perfect, and there’s plenty of room for improvement, consolidation and — by jove — resource optimisation.

But let’s get out of the mindset that Electron apps come at the expense of native Linux apps. Most of the time we get these apps as a byproduct of Electron being available on Linux.

And in a world where few developers do bring their apps to Linux I think we’d cutting out noses off to spite our face if we deter those who do.

**What say you? Let us know your love/hate for all things Electron in the comments below.**

###### _¹History Lesson: Mono was pure evil distilled in .NET compatible form. A secret conglomerate of software developers, random Linux bloggers and Microsoft middle-managers worked in cahoots to covertly infect and infiltrate open-source desktops using Mono apps like Banshee, and Tomboy, and, er, Docky …_

###### _Then, at the right moment, Microsoft swooped in to demand royalty payments (or something) and all the doubters were proved right. At least that’s what supposed to happen…_

---
title: "Min Browser Almost Good Enough"
author: Cukmekerb
date: 2021-01-04T19:42:37-05:00
draft: false
type: post
categories:
 - linux
tags:
 - linux
---

# Min Browser: Almost good enough
The Min Browser is a minimalist web browser designed for productivity. In this review, I, Cukmekerb, will try it and tell you what I think.
## First thoughts
Min is not in the AUR (there's a beta version that hasn't been updated since 2018), but it it _is_ available to download as a .deb or .rpm. Since I'm running Manjaro, which is not based on Debian, I'll be using [Debtap](https://github.com/helixarch/debtap) to install it. This is a small inconvenience, but not a real problem. After generating the install file, I had to modify it to remove the dependency `kde-runtime` so that it would install. This was annoying, but if you're running a Debian or rpm-based distro, such as Fedora or Mint, you won't have this problem. 
When I first launched the app, I was greeted by this screen: ![Min start screen](https://i.imgur.com/4ZCWXjm.jpg)Looks nice, I thought, and opted to take a tour. After enjoying the tour of the browser's features, I decided to start browsing. I pressed the button and it showed me an input. I typed in a URL, pressed enter, and the browser immediately crashed. That's not good. I restarted the browser and tried again. This time it worked, but I noticed that it was extremely slow.

## Overall experience
### Pros
Min's overall design reminds me a lot of Safari, the default browser on MacOS. However, Min has "tasks" which are essentially tab groups. I like that it has this feature, and while it takes some getting used to, it's very well executed and certainly better than what most browsers have to offer. ![Min Tasks](https://i.imgur.com/7cXyujn.jpg)Another feature that Min has is the ability to have private tabs in the same window as normal tabs, as well as having a little icon indicating that a tab is private.![A private tab in min](https://i.imgur.com/b3Umxuy.jpg)As you can see in the image above, the tab that I don't want in my browsing history is sitting right alongside my other tabs, but it has an icon so I don't accidentally click it in public.
As you may have noticed, Min's tab bar changes color based on the current site's color scheme. This makes for a more cohesive browser experience which looks quite nice. Min also gives you the ability to write your own scripts in JavaScript which affect the behavior of webpages. 

### Cons
Min is slow. Especially when loading images. See benchmark section for more.
While Min has support for custom scripts, these are non-standard and it does not support the standard WebExtensions API, which is commonly used to create browser extensions. 
Min also crashes more often than any other browser I have used, usually when some action, such as switching tabs or loading a page, is taken.

## Benchmarks
I was planning on using the [BrowserBench](https://browserbench.org/) benchmarks, but for some reason Min refused to load the page, giving me this message instead:
![Min does not let me load browserbench](https://i.imgur.com/QNxGbHr.jpg)
This is rather unfortunate, and trust me, I tried everything. Instead of BrowserBench, I'll be using [Basemark](https://web.basemark.com/) and [Speed Battle](http://speed-battle.com/)and comparing the score with what I get on Firefox and Chromium, with no extensions or other tabs open.

### Basemark
![Min's basemark score](https://i.imgur.com/ayAJIGF.jpg)Min got a score of 709.95, which beat both Firefox and Chromium
![firefox basemark](https://i.imgur.com/S4bvIHx.jpg)Firefox got a terrible score of 60.26, but the webgl tests didn't seem to have run properly. I'm not sure what happened here so let me know in the comments. Chromium got a score of 644.79![chrome basemark](https://i.imgur.com/l400EXv.jpg)which is okay, but still worse than Min. 

On Speed Battle Min also beat Firefox and Chromium:
![min speed-battle](https://i.imgur.com/vog06Oc.jpg)Min got a score of 1118.75, while Chromium got a score of 1051.33 and Firefox got a score of 536.65.


## The Verdict


Min Browser is almost good. The benchmark scores are impressive, but unfortunately Min still feels slow and chunky compared to the more popular browsers. While its productivity features are useful, its design is pleasing, and its benchmarks are fast, Min feels slow and bogged down, crashes often, and doesn't load BrowserBench (why?). If these issue were fixed, I think Min would make a great minimalist browser for those who like to be organized. However, I'm sticking with Firefox, which despite getting terrible scores in both benchmarks, still feels the fastest, crashes the least often, and protects you privacy the best. Min browser is a good project to keep an eye on, as it could go on to do great things, but for now it's just not ready. 


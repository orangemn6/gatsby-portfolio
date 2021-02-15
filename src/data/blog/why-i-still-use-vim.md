---
title: "Why I Still Use Vim"
author: Jacob Goldstein
date: 2020-12-31T15:37:14-05:00
draft: false
type: post
categories:
 - linux
 - vim
tags:
 - linux
 - vim
---

# Why I Still Use Vim

And no, it’s not because I can’t figure out how to close it.

![Image: [http://amzn.to/2umsBaY](http://amzn.to/2umsBaY)](https://cdn-images-1.medium.com/max/2372/1*a_p-T4EittG0H3Krt9bUZw.jpeg)*Image: [http://amzn.to/2umsBaY](http://amzn.to/2umsBaY)*

I often get asked about why I use Vim as my primary editor, there is no particular reason for this, except that I ended up learning it when I moved over to Linux full time many years ago. I ended up liking it because I could edit my small source files on my quad-core machine without needing to wait forever for the file to open.

Sure Vim isn’t a bad editor, it’s highly extensible, it’s easy to shell out to the, err well shell, its everywhere so when you ssh into some obscure server you can just type vim (or vi) and you’re good to go.

But this isn’t a pitch about Vim being a great editor, that’s a matter of subjective taste. I’ve primarily stuck with it because it’s an extensible editor that doesn’t hog all the resources and kill my machines. Using Atom or Code I experience frequent freezes for several minutes when just typing a single character.

How much memory would you expect an editor needs to open the following C file?

    **#include** <stdio.h>

    **int** main() {
      printf("Hello, world!\n");
    }

## Memory Usage

The answer is… crazy.

![Memory used in KiB opening a ~60 byte C source file.](https://cdn-images-1.medium.com/max/2000/1*ZdqL3eJXV4v-ZlkDKJIlNg.png)*Memory used in KiB opening a ~60 byte C source file.*

Code requires a whopping 349 megabytes in order to open a 60 byte file. Atom comes in at 256 megabytes. Where Vim “only” needs 5 megabytes, which is still kind of high, but representative of an average configuration.

I’ve also included Nano to have another text mode editor to compare Vim with, which came out at less than a megabyte.

What about larger files? Opening a 6 megabyte XML file in Vim consumes around 12 megabytes. Nano is pretty much neck-and-neck with Vim. Code needs 392 megabytes, and Atom needs a whopping **845** megabytes.

![Memory used in KiB opening a ~6 Megabyte XML file.](https://cdn-images-1.medium.com/max/2000/1*UoLGhJjMeCbXfL0rBpcfBw.png)*Memory used in KiB opening a ~6 Megabyte XML file.*

## Startup Time

What about the amount of time necessary to open that same XML file, then move your cursor to the end of it? This tells a similar story. Atom and Code take nearly 20 seconds. Vim takes around 4 seconds. Sublime is surprisingly fast here taking only a mere second.

![Time used in seconds to open a 6 megabyte XML file](https://cdn-images-1.medium.com/max/2000/1*nWL-IyPzxygwIKBkhvuzQA.png)*Time used in seconds to open a 6 megabyte XML file*

Doing a search and replace for 100,000 instances of a word in that same XML file yields somewhat surprising results. Nano and Atom failed, taking nearly 10 minutes on average to complete. Atom crashed quite a few times trying to get a result. Code took around 80 seconds. Sublime finished in 6 seconds. And Vim only took 4 seconds.

![Time used in seconds to search and replace 100 000 instances of a word](https://cdn-images-1.medium.com/max/2000/1*9m9YNUPgQWRgk-6dtlSFMg.png)*Time used in seconds to search and replace 100 000 instances of a word*

## Conclusion

**Learn Vim.** It’s worth checking out [http://vimcasts.or](http://vimcasts.org)g, which is basically Vim golfing, tips, and tricks made by Drew Neil, who also wrote [this awesome book](http://amzn.to/2vnBcJX)

![Practical Vim by Drew Neil](https://cdn-images-1.medium.com/max/4500/1*wccPc-PPVWx_nkLO6M32dg.jpeg)*Practical Vim by Drew Neil*

If not Vim, then maybe Emacs. Or, well, just anything that is not a web browser masquerading as a text editor.

It’s just flat out ridiculous to have an editor consume all the processing power and memory available on a “modern” expensive laptop, when it doesn’t need to do so at all.

The test files used in these benchmarks were taken from [this repository](https://github.com/jhallen/joes-sandbox/tree/master/editor-perf), results were averaged between that dataset and my own.

---
title: How to get HTB Invite Code
categories: ['hacking', 'HTB']
image: '../blog-1/e4d5ed47ee58aa859995cae2a4e83221.webp'
imageCredit: https://dribbble.com/shots/13972666-faces
date: "2020-11-23T16:05:38-05:00"
time: 3
description: "SPOILERS"
---


# Hack the Box: How to get the Invite Code



**What is Hack the Box ?**

Hack The Box is an online platform that allows you to test and advance your skills in Penetration Testing and Cybersecurity. The platform contains assorted challenges that are continuously updated. Some of the challenges simulate real world situations/scenarios, while others are more like CTFs. Needless to say, Hack the box is beyond resourceful if you want to level up your cybersecurity skills; especially as a beginner.

**How do you join Hack the box ?**

To join [Hack the Box](https://www.hackthebox.eu/invite), you have to hack yourself in. Sounds intimidating right ? Don’t worry, this exhaustive article will take you through how to achieve the aforementioned. However, I highly recommend that you first try to hack yourself in(on your own), and only use this article as a guide in case you need help.

**Let’s get started.**

First, visit the [official Hack the Box website](https://www.hackthebox.eu/). As you scroll down to read more information, you will eventually see a join button ; please click on it.

You’ll then be directed to [https://www.hackthebox.eu/invite](https://www.hackthebox.eu/invite) to join Hack The Box.

![We are free to hack our way in.](https://cdn-images-1.medium.com/max/2000/1*DJj7mt1RopYHd4t13srurQ.png)*We are free to hack our way in.*

You can clearly see a text box asking us for an invite code. Right click on the page and choose the Inspect Element option. Alternatively, you can press Ctrl + Shift + I to open Chrome’s Developer tools.

![](https://cdn-images-1.medium.com/max/2550/1*_807D1JEkC84s9Do2qqGuw.png)

Go through the Elements tab and you will eventually find a script with its source as** /js/inviteapi.min.js.**

![Closer look.](https://cdn-images-1.medium.com/max/2000/1*QrHOt0CMis4FjVGc7J9mPg.png)*Closer look.*

Interesting, now visit[ https://www.hackthebox.eu/js/inviteapi.min.js](https://www.hackthebox.eu/js/inviteapi.min.js) and you will see a JS file like the one in the image below.

![The highlighted **MakeInviteCode** is highly attractive to us.](https://cdn-images-1.medium.com/max/2722/1*QVMH1jZmuUkwKyvXBpSpqw.png)*The highlighted **MakeInviteCode** is highly attractive to us.*

With this new information, we go back to [https://www.hackthebox.eu/invite](https://www.hackthebox.eu/invite) to try and find the contents of makeInviteCode

Go to the Console tab and type makeInviteCode() and then press Enter . You will get a 200 Success status and data as shown below:

![See anything interesting ?](https://cdn-images-1.medium.com/max/2698/1*cInq98Vi_KEpQd8-vADMDg.png)*See anything interesting ?*

In my case, the encoding type of the data was **ROT13.** Hack The Box also uses **BASE64;** therefore don’t fret if our encoding types are different.

It’s time to decode the message we have. Copy the contents of data and search online for a **ROT13** decoder. In my case, I personally used Google search’s first result: [https://cryptii.com/](https://cryptii.com/)

Paste the data on the text box, and choose **ROT 13(A-Z, a-z)** and finally click on** DECODE . Note: only applicable for those decoding ROT 13 — **If your Encoding Type was **BASE64** search online for a decoder for the same ( Although I highly recommend [https://www.base64decode.org/](https://www.base64decode.org/) ).

![Works like magic!!!](https://cdn-images-1.medium.com/max/2706/1*mnG18QrU6B4Vg9ZT8qpJAw.png)*Works like magic!!!*

Fascinating!! In order to generate a valid Hack The Box Invite Code, we have to make a POST request to /api/invite/generate.

Fire up your terminal and make a POST request by typing:

curl -XPOST https://www.hackthebox.eu/api/invite/generate

![Success message!!](https://cdn-images-1.medium.com/max/2272/1*NExpcocIklczgEzDCtBP9Q.png)*Success message!!*

We now have an invite code, but there’s a catch, it’s **encoded**. Let’s try decoding it by using [https://www.base64decode.org/](https://www.base64decode.org/) .

Paste the code you got as a result of the POST request into the textbox and hit DECODE. Voila!!

![Riveting, We now have a valid CODE!!!!!](https://cdn-images-1.medium.com/max/2694/1*jCQUP5w-hn5ChAxRyzRJkA.png)*Riveting, We now have a valid CODE!!!!!*

Finally, go back to [https://www.hackthebox.eu/invite](https://www.hackthebox.eu/invite) and paste the Invite Code you got into the text box and click on Sign Up.

![](https://cdn-images-1.medium.com/max/2000/1*vca9z5NBaM9oDtUec2DNOw.png)

![We’re IN!!!](https://cdn-images-1.medium.com/max/2702/1*Kms4qIGRt0ch1iQnzm0rrQ.png)*We’re IN!!!*

Mama we made it!!!!

![](https://cdn-images-1.medium.com/max/2000/1*xc3dEdGEU7LVtywarwIxlw.gif)

You can now easily register as a user of Hack the Box.

![](https://cdn-images-1.medium.com/max/2000/1*dHK1K8P6_G1znz-sm-4U2g.png)

## HAPPY HACKING FOLKS!!

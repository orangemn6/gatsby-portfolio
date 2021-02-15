---
title: Boost your productivity with markdown
categories: ['webdev']
image: '../blog-1/e4d5ed47ee58aa859995cae2a4e83221.webp'
imageCredit: https://dribbble.com/shots/13972666-faces
date: "2021-01-01T18:26:02-05:00"
time: 3
description: "Markdown is useful. Even this blog uses markdown!"
---

# Boost your productivity using Markdown.

What’s Markdown?
> *Markdown is a lightweight markup language with plain text formatting syntax. It is designed so that it can be converted to HTML and many other formats using a tool by the same name.
from [Wikipedia](https://en.wikipedia.org/wiki/Markdown)*

Introducing the markdown formatting ⛷

## 1. Heading

    # h1
    ## h2
    ### h3
    standard

![](https://cdn-images-1.medium.com/max/2000/0*KsvszRuwIOC03FSK.png)

## 2. Emphasis

    *Italic type*
    **Bold**
    ~~Negative~~

![](https://cdn-images-1.medium.com/max/2000/0*W3MH_7fI7nmfEooK.png)

## 3. Fold

Fold the long sentences.

    <details><summary>Boostnote is a notepad corresponding to markdown notation, which is a tool for organizing and sharing information.</summary>
    - Features - <br>
    · Search function to find memos in one shot
    · Supports markdown notation <br>
    · Support for Mac, Windows, Linux, iOS, Android <br>
    · Export and import to Plain text (.txt), Markdown (.md) format <br>
    · Supports PDF saving <br>
    · Can be used offline <br>
    · Synchronize to dropbox etc. with setting <br>
    · Supports theme colors and numerous fonts <br>
    </details>

![](https://cdn-images-1.medium.com/max/2000/0*gUVs9-OGh-2PpqQS.png)

![](https://cdn-images-1.medium.com/max/2000/0*ClaO3PLkAVAhfizO.png)

## 4. List

    - List 1
    - List 2
    * List 3
    * List 4

![](https://cdn-images-1.medium.com/max/2000/0*knUJTMnjVIcyS38d.png)

## 5. Link

Put a text on the left and a url on the right.

    [Boostnote](https://boostnote.io)

![](https://cdn-images-1.medium.com/max/2000/0*XL49Ku80hYNs3PHL.png)

## 6. Check box

    - [x] Task 1
    - [ ] Task 2

![](https://cdn-images-1.medium.com/max/2000/0*lgM-eF76MYoVb2zN.png)

## 7. Quotation

    > Quotation
    > Quotation Quotation

![](https://cdn-images-1.medium.com/max/2000/0*1Sf6NpHetPKUIndg.png)

## 8. Horizontal line

    * * *
    ***
    --------

![](https://cdn-images-1.medium.com/max/2000/0*TRfcTyZVM6-_aSXH.png)

## 9. Image

    ![Image title](https://boostnote.io/assets/img/logo.png)

![](https://cdn-images-1.medium.com/max/5140/1*t6n2WF4icGlp-VWjYeZd4g.png)

## 10. Source code

    Render: function () {
      Return (
        <div className="commentBox">
          <h1> Comments </h1>
          <CommentList data={this.state.data} />
          <CommentForm onCommentSubmit={this.handleCommentSubmit} />
        </div>
      );
    }

![](https://cdn-images-1.medium.com/max/2000/0*DJdgyYVRMlf7nad0.png)

## 11. Table

    |Fruits|Price|
    |:--|:--|
    |Apple|1$|
    |Grapes|4$|
    |Orange|2$|
    |Lemon|1$|
    |Peach|3$|
    |Melon|20$|

![](https://cdn-images-1.medium.com/max/2000/0*uadyBVyiW-BJuHWS.png)

These are the basic markdown formatting.
In addition to above, you can also complex formatting like following in [Boostnote](https://boostnote.io/).

## Latex

Mathematical formatting.

    $$$
    \mathrm{e}^{\mathrm{i}\theta} = \cos(\theta) + \mathrm{i}\sin(\theta)
    $$$

![](https://cdn-images-1.medium.com/max/2000/0*hrkthRD487i94FMT.png)

## Flowchart

    st=>start: Start:>http://www.google.com[blank]
    e=>end:>http://www.google.com
    op1=>operation: My Operation
    sub1=>subroutine: My Subroutine
    cond=>condition: Yes or No?:>http://www.google.com
    io=>inputoutput: catch something…
    st->op1->cond
    cond(yes)->io->e
    cond(no)->sub1(right)->op1

![](https://cdn-images-1.medium.com/max/2000/0*5q7QED2tz4KnLo70.png)

## Sequence

    Title: Here is a title
    A-> B: Normal line
    B -> C: Dashed line
    C -> D: Open arrow
    D -> A: Dashed open arrow

![](https://cdn-images-1.medium.com/max/2000/0*VxHmMo2lXQkZH9Mv.png)

That’s all. Enjoy Markdown ;)

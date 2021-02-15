---
title: 7 Important tips for writing better CSS
categories: ['webdev', 'css', 'performance']
image: './e4d5ed47ee58aa859995cae2a4e83221.webp'
imageCredit: https://dribbble.com/shots/13972666-faces
date: "2021-01-25T21:48:19-05:00"
time: 3
description: "Comments, DRY, and more!"
---

One of the biggest issues in programming is dealing with maintenance. In a real-world scenario, we don't always start developing projects from scratch. Mostly, we are assigned (or take) a project that has already been written maybe a couple of years before or even longer.

To work efficiently on that project, first we need to understand the source code. This is the point when we immediately realize the importance of **clean code.**As developers, we must try to write our code as cleanly as possible.

This is also the case for CSS. There are some points we need to pay attention to while writing CSS. In this post, I would like to share some of the most important ones with you. I believe these 7 tips will help you to improve the quality of your CSS code.

So let's begin...‌ ‌

## 1. DRY

**DRY stands for "Don't Repeat Yourself"**. This is a general software development principle and can be applied in any programming language, as well as in CSS. As we can understand from its name, DRY aims to avoid or reduce repetition as much as possible.

For example, we can create 3 CSS classes for 3 buttons like this:

```css
.primary-button {
  background: blue;
  color: white;
  border-radius: 5px;
  padding: 10px 20px;
  text-align: center;
  font-size: 16px;
}

.form-button {
  background: green;
  color: white;
  border-radius: 5px;
  padding: 10px 20px;
  text-align: center;
  font-size: 16px;
}

.cancel-button {
  background: red;
  color: white;
  border-radius: 5px;
  padding: 10px 20px;
  text-align: center;
  font-size: 16px;
}
```

Or we can use the DRY principle by writing the common rules **once** in an additional class and the different rules each in other classes:

```css
.button {
  color: white;
  border-radius: 5px;
  padding: 10px 20px;
  text-align: center;
  font-size: 16px;
}

.primary-button {
  background: blue;
}

.form-button {
  background: green;
}

.cancel-button {
  background: red;
}
```

As we can see, applying the DRY principle avoids repetition, decreases the number of lines, and improves readability and even performance.

## 2. Naming

Naming CSS selectors is another important point for writing better CSS. The name of a selector should be **self-descriptive and readable**...

```css
// BAD NAMING

.p {
  // Rules
}

.myFirstForm {
  // Rules
}
```

Normally, is an HTML tag and stands for paragraph. Above, we can't really understand what **class p** is. Also, you should avoid names like **myFirstForm**, and I don't advise using **camel case**.

Instead, use declarative names (separated by a dash for multiple names):

```css
// GOOD NAMING

.article-paragraph {
  // Rules
}

.contact-form {
  // Rules
}
```

I think the names make more sense now :)

Naming things in programming is not that easy, but there are various naming conventions that you can use in your project. **BEM (block element modifier)** is one of them. I've worked with BEM before and I can recommend it.

## 3. Don't Use Inline-Styles

Well, there are arguments on the web about this: some are telling you never to use inline styles, while others are arguing that it can be useful in some cases.

In my opinion, the best practice is actually not using inline styles. I will focus here on why we shouldn't.

According to the separation of concerns principle, design (CSS), content (HTML) and logic (JavaScript) should be separated for reasons like better readability and maintenance.

Including CSS rules inside HTML tags breaks this rule:

```html
Some Text
```

> We should rather keep our styling rules in external CSS files.

Another problem with using inline-styles is that we can't search for them. So when we need to make a change on styling, we normally look for CSS selectors of the HTML element.

For example, let's change the **font-size** of text on our webpage. To do that, first we find that specific part on the browser where the change is needed by looking at the HTML structure:

```html
Some Text
```

Then we need to find the selector, which is the **text-bold** class here. Finally, we go to that class and make the changes:

```css
.text-bold {
  font-size: 16px;    // change the font-size to 14px
  font-weight: bold;
}
```

But if the rules are written **inline-style** instead of using classes:

```html
Some Text
```

Even if we find the HTML tag, we can't know whether there are other **font-size** rules inside the HTML or not. Since there is no selector used, we have to go through all the HTML pages one by one, try to find the other **font-size** rules and change them too.

Wouldn't it be easier with a CSS selector? But there's something even worse...

Inline-Styles have the highest specificity among CSS selectors (when we don't count **!important tags**).

Considering we are using both a class and an inline-style for an element:

```css
.text-bold {
  font-size: 16px;
  font-weight: bold;
}
```

```html
Some Text
```

Here, the **font-size** of the text will be **14px**, because inline-styles have higher specificity than CSS classes. When you make a change in the class:

```css
.text-bold {
  font-size: 20px;
  font-weight: bold;
}
```

The font-size will still be 14px. So your change in the CSS class won't work, which will cause you to end up saying:

> "Hey, why is my CSS code not working? I hate CSS!"

and lead you to use an **!important tag**which does the magic:

```css
.text-bold {
  font-size: 20px !important;
  font-weight: bold;
}
```

Which is a big no-no and leads us to the next point...

## 4. Avoid the !important tag

OK, so your CSS wasn't working as was supposed to, and you made it work by applying the **important tag:**

```css
!important
```

What happens next? **The !important tag has the highest specificity of all CSS selectors.**

You're basically saying to the browser to apply that specific rule with the **!important tag** always and under any circumstances. This is not good because CSS rules can differ from one selector to another, from parent selector to child.

**The only way to override an important tag is to use another important tag**. And this leads to using more and more important tags. Trust me, in the near future your project code will be full of ! **important tags**, which makes your CSS code much harder to maintain. So try not to use it.

## 5. Use a Preprocessor

Working with a CSS Preprocessor like Sass or LESS is very useful in bigger projects. A preprocessor brings additional features to our CSS code that we normally can't do.

For example, we can define variables, functions and mixins, we can import & export our CSS files in other CSS files and we can write nested CSS code:

Sass Code Example

A preprocessor has its own syntax and later it gets translated into standard CSS (in a separate CSS file) because browsers don't understand the syntax.

## 6. Use Shorthands

Some of the CSS properties like paddings, margins, fonts and borders can be written in a much simpler way by shorthands. Using shorthands helps to reduce the lines of rules.

So without shorthands, a CSS class would look like this:

```css
.article-container {
  padding-top: 10px;
  padding-bottom: 20px;
  padding-left: 15px;
  padding-right: 15px;
  margin-top: 10px;
  margin-bottom: 10px;
  margin-left: 15px;
  margin-right: 15px;
  border-width: 1px;
  border-style: solid:
  border-color: black;
}
```

and with shorthands it looks like this:

```css
.article-container {
  padding: 10px 15px 20px 15px;
  margin: 10px 15px;
  border: 1px solid black;
}
```

[You can find here](https://developer.mozilla.org/en-US/docs/Web/CSS/Shorthand_properties) more info about how to use shorthands properties and for which CSS properties they can be applied.

Normally, quality code doesn't need comments because it should already be clear and self-descriptive. But still, in some cases, we may need to write additional explanations.

```css
// Your Comments
.example-class {
  // your rules
}
```

So when you feel that some parts of the code are unclear, then don't be afraid to add comments (but on the other hand, make sure not to overdo it :)).

As a Frontend Developer with a couple of years of experience, these are the most important tips that I can suggest for improving your CSS skills. If you have any questions, or you think there are also other tips for writing better CSS, don't hesitate to comment down below.

**If you want to learn more about web development, feel free to see the rest of my blog!**

Thank you for reading!



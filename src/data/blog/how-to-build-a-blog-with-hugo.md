---
title: How to Build a Blog with Hugo
categories: ['frameworks', 'performance']
image: '../blog-1/e4d5ed47ee58aa859995cae2a4e83221.webp'
imageCredit: https://dribbble.com/shots/13972666-faces
date: "2020-12-10T17:20:31-05:00"
time: 3
description: "Simple, Fast, and Easy"
---


In this guide I’m going to explain how you can build your own blog using a tool called [Hugo](https://gohugo.io) and then put it online. You don’t need any previous experience to follow along, just a willingness to learn.

I think Hugo is a great alternative to Wordpress and site builders like Squarespace or Wix. Although there can be more of a learning curve, in return you get much more control, flexibility and ownership over your blog. I’ll go into more detail on the differences in this guide.

Even if you’re not very technical I think you’d wrap your head around the basics within a day or less.

By the end of this guide you’ll have built a basic blog and put it online. [This](https://ibby-hugo-tutorial.github.io/) is what the finished product will look like.

If you hit a snag in the tutorial and can’t figure it out feel free to drop me an email or leave a comment. I’ll do my best to help!

If you’re interested, you can find the source code for this tutorial [here.](https://github.com/PARC6502/hugo-blog-tutorial)

# What is Hugo?

[Hugo](https://gohugo.io/) is a _static site generator_. It’s a tool which combines a bunch of files and turns them into HTML, CSS and JavaScript files. Or in other words it uses these files to generate a _static site_.

Normally the files you write are _markdown_ files for pages and blog posts, as well as configuration files and HTML templates.

> _Markdown is a markup language that’s much simpler to use and read than HTML. For example typing_ `_**this**_` _produces bold text like_ **_this_**_. You can find out more using_ [_this cheatsheet_](https://www.markdownguide.org/cheat-sheet/)

You can think of a static site generator as a compromise between between a static site and a content management system (CMS) like WordPress or Ghost.

## Why not just write HTML, CSS and JavaScript files?

*   **Easier to learn**  
    If you’re learning from scratch there’s less to learn with static site generators. Markdown is easier to pick up than HTML and you can use preconfigured templates or themes.
*   **Less repetition**  
    With an HTML site bits that are the same in different pages have to be repeated. For example you have to insert the top menu into every page. If you change the menu, you have to change it in every page. Hugo takes care of that for you. You will only have to change the menu in one place and Hugo will do the rest.
*   **Plugins and themes galore!**  
    Hugo makes it very easy to use plugins and themes. If someone else has figured out the solution to your problem, or made a very pretty blog, you can easily use that.

## Why not use a CMS like WordPress or Ghost?

*   **Uses less resources**  
    A content management system runs a lot of code on the server. In comparison, the server for a static site only has to serve the content. This means you can spend less money on the server (and more on coffee). Better for your wallet and the environment!
*   **Simpler to manage**  
    CMS’ have a lot of moving parts. If you’ve ever tried to manage your own wordpress install, you’ve probably run into database issues, incompatible PHP versions and baffling errors that suddenly appear out of nowhere. It can be hard to figure out where the problem came from with so many moving parts. Not to mention the difficulty of figuring out how to do backups and restores when databases are involved. There’s a lot less points of failure with a tool like Hugo, and because there’s no database backing up can be as simple as copying the files.
*   **Easier access to _your_ data**  
    If you’re not technical and you are using WordPress it can be difficult to interact with your data from outside the administration area. Figuring out where your posts are stored or trying to recover them after a server failure can be daunting tasks. Even worse, popular site builders like SquareSpace and Wix don’t even offer the functionality to export the site you worked so hard to build. It’s _your_data, _your_work, _your_creativity, shouldn’t you get to own and control that?

# Installation

On [the Hugo website](https://gohugo.io/getting-started/installing/) there’s a big list of all the ways you can install it. I’ll go over the basic methods for Linux, Windows and Mac.

## Linux

You can use `snap` to install Hugo on Linux. Snap comes pre-installed on Ubuntu, and if you're using a distribution based on Ubuntu or Debian you can install snap by opening a terminal and typing the following:

<pre class="lj lk ll lm ln lo lp lq">sudo apt update && sudo apt install snapd</pre>

Checkout [this page](https://snapcraft.io/docs/installing-snapd) if you need more information about how to install snap on your specific distribution.

After that you can use snap to install Hugo with this command:

<pre class="lj lk ll lm ln lo lp lq">snap install hugo</pre>

## Windows

This is a complete video guide to installing Hugo on Windows.

Or if you prefer text instructions, you first need to head over to [this releases page](https://github.com/gohugoio/hugo/releases) and find the first file that ends in either `Windows-32bit.zip` or `Windows-64bit.zip`. [Check this page out](https://support.microsoft.com/en-us/help/15056/windows-32-64-bit-faq) if you're not sure whether your computer is 32-bit or 64-bit. (But it's probably 64-bit.)

After you download and extract the zip file, you should find a `hugo.exe` file. Copy that file.

In your `C:\` drive, create a folder named `Hugo` and inside that create a folder named `bin`.

Now, paste the `hugo.exe` file into the `C:\Hugo\bin` folder. Your file structure should look like this:

<pre class="lj lk ll lm ln lo lp lq">C:  
 └─Hugo  
   └─bin  
     └─hugo.exe</pre>

Next you’ll need to open the Control Panel, click on `Advanced Setting` then the `Environment Variables` button at the bottom of that tab.

Select the `Path` variable and click edit. Then click the `New` button and type in `C:\Hugo\bin`. After that OK out of all the windows.

To test it works open the command prompt by clicking the windows key and starting to type the word command. The command prompt progam should appear.

<figure class="lj lk ll lm ln hk ez fa paragraph-image">![Image for post](https://miro.medium.com/max/60/1*jld43cvXK-r8sZcQgV5IZg.png?q=20)![Image for post](https://miro.medium.com/max/702/1*jld43cvXK-r8sZcQgV5IZg.png)

<figcaption class="hy hz fb ez fa ia ib ar b as at bp" data-selectable-paragraph="">Windows 10 command prompt — Screenshot is taken by CandyJugz and uploaded to [Wikimedia Commons](https://commons.wikimedia.org/w/index.php?curid=50778102)</figcaption>

</figure>

After opening it, type the following:

<pre class="lj lk ll lm ln lo lp lq">hugo version</pre>

If everything is working fine the hugo version should appear.

# MacOS

You can install Hugo on Mac using a tool called [homebrew](https://brew.sh/) which you can install from the terminal.

To open the terminal use the ⌘ _Cmd+Space_ keyboard shortcut to open Spotlight. From here type the word `Terminal` and open the app that shows up.

Now to install homebrew, type the following into your terminal:

<pre class="lj lk ll lm ln lo lp lq">/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"</pre>

After that is intalled you can install Hugo by typing the following:

<pre class="lj lk ll lm ln lo lp lq">brew install hugo</pre>

You can check whether or not it’s installed by typing `hugo version` in the terminal. If it's installed fine, the version should appear.

# A quick word about the command line

If you’ve made it through the installation section you’ve come across the command line. On Mac and Linux it’s called the ‘Terminal’, on Windows it’s ‘Command Prompt’ or ‘Powershell’.

Don’t worry if you’ve never used it before, it’s not as scary as it seems. Instead of interacting with your computer by pointing at and clicking things, you do it by typing commands. No need to learn any commands in advance, just follow along!

# Setting the stage

First of all, you want to decide where your hugo site will be stored on your computer. You might just decide to put it in your documents folder and name it something like `my-blog`. Or you might create a folder in your home directory called `websites` or `blogs` and store your blog(s) there. For the sake of this tutorial, I'm going with the second option.

> _The_ **_home directory_** _is where all your personal files are stored. It includes your_ `_Documents_` _folder, your_ `_Desktop_` _folder and quite a few other folders. On Windows this folder is_ `_C:\Users\<your-username>_`_, on Linux it's_ `_/home/<your-username>_` _and on MacOS it's_ `_/Users/<your-username>_`_. By default the command line opens in the home directory. From the command line, check which directory you're by using the_ `_pwd_` _(print working directory) command on Linux/Mac or the_ `_chdir_` _(check directory) command on Windows._

Open up your command line, which should by default be in the home directory, and type in the following commands.

<pre class="lj lk ll lm ln lo lp lq">mkdir websites  
cd websites</pre>

The first command creates a folder (`mkdir` as in 'make directory') called websites and the second command moves you into that folder (`cd` as in 'change directory').

Now you’re ready to make your hugo site. From the command line, type in this command:

<pre class="lj lk ll lm ln lo lp lq">hugo new site my-blog</pre>

This will create a folder called `my-blog` which contains the files and folders that will generate your blog. Before you can see the blog though, you'll need to add a theme.

# Installing a theme

<figure class="lj lk ll lm ln hk ez fa paragraph-image">![Image for post](https://miro.medium.com/max/60/1*qECF37xhrjuAMNA8FVPUWg.png?q=20)![Image for post](https://miro.medium.com/max/1354/1*qECF37xhrjuAMNA8FVPUWg.png)

<figcaption class="hy hz fb ez fa ia ib ar b as at bp" data-selectable-paragraph="">Hugo has a lot of themes you can choose from</figcaption>

</figure>

Before you can have a look at your site, you’ll need to install a theme. Hugo has [a huge selection of themes](https://themes.gohugo.io/), so hopefully you’ll find a few that you like.

For this tutorial I’m going to use the [anubis theme](https://themes.gohugo.io/hugo-theme-anubis/), which is a very simple theme for blogs. Download it [from this link](https://github.com/Mitrichius/hugo-theme-anubis/archive/master.zip) and extract the file. After extracting, you should get a folder called `hugo-theme-anubis-master`, rename this folder to `anubis`, and move it into `themes` folder inside `my-blog`.

> _During the rest of this guide when I talk about a folder by saying something like_ `_my-blog/content_` _that means the_ `_content_` _folder inside the_ `_my-blog_` _folder._

Here’s what the `my-blog` folder should look like:

<pre class="lj lk ll lm ln lo lp lq">my-blog  
├── archetypes  
├── config.toml  
├── content  
├── data  
├── layouts  
├── resources  
├── static  
└── themes  
  └── anubis</pre>

Inside the `my-blog` folder you'll find a file called `config.toml`. This is a configuration file that lets you set different options for the site.

Open this configuration file with a text editor like gedit or notepad. This is what it'll look like:

<pre class="lj lk ll lm ln lo lp lq">baseURL = "http://example.org/"  
languageCode = "en-us"  
title = "My New Hugo Site"</pre>

You’ll need to add a new line for the theme option, and whilst you’re here you may as well change the title. You want to end up with a `config.toml` file that looks like this:

<pre class="lj lk ll lm ln lo lp lq">baseURL = "http://example.org/"  
languageCode = "en-us"  
title = "The Coolest Blog"  
theme = "anubis"</pre>

You’re now ready to have your first look at your site! In the command line, you need to navigate to the `my-blog` folder. If you've just opened the command line and you're in the home directory, use this command to change the directory:

<pre class="lj lk ll lm ln lo lp lq">cd websites/my-blog</pre>

Now run this command to run your blog:

<pre class="lj lk ll lm ln lo lp lq">hugo server -D</pre>

This command line window is now running a _Hugo server_. Head over to your browser and go to `http://localhost:1313/` to view your blog.

<figure class="lj lk ll lm ln hk ez fa paragraph-image">![Image for post](https://miro.medium.com/max/60/0*fpQO-VYBSGbNhlt7.png?q=20)![Image for post](https://miro.medium.com/max/820/0*fpQO-VYBSGbNhlt7.png)</figure>

Unfortunately, without any pages, it’s quite boring to look at. Let’s fix that.

# Your first hugo page

Open a new command line window (you need to keep the other one running so you can see updates when they happen to your site.) Like you did earlier, navigate to the `my-blog` folder:

<pre class="lj lk ll lm ln lo lp lq">cd websites/my-blog</pre>

Now, run this command to create a new post:

<pre class="lj lk ll lm ln lo lp lq">hugo new posts/my-first-post.md</pre>

If you head to your browser, you should see that this empty post has been added.

<figure class="lj lk ll lm ln hk ez fa paragraph-image">![Image for post](https://miro.medium.com/max/60/0*hY5VMmRCXw-gk1q_.png?q=20)![Image for post](https://miro.medium.com/max/820/0*hY5VMmRCXw-gk1q_.png)</figure>

Use your file explorer to open up the `my-blog/content/posts/` folder. Inside you'll find a file called `my-first-post.md`, which you created with the command used earlier.

Open this file up with a text editor, it will look a bit like this:

<pre class="lj lk ll lm ln lo lp lq">---  
title: "My First Post"  
date: 2020-02-22T12:38:22Z  
draft: true  
---</pre>

What you see here is called _frontmatter_, specifically this is _YAML frontmatter_. This is information about the post that’s not post content. In other words, metadata.

You can add other metadata to the frontmatter such as tags, categories or a summary.

Below the three dashes is where you’ll add your content, try adding the following below the three dashes:

<pre class="lj lk ll lm ln lo lp lq"># My main headingIt's so *exciting* writing my first **hugo** blog post.## A smaller heading* Wow these bullets are way easier than HTML bullets!  
* Enough writing, let's see what it looks like!</pre>

Save the file, then check your browser to see what it looks like.

<figure class="lj lk ll lm ln hk ez fa paragraph-image">![Image for post](https://miro.medium.com/max/60/1*OzLYnulKB9DOfSVNtOVteQ.png?q=20)

<figcaption class="hy hz fb ez fa ia ib ar b as at bp" data-selectable-paragraph="">What your blog looks like with the first post</figcaption>

</figure>

Click the post title to navigate to the post page. You should see `http://localhost:1313/posts/my-first-post/` in your browser URL bar.

<figure class="lj lk ll lm ln hk ez fa paragraph-image">![Image for post](https://miro.medium.com/max/60/1*lWCdM5gX8KcAAgo3XvYCTg.png?q=20)

<figcaption class="hy hz fb ez fa ia ib ar b as at bp" data-selectable-paragraph="">What the first post looks like</figcaption>

</figure>

Use [this markdown cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) to play around with your page and add some content.

> _Although using a plain text editor works fine, it’ll probably make your life easier to look into an editor with markdown support._ [_Typora_](https://typora.io/)_,_ [_Mark Text_](https://marktext.app/) _and_ [_ghostwriter_](https://wereturtle.github.io/ghostwriter/) _are all specialised markdown editors. Most code editors like_ [_Notepad++_](https://notepad-plus-plus.org/) _and_ [_VSCodium_](https://vscodium.com/) _have plugins that support markdown._

# Changing the summary

Now you’ve got the bones of a blog, but you may have noticed that the formatting of the post summary on the homepage isn’t all that great. All the content is showing up, without any of the formatting!

> _Although it looks like it’s all the text, it’s actually the first ~70 words, it’s just that your first post has less than that so it shows all the text._

Let’s create a new post to play around with these content summaries.

<pre class="lj lk ll lm ln lo lp lq">hugo new posts/summaries.md</pre>

Put some nonsense text in your `summaries.md` file. Here's what my file looks like:

<pre class="lj lk ll lm ln lo lp lq">---  
title: "Summaries"  
date: 2020-02-27T14:54:52Z  
draft: true  
---That was Wintermute, manipulating the lock the way it had manipulated the drone micro and the dripping chassis of a broken mirror bent and elongated as they fell. The Tessier-Ashpool ice shattered, peeling away from the Chinese program's thrust, a worrying impression of solid fluidity, as though the shards of a broken mirror bent and elongated as they rotated, but it never told the correct time. Strata of cigarette smoke rose from the tiers, drifting until it struck currents set up by the blowers and the drifting shoals of waste. No sound but the muted purring of the bright void beyond the chain link. Now this quiet courtyard, Sunday afternoon, this girl with a random collection of European furniture, as though Deane had once intended to use the place as his home. Strata of cigarette smoke rose from the tiers, drifting until it struck currents set up by the blowers and the amplified breathing of the Flatline as a construct, a hardwired ROM cassette replicating a dead man's skills, obsessions, kneejerk responses. Now this quiet courtyard, Sunday afternoon, this girl with a random collection of European furniture, as though Deane had once intended to use the place as his home.</pre>

After checking it out in the browser you can see the summary doesn’t contain the whole text.

<figure class="lj lk ll lm ln hk ez fa paragraph-image">![Image for post](https://miro.medium.com/max/60/0*RgJZCdPOxEqjXhyq.png?q=20)</figure>

Still, it would be better if you could have more control over the summary. Sometimes an excerpt might be fine, but like you saw with the first post, it can look a bit mangled.

To control the summary you can use the `<!--more-->` summary divider. Add the following to your `summaries.md` file, under the frontmatter but before the nonsense text:

<pre class="lj lk ll lm ln lo lp lq">In this post I will be exploring summaries in my hugo blog.<!--more--></pre>

After saving the file, this is what you’ll see this in the browser:

<figure class="lj lk ll lm ln hk ez fa paragraph-image">![Image for post](https://miro.medium.com/max/60/0*ut54ZDYA2_D516NX.png?q=20)</figure>

Dope!

Before we move on, let’s add a summary to the first post. This time instead of using the summary divider we’ll add it to the frontmatter. This is the frontmatter for `my-first-post.md` right now:

<pre class="lj lk ll lm ln lo lp lq">---  
title: "My First Post"  
date: 2020-02-22T12:38:22Z  
draft: true  
---</pre>

Now we’ll add a line for the summary at the end:

<pre class="lj lk ll lm ln lo lp lq">---  
title: "My First Post"  
date: 2020-02-22T12:38:22Z  
draft: true  
summary: The coolest blog post in the universe  
---</pre>

After saving you’ll see this in your browser:

<figure class="lj lk ll lm ln hk ez fa paragraph-image">![Image for post](https://miro.medium.com/max/60/0*Lh5ISkemHS5_PM6I.png?q=20)</figure>

Having control over the summary is great. Having to remember exactly how to type `<!--more-->` or, more likely, having to copy and paste it each time, could be a pain. Thankfully, Hugo let's us change what the default post looks like.

# Editing the default post

Whenever you use the `hugo new` command, the markdown file it creates is based on the markdown file inside `my-blog/archetypes/default.md`.

Here’s what that file looks like:

<pre class="lj lk ll lm ln lo lp lq">---  
title: "{{ replace .Name "-" " " | title }}"  
date: {{ .Date }}  
draft: true  
---</pre>

If you ignore all the weird curly brackets, it looks a bit like what posts look like when you first create them.

If you wanted to, you could change the frontmatter. You may not want posts to be drafts by default, or might want to add `tags` or `categories` to the frontmatter.

Feel free to play around this, for now though we’ll just change it a tiny bit by adding the summary divider:

<pre class="lj lk ll lm ln lo lp lq">---  
title: "{{ replace .Name "-" " " | title }}"  
date: {{ .Date }}  
draft: true  
---<!--more--></pre>

Now, whenever you create a new post with the `hugo new` comand, it'll already have a summary section in it. Let's try it out:

<pre class="lj lk ll lm ln lo lp lq">hugo new posts/featured-image.md</pre>

Open up the `featured-image.md` file, and you'll see it already has the summary divider:

<pre class="lj lk ll lm ln lo lp lq">---  
title: "Featured Image"  
date: 2020-02-27T16:49:05Z  
draft: true  
---<!--more--></pre>

Now we can add an image to our post!

# Adding an image

<figure class="lj lk ll lm ln hk ez fa paragraph-image">![Image for post](https://miro.medium.com/max/60/0*t4jyJUge0NSTrqKR?q=20)

<figcaption class="hy hz fb ez fa ia ib ar b as at bp" data-selectable-paragraph="">Photo by [sarandy westfall](https://unsplash.com/@sarandywestfall_photo?utm_source=medium&utm_medium=referral) on [Unsplash](https://unsplash.com?utm_source=medium&utm_medium=referral)</figcaption>

</figure>

Some Hugo themes come with an option for adding feature images. The way it’s done depends on the theme.

Some hugo themes will let you add it to the frontmatter, for other themes you create a folder for your post that contains an image called `feature.jpg` or something like that.

For this tutorial I wanted to keep things as simple as possible, so the theme I picked doesn't have that option.

You can still get the same functionality using the `<!--more-->` summary divider.

Find an image you like, you can use a site like [pexels](https://www.pexels.com) if you don’t have anything you want to use on your computer. To make things easier for yourself give the image a simple name. I’ve called mine `forest.jpg`.

<figure class="lj lk ll lm ln hk ez fa paragraph-image">![Image for post](https://miro.medium.com/max/60/0*S4JvwWB_9XcCDzz9?q=20)

<figcaption class="hy hz fb ez fa ia ib ar b as at bp" data-selectable-paragraph="">Photo by [Sergei Akulich](https://unsplash.com/@sakulich?utm_source=medium&utm_medium=referral) on [Unsplash](https://unsplash.com?utm_source=medium&utm_medium=referral)</figcaption>

</figure>

Copy this file into the `my-blog/static` folder. You should end up with a folder structure like this:

<pre class="lj lk ll lm ln lo lp lq">my-blog  
└── static  
  └── forest.jpg</pre>

> _Any file you put inside the_ `_static_` _folder will end up on the root of your website. So if your website was_ `_my-blog.com_` _you could access_ `_forest.jpg_` _by going to_ `_my-blog.com/forest.jpg_`

Now, add the image to your `featured-image.md` by adding this line above the summary divider.

<pre class="lj lk ll lm ln lo lp lq">![](/forest.jpg)</pre>

After saving your blog will look something like this. (I also added a little summary line to my file.)

<figure class="lj lk ll lm ln hk ez fa paragraph-image">![Image for post](https://miro.medium.com/max/60/0*Hg7DgaKxn1COE5mn.png?q=20)</figure>

You can also add images to your post that aren’t hosted on your site.

In the `featured-image.md` file, try adding this line below the summary divider to try it out:

<pre class="lj lk ll lm ln lo lp lq">![](https://images.pexels.com/photos/459225/pexels-photo-459225.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940)</pre>

Save the file and head to your browser. Click on the title of the Featured Image post to navigate to that page. It should look like this:

<figure class="lj lk ll lm ln hk ez fa paragraph-image">![Image for post](https://miro.medium.com/max/60/0*UVSHYQLGNARnZ3eN.png?q=20)</figure>

# Tags and categories

I’ve mentioned this a couple times - Hugo lets you organise your posts into tags and categories. Let’s add some to the `featured-image.md` file.

Change the frontmatter so it looks like this:

<pre class="lj lk ll lm ln lo lp lq">---  
title: "Featured Image"  
date: 2020-02-27T16:49:05Z  
draft: true  
categories:  
- "photography"  
tags:  
- "nature-photo"  
- "forest-photo"  
---</pre>

After saving you’ll need to restart the `hugo server -D` command for the tag and category pages to be generated.

To do that open the command line where you first typed that command and type _Ctrl+C_. This stops the server. Now, enter the command `hugo server -D` to start the server again.

Now, when you open your web browser, the feature image post will look like this:

<figure class="lj lk ll lm ln hk ez fa paragraph-image">![Image for post](https://miro.medium.com/max/60/0*D6u8gIL5H7HlQaG9.png?q=20)</figure>

You can click on any of these tags or categories, which will take you to a page with all the posts in that section.

If you’d like to add one your categories or tags to your menu, you can do it by adding the following to the `config.toml` file:

<pre class="lj lk ll lm ln lo lp lq">[menu][[menu.main]]  
name = "Photography"  
url = "/categories/photography"</pre>

> Note that some themes may require a different syntax to this. The theme’s page should tell you what syntax to use.

After editing and saving the configuration file, the heading will look like this:

<figure class="lj lk ll lm ln hk ez fa paragraph-image">![Image for post](https://miro.medium.com/max/60/0*8wT05wGouVW4T44C.png?q=20)

<figcaption class="hy hz fb ez fa ia ib ar b as at bp" data-selectable-paragraph="">The blog’s heading after adding Photography to the menu</figcaption>

</figure>

# Adding an about page

To add an about page, create a file called `about.md` inside the `my-blog/content` folder.

You don't need to use the `hugo new` command for this as you don't need any of the frontmatter that is in the default file. You can create the file from your file explorer, or from your text editor.

> _You can also create files from the command line._
> 
> _From the_ `_my-blog_` _folder type in_ `_touch content/about.md_`_. This will create a file called_ `_about.md_` _inside the_ `_content_` _folder._

Add some text like this to it, and save it:

<pre class="lj lk ll lm ln lo lp lq"># About MeI'm just a really cool dude, y'know.</pre>

Now, from your browser, you can head to `http://localhost:1313/about/` and you'll see this page:

<figure class="lj lk ll lm ln hk ez fa paragraph-image">![Image for post](https://miro.medium.com/max/60/0*rs0drqsycaomc5LR.png?q=20)</figure>

Just like before, you can add it to the menu by editing the configuration file. Edit the menu section of the `config.toml` file, like so:

<pre class="lj lk ll lm ln lo lp lq">[menu][[menu.main]]  
name = "Photography"  
url = "/categories/photography"  
weight = 1[[menu.main]]  
name = "About"  
url = "/about"  
weight = 2</pre>

Adding the `weight` option lets you control the order. It seems to default to alphabetical order otherwise.

Now the menu section should like this:

<figure class="lj lk ll lm ln hk ez fa paragraph-image">![Image for post](https://miro.medium.com/max/60/0*kGhPE3W5veBAf5IF.png?q=20)

<figcaption class="hy hz fb ez fa ia ib ar b as at bp" data-selectable-paragraph="">The blog’s header with the About menu option</figcaption>

</figure>

# Putting it online

> _There are a lot of ways to publish your blog. I tried to pick the method that requires the least amount of tools, accounts, and money._
> 
> _But, it’s not necessarily the most ideal method. Check out_ [_hugo’s page on deployment_](https://gohugo.io/hosting-and-deployment/) _for more methods._

Before going through the steps to put it online open each of three posts you created, delete the `draft: true` line, and save the file. Any post that has this line won't be published.

> _The_ `_hugo server -D_`_shows the website including the drafts. If we typed_ `_hugo server_` _the drafts wouldn’t show up_

Open up [github](https://github.com/) and create an account.

By the end of this tutorial the website will be hosted on `<your-github-username>.github.io` so pick the username based on that.

After confirming your email, you’ll be taken to a page that looks like this:

<figure class="lj lk ll lm ln hk ez fa paragraph-image">![Image for post](https://miro.medium.com/max/60/0*IafUJoUQVcVyqRgb.png?q=20)</figure>

Now open the `config.toml` file (this is the last time, I promise!) and change the baseURL option so it looks like this:

<pre class="lj lk ll lm ln lo lp lq">baseURL = "https://<your-github-username>.github.io"</pre>

Instead of `<your-github-username>` enter the actual username you're using. For me this would be `https://ibby-hugo-tutorial.github.io`.

After you've made the change, save the file and close it.

For the repository name, enter `<your-github-username>.github.io`, for me this would be `ibby-hugo-tutorial.github.io`.

After that click the `Create repository` button.

On the next page that appears select `upload an existing file`.

<figure class="lj lk ll lm ln hk ez fa paragraph-image">![Image for post](https://miro.medium.com/max/60/0*KRf_N8XSJJsx8WBL.png?q=20)</figure>

Head over to your command line window and exit the Hugo server by typing _Ctrl+C_.

Type the following command and hit enter:

<pre class="lj lk ll lm ln lo lp lq">hugo --minify</pre>

Now in your file explorer, open up the `my-blog/public` folder. Select all the files in there and drag them into the github upload page:

<figure class="lj lk ll lm ln hk ez fa paragraph-image">![Image for post](https://miro.medium.com/max/60/0*DCtamZCKshp3BdkJ.png?q=20)</figure>

After the files have uploaded it will look this:

<figure class="lj lk ll lm ln hk ez fa paragraph-image">![Image for post](https://miro.medium.com/max/40/0*4N92G7o_5T_H1T9v.png?q=20)</figure>

Click the `Commit changes` button.

After the files have finished processing, you can head to `https://<your-github-username>.github.io` to see your blog!

[Here's mine.](https://ibby-hugo-tutorial.github.io/)

# Updating your site

Whenever you want to update your site just repeat the same steps.

Use the `hugo --minify` command to generate the static site, open the `public` folder and upload it to github. You'll find the upload button on the repository page:

<figure class="lj lk ll lm ln hk ez fa paragraph-image">![Image for post](https://miro.medium.com/max/60/0*wI1h8leYjLVKt-iy.png?q=20)</figure>

You may want to bookmark the upload page for convenience.

<figure class="lj lk ll lm ln hk ez fa paragraph-image">![Image for post](https://miro.medium.com/max/60/0*jhKc3Wp4jat4GnNJ?q=20)

<figcaption class="hy hz fb ez fa ia ib ar b as at bp" data-selectable-paragraph="">Hooray! We’re done!</figcaption>

</figure>

# What’s next?

1.  You could [learn the basics of git](https://guides.github.com/introduction/git-handbook/). This will open up other publishing options for you like [now](https://zeit.co/home) or [netlify](https://www.netlify.com/). It would also let you streamline the process of publishing to github pages so that all it takes is a single command from the command line.
2.  As mentioned earlier in this tutorial, you may want to look into a specialised markdown editor like [Mark Text](https://marktext.app/). This will be a lot nicer for editing markdown files.
3.  You could also look into a code editor like [VSCodium](https://vscodium.com/). This will let edit all your website files from one place, and it has great markdown plugins.
4.  [Find a theme](https://themes.gohugo.io/) you like and use it instead of anubis. I picked anubis for it’s simplicity, but that may not appeal to you, so find the theme you like best! Make sure you read the theme’s page to find the right way to configure it. Each theme is configure slightly differently, but now that you have the basics down it won’t be too confusing!
5.  Get your own domain from a provider like [namecheap](https://www.namecheap.com/) and [point it to your blog](https://help.github.com/en/github/working-with-github-pages/managing-a-custom-domain-for-your-github-pages-site).

# Thanks for reading!

I hope you found it helpful. If you have any questions or feedback don’t hesitate to leave a comment or get in touch.

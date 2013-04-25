---
layout: base
title: Source Code
---

## #{page.title}

The entire source code for this website is available at: [github.com/scottweston/dereel](http://github.com/scottweston/dereel)

### How to checkout and run your own development version of this website

1. Install [awestruct](http://awestruct.org/)
    * Ensure you enable support for `textile` and `md`
1. Checkout the dereel website from github:
   `$ git clone https://github.com/scottweston/dereel.git`
1. Run a development instance of the website on your system:
   `$ awestruct -d --force`

### Example install of awestruct for a Debian system

    $ sudo apt-get install ruby1.9.1 rubygems libxml2-dev libxslt-dev rake git
    $ sudo update-alternatives --config ruby       # change to ruby1.9.1
    $ sudo gem install htmlcompressor coffee-script uglifier therubyracer RedCloth redcarpet
    $ sudo gem install awestruct
    $ git clone https://github.com/scottweston/dereel.git
    $ cd dereel
    $ awestruct -d --force

Now browse to [http://localhost:4242](http://localhost:4242) to view the development site. You need ruby1.9
or greated because the Atomizer extention requires `Datetime.xmlschema()` which was introduced in ruby1.9.

### How to submit content

After checking out the dereel source code create a file in the `news/` directory using the following format:

    YYYY-MM-DD-a-url-safe-unique-title-similar-to-posts-title.md

Where `YYYY` is the current year and `MM` and `DD` are the month and date 0 padded.
Then in that file put the following contents:

    ---
    layout: post
    title: My more fancy title
    author: Your Name
    ---
    My excellent post written using the [markdown](http://daringfireball.net/projects/markdown/basics) markdown language.

You can replace the extention of the file (`.md`) with `.html.haml` if you want to use `haml` or `.html.textile`
if you prefer `textile` markdown. Also be aware that the text between the `---` lines is YAML and so you will
need to put text containing `:` in quotes (`"`) and if you do that then escape any `"`'s


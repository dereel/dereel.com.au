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

### Example install of awestruct for a Debian 6.0.7 system

    $ sudo apt-get install ruby1.9.1 ruby1.9.1-dev rubygems libxml2-dev libxslt-dev rake git
    $ sudo ln -sf ruby1.9.1 /usr/bin/ruby     # change to use ruby1.9.1
    $ sudo ln -sf gem1.9.1 /usr/bin/gem       # change to use gem1.9.1
    $ sudo gem install htmlcompressor coffee-script uglifier therubyracer RedCloth redcarpet rb-inotify
    $ sudo gem install awestruct
    [ add /var/lib/gems/1.9.1/bin to your path based on your shell ]
    $ git clone https://github.com/scottweston/dereel.git
    $ cd dereel
    $ awestruct -d --force

Now browse to [http://localhost:4242](http://localhost:4242) to view the
development site.

You need Ruby1.9 or greated because the `Atomizer` extension requires
`Datetime.xmlschema()` which was introduced in Ruby1.9. If you must
run on Ruby1.8 then you will need to disable the Atomizer by commenting
the following line in `_ext/pipeline.rb`:

    extension Awestruct::Extensions::Atomizer.new(:posts, '/news/atom.xml', :feed_title=>'dereel.com.au')

If you do not comment out the `Atomizer` you will get the following error:

    NoMethodError: undefined method `xmlschema' for DateTime:Class

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

Once you've created your post file add it to git (assuming you're in the `news/` directory):

    $ git add YYYY-MM-DD-a-url-safe-unique-title-similar-to-posts-title.md

Now launch the development server and check that the file compiles and renders correctly, this needs to done
from the top of the repository (ie. one directory above `news/`):

    $ cd ..
    $ awestruct -d --force
    [ browse to http://localhost:4242 and check you post ]

Once you are happy with your new post you can submit it back into Github where it will be deployed
the next time the website is updated:

    $ git commit -a
    [ add a short description of the change, e.g. "add news about ___" ]
    $ git push
    [ enter your Github username and password ]

After this is complete I will receive an email notifying me of the commit and I will endevour to
deploy your change to the server as soon as possible.

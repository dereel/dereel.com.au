Dereel Community Wesbite
========================

Moving from Wordpress because Wordpress is a massive pain.

Framework: [{:awestruct}](http://awestruct.org) and [Bootstrap](http://twitter.github.io/bootstrap/)

How to get up and running
-------------------------

1. Install [{:awestruct}](http://awestruct.org), example for Debian 6.x:

        $ sudo apt-get install ruby1.9.1 ruby1.9.1-dev rubygems libxml2-dev libxslt-dev rake git
        $ sudo ln -sf ruby1.9.1 /usr/bin/ruby
        $ sudo ln -sf gem1.9.1 /usr/bin/gem
        $ sudo gem install htmlcompressor coffee-script uglifier therubyracer RedCloth redcarpet rb-inotify
        $ sudo gem install awestruct

2. Clone the code:

        $ git clone https://github.com/scottweston/dereel.git

3. Bake the development site: 

        $ awestruct -d --force

4. Add your own content (check [the Dereel website](http://dereel.com.au/source-code/) for instructions)

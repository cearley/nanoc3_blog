# nanoc3_blog

This is a fork of the [nanoc3 Blog Starter Kit](https://github.com/mgutz/nanoc3_blog/) by Mario L. Gutierrez. His template provides an excellent starting point but lacks only a richer CSS styling framework. So this project adds the following features:

1. [Compass](http://compass-style.org/) integration with the [html5-boilerplate](https://github.com/sporkd/compass-html5-boilerplate) extension
2. The [Susy](https://github.com/ericam/compass-susy-plugin) semantic CSS grid plugin for Compass

The main features of the original project are preserved, such as the handling of articles and archives, tag pages, and DISQUS integration. However, there are some some fixes too - Such as those mentioned in this [article by Chris Kempson](http://chriskempson.com/2011/02/01/blogging-with-nanoc3-blog-starter-kit.html).

(See CHANGES.md for a complete list of changes.)


## Installation

From the command line

    % gem install bundler
    % git clone https://cearley@github.com/cearley/nanoc3_blog.git your_blog
    % cd your_blog
    % bundle install

## Previewing the Site

Compile the site

    # cleans output/ directory. `rm -rf output` works just as well
    % rake clean 

    # compiles content/* and copies static/* to output/
    % nanoc compile

    # runs preview server and autocompile on page refresh
    % nanoc aco

Preview the site on `http://localhost:3000`


## Customizing Existing Content

Edit these two files:

    content/about.md
    content/sticky.md # box content on front page

Delete articles to remove them from site. Then, recompile and restart server.

To change the front page: `content/index.haml`

To change the site layout: `layouts/default.haml`

To style the site: `content/assets/style.sass`


## Adding Content

Edit the Markdown file created by running this command:

    # filename is written to console
    % rake create:article title='Hello world'

View your page after compiling or refresh in preview mode.


### Adding Static Files

Put static files into the `static/` folder instead of `content/`. `static/*` is copied to the `output/` folder on compile and preview.


## Configuration

Edit these files:

    config.yaml
    atom.xml.erb

### Commenting

DISQUS comment service allows users to post comments on your static site. As such, one must register your site on [DISQUS](http://disqus.com) to
use their service. Once registered, simply uncomment and adjust `disqus_shortname` in `config.yaml`. Uncommenting this setting
enables comments in articles.


## Deploying

Copy `output/*` to the public folder of your web server.

Or, if you use rsync:

    # configuration is in config.yml
    rake deploy:rsync

## Naming Conventions

Hyphens in file names are converted to subdirectories in the output. You decide how you want to organize
your posts. 

    # e.g. These files render to the same output file.
    2010-01-01-post.haml #=> 2010/01/01/post.html
    2010/01-01-post.haml #=> 2010/01/01/post.html
    2010/01/01-post.haml #=> 2010/01/01/post.html

Files may use Rails naming conventions, in which the first extension is retained for the output file
and the second determines the template processor:

    sitemap.xml.erb #=> generate sitemap.xml using erb processor

If a single extension is used, then the files are assumed to be CSS and HTML:

    .sass #=> .css
    .* #=> .html

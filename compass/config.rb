require 'html5-boilerplate'
# Require any additional compass plugins here.
require 'susy'

# Set this to the root of your project when deployed:
http_path = "/"
project_path = "."
css_dir = "output/assets/css"
sass_dir = "content/assets/css"
images_dir = "output/assets/images"
javascripts_dir = "output/assets/js"

# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed
output_style = :expanded

# To enable relative paths to assets via compass helper functions. Uncomment:
# relative_assets = true

# To disable debugging comments that display the original location of your selectors. Uncomment:
# line_comments = false


# If you prefer the indented syntax, you might want to regenerate this
# project again passing --syntax sass, or you can uncomment this:
# preferred_syntax = :sass
# and then run:
# sass-convert -R --from scss --to sass content/assets/css scss && rm -rf sass && mv scss sass

# Using scss
sass_options = {
  :syntax => :scss
}

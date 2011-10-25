## 2011-Oct-25

* Added code colorization using the [Pygments](http://pygments.org/)
  syntax highlighter.

## 2011-Oct-24

* Added support for Feedburner and Google Webmaster Tools.

* Added Rake task to ping Google when the site is updated.

## 2011-Oct-23

* Added the Susy semantic CSS grid plugin for Compass.

* Added Compass integration with the html5-boilerplate extension.

* Removed spaces from tags. (Dashes are used wherever spaces occur.)

* Fixed calc_path function in Rakefile to ensure that dashes are used
  instead of underscores to separate words in URIs.

* Rendering html5 instead of xhtml.

* Replaced broken video link with 'Mgutz-nanoc3 Blog Kit Intro' from Ross Timson on Vimeo.

* Fixed RuntimeError: can't modify frozen hash. Caused when @config
variable was changed during compilation - which was allowed in
older versions of nanoc but now is not.

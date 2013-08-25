# impy-longhorn

This repository primarily contains a CSS theme for making presentations with impress.js, inspired by UTexas (longhorn) colours. The makefile also provides an option to use [pandoc](http://johnmacfarlane.net/pandoc/) to generate HTML for the content.


## Instructions for use

(on the \*nix command line)

Essentially, the template is for use with impress.js. You can use it
in two ways:

1. The standard impress.js way. All you do is, you construct a HTML
   page very similar to the example at
   <https://github.com/bartaz/impress.js/blob/master/index.html>
   A similar example can be found in example.html in this directory.

2. A markdown file can be used to generate both a HTML presentation as
   well as a Beamer PDF from the same source. For this, pandoc needs to
   be installed. sample.md is an example:

   `make sample.html` # Generates a HTML presentation
   `make sample.pdf` # Generates a Beamer PDF

The key file you need to play around with is style.css. Please hack it
to your needs.

This template and mechanism was motivated by this neat write-up:
<http://gregorkopf.de/blog/posts/impress.html>

## External resources

1. Computer Modern fonts, from <http://cm-unicode.sourceforge.net/>. `make fonts` will do the job for you.

2. Backgrounds ('Tweed' and 'Ricepaper2') from <http://subtlepatterns.com/>. `make backgrounds` will do the job for you.

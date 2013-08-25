.SUFFIXES: .md .html .pdf
.PRECIOUS: %.pdf %.html
.PRECIOUS: 

.md.html: 
	pandoc --toc --mathjax="http://cdn.mathjax.org/mathjax/latest/MathJax.js"\
          --template=template.html\
           -s -t html5\
          -f markdown --section-divs -V footertext="A sample footer" -o $@ $<

.md.pdf:
	pandoc --listings -H header.tex\
          -V theme:Warsaw -V colortheme:seahorse\
          -s -t beamer -f markdown -o $@ $<

fonts/cm-unicode-0.6.3a/*.otf:
	mkdir -p fonts;
	(cd fonts;wget ftp://canopus.iacp.dvo.ru/pub/Font/cm_unicode/cm-unicode-0.6.3a-otf.tar.gz;tar xvzf cm-unicode-0.6.3a-otf.tar.gz)

backgrounds/*.png:
	mkdir -p backgrounds;
	(cd backgrounds; mkdir -p tweed_bkgnd; cd tweed_bkgnd;wget http://subtlepatterns.com/patterns/tweed.zip;unzip tweed.zip; cp tweed/tweed.png ../;cd ../; rm -rf tweed_bkgnd;)
	(cd backgrounds; mkdir -p ricepaper2_bkgnd; cd ricepaper2_bkgnd;wget http://subtlepatterns.com/patterns/ricepaper2.zip;unzip ricepaper2.zip; cp ricepaper2/ricepaper2.png ../; cd ../; rm -rf ricepaper2_bkgnd;)

.PHONY: clean

clean:
	$(RM) fonts/cm-unicode-0.6.3a/*otf

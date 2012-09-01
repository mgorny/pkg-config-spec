all: pkg-config-spec.html

.txt.html:
	rst2html.py $< > $@

push: pkg-config-spec.html
	chmod a+r $<
	scp $< dev.gentoo.org:public_html/

.SUFFIXES: .html .txt

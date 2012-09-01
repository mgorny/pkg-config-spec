all: pkg-config-spec.html

.txt.html:
	rst2html.py --link-stylesheet --stylesheet-path=rst.css $< > $@

push: pkg-config-spec.html rst.css
	chmod a+r $^
	scp $^ dev.gentoo.org:public_html/

.SUFFIXES: .html .txt

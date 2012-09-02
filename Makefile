all: pkg-config-spec.html

RST_ARGS = --link-stylesheet --stylesheet-path=rst.css \
		--cloak-email

.txt.html:
	rst2html.py $(RST_ARGS) $< > $@

push: pkg-config-spec.html rst.css
	chmod a+r $^
	scp $^ dev.gentoo.org:public_html/

.SUFFIXES: .html .txt

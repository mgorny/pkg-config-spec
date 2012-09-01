all: pkg-config-spec.html

.txt.html:
	rst2html.py $< > $@

.SUFFIXES: .html .txt

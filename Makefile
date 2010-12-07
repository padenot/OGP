file=rapport.rst

all:
	rst2pdf $(file)

latex:
	rst2latex $(file)

html:
	rst2html $(file)

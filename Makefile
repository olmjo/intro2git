P2STYLES=~/PDstyles/
# P2STYLES=

all : presentation abstract

presentation : html.p

abstract : html.a

html.p : ./doc/in/presentation.md
	pandoc -S -t slidy -s ./doc/in/presentation.md -o ./doc/out/presentation.html \
	-c ${P2STYLES}style.css -c ${P2STYLES}fonts.css \
	--self-contained --slide-level 1

html.a : ./doc/in/abstract.md 
	pandoc -i -t html5 -s ./doc/in/abstract.md -o ./doc/out/abstract.html

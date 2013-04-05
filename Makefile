## PATH TO SITE STYLES
P2STYLES=~/PDstyles/

## UNCOMMENT FOLLOWING LINE FOR PORTABLE BUILDS
# P2STYLES=style/

all : presentation abstract

presentation : presentation.HTML

presentation.HTML : ./doc/out/presentation.html

./doc/out/presentation.html : ./doc/in/presentation.md
	pandoc -S -t slidy -s ./doc/in/presentation.md -o ./doc/out/presentation.html \
	-c ${P2STYLES}style.css -c ${P2STYLES}fonts.css \
	--self-contained --slide-level 1

abstract : abstract.HTML

abstract.HTML : ./doc/out/abstract.html

./doc/out/abstract.html : ./doc/in/abstract.md 
	pandoc -i -t html5 -s ./doc/in/abstract.md -o ./doc/out/abstract.html






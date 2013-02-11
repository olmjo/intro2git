all : presentation abstract

presentation : html.p

abstract : html.a

html.p : ./doc/in/presentation.md ./style/style.css
	pandoc -t slidy -H ./style/style.css -s ./doc/in/presentation.md -o ./doc/out/presentation.html

html.a : ./doc/in/abstract.md 
	pandoc -i -t html5 -s ./doc/in/abstract.md -o ./doc/out/abstract.html


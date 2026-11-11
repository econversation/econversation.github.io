f=index
a=article
css=marp0
tmp=tmp
tfile=two
three=three
date=$(shell date +%Y%m%d_%H%M%S)
name=name
text=./text
newfile="$(date)_$(name)"
date := $(shell date +%Y_%m_%d_%H%M%S)

all:
	make mcat
	marp $(f).md --allow-local-files --html --theme-set back/$(css).css; 
	make openh

simple:
	marp $(f).md --allow-local-files --html --theme-set back/$(css).css; 
	make openh

ss0:
	mkdir -p $(tmp)
	rm -f index.md index.html $(tmp)/*.md $(tmp)/*.html
	cat top/cite.md text/*.md > $(tmp)/$(tfile).md
	pandoc $(tmp)/$(tfile).md --citeproc -o $(tmp)/$(tfile).html
	open $(tmp)/$(tfile).html
	cat top/marp.md $(tmp)/$(tfile).html > $(f).md
	sh back/slide_separator.sh . $(f).md
	marp $(f).md --allow-local-files --html --theme-set back/$(css).css;
	make openh

ss:
	mkdir -p $(tmp)
	rm -f index.md index.html $(tmp)/*.md $(tmp)/*.html
	cat top/cite.md text/*.md > $(tmp)/$(tfile).md
	pandoc $(tmp)/$(tfile).md --citeproc -o $(tmp)/$(tfile).html
	### open -a Textmate $(tmp)/$(tfile).html
	cat top/marp.md $(tmp)/$(tfile).html > $(f).md
	sh back/slide_separator.sh . $(f).md
	marp $(f).md --allow-local-files --html --theme-set back/$(css).css;
	### make openh

ss1:
	make ss
	make openh
	
ssr:
	make ss
	make refresh
	
ssw:
	ls text/*md | entr -s 'make ssr'

luafilter:
	rm -f $(tmp)/*.md
	mkdir -p $(tmp)
	cat text/*.md > $(tmp)/$(three).md
	pandoc $(tmp)/$(three).md -o $(tmp)/$(three)a.md --lua-filter=back/marp.lua
	cat top/marp.md $(tmp)/$(three)a.md > $(f).md
	rm -f $(f).html
	marp $(f).md --allow-local-files --html --theme-set back/$(css).css;
	make openh

sslua:
	mkdir -p $(tmp)
	rm -f index.md index.html $(tmp)/*.md $(tmp)/*.html
	cat top/cite.md text/*.md > $(tmp)/$(three).md
	pandoc $(tmp)/$(three).md --lua-filter=back/marp.lua -o $(tmp)/$(three).md
	pandoc --citeproc top/cite.md $(tmp)/$(three).md -o $(tmp)/$(three).html
	cat top/marp.md $(tmp)/$(three).html > $(f).md
	sh back/slide_separator.sh . $(f).md
	marp $(f).md --allow-local-files --html --theme-set back/$(css).css
	# open $(f).html
	make refresh



one:
	mkdir -p $(tmp)
	cat text/*.md > $(tmp)/one.md
	pandoc $(tmp)/one.md -o $(tmp)/one.html
	cat top/marp.md $(tmp)/one.html > index.md
	open -a Textmate $(tmp)/one.html
	rm -f index.html
	marp $(f).md --allow-local-files --html --theme-set back/$(css).css;
	make openh
	
mcat:
	cat top/marp.md text/*.md > index.md


### making notes ###
	
ncat:
	cat top/notes.md text/*.md > notes.md

notes:
	make ncat	
	sh /Users/aniket/_files/sh/mdh.sh notes
	
notesw:
	ls text/*md | entr -s 'make notes'

art:
	ls $(a).*md | entr -s 'sh /Users/aniket/_files/sh/mdh.sh $(a)'	


### marp html pdf ###
	
html:
	marp $(f).md --allow-local-files --html; 

pdf:
	marp $(f).md --allow-local-files --pdf;
	
htmlc:
	marp $(f).md --allow-local-files --html --theme-set back/$(css).css; 
	
pdfc:
	marp $(f).md --allow-local-files --pdf --theme-set back/$(css).css; 
	
pdfc2:
	marp pdf_index.md --allow-local-files --pdf --theme-set back/$(css).css; 
	open pdf_index.pdf

refresh:
	open /Applications/refresh.app
	# open /Users/aniket/_files/sh/refresh.app

openh:
	open $(f).html
	

or:
	open -a "Safari" 'file://$(shell pwd)/index.html#3'
	open -a "Safari" 'file://$(shell pwd)/index.html#3'


or1:
	open -a "Safari" "file:///Users/aniket/Library/Mobile%20Documents/com~apple~CloudDocs/iC_R/projects2/2025_Commons/Papers/dellenbaugh2015urban/index.html#3"	


htmlr:
	make html 
	make refresh
	
htmlcr:
	make htmlc 
	make refresh

pdf1:
	make pdf
	open $(f).pdf
	
newmd:
	touch $(text)/$(newfile).md
	echo "\n\n<details><summary>$(name)</summary>\n\n## $(name)\n\n\n\n\n\n\n\n\n<!-- $(date) $(name) -->\n\n</details> <!-- $(name) -->\n\n\n" > $(text)/$(newfile).md
	open $(text)/$(newfile).md
	# sh back/underscore.sh
	
	

	






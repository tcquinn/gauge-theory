html_out = tangent_spaces.html

all: $(html_out)

$(html_out): %.html: %.md
	pandoc --standalone --lua-filter=gh.lua --mathjax -o $@ $<

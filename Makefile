html_out = tangent_spaces.html exterior_forms.html
pdf_out = exterior_forms.pdf

all: $(html_out) $(pdf_out)

$(html_out): %.html: %.md
	pandoc --standalone --lua-filter=gh.lua --mathjax -o $@ $<

$(pdf_out): %.pdf: %.md
	pandoc --lua-filter=gh.lua --from=gfm --to=pdf -o $@ $<

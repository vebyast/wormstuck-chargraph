


default: wormstuck-sburb.png

%.svg: %.proc
	cat $< | circo -Tsvg > $@

%.png: %.proc
	cat $< | circo -Tpng > $@

%.proc: wormstuck-sburb.dot
	cpp wormstuck-sburb.dot > wormstuck-sburb.proc

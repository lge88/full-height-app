
build: components index.js full-height-app.css template.js
	@component build --dev

full-height-app.css: full-height-app.styl
	@stylus $<

template.js: template.html
	@component convert $<

template.html: template.jade
	@jade $<

components: component.json
	@component install --dev

clean:
	rm -fr build components template.js template.html full-height-app.css

.PHONY: clean

build: components src/video.types.js
	@component build --dev

src/video.types.js: src/video.types
	@component convert $<

components: component.json
	@component install --dev

clean:
	rm -fr build components src/video.types.js

.PHONY: clean
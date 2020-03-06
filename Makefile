.PHONY: build test serve format browserify ui pzpr

build:
	npm run-script build

test:
	npm test

serve:
	cd dist && python3 -m http.server -b localhost

format:
	npm run-script format

ui:
	./node_modules/.bin/browserify ./src-ui/js/core.js > dist/js/ui.js

pzpr:
	./node_modules/.bin/browserify --exclude pzpr-canvas ./src/loader.js > dist/js/pz.js

candle:
	./node_modules/.bin/browserify --exclude canvas -r pzpr-canvas > dist/js/pzprcanvas.js

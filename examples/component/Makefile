all: npm
	purs compile src/*.purs '../../src/**/*.purs' '../../bower_components/purescript-*/src/**/*.purs'
	purs bundle -m Main --main Main output/*/*.js > output/bundle.js
	node_modules/.bin/browserify output/bundle.js -o html/index.js

npm:
	npm install


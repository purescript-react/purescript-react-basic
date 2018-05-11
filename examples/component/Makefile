all: node_modules
	purs compile src/*.purs '../../src/**/*.purs' '../../bower_components/purescript-*/src/**/*.purs'
	purs bundle --module Container output/*/*.js > output/bundle.js
	echo 'module.exports = PS.Container;' >> output/bundle.js
	node_modules/.bin/browserify output/bundle.js index.js -o html/index.js

node_modules:
	npm install

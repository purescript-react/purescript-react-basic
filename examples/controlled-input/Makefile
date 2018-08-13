all: node_modules
	purs compile src/*.purs '../../src/**/*.purs' '../../bower_components/purescript-*/src/**/*.purs'
	purs bundle output/*/*.js > output/bundle.js
	echo 'PS.Main.main();' >> output/bundle.js
	node_modules/.bin/browserify output/bundle.js -o html/index.js

node_modules:
	npm install


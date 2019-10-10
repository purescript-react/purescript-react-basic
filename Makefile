all: build examples

build: bower_components node_modules
	npm run build

bower_components: node_modules
	npx bower --allow-root install

node_modules:
	npm install

.PHONY: build

all: build examples

build: bower npm
	npm run build

bower: npm
	npx bower --allow-root install

npm:
	npm install

.PHONY: build bower npm all

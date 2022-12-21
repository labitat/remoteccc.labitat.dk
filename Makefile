all: build

metadata-title := "RemoteCCC.local @ Labitat"

build:
	pandoc index.md \
	-f markdown \
	-t html \
	-o index.html \
	--standalone \
	--embed-resources \
	--metadata title=$(metadata-title) \
	--email-obfuscation=javascript

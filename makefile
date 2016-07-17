.PHONY: develop deploy

HOST = gui.local
DEPLOY_TARGET = `cat target.txt`
BUILD = _site

build:
	@jekyll build

develop:
	@jekyll server -H $(HOST)

deploy: build
	rsync --verbose --progress -r $(BUILD)/* $(DEPLOY_TARGET)

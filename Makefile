
PROJ = FF_Images

SUBDIRS += Amiga

.PHONY: default clean dist

default: dist

clean:
	rm -rf $(PROJ)*

dist:
	rm -rf $(PROJ)*
	mkdir -p $(PROJ)
	cp -a Amiga $(PROJ)
	cp README.md $(PROJ)
	zip -r $(PROJ).zip $(PROJ)
	rm -rf $(PROJ)

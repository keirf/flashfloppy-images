
PROJ = FF_Images

.PHONY: default clean dist

default: dist

clean:
	rm -rf $(PROJ)*

dist:
	rm -rf $(PROJ)*
	mkdir -p $(PROJ)
	cp -a Amiga $(PROJ)
	cp -a Ensoniq $(PROJ)
	cp -a Unformatted $(PROJ)
	cp README.md $(PROJ)
	zip -r $(PROJ).zip $(PROJ)
	rm -rf $(PROJ)

.PHONY: clean build

GAMEDIR = snake-love
BUILDDIR = dist

clean:
	rm --recursive --force $(BUILDDIR)

build: clean
	mkdir -p $(BUILDDIR)
	cd $(GAMEDIR) && zip --recurse-paths ../$(BUILDDIR)/snake.love .

sketchbook = $(shell cat $$HOME/.processing/preferences.txt | grep "sketchbook" | cut -d= -f2)

.PHONY: run

run: kern.pde
	processing-java --sketch=$(sketchbook)/kern --output=$$HOME/tmp --force --run

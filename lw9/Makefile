CC=swipl

.PHONY: all
all: build

build: 1.pl
	mkdir -p build/
	$(CC) -o build/1 -c 1.pl

clean:
	rm -rf build/

CC=swipl

.PHONY: all
all: build

build: 1.pl 2.pl
	mkdir -p build/
	$(CC) -o build/1 -c 1.pl
	$(CC) -o build/2 -c 2.pl

clean:
	rm -rf build/

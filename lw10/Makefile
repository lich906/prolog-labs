CC=swipl

.PHONY: all
all: build

build: main.pl
	mkdir -p build/
	$(CC) -o build/main -c main.pl

clean:
	rm -rf build/

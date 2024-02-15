all: build

.PHONY: build
build: lw9

.PHONY: lw9
lw9:
	cd lw9/ && make

clean:
	cd lw9/ && make clean

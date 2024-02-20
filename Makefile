all: build

.PHONY: build
build: lw9 lw10

.PHONY: lw9
lw9:
	cd lw9/ && make

.PHONY: lw10
lw10:
	cd lw10/ && make

clean:
	cd lw9/ && make clean
	cd lw10/ && make clean

CC=gcc
CFLAGS=-Iinclude

%.o: src/%.c include/hello.h
	$(CC) -c -o $@ $< $(CFLAGS)

hello: main.o hello.o
	$(CC) -o bin/$@.exe main.o hello.o
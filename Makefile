ZIG := $(HOME)/zig-linux-x86_64-0.7.1/zig

run: lib.o main.c
	tcc main.c -run lib.o

clean:
	rm -f *.a *.so *.o

lib.o: lib.zig
	$(ZIG) build-obj lib.zig -O ReleaseSmall --strip -femit-h
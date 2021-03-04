run: lib.o main.c
	tcc main.c -run lib.o

clean:
	rm -f *.a *.so *.o

# lib.so: lib.c
# 	musl-gcc -Os -static -fpic -shared -c $^ -o $@

lib.o: lib.zig
	zig build-obj $^ -O ReleaseSmall --strip -static
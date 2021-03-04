run: lib.so main.c
	tcc main.c -run lib.so 

clean:
	rm -f lib.so

lib.so: lib.c
	musl-gcc -Os -static -fpic -shared -c $^ -o $@
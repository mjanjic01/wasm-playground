


build:
	mkdir build

native: build
	clang -framework GLUT -framework OpenGL -Wno-deprecated cube.c -o cube

wasm:   build
	emcc -O3 -s LEGACY_GL_EMULATION=1 -s WASM=1 -o build/webassembly.html cube.c

clean:
	rm -rf cube build/*

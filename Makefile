


build:
	mkdir build

native: build
	clang -framework GLUT -framework OpenGL -Wno-deprecated shapes.c -o shapes

wasm:   build
	emcc -O3 -s LEGACY_GL_EMULATION=1 -s WASM=1 -o build/index.html shapes.c

clean:
	rm -rf shapes build/*

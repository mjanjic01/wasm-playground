build:
	mkdir build

native:	build
	clang -framework GLUT -framework OpenGL -Wno-deprecated circle.c -o circle

wasm:	build
	emcc -O3 -s LEGACY_GL_EMULATION=1 -s WASM=1 -o build/index.html circle.c

serve:
	serve build

clean:
	rm -rf cube circle build/*

build:
	mkdir build

native:	build
	clang -framework GLUT -framework OpenGL -Wno-deprecated ball.c -o ball

wasm:	build
	emcc -O3 -s LEGACY_GL_EMULATION=1 -s WASM=1 -o build/index.html ball.c

clean:
	rm -rf cube ball build/*

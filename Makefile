CFLAGS = -std=c++17 -O2 glad.cpp
LDFLAGS = -lglfw -ldl -lpthread -lassimp

OpenGLTest: main.cpp
	g++ $(CFLAGS) -o openGLMain main.cpp $(LDFLAGS)

.PHONY: test clean

test: OpenGLTest
	./openGLMain

clean:
	rm -f openGLMain

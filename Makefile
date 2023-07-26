CFLAGS = -std=c++17 -O2 glad.cpp
LDFLAGS = -lglfw -lvulkan -ldl -lpthread

OpenGLTest: main.cpp
	g++ $(CFLAGS) -o VulkanTest main.cpp $(LDFLAGS)

.PHONY: test clean

test: OpenGLTest
	./VulkanTest

clean:
	rm -f OpenGLTest

#version 330 core

layout (location=0) in vec3 aPos;
layout (location=1) in vec3 aNorm;
layout (location=2) in vec2 aTexCoords;

uniform mat4 projection;
uniform mat4 view;

out vec3 norm;
out vec2 TexCoords;

void main() {

	gl_Position = projection * view * vec4(aPos,1.0);
	norm = aNorm;
	TexCoords = aTexCoords;
}

#version 330 core

layout (location=0) in vec3 aPos;
layout (location=1) in vec3 aNorm;

uniform mat4 projection;
uniform mat4 view;

out vec3 norm;

void main() {

	gl_Position = projection * view * vec4(aPos,1.0);
	norm = aNorm; 
}

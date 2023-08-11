#version 330 core

in vec3 norm; 

out vec4 FragColor;

void main() {

	float ambientStrength = 0.1;
	vec3 lightColor = vec3(1.0,1.0,1.0);
	vec3 objectColor = vec3(1.0, 0.0, 0.0);
	vec3 lightDir = normalize(vec3(1.0, 1.0, 1.0));
	
	// ambient
	vec3 ambient = ambientStrength * lightColor;
	
	// diffuse
	float diff = max(dot(norm, lightDir), 0.0);
	vec3 diffuse = diff * lightColor;
	
	vec3 result = (diffuse + ambient) * objectColor; 	

	FragColor = vec4(result, 1.0f);
}

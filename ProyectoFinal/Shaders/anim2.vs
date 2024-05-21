#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aNormal;
layout (location = 2) in vec2 aTexCoords;

const float amplitude = 7.0;
const float amplitude2 = 0.03;
const float frequency = 15.0;
const float frequency2 = 6.0;
const float PI = 3.14159;
out vec2 TexCoords;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;
uniform float time;

void main()
{
  float distance = length(aPos);
  float efecto = amplitude*sin(frequency+time);
  float efecto2 = amplitude2*sin(frequency2+time);
  gl_Position = projection*view*model*vec4(aPos.x+efecto,aPos.y+efecto2,aPos.z,1);
  TexCoords=vec2(aTexCoords.x,aTexCoords.y);

}

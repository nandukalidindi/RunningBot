attribute vec4 position;
attribute vec4 color;
attribute vec4 normal;

uniform vec4 timeUniform;
uniform mat4 modelViewMatrix;
uniform mat4 projectionMatrix;
uniform mat4 normalMatrix;

varying vec4 varyingColor;
varying vec4 varyingNormal;

void main() {
    varyingNormal = normalize(normalMatrix * normal);
    varyingColor = color;
    gl_Position = projectionMatrix * modelViewMatrix * position;
}
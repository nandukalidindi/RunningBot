varying vec4 varyingColor;
varying vec4 varyingNormal;

uniform vec4 uColor;
uniform vec4 lightPosition;

void main() {
    gl_FragColor = varyingColor;
    float diffuse = max(0.0, dot(varyingNormal, lightPosition));
    vec4 intensity = varyingColor * uColor * diffuse * 3.0;
    gl_FragColor = intensity;
}
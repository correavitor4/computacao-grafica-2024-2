 #version 300 es
precision highp float;

in vec4 vColor;
out vec4 fragColor;
void main() {
    fragColor = vColor;
    // Alterando as cores
    fragColor = vColor + vec4(0.3f, 0.3f, 0.3f, 0.0f);
}
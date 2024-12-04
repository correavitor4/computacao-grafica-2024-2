#version 300 es

precision highp float;
// Variáveis de entrada
in vec4 position;
in vec4 color;
// variável de saída
out vec4 vColor;

void main() {
    vColor = color;

    mat4 scale = mat4(1.2f, 0, 0, 0, 0, 1.2f, 0, 0, 0, 0, 1.2f, 0, 0, 0, 0, 1.0f);

    float pi = 3.1415926535897932384626433832795f;
    float angle = 2.0f * pi / 2.0f;

    mat4 rotation = mat4(cos(angle), -sin(angle), 0.0f, 0.0f, sin(angle), cos(angle), 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f);

    vec4 deslocamento = vec4(0.5f, -0.5f, 0.0f, 1.0f);

    gl_Position = position * scale * rotation + deslocamento;
}
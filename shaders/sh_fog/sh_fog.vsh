//
// Simple passthrough vertex shader
attribute vec3 in_Position;
varying vec2 v_vTexcoord;
void main() {
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * vec4(in_Position,1.0);
    v_vTexcoord = in_Position.xy / 512.0;
}
// common.glsl
// GLSL 4.50, Vulkan 1.0 / SPIR-V 1.0 compatible only.
// No Vulkan 1.1+ features or extensions are used.

#ifndef COMMON_GLSL
#define COMMON_GLSL

// ---------- Math constants ----------
const float PI      = 3.14159265358979323846;
const float TWO_PI  = 6.28318530717958647692;
const float HALF_PI = 1.57079632679489661923;
const float EPSILON = 1e-6;

// ---------- Common colors ----------
const vec3 COLOR_RED     = vec3(1.0, 0.0, 0.0);
const vec3 COLOR_GREEN   = vec3(0.0, 1.0, 0.0);
const vec3 COLOR_BLUE    = vec3(0.0, 0.0, 1.0);
const vec3 COLOR_WHITE   = vec3(1.0, 1.0, 1.0);
const vec3 COLOR_BLACK   = vec3(0.0, 0.0, 0.0);
const vec3 COLOR_YELLOW  = vec3(1.0, 1.0, 0.0);
const vec3 COLOR_CYAN    = vec3(0.0, 1.0, 1.0);
const vec3 COLOR_MAGENTA = vec3(1.0, 0.0, 1.0);

// ---------- Utility functions ----------

// Convert an sRGB color to linear space.
vec3 srgbToLinear(vec3 c) {
    return pow(c, vec3(2.2));
}

// Convert a linear color to sRGB.
vec3 linearToSrgb(vec3 c) {
    return pow(c, vec3(1.0 / 2.2));
}

// Clamp a 2D position to normalized device coordinates [-1, 1].
vec2 clampNDC(vec2 p) {
    return clamp(p, vec2(-1.0), vec2(1.0));
}

// Return one of three colors based on vertex index.
vec3 colorByIndex(int index) {
    if (index == 0) return COLOR_RED;
    if (index == 1) return COLOR_GREEN;
    return COLOR_BLUE;
}

// Simple 1D hash for pseudo-random values.
float hash11(float p) {
    p = fract(p * 0.1031);
    p *= p + 33.33;
    p *= p + p;
    return fract(p);
}

#endif

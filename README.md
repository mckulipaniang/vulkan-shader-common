# vulkan-shader-common

Shared GLSL utilities for Vulkan 1.0 / SPIR-V 1.0 compatible shaders.

## Usage

```glsl
#version 450
#extension GL_GOOGLE_include_directive : enable
#include "common.glsl"
```

Compile with:

```bash
glslangValidator -V --target-env vulkan1.0 shader.vert -o vert.spv -I.
```

Compatibility

· GLSL 4.50
· Vulkan 1.0 / SPIR-V 1.0
· No Vulkan 1.1+ features or extensions

```

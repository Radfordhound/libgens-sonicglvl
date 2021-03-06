//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_ViewportSize;
//   sampler2D s0;
//
//
// Registers:
//
//   Name           Reg   Size
//   -------------- ----- ----
//   g_ViewportSize c24      1
//   s0             s0       1
//

    ps_3_0
    def c0, 0.5, -1, 0, 1
    def c1, 4, 0.333333343, 0, 0
    dcl vPos.xy
    dcl_2d s0
    add r0, c0.x, vPos.xyxy
    mul r0, r0, c24.zwzw
    mov r1.zw, c24
    mad r2, r1.zwzw, c0.yzwz, r0.zwzw
    texld r3, r2, s0
    texld r2, r2.zwzw, s0
    add r2.xyz, r2, r3
    mad r1, r1.zwzw, c0.zyzw, r0
    texld r0, r0.zwzw, s0
    texld r3, r1, s0
    texld r1, r1.zwzw, s0
    add r2.xyz, r2, r3
    add r1.xyz, r1, r2
    mad r1.xyz, r0, -c1.x, r1
    mov oC0.xyz, r0
    mul r0.xyz, r1_abs, c1.x
    dp3 oC0.w, r0, c1.y

// approximately 17 instruction slots used (5 texture, 12 arithmetic)

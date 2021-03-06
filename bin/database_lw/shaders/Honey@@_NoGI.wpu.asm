//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   sampler2D g_FramebufferSampler;
//   float4 g_GIModeParam;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampOffset;
//
//
// Registers:
//
//   Name                 Reg   Size
//   -------------------- ----- ----
//   g_Diffuse            c16      1
//   g_Ambient            c17      1
//   g_ViewportSize       c24      1
//   g_GIModeParam        c69      1
//   g_aLightField        c77      6
//   sampDif              s0       1
//   sampOffset           s4       1
//   sampDLScatter        s9       1
//   g_FramebufferSampler s11      1
//

    ps_3_0
    def c0, -0.0799999982, 0.100000001, 0.5, -0.5
    def c1, 2, -1, 0.5, -2
    def c2, 1, 0, -1, -0.275000006
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xy
    dcl_texcoord3 v2.xyz
    dcl_texcoord5 v3.xy
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s4
    dcl_2d s9
    dcl_2d s11
    nrm_pp r0.xyz, v2
    mad_pp r1.xyz, r0, c1.z, c1.z
    mul_pp r0.xyz, r0, r0
    mov r2.xyz, c80
    mad r2.xyz, r2, r1.y, c79
    mul r2.xyz, r0.y, r2
    mov r3.xyz, c78
    mad r1.xyw, r3.xyzz, r1.x, c77.xyzz
    mov r3.xyz, c82
    mad r3.xyz, r3, r1.z, c81
    mad_pp r0.xyw, r0.x, r1, r2.xyzz
    mad_pp r0.xyz, r0.z, r3, r0.xyww
    mov r1.y, c1.y
    mad_pp r0.xyz, r0, c17, -r1.y
    mul_pp r0.xyz, r0, c16
    add r1.xy, c1.z, vPos
    mul r1.xy, r1, c24.zwzw
    mov r2, c2
    mad r3, c24.zzww, r2.xyyz, r2.yxzy
    mad r1.zw, r1.xyxy, c1.xyxw, r3.xyxy
    texld r4, r1, s11
    add_pp r1.xy, r3.zwzw, r1.zwzw
    texld r3, v1, s4
    mad r1.zw, r3.xywy, c1.x, c1.y
    mul_pp r1.zw, r1, c16.w
    mad_pp r1.xy, r1.zwzw, c0, r1
    mad r1.xy, r1, c0.zwzw, c0.z
    texld_pp r1, r1, s11
    texld_pp r5, v0, s0
    mad_pp r0.xyz, r0, r5, -r1
    mul_pp r0.w, r5.w, c16.w
    mad_pp r0.xyz, r0.w, r0, r1
    mad_pp r1.xyz, c16.w, r2.ywzw, r2.x
    mul_pp r0.w, r3.z, c16.w
    mov_pp oC0.w, r3.x
    mad_pp r0.xyz, r0, r1, r0.w
    texld_pp r1, v3.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xyz, -r0, r4
    mul r0.w, c69.z, v3.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 43 instruction slots used (5 texture, 38 arithmetic)

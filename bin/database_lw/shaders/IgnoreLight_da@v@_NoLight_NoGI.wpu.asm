//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EmissionParam;
//   sampler2D g_FramebufferSampler;
//   float4 g_GIModeParam;
//   float4 g_ViewportSize;
//   sampler2D sampAlpha;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
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
//   g_EmissionParam      c150     1
//   sampDif              s0       1
//   sampAlpha            s1       1
//   sampDLScatter        s9       1
//   g_FramebufferSampler s11      1
//

    ps_3_0
    def c0, 0.5, 0, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xy
    dcl_texcoord5 v2.xy
    dcl_color_pp v3
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s9
    dcl_2d s11
    texld_pp r0, v0, s0
    mul_pp r0, r0, c16
    mul_pp r0, r0, v3
    texld r1, v1, s1
    mul_pp oC0.w, r0.w, r1.y
    mov r1.xyz, c150
    mul r1.xyz, r1, c17
    mad_pp r0.xyz, r1, c150.w, r0
    texld_pp r1, v2.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v2.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 16 instruction slots used (4 texture, 12 arithmetic)
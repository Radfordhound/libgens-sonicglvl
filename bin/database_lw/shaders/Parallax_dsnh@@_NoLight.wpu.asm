//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   sampler2D g_FramebufferSampler;
//   float4 g_GIModeParam;
//   sampler2D g_GISampler;
//   float4 g_ParallaxParam;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_ViewportSize;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampHeight;
//   sampler2D sampNrm;
//   sampler2D sampSpec;
//
//
// Registers:
//
//   Name                     Reg   Size
//   ------------------------ ----- ----
//   mrgGlobalLight_Direction c10      1
//   g_Diffuse                c16      1
//   g_Ambient                c17      1
//   g_Specular               c18      1
//   g_PowerGlossLevel        c20      1
//   g_EyePosition            c22      1
//   g_ViewportSize           c24      1
//   mrgGlobalLight_Diffuse   c36      1
//   mrgGlobalLight_Specular  c37      1
//   mrgEyeLight_Diffuse      c58      1
//   mrgEyeLight_Specular     c59      1
//   mrgEyeLight_Range        c60      1
//   g_GIModeParam            c69      1
//   g_ParallaxParam          c150     1
//   sampDif                  s0       1
//   sampSpec                 s1       1
//   sampNrm                  s3       1
//   sampHeight               s4       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 2, -1, 0, 1
    def c1, 10, 4, 0.5, 0
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4_pp v3
    dcl_texcoord5_pp v4
    dcl_texcoord7_pp v5.xyw
    dcl_color_pp v6
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s3
    dcl_2d s4
    dcl_2d s9
    dcl_2d s10
    dcl_2d s11
    mov_pp r0.z, v4.w
    mov_pp r0.x, v2.w
    mov_pp r0.y, v3.w
    dp3_pp r0.z, r0, r0
    rsq_pp r0.z, r0.z
    mul_pp r0.xy, r0.z, r0
    texld_pp r1, v0, s4
    mad_pp r0.z, r1.y, c150.y, c150.x
    mad r0.xy, r0, r0.z, v0
    texld_pp r1, r0, s3
    mul_pp r1.x, r1.w, r1.x
    mad_pp r0.zw, r1.xyxy, c0.x, c0.y
    nrm_pp r1.xyz, v3
    mul_pp r1.xyz, r0.w, r1
    nrm_pp r2.xyz, v2
    mad_pp r1.xyz, r0.z, r2, r1
    dp2add_sat_pp r0.z, r0.zwzw, r0.zwzw, c0.z
    add r0.z, -r0.z, c0.w
    rsq r0.z, r0.z
    rcp_pp r0.z, r0.z
    nrm_pp r2.xyz, v4
    mad_pp r1.xyz, r0.z, r2, r1
    add r2.xyz, c22, -v1
    dp3 r0.z, r2, r2
    rsq r0.z, r0.z
    mul_pp r3.xyz, r0.z, r2
    mad_pp r2.xyz, r2, r0.z, -c10
    rcp r0.z, r0.z
    mad_sat_pp r0.z, -r0.z, c60.z, c60.w
    nrm_pp r4.xyz, r2
    dp3_sat_pp r0.w, r4, r1
    add_pp r2.xyz, r3, r3
    dp3_sat_pp r1.w, r1, r3
    nrm_pp r3.xyz, r2
    dp3_sat_pp r2.x, r3, r1
    dp3_sat_pp r1.x, r1, -c10
    mov r3.x, c1.x
    mul_pp r1.y, r3.x, c20.y
    exp_pp r1.y, r1.y
    mul_pp r1.y, r1.y, c1.y
    pow_pp r3.x, r2.x, r1.y
    pow_pp r2.x, r0.w, r1.y
    mul_pp r0.w, r3.x, c20.z
    mul_pp r2.yzw, r0.z, c59.xxyz
    mul r3.xyz, r0.z, c58
    mul_pp r1.yzw, r1.w, r3.xxyz
    mul_pp r2.yzw, r0.w, r2
    texld_pp r3, v0.zwzw, s10
    mul_pp r0.z, r3.w, c20.z
    mul_pp r0.z, r2.x, r0.z
    mad_pp r2.xyz, r0.z, c37, r2.yzww
    mul_pp r2.xyz, r2, c18
    texld_pp r4, r0, s1
    texld_pp r0, r0, s0
    mul_pp r2.xyz, r2, r4
    mul r1.x, r1.x, r3.w
    mul_pp r3.xyz, r3, r3
    mad_pp r1.xyz, r1.x, c36, r1.yzww
    mad_pp r1.xyz, r3, c17, r1
    mul_pp r1.xyz, r1, c16
    mul_pp r1.xyz, r0, r1
    mul_pp r1.w, r0.w, c16.w
    mul_pp r0, r1, v6
    mad_pp r0.xyz, r2, v5.w, r0
    mov_pp oC0.w, r0.w
    texld_pp r1, v5.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c1.z, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v5.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 88 instruction slots used (7 texture, 81 arithmetic)
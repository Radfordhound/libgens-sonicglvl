//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyeDirection;
//   float4 g_EyePosition;
//   float4 g_ForceAlphaColor;
//   float4 g_GI0Scale;
//   float4 g_GI1Scale;
//   sampler2D g_GISampler;
//   float4 g_LightScatteringColor;
//   row_major float4x4 g_MtxView;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgInShadowScale;
//   float4 mrgLocalLight0_Color;
//   float4 mrgLocalLight0_Position;
//   float4 mrgLocalLight0_Range;
//   float4 mrgLocalLight1_Color;
//   float4 mrgLocalLight1_Position;
//   float4 mrgLocalLight1_Range;
//   float4 mrgLocalLight2_Color;
//   float4 mrgLocalLight2_Position;
//   float4 mrgLocalLight2_Range;
//   float4 mrgLocalLight3_Color;
//   float4 mrgLocalLight3_Position;
//   float4 mrgLocalLight3_Range;
//   sampler2D sampDif;
//   sampler2D sampFO;
//
//
// Registers:
//
//   Name                                  Reg   Size
//   ------------------------------------- ----- ----
//   mrgGlobalLight_Direction              c10      1
//   g_Diffuse                             c16      1
//   g_Ambient                             c17      1
//   g_OpacityReflectionRefractionSpectype c21      1
//   g_EyePosition                         c22      1
//   g_EyeDirection                        c23      1
//   mrgGlobalLight_Diffuse                c36      1
//   mrgLocalLight0_Position               c38      1
//   mrgLocalLight0_Color                  c39      1
//   mrgLocalLight0_Range                  c40      1
//   mrgLocalLight1_Position               c42      1
//   mrgLocalLight1_Color                  c43      1
//   mrgLocalLight1_Range                  c44      1
//   mrgLocalLight2_Position               c46      1
//   mrgLocalLight2_Color                  c47      1
//   mrgLocalLight2_Range                  c48      1
//   mrgLocalLight3_Position               c50      1
//   mrgLocalLight3_Color                  c51      1
//   mrgLocalLight3_Range                  c52      1
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   mrgInShadowScale                      c64      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_GI1Scale                            c71      1
//   g_LightScatteringColor                c75      1
//   g_ForceAlphaColor                     c89      1
//   g_MtxView                             c90      3
//   sampDif                               s0       1
//   sampFO                                s5       1
//   g_GISampler                           s10      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 0.298900008, 0.586600006, 0.114399999, 0
    def c1, 1, 2, -1, -3
    def c2, 0.5, -0.5, 4, 0
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3 v2.xyz
    dcl_texcoord4 v3
    dcl_texcoord5_pp v4.xyz
    dcl_2d s0
    dcl_2d s5
    dcl_2d s10
    dcl_2d s13
    add_pp r0.x, -c61.z, c61.y
    rcp_pp r0.x, r0.x
    add r0.yzw, -c22.xxyz, v1.xxyz
    dp3 r1.x, r0.yzww, r0.yzww
    rsq r1.x, r1.x
    mul_pp r0.yzw, r0, r1.x
    rcp r1.x, r1.x
    add r1.x, r1.x, -c60.z
    dp3_pp r1.y, r0.yzww, c23
    add_pp r1.y, r1.y, -c61.z
    mul_sat_pp r0.x, r0.x, r1.y
    mad_pp r1.y, r0.x, -c1.y, -c1.w
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov_pp r0.x, c1.x
    add r1.z, r0.x, -c61.x
    cmp_pp r1.y, r1.z, c1.x, r1.y
    add r1.z, -c60.z, c60.w
    rcp r1.z, r1.z
    mul_sat r1.x, r1.z, r1.x
    add_pp r1.x, -r1.x, c1.x
    cmp_pp r0.x, -c61.x, r0.x, r1.x
    mul_pp r0.x, r1.y, r0.x
    add r1.x, -c40.z, c40.w
    rcp r1.x, r1.x
    add r1.yzw, -c38.xxyz, v1.xxyz
    dp3 r2.x, r1.yzww, r1.yzww
    rsq r2.x, r2.x
    rcp r2.y, r2.x
    mul_pp r1.yzw, r1, r2.x
    add r2.x, r2.y, -c40.z
    mul_sat r1.x, r1.x, r2.x
    add_pp r1.x, -r1.x, c1.x
    add r2.x, -c44.z, c44.w
    rcp r2.x, r2.x
    add r2.yzw, -c42.xxyz, v1.xxyz
    dp3 r3.x, r2.yzww, r2.yzww
    rsq r3.x, r3.x
    rcp r3.y, r3.x
    mul_pp r2.yzw, r2, r3.x
    add r3.x, r3.y, -c44.z
    mul_sat r2.x, r2.x, r3.x
    add_pp r2.x, -r2.x, c1.x
    nrm_pp r3.xyz, v2
    dp3_pp r2.y, r3, -r2.yzww
    mul_pp r4.xyz, r2.y, c43
    cmp_pp r2.yzw, r2.y, r4.xxyz, c0.w
    mul_pp r2.xyz, r2.yzww, r2.x
    dp3_pp r1.y, r3, -r1.yzww
    mul_pp r4.xyz, r1.y, c39
    cmp_pp r1.yzw, r1.y, r4.xxyz, c0.w
    mad_pp r1.xyz, r1.x, r1.yzww, r2
    add r1.w, -c48.z, c48.w
    rcp r1.w, r1.w
    add r2.xyz, -c46, v1
    dp3 r2.w, r2, r2
    rsq r2.w, r2.w
    rcp r3.w, r2.w
    mul_pp r2.xyz, r2.w, r2
    dp3_pp r2.x, r3, -r2
    add r2.y, r3.w, -c48.z
    mul_sat r1.w, r1.w, r2.y
    add_pp r1.w, -r1.w, c1.x
    mul_pp r2.yzw, r2.x, c47.xxyz
    cmp_pp r2.xyz, r2.x, r2.yzww, c0.w
    mad_pp r1.xyz, r1.w, r2, r1
    add r1.w, -c52.z, c52.w
    rcp r1.w, r1.w
    add r2.xyz, -c50, v1
    dp3 r2.w, r2, r2
    rsq r2.w, r2.w
    rcp r3.w, r2.w
    mul_pp r2.xyz, r2.w, r2
    dp3_pp r2.x, r3, -r2
    add r2.y, r3.w, -c52.z
    mul_sat r1.w, r1.w, r2.y
    add_pp r1.w, -r1.w, c1.x
    mul_pp r2.yzw, r2.x, c51.xxyz
    cmp_pp r2.xyz, r2.x, r2.yzww, c0.w
    mad_pp r1.xyz, r1.w, r2, r1
    rcp r1.w, v3.w
    mul r2.xy, r1.w, v3
    mad r2.xy, r2, c1.y, c1.z
    abs_sat r2.xy, r2
    add_sat r2.xy, r2, -c65.x
    mul r2.xy, r2, c65.y
    max r1.w, r2.x, r2.y
    max r2.x, v3.z, c0.w
    add r2.y, r2.x, -v3.w
    cmp r2.z, r2.y, c0.w, r2.x
    mov r2.xyw, v3
    texldp_pp r2, r2, s13
    lrp_pp r3.w, v4.z, c1.x, r2.x
    lrp_pp r2.x, r1.w, c1.x, r3.w
    texld_pp r4, v0.zwzw, s10
    mul r1.w, r2.x, r4.w
    dp3_pp r2.y, r3, -c10
    mul r5.xyz, r2.y, c36
    mul_pp r5.xyz, r1.w, r5
    cmp_pp r2.yzw, r2.y, r5.xxyz, c0.w
    add_pp r1.xyz, r1, r2.yzww
    dp3_pp r0.y, r3, -r0.yzww
    mul_pp r2.yzw, c58.w, c58.xxyz
    mul_pp r2.yzw, r0.y, r2
    cmp_pp r0.yzw, r0.y, r2, c0.w
    mad_pp r0.xyz, r0.x, r0.yzww, r1
    mul_pp r1.xyz, r4, r4
    dp3_pp r0.w, r1, c0
    mad_pp r1.xyz, r4, r4, -r0.w
    mad_sat_pp r1.xyz, r1, c71.w, r0.w
    mul_pp r1.xyz, r1, c70
    mul_pp r2.yzw, r1.xxyz, c17.xxyz
    mul r2.yzw, r2, c70.w
    mad r1.xyz, r1, c17, -r2.yzww
    mad_pp r1.xyz, r2.x, r1, r2.yzww
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c16
    mul_pp r1.xy, r3.y, c91
    mad_pp r1.xy, r3.x, c90, r1
    mad_pp r1.xy, r3.z, c92, r1
    mad_pp r1.xy, r1, c2, c2.x
    texld_pp r2, r1, s5
    mul r0.w, c64.w, c64.y
    mov r3.yw, c64
    mad r1.x, r3.y, -r3.w, r3.w
    mad_pp r0.w, r1.w, r1.x, r0.w
    mul_pp r1.xyz, r0.w, r2
    texld_pp r2, v0, s0
    mad_pp r0.xyz, r0, r2, r1
    mul_pp r1.x, r2.w, c16.w
    mul_pp r0.w, r1.x, c21.x
    mul_pp r0, r0, c89
    min_pp r1, r0, c2.z
    mul_pp r0.xyz, c75, v4.y
    mad_pp oC0.xyz, r1, v4.x, r0
    mov_pp oC0.w, r1.w

// approximately 141 instruction slots used (4 texture, 137 arithmetic)

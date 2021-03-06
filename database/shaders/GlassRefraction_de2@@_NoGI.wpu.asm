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
//   sampler2D g_FramebufferSampler;
//   float4 g_GI0Scale;
//   float4 g_LightScatteringColor;
//   row_major float4x4 g_MtxView;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float2 mrgFresnelParam;
//   float2 mrgGlassRefractionParam;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
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
//   float4 mrgLuminanceRange;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif;
//   samplerCUBE sampEnv;
//
//
// Registers:
//
//   Name                                  Reg   Size
//   ------------------------------------- ----- ----
//   mrgGlobalLight_Direction              c10      1
//   g_Diffuse                             c16      1
//   g_Ambient                             c17      1
//   g_Specular                            c18      1
//   g_PowerGlossLevel                     c20      1
//   g_OpacityReflectionRefractionSpectype c21      1
//   g_EyePosition                         c22      1
//   g_EyeDirection                        c23      1
//   g_ViewportSize                        c24      1
//   mrgTexcoordIndex                      c26      1
//   mrgGlobalLight_Diffuse                c36      1
//   mrgGlobalLight_Specular               c37      1
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
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   mrgFresnelParam                       c62      1
//   mrgLuminanceRange                     c63      1
//   mrgInShadowScale                      c64      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_LightScatteringColor                c75      1
//   g_aLightField                         c77      6
//   g_ForceAlphaColor                     c89      1
//   g_MtxView                             c90      3
//   mrgGlassRefractionParam               c150     1
//   sampDif                               s0       1
//   sampEnv                               s1       1
//   g_VerticalShadowMapSampler            s7       1
//   g_FramebufferSampler                  s11      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 2, -2, -1, 3
    def c1, 500, 5, 1024, -0.707106769
    def c2, 0.5, 1, 0, -1
    def c3, 0, 1, 2, 3
    def c4, 0.5, -0.5, 4, 0
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3 v3.xyz
    dcl_texcoord4 v4
    dcl_texcoord6 v5
    dcl_texcoord5_pp v6.xyz
    dcl vPos.xy
    dcl_2d s0
    dcl_cube s1
    dcl_2d s7
    dcl_2d s11
    dcl_2d s13
    add_pp r0.x, -c61.z, c61.y
    rcp_pp r0.x, r0.x
    add r0.yzw, -c22.xxyz, v2.xxyz
    dp3 r1.x, r0.yzww, r0.yzww
    rsq r1.x, r1.x
    mul_pp r0.yzw, r0, r1.x
    rcp r1.x, r1.x
    add r1.x, r1.x, -c60.z
    dp3_pp r1.y, r0.yzww, c23
    add_pp r1.y, r1.y, -c61.z
    mul_sat_pp r0.x, r0.x, r1.y
    mad_pp r1.y, r0.x, c0.y, c0.w
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov r2.xy, c3
    add r0.x, r2.y, -c61.x
    cmp_pp r0.x, r0.x, c3.y, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c3.y
    cmp_pp r1.x, -c61.x, r2.y, r1.x
    mul_pp r0.x, r0.x, r1.x
    add r1.x, -c52.z, c52.w
    rcp r1.x, r1.x
    add r1.yzw, -c50.xxyz, v2.xxyz
    dp3 r2.z, r1.yzww, r1.yzww
    rsq r2.z, r2.z
    rcp r2.w, r2.z
    mul_pp r1.yzw, r1, r2.z
    add r2.z, r2.w, -c52.z
    mul_sat r1.x, r1.x, r2.z
    add_pp r1.x, -r1.x, c3.y
    add r2.z, -c48.z, c48.w
    rcp r2.z, r2.z
    add r3.xyz, -c46, v2
    dp3 r2.w, r3, r3
    rsq r2.w, r2.w
    rcp r3.w, r2.w
    mul_pp r3.xyz, r2.w, r3
    add r2.w, r3.w, -c48.z
    mul_sat r2.z, r2.z, r2.w
    add r2.w, -c40.z, c40.w
    rcp r2.w, r2.w
    add r4.xyz, -c38, v2
    dp3 r3.w, r4, r4
    rsq r3.w, r3.w
    rcp r4.w, r3.w
    mul_pp r4.xyz, r3.w, r4
    add r3.w, r4.w, -c40.z
    mul_sat r2.w, r2.w, r3.w
    add_pp r2.zw, -r2, c3.y
    add r3.w, -c44.z, c44.w
    rcp r3.w, r3.w
    add r5.xyz, -c42, v2
    dp3 r4.w, r5, r5
    rsq r4.w, r4.w
    rcp r5.w, r4.w
    mul_pp r5.xyz, r4.w, r5
    add r4.w, r5.w, -c44.z
    mul_sat r3.w, r3.w, r4.w
    add_pp r3.w, -r3.w, c3.y
    nrm r6.xyz, v3
    dp3_pp r4.w, r6, -r5
    mul_pp r7.xyz, r4.w, c43
    cmp_pp r7.xyz, r4.w, r7, c3.x
    mul_pp r7.xyz, r3.w, r7
    dp3_pp r4.w, r6, -r4
    mul_pp r8.xyz, r4.w, c39
    cmp_pp r8.xyz, r4.w, r8, c3.x
    mad_pp r7.xyz, r2.w, r8, r7
    dp3_pp r4.w, r6, -r3
    mul_pp r8.xyz, r4.w, c47
    cmp_pp r8.xyz, r4.w, r8, c3.x
    mad_pp r7.xyz, r2.z, r8, r7
    dp3_pp r4.w, r6, -r1.yzww
    mul_pp r8.xyz, r4.w, c51
    cmp_pp r8.xyz, r4.w, r8, c3.x
    mad_pp r7.xyz, r1.x, r8, r7
    max r4.w, v4.z, c3.x
    add r5.w, r4.w, -v4.w
    cmp r8.z, r5.w, c3.x, r4.w
    mov r8.xyw, v4
    texldp_pp r8, r8, s13
    max r4.w, v5.z, c3.x
    add r5.w, r4.w, -v5.w
    cmp r9.z, r5.w, c3.x, r4.w
    mov r9.xyw, v5
    texldp_pp r9, r9, s7
    min_pp r4.w, r9.x, r8.x
    lrp_pp r5.w, v6.z, c3.y, r9.x
    lrp_pp r6.w, v6.z, c3.y, r4.w
    rcp r4.w, v4.w
    mul r8.xy, r4.w, v4
    mad r8.xy, r8, c0.x, c0.z
    abs_sat r8.xy, r8
    add_sat r8.xy, r8, -c65.x
    mul r8.xy, r8, c65.y
    max r4.w, r8.x, r8.y
    lrp_pp r7.w, r4.w, c3.y, r6.w
    lrp_pp r6.w, r4.w, c3.y, r5.w
    mul r4.w, r7.w, c77.w
    dp3_pp r5.w, r6, -c10
    mul r8.xyz, r5.w, c36
    mul_pp r8.xyz, r4.w, r8
    cmp_pp r8.xyz, r5.w, r8, c3.x
    add_pp r7.xyz, r7, r8
    mul_pp r8.xyz, c58.w, c58
    dp3_pp r5.w, r6, -r0.yzww
    mul_pp r8.xyz, r5.w, r8
    cmp_pp r8.xyz, r5.w, r8, c3.x
    mad_pp r7.xyz, r0.x, r8, r7
    mov r8.xyz, c79
    add r8.xyz, -r8, c80
    mad_pp r9.xyz, r6, c2.x, c2.x
    mad r8.xyz, r9.y, r8, c79
    mul_pp r10.xyz, r6, r6
    mul r8.xyz, r8, r10.y
    mov r11.xyz, c77
    add r11.xyz, -r11, c78
    mad r9.xyw, r9.x, r11.xyzz, c77.xyzz
    mad_pp r8.xyz, r10.x, r9.xyww, r8
    mov r11.xyz, c81
    add r9.xyw, -r11.xyzz, c82.xyzz
    mad r9.xyz, r9.z, r9.xyww, c81
    mad_pp r8.xyz, r10.z, r9, r8
    mul_pp r9.xyz, r8, c17
    mul r9.xyz, r9, c70.w
    mad r8.xyz, r8, c17, -r9
    mad_pp r8.xyz, r6.w, r8, r9
    add_pp r7.xyz, r7, r8
    mul_pp r7.xyz, r7, c16
    frc r5.w, c26.x
    cmp r6.w, -r5.w, c3.x, c3.y
    add r5.w, -r5.w, c26.x
    cmp r2.x, c26.x, r2.x, r6.w
    add r2.x, r2.x, r5.w
    add r8, r2.x, -c3
    cmp r9.xy, -r8_abs.x, v0, c3.x
    cmp r8.xy, -r8_abs.y, v0.zwzw, r9
    cmp r8.xy, -r8_abs.z, v1, r8
    cmp r8.xy, -r8_abs.w, v1.zwzw, r8
    texld_pp r8, r8, s0
    add r9.xy, c2.x, vPos
    mul r9.xy, r9, c24.zwzw
    mov r10.yzw, c2
    mad r10, c24.zzww, r10.yzzw, r10.zywz
    mad r9.xy, r9, c0, r10
    add_pp r9.xy, r10.zwzw, r9
    mul r2.x, c150.x, c150.x
    mul_pp r10.xyz, r6.y, c91
    mad_pp r10.xyz, r6.x, c90, r10
    mad_pp r10.xyz, r6.z, c92, r10
    mad r5.w, r10.z, -r10.z, c3.y
    mad r2.x, r2.x, -r5.w, c3.y
    cmp r5.w, r2.x, c3.y, c3.x
    mul r2.x, r2.x, r5.w
    mul r5.w, r5.w, c150.x
    rsq r2.x, r2.x
    rcp r2.x, r2.x
    mad r2.x, r5.w, -r10.z, r2.x
    mul_pp r9.zw, r10.xyxy, r2.x
    mad_pp r9.xy, r9.zwzw, c1.w, r9
    mad r9.xy, r9, c4, c4.x
    texld_pp r9, r9, s11
    mad r7.xyz, r7, r8, -r9
    mul_pp r2.x, r8.w, c16.w
    mad_pp r5.w, c16.w, -r8.w, r2.y
    mad_pp r7.xyz, r2.x, r7, r9
    add_pp r8.xyz, c22, -v2
    dp3_pp r2.x, r8, r8
    rsq_pp r2.x, r2.x
    mad_pp r5.xyz, r8, r2.x, -r5
    nrm_pp r9.xyz, r5
    dp3_sat_pp r5.x, r9, r6
    mov_pp r9.xy, c1
    mul_pp r5.yz, r9.xxyw, c20
    max_pp r6.w, r5.y, c3.y
    min r5.y, r6.w, c1.z
    pow r6.w, r5.x, r5.y
    mul_pp r9.xyz, r5.z, c43
    mul_pp r9.xyz, r6.w, r9
    mul_pp r9.xyz, r3.w, r9
    mul_pp r10.xyz, r5.z, c39
    mad_pp r4.xyz, r8, r2.x, -r4
    nrm_pp r11.xyz, r4
    dp3_sat_pp r3.w, r11, r6
    pow r4.x, r3.w, r5.y
    mul_pp r4.xyz, r4.x, r10
    mad_pp r4.xyz, r2.w, r4, r9
    mul_pp r9.xyz, r5.z, c47
    mad_pp r3.xyz, r8, r2.x, -r3
    nrm_pp r10.xyz, r3
    dp3_sat_pp r2.w, r10, r6
    pow r3.x, r2.w, r5.y
    mul_pp r3.xyz, r3.x, r9
    mad_pp r3.xyz, r2.z, r3, r4
    mul_pp r4.xyz, r5.z, c51
    mad_pp r1.yzw, r8.xxyz, r2.x, -r1
    nrm_pp r9.xyz, r1.yzww
    dp3_sat_pp r1.y, r9, r6
    pow r2.z, r1.y, r5.y
    mul_pp r1.yzw, r2.z, r4.xxyz
    mad_pp r1.xyz, r1.x, r1.yzww, r3
    mul_pp r3.xyz, r5.z, c37
    mad_pp r4.xyz, r8, r2.x, -c10
    nrm_pp r9.xyz, r4
    dp3_sat_pp r1.w, r9, r6
    pow r2.z, r1.w, r5.y
    mul_pp r3.xyz, r2.z, r3
    mad_pp r1.xyz, r3, r4.w, r1
    mul_pp r3.xyz, c59.w, c59
    mul_pp r3.xyz, r5.z, r3
    mad_pp r0.yzw, r8.xxyz, r2.x, -r0
    mul r2.xzw, r2.x, r8.xyyz
    nrm_pp r4.xyz, r0.yzww
    dp3_sat_pp r0.y, r4, r6
    pow r1.w, r0.y, r5.y
    mul_pp r0.yzw, r1.w, r3.xxyz
    mad_pp r0.xyz, r0.x, r0.yzww, r1
    dp3 r0.w, -r2.xzww, r6
    add r0.w, r0.w, r0.w
    mad_pp r1.xyz, r6, -r0.w, -r2.xzww
    dp3_sat_pp r0.w, r6, r2.xzww
    add_pp r0.w, -r0.w, c3.y
    texld_pp r1, r1, s1
    mul r2.xzw, r1.xyyz, c63.x
    mad_pp r1.xyz, r2.xzww, r1.w, r1
    mul_pp r1.xyz, r5.w, r1
    mul r1.w, c64.z, c64.x
    mov r2.xz, c64
    mad r2.x, r2.x, -r2.z, r2.z
    mad_pp r1.w, r4.w, r2.x, r1.w
    mul_pp r1.xyz, r1.w, r1
    mad_pp r0.xyz, r0, c18, r1
    mul_pp r1.x, r0.w, r0.w
    mul_pp r1.x, r1.x, r1.x
    mul_pp r0.w, r0.w, r1.x
    lrp_pp r1.x, r0.w, r2.y, c62.x
    mul_pp r0.w, r1.x, c62.y
    mad_pp r0.xyz, r0, r0.w, r7
    mul_pp r0.xyz, r0, c89
    mov_pp r1.w, c89.w
    mul_pp r0.w, r1.w, c21.x
    min_pp r1, r0, c4.z
    mul_pp r0.xyz, c75, v6.y
    mad_pp oC0.xyz, r1, v6.x, r0
    mov_pp oC0.w, r1.w

// approximately 277 instruction slots used (5 texture, 272 arithmetic)

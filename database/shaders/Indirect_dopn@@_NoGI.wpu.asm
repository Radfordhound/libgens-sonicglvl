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
//   float4 g_LightScatteringColor;
//   float4 g_OffsetParam;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
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
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif;
//   sampler2D sampNrm;
//   sampler2D sampOffset0;
//   sampler2D sampPower;
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
//   mrgTexcoordIndex                      c26      2
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
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_LightScatteringColor                c75      1
//   g_aLightField                         c77      6
//   g_ForceAlphaColor                     c89      1
//   g_OffsetParam                         c150     1
//   sampDif                               s0       1
//   sampPower                             s1       1
//   sampNrm                               s2       1
//   sampOffset0                           s3       1
//   g_VerticalShadowMapSampler            s7       1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 2, -1, 0.5, -3
    def c1, 500, 5, 1024, 4
    def c2, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord4 v4
    dcl_texcoord6 v5
    dcl_texcoord5_pp v6.xyz
    dcl_texcoord7 v7.xyz
    dcl_texcoord8 v8.xyz
    dcl_color_pp v9
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s7
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
    mad_pp r1.y, r0.x, -c0.x, -c0.w
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov r2.xy, c2
    add r0.x, r2.y, -c61.x
    cmp_pp r0.x, r0.x, c2.y, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c2.y
    cmp_pp r1.x, -c61.x, r2.y, r1.x
    mul_pp r0.x, r0.x, r1.x
    add r1.x, -c44.z, c44.w
    rcp r1.x, r1.x
    add r1.yzw, -c42.xxyz, v2.xxyz
    dp3 r2.y, r1.yzww, r1.yzww
    rsq r2.y, r2.y
    rcp r2.z, r2.y
    mul_pp r1.yzw, r1, r2.y
    add r2.y, r2.z, -c44.z
    mul_sat r1.x, r1.x, r2.y
    add_pp r1.x, -r1.x, c2.y
    frc r2.y, c27.x
    cmp r2.z, -r2.y, c2.x, c2.y
    add r2.y, -r2.y, c27.x
    cmp r2.z, c27.x, r2.x, r2.z
    add r2.y, r2.z, r2.y
    add r3, r2.y, -c2
    cmp r2.yz, -r3_abs.x, v0.xxyw, c2.x
    cmp r2.yz, -r3_abs.y, v0.xzww, r2
    cmp r2.yz, -r3_abs.z, v1.xxyw, r2
    cmp r2.yz, -r3_abs.w, v1.xzww, r2
    texld_pp r3, r2.yzzw, s3
    mad r2.yz, r3.xwxw, c0.x, c0.y
    frc r3.xyz, c26.xzww
    cmp r4.xyz, -r3, c2.x, c2.y
    add r3.xyz, -r3, c26.xzww
    cmp r4.xyz, c26.xzww, r2.x, r4
    add r3.xyz, r3, r4
    add r4, r3.z, -c2
    cmp r2.xw, -r4_abs.x, v0.xyzy, c2.x
    cmp r2.xw, -r4_abs.y, v0.zyzw, r2
    cmp r2.xw, -r4_abs.z, v1.xyzy, r2
    cmp r2.xw, -r4_abs.w, v1.zyzw, r2
    mad r2.xw, r2.yyzz, c150.xyzy, r2
    texld_pp r4, r2.xwzw, s2
    mul_pp r4.x, r4.w, r4.x
    mad_pp r2.xw, r4.xyzy, c0.x, c0.y
    nrm_pp r4.xyz, v8
    mul_pp r4.xyz, r2.w, r4
    nrm_pp r5.xyz, v7
    mad_pp r4.xyz, r2.x, r5, r4
    dp2add_pp r2.x, r2.xwzw, -r2.xwzw, c2.y
    rsq_pp r2.x, r2.x
    rcp_pp r2.x, r2.x
    nrm_pp r5.xyz, v3
    mad_pp r4.xyz, r2.x, r5, r4
    dp3_pp r2.x, r4, -r1.yzww
    mul_pp r5.xyz, r2.x, c43
    cmp_pp r5.xyz, r2.x, r5, c2.x
    mul_pp r5.xyz, r1.x, r5
    add r2.x, -c40.z, c40.w
    rcp r2.x, r2.x
    add r6.xyz, -c38, v2
    dp3 r2.w, r6, r6
    rsq r2.w, r2.w
    rcp r3.z, r2.w
    mul_pp r6.xyz, r2.w, r6
    add r2.w, r3.z, -c40.z
    mul_sat r2.x, r2.x, r2.w
    add_pp r2.x, -r2.x, c2.y
    dp3_pp r2.w, r4, -r6
    mul_pp r7.xyz, r2.w, c39
    cmp_pp r7.xyz, r2.w, r7, c2.x
    mad_pp r5.xyz, r2.x, r7, r5
    add r2.w, -c48.z, c48.w
    rcp r2.w, r2.w
    add r7.xyz, -c46, v2
    dp3 r3.z, r7, r7
    rsq r3.z, r3.z
    rcp r3.w, r3.z
    mul_pp r7.xyz, r3.z, r7
    add r3.z, r3.w, -c48.z
    mul_sat r2.w, r2.w, r3.z
    add_pp r2.w, -r2.w, c2.y
    dp3_pp r3.z, r4, -r7
    mul_pp r8.xyz, r3.z, c47
    cmp_pp r8.xyz, r3.z, r8, c2.x
    mad_pp r5.xyz, r2.w, r8, r5
    add r3.z, -c52.z, c52.w
    rcp r3.z, r3.z
    add r8.xyz, -c50, v2
    dp3 r3.w, r8, r8
    rsq r3.w, r3.w
    rcp r4.w, r3.w
    mul_pp r8.xyz, r3.w, r8
    add r3.w, r4.w, -c52.z
    mul_sat r3.z, r3.z, r3.w
    add_pp r3.z, -r3.z, c2.y
    dp3_pp r3.w, r4, -r8
    mul_pp r9.xyz, r3.w, c51
    cmp_pp r9.xyz, r3.w, r9, c2.x
    mad_pp r5.xyz, r3.z, r9, r5
    max r3.w, v4.z, c2.x
    add r4.w, r3.w, -v4.w
    cmp r9.z, r4.w, c2.x, r3.w
    mov r9.xyw, v4
    texldp_pp r9, r9, s13
    max r3.w, v5.z, c2.x
    add r4.w, r3.w, -v5.w
    cmp r10.z, r4.w, c2.x, r3.w
    mov r10.xyw, v5
    texldp_pp r10, r10, s7
    min_pp r3.w, r10.x, r9.x
    lrp_pp r4.w, v6.z, c2.y, r10.x
    lrp_pp r5.w, v6.z, c2.y, r3.w
    rcp r3.w, v4.w
    mul r9.xy, r3.w, v4
    mad r9.xy, r9, c0.x, c0.y
    abs_sat r9.xy, r9
    add_sat r9.xy, r9, -c65.x
    mul r9.xy, r9, c65.y
    max r3.w, r9.x, r9.y
    lrp_pp r6.w, r3.w, c2.y, r5.w
    lrp_pp r5.w, r3.w, c2.y, r4.w
    mul_pp r3.w, r6.w, c77.w
    dp3_pp r4.w, r4, -c10
    mul r9.xyz, r4.w, c36
    mul_pp r9.xyz, r3.w, r9
    cmp_pp r9.xyz, r4.w, r9, c2.x
    add_pp r5.xyz, r5, r9
    dp3_pp r4.w, r4, -r0.yzww
    mul_pp r9.xyz, c58.w, c58
    mul_pp r9.xyz, r4.w, r9
    cmp_pp r9.xyz, r4.w, r9, c2.x
    mad_pp r5.xyz, r0.x, r9, r5
    mad_pp r9.xyz, r4, c0.z, c0.z
    mov r10.xyz, c79
    add r10.xyz, -r10, c80
    mad r10.xyz, r9.y, r10, c79
    mul_pp r11.xyz, r4, r4
    mul r10.xyz, r10, r11.y
    mov r12.xyz, c77
    add r12.xyz, -r12, c78
    mad r9.xyw, r9.x, r12.xyzz, c77.xyzz
    mad_pp r9.xyw, r11.x, r9, r10.xyzz
    mov r10.xyz, c81
    add r10.xyz, -r10, c82
    mad r10.xyz, r9.z, r10, c81
    mad_pp r9.xyz, r11.z, r10, r9.xyww
    mul_pp r10.xyz, r9, c17
    mul r10.xyz, r10, c70.w
    mad r9.xyz, r9, c17, -r10
    mad_pp r9.xyz, r5.w, r9, r10
    add_pp r5.xyz, r5, r9
    mul_pp r5.xyz, r5, c16
    add r9, r3.x, -c2
    add r10, r3.y, -c2
    cmp r3.xy, -r9_abs.x, v0, c2.x
    cmp r3.xy, -r9_abs.y, v0.zwzw, r3
    cmp r3.xy, -r9_abs.z, v1, r3
    cmp r3.xy, -r9_abs.w, v1.zwzw, r3
    mad r3.xy, r2.yzzw, c150, r3
    texld_pp r9, r3, s0
    mul_pp r5.xyz, r5, r9
    mul_pp r3.x, r9.w, c16.w
    mul_pp r3.x, r3.x, v9.w
    mul_pp r9.w, r3.x, c21.x
    cmp r3.xy, -r10_abs.x, v0, c2.x
    cmp r3.xy, -r10_abs.y, v0.zwzw, r3
    cmp r3.xy, -r10_abs.z, v1, r3
    cmp r3.xy, -r10_abs.w, v1.zwzw, r3
    mad r2.yz, r2, c150.xxyw, r3.xxyw
    texld_pp r10, r2.yzzw, s1
    mul_pp r2.yz, r10.x, c20
    mul_pp r2.yz, r2, c1.xxyw
    mul_pp r10.xyz, r2.z, c43
    add_pp r11.xyz, c22, -v2
    dp3_pp r3.x, r11, r11
    rsq_pp r3.x, r3.x
    mad_pp r1.yzw, r11.xxyz, r3.x, -r1
    nrm_pp r12.xyz, r1.yzww
    dp3_sat_pp r1.y, r12, r4
    max_pp r1.z, r2.y, c2.y
    min r2.y, r1.z, c1.z
    pow r3.y, r1.y, r2.y
    mul_pp r1.yzw, r3.y, r10.xxyz
    mul_pp r1.xyz, r1.yzww, r1.x
    mul_pp r10.xyz, r2.z, c39
    mad_pp r6.xyz, r11, r3.x, -r6
    nrm_pp r12.xyz, r6
    dp3_sat_pp r1.w, r12, r4
    pow r3.y, r1.w, r2.y
    mul_pp r6.xyz, r3.y, r10
    mad_pp r1.xyz, r2.x, r6, r1
    mul_pp r6.xyz, r2.z, c47
    mad_pp r7.xyz, r11, r3.x, -r7
    nrm_pp r10.xyz, r7
    dp3_sat_pp r1.w, r10, r4
    pow r3.y, r1.w, r2.y
    mul_pp r6.xyz, r3.y, r6
    mad_pp r1.xyz, r2.w, r6, r1
    mul_pp r6.xyz, r2.z, c51
    mad_pp r7.xyz, r11, r3.x, -r8
    nrm_pp r8.xyz, r7
    dp3_sat_pp r1.w, r8, r4
    pow r3.y, r1.w, r2.y
    mul_pp r6.xyz, r3.y, r6
    mad_pp r1.xyz, r3.z, r6, r1
    mul_pp r6.xyz, r2.z, c37
    mad_pp r7.xyz, r11, r3.x, -c10
    mad_pp r0.yzw, r11.xxyz, r3.x, -r0
    nrm_pp r3.xyz, r0.yzww
    dp3_sat_pp r0.y, r3, r4
    pow r1.w, r0.y, r2.y
    nrm_pp r3.xyz, r7
    dp3_sat_pp r0.y, r3, r4
    pow r3.x, r0.y, r2.y
    mul_pp r0.yzw, r3.x, r6.xxyz
    mad_pp r0.yzw, r0, r3.w, r1.xxyz
    mul_pp r1.xyz, c59.w, c59
    mul_pp r1.xyz, r2.z, r1
    mul_pp r1.xyz, r1.w, r1
    mad_pp r0.xyz, r0.x, r1, r0.yzww
    mul_pp r0.xyz, r0, c18
    mul_pp r0.xyz, r0, v3.w
    mad_pp r9.xyz, r5, v9, r0
    mul_pp r0, r9, c89
    min_pp r1, r0, c1.w
    mul_pp r0.xyz, c75, v6.y
    mad_pp oC0.xyz, r1, v6.x, r0
    mov_pp oC0.w, r1.w

// approximately 277 instruction slots used (6 texture, 271 arithmetic)

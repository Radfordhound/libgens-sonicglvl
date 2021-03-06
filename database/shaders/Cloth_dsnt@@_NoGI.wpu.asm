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
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   float4 g_TransColorMask;
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
//   sampler2D sampSpec;
//   sampler2D sampTrans;
//
//
// Registers:
//
//   Name                       Reg   Size
//   -------------------------- ----- ----
//   mrgGlobalLight_Direction   c10      1
//   g_Diffuse                  c16      1
//   g_Ambient                  c17      1
//   g_Specular                 c18      1
//   g_PowerGlossLevel          c20      1
//   g_EyePosition              c22      1
//   g_EyeDirection             c23      1
//   mrgTexcoordIndex           c26      2
//   mrgGlobalLight_Diffuse     c36      1
//   mrgGlobalLight_Specular    c37      1
//   mrgLocalLight0_Position    c38      1
//   mrgLocalLight0_Color       c39      1
//   mrgLocalLight0_Range       c40      1
//   mrgLocalLight1_Position    c42      1
//   mrgLocalLight1_Color       c43      1
//   mrgLocalLight1_Range       c44      1
//   mrgLocalLight2_Position    c46      1
//   mrgLocalLight2_Color       c47      1
//   mrgLocalLight2_Range       c48      1
//   mrgLocalLight3_Position    c50      1
//   mrgLocalLight3_Color       c51      1
//   mrgLocalLight3_Range       c52      1
//   mrgEyeLight_Diffuse        c58      1
//   mrgEyeLight_Specular       c59      1
//   mrgEyeLight_Range          c60      1
//   mrgEyeLight_Attribute      c61      1
//   g_ShadowMapParams          c65      1
//   g_GI0Scale                 c70      1
//   g_LightScatteringColor     c75      1
//   g_aLightField              c77      6
//   g_ForceAlphaColor          c89      1
//   g_TransColorMask           c150     1
//   sampDif                    s0       1
//   sampSpec                   s1       1
//   sampNrm                    s3       1
//   sampTrans                  s4       1
//   g_VerticalShadowMapSampler s7       1
//   g_ShadowMapSampler         s13      1
//

    ps_3_0
    def c0, 500, 5, -2, 3
    def c1, 2, -1, 0.5, 1024
    def c2, 0.800000012, 0.0500000007, 4, 0
    def c3, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3.xyz
    dcl_texcoord4 v4
    dcl_texcoord6 v5
    dcl_texcoord5_pp v6
    dcl_texcoord7 v7.xyz
    dcl_texcoord8 v8.xyz
    dcl vFace
    dcl_2d s0
    dcl_2d s1
    dcl_2d s3
    dcl_2d s4
    dcl_2d s7
    dcl_2d s13
    frc r0.xy, c27
    cmp r0.zw, -r0.xyxy, c3.x, c3.y
    add r0.xy, -r0, c27
    mov r1.xy, c3
    cmp r0.zw, c27.xyxy, r1.x, r0
    add r0.xy, r0.zwzw, r0
    add r2, r0.x, -c3
    add r0, r0.y, -c3
    cmp r1.zw, -r2_abs.x, v0.xyxy, c3.x
    cmp r1.zw, -r2_abs.y, v0, r1
    cmp r1.zw, -r2_abs.z, v1.xyxy, r1
    cmp r1.zw, -r2_abs.w, v1, r1
    texld_pp r2, r1.zwzw, s3
    mul_pp r2.x, r2.w, r2.x
    mad_pp r1.zw, r2.xyxy, c1.x, c1.y
    nrm_pp r2.xyz, v8
    mul_pp r2.xyz, r1.w, r2
    nrm_pp r3.xyz, v7
    mad_pp r2.xyz, r1.z, r3, r2
    dp2add_pp r1.z, r1.zwzw, -r1.zwzw, c3.y
    rsq_pp r1.z, r1.z
    rcp_pp r1.z, r1.z
    cmp r3.xyz, vFace, v3, -v3
    nrm_pp r4.xyz, r3
    mad_pp r2.xyz, r1.z, r4, r2
    dp3_pp r1.z, r2, -c10
    mov_sat r1.w, r1.z
    max r2.w, v4.z, c3.x
    add r3.x, r2.w, -v4.w
    cmp r3.z, r3.x, c3.x, r2.w
    mov r3.xyw, v4
    texldp_pp r3, r3, s13
    max r2.w, v5.z, c3.x
    add r3.y, r2.w, -v5.w
    cmp r4.z, r3.y, c3.x, r2.w
    mov r4.xyw, v5
    texldp_pp r4, r4, s7
    min_pp r2.w, r4.x, r3.x
    lrp_pp r3.x, v6.z, c3.y, r4.x
    lrp_pp r3.y, v6.z, c3.y, r2.w
    rcp r2.w, v4.w
    mul r3.zw, r2.w, v4.xyxy
    mad r3.zw, r3, c1.x, c1.y
    abs_sat r3.zw, r3
    add_sat r3.zw, r3, -c65.x
    mul r3.zw, r3, c65.y
    max r2.w, r3.z, r3.w
    lrp_pp r4.x, r2.w, c3.y, r3.y
    lrp_pp r4.y, r2.w, c3.y, r3.x
    mul r2.w, r4.x, c77.w
    mul_pp r3.xyz, r2.w, c37
    add_pp r4.xzw, c22.xyyz, -v2.xyyz
    dp3_pp r3.w, r4.xzww, r4.xzww
    rsq_pp r3.w, r3.w
    mad_pp r5.xyz, r4.xzww, r3.w, -c10
    nrm_pp r6.xyz, r5
    dp3_sat_pp r5.x, r6, r2
    mov r6.xy, c0
    mul_pp r5.yz, r6.xxyw, c20
    max_pp r6.x, r5.y, c3.y
    min r5.y, r6.x, c1.w
    pow_pp r6.x, r5.x, r5.y
    mul_pp r3.xyz, r3, r6.x
    mul r3.xyz, r1.w, r3
    add r6.xyz, -c38, v2
    dp3 r1.w, r6, r6
    rsq r1.w, r1.w
    mul_pp r6.xyz, r1.w, r6
    rcp r1.w, r1.w
    add r1.w, r1.w, -c40.z
    dp3_pp r5.x, r2, -r6
    mad_pp r6.xyz, r4.xzww, r3.w, -r6
    nrm_pp r7.xyz, r6
    dp3_sat_pp r5.w, r7, r2
    pow_pp r6.x, r5.w, r5.y
    mov_sat r5.w, r5.x
    add r6.y, -c40.z, c40.w
    rcp r6.y, r6.y
    mul_sat r1.w, r1.w, r6.y
    add_pp r1.w, -r1.w, c3.y
    mul_pp r6.yzw, r1.w, c39.xxyz
    mul_pp r7.xyz, r6.x, r6.yzww
    mul r7.xyz, r5.w, r7
    mul r7.xyz, r5.z, r7
    mad_pp r3.xyz, r3, r5.z, r7
    add r7.xyz, -c42, v2
    dp3 r1.w, r7, r7
    rsq r1.w, r1.w
    mul_pp r7.xyz, r1.w, r7
    rcp r1.w, r1.w
    add r1.w, r1.w, -c44.z
    dp3_pp r5.w, r2, -r7
    mad_pp r7.xyz, r4.xzww, r3.w, -r7
    nrm_pp r8.xyz, r7
    dp3_sat_pp r6.x, r8, r2
    pow_pp r7.x, r6.x, r5.y
    mov_sat r6.x, r5.w
    add r7.y, -c44.z, c44.w
    rcp r7.y, r7.y
    mul_sat r1.w, r1.w, r7.y
    add_pp r1.w, -r1.w, c3.y
    mul_pp r7.yzw, r1.w, c43.xxyz
    mul_pp r8.xyz, r7.x, r7.yzww
    mul r8.xyz, r6.x, r8
    mad_pp r3.xyz, r8, r5.z, r3
    add r8.xyz, -c46, v2
    dp3 r1.w, r8, r8
    rsq r1.w, r1.w
    mul_pp r8.xyz, r1.w, r8
    rcp r1.w, r1.w
    add r1.w, r1.w, -c48.z
    dp3_pp r6.x, r2, -r8
    mad_pp r8.xyz, r4.xzww, r3.w, -r8
    nrm_pp r9.xyz, r8
    dp3_sat_pp r7.x, r9, r2
    pow_pp r8.x, r7.x, r5.y
    mov_sat r7.x, r6.x
    add r8.y, -c48.z, c48.w
    rcp r8.y, r8.y
    mul_sat r1.w, r1.w, r8.y
    add_pp r1.w, -r1.w, c3.y
    mul_pp r8.yzw, r1.w, c47.xxyz
    mul_pp r9.xyz, r8.x, r8.yzww
    mul r9.xyz, r7.x, r9
    mad_pp r3.xyz, r9, r5.z, r3
    add r9.xyz, -c50, v2
    dp3 r1.w, r9, r9
    rsq r1.w, r1.w
    mul_pp r9.xyz, r1.w, r9
    rcp r1.w, r1.w
    add r1.w, r1.w, -c52.z
    dp3_pp r7.x, r2, -r9
    mad_pp r9.xyz, r4.xzww, r3.w, -r9
    nrm_pp r10.xyz, r9
    dp3_sat_pp r8.x, r10, r2
    pow_pp r9.x, r8.x, r5.y
    mov_sat r8.x, r7.x
    add r9.y, -c52.z, c52.w
    rcp r9.y, r9.y
    mul_sat r1.w, r1.w, r9.y
    add_pp r1.w, -r1.w, c3.y
    mul_pp r9.yzw, r1.w, c51.xxyz
    mul_pp r10.xyz, r9.x, r9.yzww
    mul r10.xyz, r8.x, r10
    mad_pp r3.xyz, r10, r5.z, r3
    add_pp r1.w, -c61.z, c61.y
    rcp_pp r1.w, r1.w
    add r10.xyz, -c22, v2
    dp3 r8.x, r10, r10
    rsq r8.x, r8.x
    mul_pp r10.xyz, r8.x, r10
    rcp r8.x, r8.x
    add r8.x, r8.x, -c60.z
    dp3_pp r9.x, r10, c23
    add_pp r9.x, r9.x, -c61.z
    mul_sat_pp r1.w, r1.w, r9.x
    mad_pp r9.x, r1.w, c0.z, c0.w
    mul_pp r1.w, r1.w, r1.w
    mul_pp r1.w, r1.w, r9.x
    pow_sat_pp r9.x, r1.w, c61.w
    add r1.w, r1.y, -c61.x
    cmp_pp r1.w, r1.w, c3.y, r9.x
    add r9.x, -c60.z, c60.w
    rcp r9.x, r9.x
    mul_sat r8.x, r8.x, r9.x
    add_pp r8.x, -r8.x, c3.y
    cmp_pp r1.y, -c61.x, r1.y, r8.x
    mul_pp r1.y, r1.w, r1.y
    mul_pp r11.xyz, c59.w, c59
    mul_pp r11.xyz, r1.y, r11
    mad_pp r12.xyz, r4.xzww, r3.w, -r10
    dp3_pp r1.w, r2, -r10
    mul_pp r4.xzw, r3.w, r4
    dp3_sat_pp r3.w, r4.xzww, c10
    mul_pp r3.w, r2.w, r3.w
    mul_pp r4.xzw, r2.w, c36.xyyz
    nrm_pp r10.xyz, r12
    dp3_sat_pp r2.w, r10, r2
    pow_pp r8.x, r2.w, r5.y
    pow r2.w, r3.w, r5.y
    mad_pp r3.w, r3.w, c2.x, c2.y
    mul_pp r10.xyz, r3.w, c36
    mul_pp r10.xyz, r10, c16
    mad r2.w, r2.w, c2.x, c2.y
    mul_pp r12.xyz, r2.w, c37
    mul_pp r11.xyz, r8.x, r11
    mov_sat r2.w, r1.w
    mul r11.xyz, r2.w, r11
    mad_pp r3.xyz, r11, r5.z, r3
    mul_pp r11.xyz, r5.z, c18
    mul_pp r11.xyz, r11, r12
    cmp r5.yz, -r0_abs.x, v0.xxyw, c3.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r5.yzzw
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    texld_pp r0, r0, s4
    mul_pp r2.w, v6.w, v6.w
    mul_pp r3.w, r2.w, r2.w
    mul_pp r10.xyz, r2.w, r10
    mul_pp r10.xyz, r0.w, r10
    mul_pp r11.xyz, r3.w, r11
    mul_pp r11.xyz, r0.w, r11
    mad_pp r3.xyz, r3, c18, r11
    frc r5.yz, c26.xxzw
    cmp r11.xy, -r5.yzzw, c3.x, c3.y
    add r5.yz, -r5, c26.xxzw
    cmp r11.xy, c26.xzzw, r1.x, r11
    add r5.yz, r5, r11.xxyw
    add r11, r5.z, -c3
    add r12, r5.y, -c3
    cmp r5.yz, -r11_abs.x, v0.xxyw, c3.x
    cmp r5.yz, -r11_abs.y, v0.xzww, r5
    cmp r5.yz, -r11_abs.z, v1.xxyw, r5
    cmp r5.yz, -r11_abs.w, v1.xzww, r5
    texld_pp r11, r5.yzzw, s1
    cmp r5.yz, -r12_abs.x, v0.xxyw, c3.x
    cmp r5.yz, -r12_abs.y, v0.xzww, r5
    cmp r5.yz, -r12_abs.z, v1.xxyw, r5
    cmp r5.yz, -r12_abs.w, v1.xzww, r5
    texld_pp r12, r5.yzzw, s0
    mad_pp r13.xyz, r2, c1.z, c1.z
    mul_pp r2.xyz, r2, r2
    mov r14.xyz, c79
    add r14.xyz, -r14, c80
    mad r14.xyz, r13.y, r14, c79
    mul r14.xyz, r2.y, r14
    mov r15.xyz, c77
    add r15.xyz, -r15, c78
    mad r13.xyw, r13.x, r15.xyzz, c77.xyzz
    mad_pp r2.xyw, r2.x, r13, r14.xyzz
    mov r14.xyz, c81
    add r13.xyw, -r14.xyzz, c82.xyzz
    mad r13.xyz, r13.z, r13.xyww, c81
    mad_pp r2.xyz, r2.z, r13, r2.xyww
    mul_pp r13.xyz, r2, c17
    mul r13.xyz, r13, c70.w
    mad r2.xyz, r2, c17, -r13
    mad_pp r2.xyz, r4.y, r2, r13
    mad_pp r0.w, r5.x, c1.z, c1.z
    mad_pp r1.x, r5.x, -c1.z, c1.z
    mul_pp r1.x, r1.x, r1.x
    mul_pp r5.xyz, r6.yzww, r1.x
    mul_pp r0.w, r0.w, r0.w
    mul_pp r6.yzw, r6, r0.w
    mad_pp r0.w, r1.z, c1.z, c1.z
    mad_pp r1.x, r1.z, -c1.z, c1.z
    mul_pp r1.x, r1.x, r1.x
    mad_pp r5.xyz, r1.x, r4.xzww, r5
    mul_pp r0.w, r0.w, r0.w
    mad_pp r4.xyz, r0.w, r4.xzww, r6.yzww
    mad_pp r0.w, r5.w, c1.z, c1.z
    mad_pp r1.x, r5.w, -c1.z, c1.z
    mul_pp r1.x, r1.x, r1.x
    mad_pp r5.xyz, r1.x, r7.yzww, r5
    mul_pp r0.w, r0.w, r0.w
    mad_pp r4.xyz, r0.w, r7.yzww, r4
    mad_pp r0.w, r6.x, c1.z, c1.z
    mad_pp r1.x, r6.x, -c1.z, c1.z
    mul_pp r1.x, r1.x, r1.x
    mad_pp r5.xyz, r1.x, r8.yzww, r5
    mul_pp r0.w, r0.w, r0.w
    mad_pp r4.xyz, r0.w, r8.yzww, r4
    mad_pp r0.w, r7.x, c1.z, c1.z
    mad_pp r1.x, r7.x, -c1.z, c1.z
    mul_pp r1.x, r1.x, r1.x
    mad_pp r5.xyz, r1.x, r9.yzww, r5
    mul_pp r0.w, r0.w, r0.w
    mad_pp r4.xyz, r0.w, r9.yzww, r4
    mad_pp r0.w, r1.w, c1.z, c1.z
    mad_pp r1.x, r1.w, -c1.z, c1.z
    mul_pp r1.x, r1.x, r1.x
    mul_pp r0.w, r0.w, r0.w
    mul_pp r6.xyz, c58.w, c58
    mul_pp r1.yzw, r1.y, r6.xxyz
    mad_pp r4.xyz, r0.w, r1.yzww, r4
    mad_pp r1.xyz, r1.x, r1.yzww, r5
    mul_pp r1.xyz, r1, c16
    mul_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c150
    mad_pp r1.xyz, r4, c16, r10
    add_pp r1.xyz, r1, r2
    mad_pp r0.xyz, r1, r12, r0
    mul_pp r1.w, r12.w, c16.w
    mad_pp r1.xyz, r3, r11, r0
    mul_pp r0, r1, c89
    min_pp r1, r0, c2.z
    mul_pp r0.xyz, c75, v6.y
    mad_pp oC0.xyz, r1, v6.x, r0
    mov_pp oC0.w, r1.w

// approximately 324 instruction slots used (6 texture, 318 arithmetic)

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
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   sampler2D sampDif0;
//   sampler2D sampDif1;
//   sampler2D sampNrm0;
//   sampler2D sampNrm1;
//   sampler2D sampPower0;
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
//   mrgGlobalLight_Diffuse     c36      1
//   mrgGlobalLight_Specular    c37      1
//   mrgEyeLight_Diffuse        c58      1
//   mrgEyeLight_Specular       c59      1
//   mrgEyeLight_Range          c60      1
//   mrgEyeLight_Attribute      c61      1
//   g_ShadowMapParams          c65      1
//   g_GI0Scale                 c70      1
//   g_GI1Scale                 c71      1
//   g_LightScatteringColor     c75      1
//   g_ForceAlphaColor          c89      1
//   sampDif0                   s0       1
//   sampDif1                   s1       1
//   sampPower0                 s2       1
//   sampNrm0                   s4       1
//   sampNrm1                   s5       1
//   g_VerticalShadowMapSampler s7       1
//   g_GISampler                s10      1
//   g_ShadowMapSampler         s13      1
//

    ps_3_0
    def c0, 0.298900008, 0.586600006, 0.114399999, 1024
    def c1, 2, -1, 1, 0
    def c2, -2, 3, 500, 5
    def c3, 4, 0, 0, 0
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4 v3
    dcl_texcoord6 v4
    dcl_texcoord5_pp v5.xyz
    dcl_texcoord7 v6.xyz
    dcl_texcoord8 v7.xyz
    dcl_color_pp v8.xw
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s4
    dcl_2d s5
    dcl_2d s7
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
    mad_pp r1.y, r0.x, c2.x, c2.y
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov_pp r1.z, c1.z
    add r0.x, r1.z, -c61.x
    cmp_pp r0.x, r0.x, c1.z, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c1.z
    cmp_pp r1.x, -c61.x, r1.z, r1.x
    mul_pp r0.x, r0.x, r1.x
    max r1.x, v3.z, c1.w
    add r1.y, r1.x, -v3.w
    cmp r1.z, r1.y, c1.w, r1.x
    mov r1.xyw, v3
    texldp_pp r1, r1, s13
    max r1.y, v4.z, c1.w
    add r1.z, r1.y, -v4.w
    cmp r2.z, r1.z, c1.w, r1.y
    mov r2.xyw, v4
    texldp_pp r2, r2, s7
    min_pp r3.x, r2.x, r1.x
    lrp_pp r1.x, v5.z, c1.z, r2.x
    lrp_pp r1.y, v5.z, c1.z, r3.x
    rcp r1.z, v3.w
    mul r1.zw, r1.z, v3.xyxy
    mad r1.zw, r1, c1.x, c1.y
    abs_sat r1.zw, r1
    add_sat r1.zw, r1, -c65.x
    mul r1.zw, r1, c65.y
    max r2.x, r1.z, r1.w
    lrp_pp r3.x, r2.x, c1.z, r1.y
    lrp_pp r3.y, r2.x, c1.z, r1.x
    texld_pp r1, v0.zwzw, s10
    mul_pp r1.w, r3.x, r1.w
    nrm_pp r2.xyz, v7
    texld_pp r4, v0, s4
    texld_pp r5, v0, s5
    lrp_pp r6.yzw, v8.x, r5.xxyw, r4.xxyw
    mul_pp r6.x, r6.w, r6.y
    mad_pp r3.xz, r6, c1.x, c1.y
    mul_pp r2.xyz, r2, r3.z
    nrm_pp r4.xyz, v6
    mad_pp r2.xyz, r3.x, r4, r2
    dp2add_pp r2.w, r3.xzzw, -r3.xzzw, c1.z
    rsq_pp r2.w, r2.w
    rcp_pp r2.w, r2.w
    nrm_pp r4.xyz, v2
    mad_pp r2.xyz, r2.w, r4, r2
    dp3_pp r2.w, r2, -c10
    mul r3.xzw, r2.w, c36.xyyz
    mul_pp r3.xzw, r1.w, r3
    cmp_pp r3.xzw, r2.w, r3, c1.w
    dp3_pp r2.w, r2, -r0.yzww
    mul_pp r4.xyz, c58.w, c58
    mul_pp r4.xyz, r2.w, r4
    cmp_pp r4.xyz, r2.w, r4, c1.w
    mad_pp r3.xzw, r0.x, r4.xyyz, r3
    mul_pp r4.xyz, r1, r1
    dp3_pp r2.w, r4, c0
    mad_pp r1.xyz, r1, r1, -r2.w
    mad_sat_pp r1.xyz, r1, c71.w, r2.w
    mul_pp r1.xyz, r1, c70
    mul_pp r4.xyz, r1, c17
    mul r4.xyz, r4, c70.w
    mad r1.xyz, r1, c17, -r4
    mad_pp r1.xyz, r3.y, r1, r4
    add_pp r1.xyz, r3.xzww, r1
    mul_pp r1.xyz, r1, c16
    add_pp r3.xyz, c22, -v1
    dp3_pp r2.w, r3, r3
    rsq_pp r2.w, r2.w
    mad_pp r0.yzw, r3.xxyz, r2.w, -r0
    mad_pp r3.xyz, r3, r2.w, -c10
    nrm_pp r4.xyz, r3
    dp3_sat_pp r2.w, r4, r2
    nrm_pp r3.xyz, r0.yzww
    dp3_sat_pp r0.y, r3, r2
    texld_pp r3, v0, s2
    mul_pp r0.zw, r3.x, c20.xyyz
    mul_pp r0.zw, r0, c2
    max_pp r2.x, r0.z, c1.z
    min r0.z, r2.x, c0.w
    pow r2.x, r0.y, r0.z
    pow r3.x, r2.w, r0.z
    mul_pp r2.yzw, c59.w, c59.xxyz
    mul_pp r2.yzw, r0.w, r2
    mul_pp r0.yzw, r0.w, c37.xxyz
    mul_pp r0.yzw, r3.x, r0
    mul_pp r2.xyz, r2.x, r2.yzww
    mul_pp r2.xyz, r0.x, r2
    mad_pp r0.xyz, r0.yzww, r1.w, r2
    mul_pp r0.xyz, r0, c18
    mul_pp r0.xyz, r0, v2.w
    texld_pp r2, v0, s0
    texld_pp r3, v0, s1
    lrp_pp r4, v8.x, r3, r2
    mad_pp r0.xyz, r1, r4, r0
    mul_pp r1.x, r4.w, c16.w
    mul_pp r0.w, r1.x, v8.w
    mul_pp r0, r0, c89
    min_pp r1, r0, c3.x
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 135 instruction slots used (8 texture, 127 arithmetic)

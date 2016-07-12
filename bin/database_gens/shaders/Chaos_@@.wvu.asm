//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_ChaosWaveParamEx;
//   float4 g_ChaosWaveParamY;
//   float4 g_ChaosWaveParamZX;
//   float4 g_EyePosition;
//   float4 g_LightScatteringFarNearScale;
//   float4 g_LightScattering_ConstG_FogDensity;
//   float4 g_LightScattering_Ray_Mie_Ray2_Mie2;
//   row_major float4x4 g_MtxLightViewProjection;
//   row_major float3x4 g_MtxPalette[25];
//   row_major float4x4 g_MtxProjection;
//   row_major float4x4 g_MtxVerticalLightViewProjection;
//   row_major float4x4 g_MtxView;
//   row_major float4x4 g_MtxWorld;
//   float4 g_TimeParam;
//   float4 g_VerticalLightDirection;
//   float4 mrgGlobalLight_Direction;
//   bool mrgHasBone;
//   float4 mrgTexcoordOffset[2];
//   float4 mrgZOffsetRate;
//
//
// Registers:
//
//   Name                                Reg   Size
//   ----------------------------------- ----- ----
//   mrgHasBone                          b0       1
//   g_MtxProjection                     c0       4
//   g_MtxView                           c4       4
//   g_MtxWorld                          c8       4
//   g_MtxLightViewProjection            c24      4
//   g_MtxPalette                        c28     75
//   g_EyePosition                       c178     1
//   mrgGlobalLight_Direction            c183     1
//   mrgTexcoordOffset                   c191     2
//   mrgZOffsetRate                      c195     1
//   g_LightScattering_Ray_Mie_Ray2_Mie2 c197     1
//   g_LightScattering_ConstG_FogDensity c198     1
//   g_LightScatteringFarNearScale       c199     1
//   g_MtxVerticalLightViewProjection    c207     4
//   g_VerticalLightDirection            c211     1
//   g_TimeParam                         c212     1
//   g_ChaosWaveParamY                   c246     1
//   g_ChaosWaveParamZX                  c247     1
//   g_ChaosWaveParamEx                  c248     1
//

    vs_3_0
    def c12, 0.0208350997, -0.0851330012, 0.180141002, -0.330299497
    def c13, 0.999866009, -2, 1.57079637, -3.14159274
    def c14, 0.159154937, 0.5, 6.28318548, -3.14159274
    def c15, 3, 1, 1.44269502, 1.5
    def c16, 0, 0, 0, 0
    def c17, 0.5, -0.5, 0.699999988, 0.300000012
    dcl_position v0
    dcl_texcoord v1
    dcl_texcoord1 v2
    dcl_texcoord2 v3
    dcl_texcoord3 v4
    dcl_color v5
    dcl_normal v6
    dcl_blendweight v7
    dcl_blendindices v8
    dcl_position o0
    dcl_texcoord o1
    dcl_texcoord1 o2
    dcl_texcoord2 o3
    dcl_texcoord3 o4
    dcl_texcoord4 o5
    dcl_texcoord6 o6
    dcl_texcoord5 o7
    dcl_color o8
    max r0.x, v0_abs.x, v0_abs.z
    rcp r0.x, r0.x
    min r0.y, v0_abs.x, v0_abs.z
    mul r0.x, r0.x, r0.y
    mul r0.y, r0.x, r0.x
    mad r0.z, r0.y, c12.x, c12.y
    mad r0.z, r0.y, r0.z, c12.z
    mad r0.z, r0.y, r0.z, c12.w
    mad r0.y, r0.y, r0.z, c13.x
    mul r0.x, r0.y, r0.x
    slt r0.y, v0_abs.x, v0_abs.z
    mad r0.z, r0.x, c13.y, c13.z
    mad r0.x, r0.z, r0.y, r0.x
    slt r0.y, v0.x, -v0.x
    mad r0.x, r0.y, c13.w, r0.x
    min r0.y, v0.x, v0.z
    slt r0.y, r0.y, -r0.y
    max r0.z, v0.x, v0.z
    sge r0.z, r0.z, -r0.z
    mul r0.y, r0.z, r0.y
    add r0.z, r0.x, r0.x
    mad r0.x, r0.y, -r0.z, r0.x
    mad r0.x, v0.y, c248.x, r0.x
    rcp r0.y, c247.x
    mul r0.x, r0.y, r0.x
    mov r0.w, c247.w
    mad r0.x, c212.x, r0.w, -r0.x
    mad r0.x, r0.x, c14.x, c14.y
    frc r0.x, r0.x
    mad r0.x, r0.x, c14.z, c14.w
    sincos r1.y, r0.x
    slt r0.x, -r1.y, r1.y
    slt r0.y, r1.y, -r1.y
    add r0.x, -r0.y, r0.x
    pow r0.y, r1_abs.y, c247.y
    mul r0.x, r0.y, r0.x
    mul r0.x, r0.x, c247.z
    rcp r0.y, c246.x
    mul r0.y, r0.y, v0.y
    mov r0.w, c246.w
    mad r0.y, c212.x, r0.w, -r0.y
    mad r0.y, r0.y, c14.x, c14.y
    frc r0.y, r0.y
    mad r0.y, r0.y, c14.z, c14.w
    sincos r1.y, r0.y
    slt r0.y, -r1.y, r1.y
    slt r0.z, r1.y, -r1.y
    add r0.y, -r0.z, r0.y
    pow r0.z, r1_abs.y, c246.y
    mul r0.y, r0.z, r0.y
    mad r0.x, r0.y, c246.z, r0.x
    mov r1.xy, v1
    mov r1.zw, v2.xyxy
    add o1, r1, c191
    mov r1.xy, v3
    mov r1.zw, v4.xyxy
    add o2, r1, c192
    mul r0.xyz, r0.x, v6
    mov r1.xyz, v0
    mad r0.xyz, r0, v5.x, r1
    if b0
      mul r1, c15.x, v8
      mova a0, r1.yxzw
      mul r2, v7.y, c30[a0.x]
      mad r2, c30[a0.y], v7.x, r2
      mad r2, c30[a0.z], v7.z, r2
      add r1.x, v7.y, v7.x
      add r1.x, r1.x, v7.z
      add r1.x, -r1.x, c15.y
      mad r2, c30[a0.w], r1.x, r2
      dp3 r1.y, r2, v6
      mov r0.w, v0.w
      dp4 r1.z, r2, r0
      mul r2, v7.y, c28[a0.x]
      mad r2, c28[a0.y], v7.x, r2
      mad r2, c28[a0.z], v7.z, r2
      mad r2, c28[a0.w], r1.x, r2
      dp3 r1.w, r2, v6
      dp4 r2.x, r2, r0
      mul r3, v7.y, c29[a0.x]
      mad r3, c29[a0.y], v7.x, r3
      mad r3, c29[a0.z], v7.z, r3
      mad r3, c29[a0.w], r1.x, r3
      dp4 r0.y, r3, r0
      dp3 r0.w, r3, v6
      mov r0.x, r2.x
      mov r0.z, r1.z
      mov r1.x, v0.w
    else
      mov r0.w, v6.y
      mov r1.yw, v6.xzzx
      mov r1.x, v0.w
    endif
    mul r2, r0.y, c9
    mad r2, r0.x, c8, r2
    mad r2, r0.z, c10, r2
    mad r2, r1.x, c11, r2
    mov o3.xyz, r2
    mul r0.xyz, r0.w, c9
    mad r0.xyz, r1.w, c8, r0
    mad r0.xyz, r1.y, c10, r0
    nrm r1.xyz, r0
    mov o4.xyz, r1
    add r0.xyz, -r2, c178
    nrm r3.xyz, r0
    dp3_sat r0.x, r1, r3
    add r0.x, -r0.x, c15.y
    mul r0.y, r0.x, r0.x
    mul r0.y, r0.y, r0.y
    mul r0.x, r0.x, r0.y
    mad o4.w, r0.x, c17.z, c17.w
    dp3 r0.x, -c183, r3
    mad r0.y, c198.z, r0.x, c198.y
    pow r3.x, r0_abs.y, c15.w
    rcp r0.y, r3.x
    mul r0.y, r0.y, c198.x
    mul r0.y, r0.y, c197.w
    mad r0.x, r0.x, r0.x, c15.y
    mad r0.x, c197.z, r0.x, r0.y
    add r0.y, c197.y, c197.x
    rcp r0.z, r0.y
    mul r0.x, r0.z, r0.x
    mov r1.w, c15.y
    dp4_sat r0.z, r1, c211
    add o7.z, -r0.z, c15.y
    mul r1, r2.y, c5
    mad r1, r2.x, c4, r1
    mad r1, r2.z, c6, r1
    mad r1, r2.w, c7, r1
    mul r3, r1.y, c1
    mad r3, r1.x, c0, r3
    mad r3, r1.z, c2, r3
    mad r3, r1.w, c3, r3
    mov o0.xyw, r3
    mad o0.z, c195.x, -r3.z, r3.z
    mov o3.w, -r1.z
    add r0.z, -r1.z, -c199.y
    mul_sat r0.z, r0.z, c199.x
    mul r0.z, r0.z, c199.z
    mul r0.y, r0.z, -r0.y
    mul r0.y, r0.y, c15.z
    exp r0.y, r0.y
    mov o7.x, r0.y
    add r0.y, -r0.y, c15.y
    mul r0.x, r0.y, r0.x
    mul o7.y, r0.x, c199.w
    mul r0, r2.y, c25
    mad r0, r2.x, c24, r0
    mad r0, r2.z, c26, r0
    add r0, r0, c27
    mov o5.zw, r0
    mul r0.xyz, r0.xyww, c17.xyxw
    add o5.xy, r0.z, r0
    mul r0, r2.y, c208
    mad r0, r2.x, c207, r0
    mad r0, r2.z, c209, r0
    add r0, r0, c210
    mov o6.zw, r0
    mul r0.xyz, r0.xyww, c17.xyxw
    add o6.xy, r0.z, r0
    mov o7.w, c16.x
    mov o8, v5

// approximately 188 instruction slots used
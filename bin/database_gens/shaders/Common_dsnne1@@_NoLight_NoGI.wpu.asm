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
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   float4 mrgPlayableParam;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif;
//   sampler2D sampEnv;
//   sampler2D sampNrm;
//   sampler2D sampNrm2;
//   sampler2D sampSpe;
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
//   mrgTexcoordIndex                      c26      2
//   mrgGlobalLight_Diffuse                c36      1
//   mrgGlobalLight_Specular               c37      1
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   mrgLuminanceRange                     c63      1
//   mrgInShadowScale                      c64      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_LightScatteringColor                c75      1
//   g_aLightField                         c77      6
//   mrgPlayableParam                      c86      1
//   g_ForceAlphaColor                     c89      1
//   g_MtxView                             c90      3
//   sampDif                               s0       1
//   sampSpe                               s1       1
//   sampNrm                               s3       1
//   sampNrm2                              s4       1
//   sampEnv                               s5       1
//   g_VerticalShadowMapSampler            s7       1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 0.5, 2, -1, -3
    def c1, 500, 5, 1024, 4
    def c2, 0, 1, 2, 3
    def c3, 0.5, -0.5, 0, 0
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
    dcl vPos.y
    dcl_2d s0
    dcl_2d s1
    dcl_2d s3
    dcl_2d s4
    dcl_2d s5
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
    mad_pp r1.y, r0.x, -c0.y, -c0.w
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
    frc r1.xy, c27
    cmp r1.zw, -r1.xyxy, c2.x, c2.y
    add r1.xy, -r1, c27
    cmp r1.zw, c27.xyxy, r2.x, r1
    add r1.xy, r1.zwzw, r1
    add r3, r1.x, -c2
    add r1, r1.y, -c2
    cmp r2.yz, -r3_abs.x, v0.xxyw, c2.x
    cmp r2.yz, -r3_abs.y, v0.xzww, r2
    cmp r2.yz, -r3_abs.z, v1.xxyw, r2
    cmp r2.yz, -r3_abs.w, v1.xzww, r2
    texld_pp r3, r2.yzzw, s3
    mul_pp r3.x, r3.w, r3.x
    mad_pp r2.yz, r3.xxyw, c0.y, c0.z
    dp2add_pp r2.w, r2.yzzw, -r2.yzzw, c2.y
    rsq_pp r2.w, r2.w
    rcp_pp r2.w, r2.w
    nrm_pp r3.xyz, v8
    mul_pp r4.xyz, r2.z, r3
    nrm_pp r5.xyz, v7
    mad_pp r4.xyz, r2.y, r5, r4
    nrm_pp r6.xyz, v3
    mad_pp r2.yzw, r2.w, r6.xxyz, r4.xxyz
    cmp r4.xy, -r1_abs.x, v0, c2.x
    cmp r1.xy, -r1_abs.y, v0.zwzw, r4
    cmp r1.xy, -r1_abs.z, v1, r1
    cmp r1.xy, -r1_abs.w, v1.zwzw, r1
    texld_pp r1, r1, s4
    mul_pp r1.x, r1.w, r1.x
    mad_pp r1.xy, r1, c0.y, c0.z
    mul_pp r3.xyz, r3, r1.y
    mad_pp r3.xyz, r1.x, r5, r3
    dp2add_pp r1.x, r1, -r1, c2.y
    rsq_pp r1.x, r1.x
    rcp_pp r1.x, r1.x
    mad_pp r1.xyz, r1.x, r6, r3
    add_pp r1.xyz, r1, r2.yzww
    nrm_pp r3.xyz, r1
    add_pp r1.xyz, c22, -v2
    dp3_pp r1.w, r1, r1
    rsq_pp r1.w, r1.w
    mad_pp r2.yzw, r1.xxyz, r1.w, -r0
    dp3_pp r0.y, r3, -r0.yzww
    mad_pp r1.xyz, r1, r1.w, -c10
    nrm_pp r4.xyz, r1
    dp3_sat_pp r0.z, r4, r3
    nrm_pp r1.xyz, r2.yzww
    dp3_sat_pp r0.w, r1, r3
    mov_pp r1.xy, c1
    mul_pp r1.xy, r1, c20.yzzw
    max_pp r2.y, r1.x, c2.y
    min r1.x, r2.y, c1.z
    pow r2.y, r0.w, r1.x
    pow r2.z, r0.z, r1.x
    mul_pp r1.xzw, c59.w, c59.xyyz
    mul_pp r1.xzw, r1.y, r1
    mul_pp r4.xyz, r1.y, c37
    mul_pp r4.xyz, r2.z, r4
    mul_pp r1.xyz, r2.y, r1.xzww
    mul_pp r1.xyz, r0.x, r1
    max r0.z, v4.z, c2.x
    add r0.w, r0.z, -v4.w
    cmp r5.z, r0.w, c2.x, r0.z
    mov r5.xyw, v4
    texldp_pp r5, r5, s13
    max r0.z, v5.z, c2.x
    add r0.w, r0.z, -v5.w
    cmp r6.z, r0.w, c2.x, r0.z
    mov r6.xyw, v5
    texldp_pp r6, r6, s7
    min_pp r0.z, r6.x, r5.x
    lrp_pp r0.w, v6.z, c2.y, r6.x
    lrp_pp r1.w, v6.z, c2.y, r0.z
    rcp r0.z, v4.w
    mul r2.yz, r0.z, v4.xxyw
    mad r2.yz, r2, c0.y, c0.z
    abs_sat r2.yz, r2
    add_sat r2.yz, r2, -c65.x
    mul r2.yz, r2, c65.y
    max r0.z, r2.y, r2.z
    lrp_pp r2.y, r0.z, c2.y, r1.w
    lrp_pp r1.w, r0.z, c2.y, r0.w
    mul r0.z, r2.y, c77.w
    mad_pp r1.xyz, r4, r0.z, r1
    mul r0.w, c64.z, c64.x
    mov r4.xz, c64
    mad r2.y, r4.x, -r4.z, r4.z
    mad_pp r0.w, r0.z, r2.y, r0.w
    mul r4, r3.y, c91
    mad r4, r3.x, c90, r4
    mad r4, r3.z, c92, r4
    dp4 r2.y, r4, r4
    rsq r2.y, r2.y
    mul r2.yz, r2.y, r4.xxyw
    mad_pp r2.yz, r2, c3.xxyw, c3.x
    texld_pp r4, r2.yzzw, s5
    mul r2.yzw, r4.xxyz, c63.x
    mad_pp r2.yzw, r2, r4.w, r4.xxyz
    frc r4.xy, c26.xzzw
    cmp r4.zw, -r4.xyxy, c2.x, c2.y
    add r4.xy, -r4, c26.xzzw
    cmp r4.zw, c26.xyxz, r2.x, r4
    add r4.xy, r4.zwzw, r4
    add r5, r4.y, -c2
    add r4, r4.x, -c2
    cmp r6.xy, -r5_abs.x, v0, c2.x
    cmp r5.xy, -r5_abs.y, v0.zwzw, r6
    cmp r5.xy, -r5_abs.z, v1, r5
    cmp r5.xy, -r5_abs.w, v1.zwzw, r5
    texld_pp r5, r5, s1
    mul_pp r2.xyz, r2.yzww, r5.w
    mul_pp r2.xyz, r0.w, r2
    mad_pp r1.xyz, r1, c18, r2
    mul_pp r1.xyz, r5, r1
    mul_pp r1.xyz, r1, v3.w
    dp3_pp r0.w, r3, -c10
    mul r2.xyz, r0.w, c36
    mul_pp r2.xyz, r0.z, r2
    cmp_pp r2.xyz, r0.w, r2, c2.x
    mul_pp r5.xyz, c58.w, c58
    mul_pp r5.xyz, r0.y, r5
    cmp_pp r0.yzw, r0.y, r5.xxyz, c2.x
    mad_pp r0.xyz, r0.x, r0.yzww, r2
    mad_pp r2.xyz, r3, c0.x, c0.x
    mul_pp r3.xyz, r3, r3
    mov r5.xyz, c79
    add r5.xyz, -r5, c80
    mad r5.xyz, r2.y, r5, c79
    mul r5.xyz, r3.y, r5
    mov r6.xyz, c77
    add r6.xyz, -r6, c78
    mad r2.xyw, r2.x, r6.xyzz, c77.xyzz
    mad_pp r2.xyw, r3.x, r2, r5.xyzz
    mov r5.xyz, c81
    add r3.xyw, -r5.xyzz, c82.xyzz
    mad r3.xyw, r2.z, r3, c81.xyzz
    mad_pp r2.xyz, r3.z, r3.xyww, r2.xyww
    mul_pp r3.xyz, r2, c17
    mul r3.xyz, r3, c70.w
    mad r2.xyz, r2, c17, -r3
    mad_pp r2.xyz, r1.w, r2, r3
    add_pp r0.xyz, r0, r2
    mul_pp r0.xyz, r0, c16
    cmp r2.xy, -r4_abs.x, v0, c2.x
    cmp r2.xy, -r4_abs.y, v0.zwzw, r2
    cmp r2.xy, -r4_abs.z, v1, r2
    cmp r2.xy, -r4_abs.w, v1.zwzw, r2
    texld_pp r2, r2, s0
    mul_pp r0.w, r2.w, c16.w
    mul_pp r0.w, r0.w, v9.w
    mul_pp r3.w, r0.w, c21.x
    add r0.w, c0.x, vPos.y
    mov r4.x, c86.x
    mad r0.w, r0.w, c24.w, -r4.x
    mul_sat_pp r0.w, r0.w, c86.y
    lrp_pp r4.xyz, r0.w, r2, c2.y
    mad_pp r0.xyz, r0, r4, r1
    mul_pp r3.xyz, r0, v9
    mul_pp r0, r3, c89
    min_pp r1, r0, c1.w
    mul_pp r0.xyz, c75, v6.y
    mad_pp oC0.xyz, r1, v6.x, r0
    mov_pp oC0.w, r1.w

// approximately 207 instruction slots used (7 texture, 200 arithmetic)
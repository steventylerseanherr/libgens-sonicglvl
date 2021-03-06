//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   sampler2D g_GISampler;
//   float4 g_IceParam;
//   row_major float4x4 g_MtxView;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLocalLight1_Color;
//   float4 mrgLocalLight1_Position;
//   float4 mrgLocalLight1_Range;
//   float4 mrgLocalLight2_Color;
//   float4 mrgLocalLight2_Position;
//   float4 mrgLocalLight2_Range;
//   float4 mrgLocalLight3_Color;
//   float4 mrgLocalLight3_Position;
//   float4 mrgLocalLight3_Range;
//   float4 mrgLocalLight4_Color;
//   float4 mrgLocalLight4_Position;
//   float4 mrgLocalLight4_Range;
//   float4 mrgLuminanceRange;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampEnv;
//   sampler2D sampNrm0;
//   sampler2D sampNrm1;
//   sampler2D sampRef;
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
//   mrgGlobalLight_Diffuse   c36      1
//   mrgGlobalLight_Specular  c37      1
//   mrgLocalLight1_Position  c42      1
//   mrgLocalLight1_Color     c43      1
//   mrgLocalLight1_Range     c44      1
//   mrgLocalLight2_Position  c46      1
//   mrgLocalLight2_Color     c47      1
//   mrgLocalLight2_Range     c48      1
//   mrgLocalLight3_Position  c50      1
//   mrgLocalLight3_Color     c51      1
//   mrgLocalLight3_Range     c52      1
//   mrgLocalLight4_Position  c54      1
//   mrgLocalLight4_Color     c55      1
//   mrgLocalLight4_Range     c56      1
//   mrgLuminanceRange        c63      1
//   mrgInShadowScale         c64      1
//   g_MtxView                c90      3
//   g_IceParam               c150     1
//   sampDif                  s0       1
//   sampSpec                 s1       1
//   sampNrm0                 s3       1
//   sampNrm1                 s4       1
//   sampEnv                  s5       1
//   sampRef                  s6       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//

    ps_3_0
    def c0, 2, -1, 0, 1
    def c1, 10, 4, 0.5, -0.5
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_2d s0
    dcl_2d s1
    dcl_2d s3
    dcl_2d s4
    dcl_2d s5
    dcl_2d s6
    dcl_2d s9
    dcl_2d s10
    texld_pp r0, v0, s0
    mul_pp oC0.w, r0.w, c16.w
    add_pp r1.xyz, -c50, v2
    dp3_pp r0.w, r1, r1
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r1.xyz, r0.w, r1
    mad_sat_pp r0.w, -r1.w, c52.z, c52.w
    mul r2.xyz, r0.w, c51
    add_pp r3.xyz, -c42, v2
    dp3_pp r0.w, r3, r3
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r3.xyz, r0.w, r3
    mad_sat_pp r0.w, -r1.w, c44.z, c44.w
    mul r4.xyz, r0.w, c43
    add_pp r5.xyz, -c46, v2
    dp3_pp r0.w, r5, r5
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r5.xyz, r0.w, r5
    mad_sat_pp r0.w, -r1.w, c48.z, c48.w
    mul r6.xyz, r0.w, c47
    texld_pp r7, v1, s3
    mul_pp r7.x, r7.w, r7.x
    mad_pp r7.xy, r7, c0.x, c0.y
    dp2add_sat_pp r0.w, r7, r7, c0.z
    add r0.w, -r0.w, c0.w
    rsq r0.w, r0.w
    rcp_pp r0.w, r0.w
    nrm_pp r8.xyz, v6
    mul_pp r7.yzw, r7.y, r8.xxyz
    nrm_pp r9.xyz, v5
    mad_pp r7.xyz, r7.x, r9, r7.yzww
    nrm_pp r10.xyz, v3
    mad_pp r7.xyz, r0.w, r10, r7
    add_pp r11.xyz, c22, -v2
    dp3_pp r0.w, r11, r11
    rsq_pp r0.w, r0.w
    mad_pp r12.xyz, r11, r0.w, -r5
    dp3_sat_pp r1.w, r7, -r5
    mul_pp r5.xyz, r6, r1.w
    nrm_pp r13.xyz, r12
    dp3_sat_pp r1.w, r13, r7
    mov r12.x, c1.x
    mul_pp r2.w, r12.x, c20.y
    exp_pp r2.w, r2.w
    mul_pp r2.w, r2.w, c1.y
    pow_pp r3.w, r1.w, r2.w
    mul_pp r1.w, r3.w, c20.z
    mul_pp r6.xyz, r6, r1.w
    mad_pp r12.xyz, r11, r0.w, -r3
    dp3_sat_pp r1.w, r7, -r3
    mad_pp r3.xyz, r1.w, r4, r5
    nrm_pp r5.xyz, r12
    dp3_sat_pp r1.w, r5, r7
    pow_pp r3.w, r1.w, r2.w
    mul_pp r1.w, r3.w, c20.z
    mad_pp r4.xyz, r1.w, r4, r6
    mad_pp r5.xyz, r11, r0.w, -r1
    dp3_sat_pp r1.x, r7, -r1
    mad_pp r1.xyz, r1.x, r2, r3
    nrm_pp r3.xyz, r5
    dp3_sat_pp r1.w, r3, r7
    pow_pp r3.x, r1.w, r2.w
    mul_pp r1.w, r3.x, c20.z
    mad_pp r2.xyz, r1.w, r2, r4
    add_pp r3.xyz, -c54, v2
    dp3_pp r1.w, r3, r3
    rsq_pp r1.w, r1.w
    rcp_pp r3.w, r1.w
    mul_pp r3.xyz, r1.w, r3
    mad_sat_pp r1.w, -r3.w, c56.z, c56.w
    mul r4.xyz, r1.w, c55
    mad_pp r5.xyz, r11, r0.w, -r3
    dp3_sat_pp r1.w, r7, -r3
    mad_pp r1.xyz, r1.w, r4, r1
    nrm_pp r3.xyz, r5
    dp3_sat_pp r1.w, r3, r7
    pow_pp r3.x, r1.w, r2.w
    mul_pp r1.w, r3.x, c20.z
    mad_pp r2.xyz, r1.w, r4, r2
    mad_pp r3.xyz, r11, r0.w, -c10
    mul_pp r4.xyz, r0.w, r11
    nrm_pp r5.xyz, r3
    dp3_sat_pp r0.w, r5, r7
    pow_pp r1.w, r0.w, r2.w
    texld_pp r3, v0.zwzw, s10
    mul_pp r0.w, r3.w, c20.z
    mul_pp r0.w, r1.w, r0.w
    mad_pp r2.xyz, r0.w, c37, r2
    mul_pp r2.xyz, r2, c18
    texld_pp r5, v0, s1
    mul_pp r2.xyz, r2, r5
    mul_pp r2.xyz, r2, v3.w
    dp3_sat_pp r0.w, r7, -c10
    mul r0.w, r0.w, r3.w
    mad_pp r1.xyz, r0.w, c36, r1
    mul_pp r3.xyz, r3, r3
    mad_pp r1.xyz, r3, c17, r1
    mul_pp r1.xyz, r1, c16
    mad_pp r0.xyz, r1, r0, r2
    texld_pp r1, v1.zwzw, s4
    mul_pp r1.x, r1.w, r1.x
    mad_pp r1.xy, r1, c0.x, c0.y
    mul_pp r2.xyz, r8, r1.y
    mad_pp r2.xyz, r1.x, r9, r2
    dp2add_sat_pp r0.w, r1, r1, c0.z
    add r0.w, -r0.w, c0.w
    rsq r0.w, r0.w
    rcp_pp r0.w, r0.w
    mad r1.xyz, r0.w, r10, r2
    dp3_pp r0.w, r4, r1
    mul_pp r2.xyz, r4, c150.x
    mad_pp r1.w, r0.w, -r0.w, c0.w
    mul_pp r2.w, c150.x, c150.x
    mad_pp r1.w, r2.w, -r1.w, c0.w
    rsq_pp r1.w, r1.w
    rcp_pp r1.w, r1.w
    mad r0.w, c150.x, r0.w, -r1.w
    mad_pp r1.xyz, r1, r0.w, -r2
    add_pp r1.w, r1.z, c0.w
    dp3_pp r0.w, r1.xyww, r1.xyww
    rsq_pp r0.w, r0.w
    rcp_pp r0.w, r0.w
    add_pp r0.w, r0.w, r0.w
    rcp r0.w, r0.w
    mad_pp r1.xy, r1, r0.w, c1.z
    texld_pp r1, r1, s6
    mul_pp r1.xyz, r5, r1
    mul r2, r7.y, c91
    mad r2, r7.x, c90, r2
    mad r2, r7.z, c92, r2
    dp4 r0.w, r2, r2
    rsq r0.w, r0.w
    mul r2.xy, r0.w, r2
    mad_pp r2.xy, r2, c1.zwzw, c1.z
    texld_pp r2, r2, s5
    mul_pp r2.xyz, r5, r2
    mul r0.w, c64.z, c64.x
    mov r3.xz, c64
    mad r1.w, r3.x, -r3.z, r3.z
    mad_pp r0.w, r3.w, r1.w, r0.w
    mov_pp r3.yz, c150
    mul r3.xy, r3.zyzw, c63.x
    mul r3.xy, r0.w, r3
    mov_sat_pp r0.w, v3.w
    mul r1.w, r3.y, r0.w
    add_pp r0.w, -r0.w, c0.w
    mul r0.w, r0.w, r3.x
    mul r2.xyz, r2, r1.w
    mad r1.xyz, r0.w, r1, r2
    add_pp r0.xyz, r0, r1
    texld_pp r1, v4.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 183 instruction slots used (8 texture, 175 arithmetic)

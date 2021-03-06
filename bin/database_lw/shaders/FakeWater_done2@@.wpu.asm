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
//   float4 g_OffsetParam;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_ViewportSize;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
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
//   samplerCUBE sampEnv;
//   sampler2D sampNrm;
//   sampler2D sampOffset0;
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
//   mrgEyeLight_Diffuse      c58      1
//   mrgEyeLight_Specular     c59      1
//   mrgEyeLight_Range        c60      1
//   mrgLuminanceRange        c63      1
//   mrgInShadowScale         c64      1
//   g_GIModeParam            c69      1
//   g_OffsetParam            c150     1
//   sampDif                  s0       1
//   sampNrm                  s2       1
//   sampOffset0              s3       1
//   sampEnv                  s4       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 2, -1, 0.5, 0
    def c1, 10, 4, 0, 0
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_color_pp v7
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s2
    dcl_2d s3
    dcl_cube s4
    dcl_2d s9
    dcl_2d s10
    dcl_2d s11
    texld_pp r0, v1, s3
    mad r0.xy, r0.wyzw, c0.x, c0.y
    mad r0.zw, r0.xyxy, c150.xyxy, v0.xyxy
    texld_pp r1, r0.zwzw, s0
    mul_pp r0.z, r1.w, c16.w
    mul_pp oC0.w, r0.z, v7.w
    add_pp r2.xyz, -c50, v2
    dp3_pp r0.z, r2, r2
    rsq_pp r0.z, r0.z
    rcp_pp r0.w, r0.z
    mul_pp r2.xyz, r0.z, r2
    mad_sat_pp r0.z, -r0.w, c52.z, c52.w
    mul r3.xyz, r0.z, c51
    add_pp r4.xyz, -c42, v2
    dp3_pp r0.z, r4, r4
    rsq_pp r0.z, r0.z
    rcp_pp r0.w, r0.z
    mul_pp r4.xyz, r0.z, r4
    mad_sat_pp r0.z, -r0.w, c44.z, c44.w
    mul r5.xyz, r0.z, c43
    add_pp r6.xyz, -c46, v2
    dp3_pp r0.z, r6, r6
    rsq_pp r0.z, r0.z
    rcp_pp r0.w, r0.z
    mul_pp r6.xyz, r0.z, r6
    mad_sat_pp r0.z, -r0.w, c48.z, c48.w
    mul r7.xyz, r0.z, c47
    mad r0.zw, r0.xyxy, c150.xyxy, v1
    texld_pp r8, r0.zwzw, s2
    mul_pp r8.x, r8.w, r8.x
    mad_pp r0.zw, r8.xyxy, c0.x, c0.y
    nrm_pp r8.xyz, v6
    mul_pp r8.xyz, r0.w, r8
    nrm_pp r9.xyz, v5
    mad_pp r8.xyz, r0.z, r9, r8
    dp2add_sat_pp r0.z, r0.zwzw, r0.zwzw, c0.w
    add r0.z, -r0.z, -c0.y
    rsq r0.z, r0.z
    rcp_pp r0.z, r0.z
    nrm_pp r9.xyz, v3
    mad r8.xyz, r0.z, r9, r8
    add_pp r9.xyz, c22, -v2
    dp3_pp r0.z, r9, r9
    rsq_pp r0.z, r0.z
    mad_pp r10.xyz, r9, r0.z, -r6
    dp3_sat_pp r0.w, r8, -r6
    mul_pp r6.xyz, r7, r0.w
    nrm_pp r11.xyz, r10
    dp3_sat_pp r0.w, r11, r8
    mov r10.y, c20.y
    mul_pp r1.w, r10.y, c1.x
    exp_pp r1.w, r1.w
    mul_pp r1.w, r1.w, c1.y
    pow_pp r2.w, r0.w, r1.w
    mul_pp r0.w, r2.w, c20.z
    mul_pp r7.xyz, r7, r0.w
    mad_pp r10.xyz, r9, r0.z, -r4
    dp3_sat_pp r0.w, r8, -r4
    mad_pp r4.xyz, r0.w, r5, r6
    nrm_pp r6.xyz, r10
    dp3_sat_pp r0.w, r6, r8
    pow_pp r2.w, r0.w, r1.w
    mul_pp r0.w, r2.w, c20.z
    mad_pp r5.xyz, r0.w, r5, r7
    mad_pp r6.xyz, r9, r0.z, -r2
    dp3_sat_pp r0.w, r8, -r2
    mad_pp r2.xyz, r0.w, r3, r4
    nrm_pp r4.xyz, r6
    dp3_sat_pp r0.w, r4, r8
    pow_pp r2.w, r0.w, r1.w
    mul_pp r0.w, r2.w, c20.z
    mad_pp r3.xyz, r0.w, r3, r5
    add_pp r4.xyz, -c54, v2
    dp3_pp r0.w, r4, r4
    rsq_pp r0.w, r0.w
    rcp_pp r2.w, r0.w
    mul_pp r4.xyz, r0.w, r4
    mad_sat_pp r0.w, -r2.w, c56.z, c56.w
    mul r5.xyz, r0.w, c55
    mad_pp r6.xyz, r9, r0.z, -r4
    dp3_sat_pp r0.w, r8, -r4
    mad_pp r2.xyz, r0.w, r5, r2
    nrm_pp r4.xyz, r6
    dp3_sat_pp r0.w, r4, r8
    pow_pp r2.w, r0.w, r1.w
    mul_pp r0.w, r2.w, c20.z
    mad_pp r3.xyz, r0.w, r5, r3
    mad_pp r4.xyz, r9, r0.z, -c10
    mul r5.xyz, r0.z, r9
    rcp r0.z, r0.z
    mad_sat_pp r0.z, -r0.z, c60.z, c60.w
    nrm_pp r6.xyz, r4
    dp3_sat_pp r0.w, r6, r8
    pow_pp r2.w, r0.w, r1.w
    texld r4, v0.zwzw, s10
    mul_pp r0.w, r4.w, c20.z
    mul_pp r0.w, r2.w, r0.w
    mad_pp r3.xyz, r0.w, c37, r3
    add_pp r6.xyz, r5, r5
    nrm_pp r7.xyz, r6
    dp3_sat_pp r0.w, r7, r8
    pow_pp r2.w, r0.w, r1.w
    mul_pp r0.w, r2.w, c20.z
    mul_pp r6.xyz, r0.z, c59
    mul r7.xyz, r0.z, c58
    mad_pp r3.xyz, r0.w, r6, r3
    dp3 r0.z, -r5, r8
    add r0.z, r0.z, r0.z
    mad_pp r6.xyz, r8, -r0.z, -r5
    dp3_sat_pp r0.z, r8, r5
    dp3_sat_pp r0.w, r8, -c10
    mul r0.w, r0.w, r4.w
    mad_pp r2.xyz, r0.w, c36, r2
    mad_pp r2.xyz, r0.z, r7, r2
    mad_pp r0.xy, r0, c150, r6
    mov_pp r0.z, -r6.z
    texld_pp r0, r0, s4
    mul r0.w, c64.z, c64.x
    mov r5.xz, c64
    mad r1.w, r5.x, -r5.z, r5.z
    mad_pp r0.w, r4.w, r1.w, r0.w
    mul_pp r4.xyz, r4, r4
    mad_pp r2.xyz, r4, c17, r2
    mul_pp r2.xyz, r2, c16
    mul_pp r1.xyz, r1, r2
    mul r0.w, r0.w, c63.x
    mul_pp r0.xyz, r0.w, r0
    mad_pp r0.xyz, r3, c18, r0
    mul_pp r0.xyz, r0, v3.w
    mad_pp r0.xyz, r1, v7, r0
    texld_pp r1, v4.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.z, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v4.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 169 instruction slots used (7 texture, 162 arithmetic)

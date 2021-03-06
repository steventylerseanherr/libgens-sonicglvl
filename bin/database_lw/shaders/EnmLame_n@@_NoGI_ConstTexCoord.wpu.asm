//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_Emission;
//   float4 g_EnmCarPaint;
//   float4 g_EyePosition;
//   row_major float4x4 g_MtxView;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_aLightField[6];
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
//   sampler2D sampEnv2;
//   sampler2D sampFlake;
//   sampler2D sampLame;
//   sampler2D sampNrm;
//   sampler2D sampSpe;
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
//   g_Emission               c19      1
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
//   g_aLightField            c77      6
//   g_MtxView                c90      3
//   g_EnmCarPaint            c150     1
//   sampDif                  s0       1
//   sampFlake                s1       1
//   sampSpe                  s2       1
//   sampEnv                  s3       1
//   sampEnv2                 s4       1
//   sampNrm                  s5       1
//   sampLame                 s6       1
//   sampDLScatter            s9       1
//

    ps_3_0
    def c0, 0.5, 10, 4, -0.5
    def c1, 0.25, 0, 0, 0
    def c2, 2, -1, 0, 1
    def c3, 1, -1, 0, 0.5
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xy
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_color_pp v7
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s4
    dcl_2d s5
    dcl_2d s6
    dcl_2d s9
    add_pp r0.xyz, -c50, v2
    dp3_pp r0.w, r0, r0
    rsq_pp r0.w, r0.w
    rcp_pp r1.x, r0.w
    mul_pp r0.xyz, r0.w, r0
    mad_sat_pp r0.w, -r1.x, c52.z, c52.w
    mul r1.xyz, r0.w, c51
    add_pp r2.xyz, -c42, v2
    dp3_pp r0.w, r2, r2
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r2.xyz, r0.w, r2
    mad_sat_pp r0.w, -r1.w, c44.z, c44.w
    mul r3.xyz, r0.w, c43
    add_pp r4.xyz, -c46, v2
    dp3_pp r0.w, r4, r4
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r4.xyz, r0.w, r4
    mad_sat_pp r0.w, -r1.w, c48.z, c48.w
    mul r5.xyz, r0.w, c47
    add_pp r6, c22.xyzx, -v2.xyzx
    dp3_pp r0.w, r6.yzww, r6.yzww
    rsq_pp r0.w, r0.w
    mad_pp r7.xyz, r6, r0.w, -r4
    nrm_pp r8.xyz, r7
    nrm_pp r7, v6.xyzx
    texld_pp r9, v1, s5
    mul_pp r9.x, r9.w, r9.x
    mad_pp r9.xy, r9, c2.x, c2.y
    mul_pp r7, r7, r9.y
    nrm_pp r10, v5.xyzx
    mad_pp r7, r9.x, r10, r7
    dp2add_sat_pp r1.w, r9, r9, c2.z
    add r1.w, -r1.w, c2.w
    rsq r1.w, r1.w
    rcp_pp r1.w, r1.w
    nrm_pp r9, v3.xyzx
    mad_pp r7, r1.w, r9, r7
    dp3_sat_pp r1.w, r8, r7
    mov r8.y, c0.y
    mul_pp r2.w, r8.y, c20.y
    exp_pp r2.w, r2.w
    mul_pp r2.w, r2.w, c0.z
    pow_pp r3.w, r1.w, r2.w
    mul_pp r1.w, r3.w, c20.z
    mul_pp r8.xyz, r5, r1.w
    mad_pp r9.xyz, r6, r0.w, -r2
    dp3_sat_pp r1.w, r7.wyzw, -r2
    nrm_pp r2.xyz, r9
    dp3_sat_pp r2.x, r2, r7
    pow_pp r3.w, r2.x, r2.w
    mul_pp r2.x, r3.w, c20.z
    mad_pp r2.xyz, r2.x, r3, r8
    mad_pp r8.xyz, r6, r0.w, -r0
    dp3_sat_pp r0.x, r7.wyzw, -r0
    nrm_pp r9.xyz, r8
    dp3_sat_pp r0.y, r9, r7
    pow_pp r3.w, r0.y, r2.w
    mul_pp r0.y, r3.w, c20.z
    mad_pp r2.xyz, r0.y, r1, r2
    add_pp r8.xyz, -c54, v2
    dp3_pp r0.y, r8, r8
    rsq_pp r0.y, r0.y
    rcp_pp r0.z, r0.y
    mul_pp r8.xyz, r0.y, r8
    mad_sat_pp r0.y, -r0.z, c56.z, c56.w
    mul r9.xyz, r0.y, c55
    mad_pp r10.xyz, r6, r0.w, -r8
    dp3_sat_pp r0.y, r7.wyzw, -r8
    nrm_pp r8.xyz, r10
    dp3_sat_pp r0.z, r8, r7
    pow_pp r3.w, r0.z, r2.w
    mul_pp r0.z, r3.w, c20.z
    mad_pp r2.xyz, r0.z, r9, r2
    mad_pp r8.xyz, r6, r0.w, -c10
    mul_pp r6, r0.w, r6
    nrm_pp r10.xyz, r8
    dp3_sat_pp r0.z, r10, r7
    pow_pp r3.w, r0.z, r2.w
    mov r8, c77
    mul_pp r0.z, r8.w, c20.z
    mul_pp r0.z, r3.w, r0.z
    mad_pp r2.xyz, r0.z, c37, r2
    mul_pp r2.xyz, r2, c18
    dp3_pp r0.z, r7.yzww, r6.yzww
    add_pp r0.w, r0.z, r0.z
    mov_sat_pp r0.z, r0.z
    mad_pp r6, r0.w, r7, -r6
    mul r10, r6.wyzw, c2.yywz
    mad_pp r11, r6, c3.xyyz, c3.zzzw
    cmp_pp r6, r6.z, r10, r11
    add_pp r0.w, r6.z, c2.w
    rcp r0.w, r0.w
    mad_pp r6.xy, r6.yxzw, r0.w, c2.w
    mad_pp r10.x, r6.y, c1.x, r6.w
    mul_pp r10.y, r6.x, c0.x
    texld_pp r6, r10, s4
    mul_pp r6.xyz, r6, c63.x
    mul r0.w, c64.z, c64.x
    mov r10.xz, c64
    mad r2.w, r10.x, -r10.z, r10.z
    mad_pp r0.w, c77.w, r2.w, r0.w
    mul_pp r6.xyz, r0.w, r6
    mul r10, c150.xxyy, v0.xyxy
    texld r11, r10.zwzw, s6
    texld r10, r10, s1
    mul_pp r6.xyz, r6, r11
    texld_pp r11, v0, s2
    mul_pp r6.xyz, r6, r11.w
    mul r12, r7.y, c91
    mad r12, r7.w, c90, r12
    mad r12, r7.z, c92, r12
    dp4 r2.w, r12, r12
    rsq r2.w, r2.w
    mul r12.xy, r2.w, r12
    mad_pp r12.xy, r12, c0.xwzw, c0.x
    texld_pp r12, r12, s3
    mul_pp r12.xyz, r12, c63.x
    mul_pp r11.xyz, r11, r12
    mul_pp r10.xyz, r10, r11
    mad_pp r6.xyz, r10, r0.w, r6
    mad_pp r2.xyz, r2, r11.w, r6
    mul_pp r2.xyz, r2, v3.w
    dp3_sat_pp r0.w, r7.wyzw, -r4
    mul_pp r4.xyz, r5, r0.w
    mad_pp r3.xyz, r1.w, r3, r4
    mad_pp r1.xyz, r0.x, r1, r3
    mad_pp r0.xyw, r0.y, r9.xyzz, r1.xyzz
    dp3_sat_pp r1.x, r7.wyzw, -c10
    mul r1.x, r1.x, c77.w
    mad_pp r0.xyw, r1.x, c36.xyzz, r0
    mad_pp r1.xyz, r7.wyzw, c0.x, c0.x
    mul_pp r3.xyz, r7.wyzw, r7.wyzw
    mov r4.xyz, c80
    mad r4.xyz, r4, r1.y, c79
    mul r4.xyz, r3.y, r4
    mad r1.xyw, c78.xyzz, r1.x, r8.xyzz
    mov r5.xyz, c82
    mad r5.xyz, r5, r1.z, c81
    mad_pp r1.xyz, r3.x, r1.xyww, r4
    mad_pp r1.xyz, r3.z, r5, r1
    mad_pp r0.xyw, r1.xyzz, c17.xyzz, r0
    mov r1.w, c2.w
    add r1.x, r1.w, -c150.z
    mad_pp r1.y, r0.z, -r1.x, c2.w
    mul_pp r0.z, r0.z, r1.x
    mul_pp r1.xyz, r1.y, c19
    mad_pp r1.xyz, c16, r0.z, r1
    mul_pp r0.xyz, r0.xyww, r1
    texld_pp r1, v0, s0
    mad_pp r0.xyz, r0, r1, r2
    mul_pp r0.w, r1.w, c16.w
    mul_pp r0, r0, v7
    texld_pp r1, v4.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1
    mov_pp oC0.w, r0.w

// approximately 184 instruction slots used (8 texture, 176 arithmetic)

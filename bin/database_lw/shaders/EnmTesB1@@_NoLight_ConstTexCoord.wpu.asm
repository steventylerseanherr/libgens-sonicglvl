//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_Emission;
//   float4 g_EnmTes1;
//   float4 g_EyePosition;
//   row_major float4x4 g_MtxView;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_aLightField[6];
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampEnv;
//   sampler2D sampEnv2;
//   sampler2D sampLev;
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
//   mrgLuminanceRange        c63      1
//   mrgInShadowScale         c64      1
//   g_aLightField            c77      6
//   g_MtxView                c90      3
//   g_EnmTes1                c150     1
//   sampDif                  s0       1
//   sampLev                  s1       1
//   sampSpe                  s2       1
//   sampEnv                  s4       1
//   sampEnv2                 s5       1
//   sampDLScatter            s9       1
//

    ps_3_0
    def c0, 0.5, 1, 10, 4
    def c1, -1, 1, 0, 0.5
    def c2, 0.5, -0.5, 0.25, 0
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord5 v3.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s4
    dcl_2d s5
    dcl_2d s9
    texld_pp r0, v0, s0
    mul_pp oC0.w, r0.w, c16.w
    mul r0.w, c64.z, c64.x
    mov r1.xz, c64
    mad r1.x, r1.x, -r1.z, r1.z
    mad_pp r0.w, c77.w, r1.x, r0.w
    mul r1.xy, c150.y, v0
    texld r1, r1, s1
    add_pp r2, c22.xyzx, -v1.xyzx
    dp3_pp r1.w, r2.yzww, r2.yzww
    rsq_pp r1.w, r1.w
    mul_pp r3, r1.w, r2
    mad_pp r2.xyz, r2, r1.w, -c10
    nrm_pp r4.xyz, r2
    nrm_pp r2, v2.xyzx
    dp3_pp r1.w, r2.yzww, r3.yzww
    add_pp r4.w, r1.w, r1.w
    mov_sat_pp r1.w, r1.w
    mad_pp r3, r4.w, r2, -r3
    mul r5, r3.wyzw, c1.xxyz
    mad r6, r3, c1.yxxz, c1.zzzw
    cmp_pp r3, r3.z, r5, r6
    add_pp r3.z, r3.z, c0.y
    rcp r3.z, r3.z
    mad_pp r3.xy, r3.yxzw, r3.z, c0.y
    mad_pp r5.x, r3.y, c2.z, r3.w
    mul_pp r5.y, r3.x, c0.x
    texld_pp r3, r5, s5
    mul_pp r3.xyz, r3, c63.x
    mul_pp r3.xyz, r0.w, r3
    mul_pp r1.xyz, r1, r3
    texld_pp r3, v0, s2
    mul_pp r1.xyz, r1, r3.w
    mul r5, r2.y, c91
    mad r5, r2.w, c90, r5
    mad r5, r2.z, c92, r5
    dp4 r4.w, r5, r5
    rsq r4.w, r4.w
    mul r5.xy, r4.w, r5
    mad_pp r5.xy, r5, c2, c2.x
    texld_pp r5, r5, s4
    mul_pp r5.xyz, r5, c63.x
    mul_pp r3.xyz, r3, r5
    mad_pp r1.xyz, r3, r0.w, r1
    mov r3.yz, c0
    mul_pp r0.w, r3.z, c20.y
    exp_pp r0.w, r0.w
    mul_pp r0.w, r0.w, c0.w
    dp3_sat_pp r2.x, r4, r2
    pow_pp r3.x, r2.x, r0.w
    mov r4, c77
    mul_pp r0.w, r4.w, c20.z
    mul_pp r0.w, r3.x, r0.w
    mul_pp r5.xyz, r0.w, c37
    mul_pp r5.xyz, r5, c18
    mad_pp r1.xyz, r5, r3.w, r1
    mul_pp r1.xyz, r1, v2.w
    mad_pp r3.xzw, r2.wyyz, c0.x, c0.x
    mov r5.xyz, c80
    mad r5.xyz, r5, r3.z, c79
    mul_pp r6.xyz, r2.wyzw, r2.wyzw
    dp3_sat_pp r0.w, r2.wyzw, -c10
    mul r0.w, r0.w, c77.w
    mul_pp r2.xyz, r0.w, c36
    mul r5.xyz, r5, r6.y
    mad r4.xyz, c78, r3.x, r4
    mov r7.xyz, c82
    mad r3.xzw, r7.xyyz, r3.w, c81.xyyz
    mad_pp r4.xyz, r6.x, r4, r5
    mad_pp r3.xzw, r6.z, r3, r4.xyyz
    mad_pp r2.xyz, r3.xzww, c17, r2
    add r0.w, r3.y, -c150.x
    mad_pp r2.w, r1.w, -r0.w, c0.y
    mul_pp r0.w, r0.w, r1.w
    mul_pp r3.xyz, r2.w, c19
    mad_pp r3.xyz, c16, r0.w, r3
    mul_pp r2.xyz, r2, r3
    mad_pp r0.xyz, r2, r0, r1
    texld_pp r1, v3.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 86 instruction slots used (6 texture, 80 arithmetic)
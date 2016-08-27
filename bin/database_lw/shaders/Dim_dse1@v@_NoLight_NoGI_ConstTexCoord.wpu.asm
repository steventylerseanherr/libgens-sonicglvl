//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Diffuse;
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
//   float4 s_LightScaleParam;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampEnv;
//   sampler2D sampSpe;
//
//
// Registers:
//
//   Name                     Reg   Size
//   ------------------------ ----- ----
//   mrgGlobalLight_Direction c10      1
//   g_Diffuse                c16      1
//   g_Specular               c18      1
//   g_PowerGlossLevel        c20      1
//   g_EyePosition            c22      1
//   mrgGlobalLight_Diffuse   c36      1
//   mrgGlobalLight_Specular  c37      1
//   mrgLuminanceRange        c63      1
//   mrgInShadowScale         c64      1
//   g_aLightField            c77      6
//   g_MtxView                c90      3
//   s_LightScaleParam        c151     1
//   sampDif                  s0       1
//   sampSpe                  s1       1
//   sampEnv                  s4       1
//   sampDLScatter            s9       1
//

    ps_3_0
    def c0, 0.5, 1, 10, 4
    def c1, 0.5, -0.5, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord5 v3.xy
    dcl_color_pp v4
    dcl_2d s0
    dcl_2d s1
    dcl_2d s4
    dcl_2d s9
    texld_pp r0, v0, s0
    mul_pp r0.w, r0.w, c16.w
    mul_pp oC0.w, r0.w, v4.w
    mul r0.w, c64.z, c64.x
    mov r1.xz, c64
    mad r1.x, r1.x, -r1.z, r1.z
    mad_pp r0.w, c77.w, r1.x, r0.w
    texld r1, v0, s1
    mul r1.w, r1.w, c63.x
    mul r0.w, r0.w, r1.w
    nrm_pp r2.xyz, v2
    mul r3, r2.y, c91
    mad r3, r2.x, c90, r3
    mad r3, r2.z, c92, r3
    dp4 r1.w, r3, r3
    rsq r1.w, r1.w
    mul r3.xy, r1.w, r3
    mad_pp r3.xy, r3, c1, c1.x
    texld_pp r3, r3, s4
    mul_pp r3.xyz, r0.w, r3
    mov r4.z, c0.z
    mul_pp r0.w, r4.z, c20.y
    exp_pp r0.w, r0.w
    mul_pp r0.w, r0.w, c0.w
    add_pp r4.xyz, c22, -v1
    dp3_pp r1.w, r4, r4
    rsq_pp r1.w, r1.w
    mad_pp r4.xyz, r4, r1.w, -c10
    nrm_pp r5.xyz, r4
    dp3_sat_pp r1.w, r5, r2
    pow_pp r2.w, r1.w, r0.w
    mul_pp r0.w, r2.w, c20.z
    mul_pp r4.xyz, r0.w, c37
    mul_pp r4.xyz, r4, c18
    mov_sat_pp r0.w, c151.x
    mov_sat r1.w, c77.w
    lrp r2.w, r1.w, c0.y, r0.w
    mad_pp r3.xyz, r4, r2.w, r3
    mul_pp r1.xyz, r1, r3
    mul_pp r1.xyz, r1, v2.w
    mad_pp r3.xyz, r2, c0.x, c0.x
    mul_pp r2.xyz, r2, r2
    mov r4.xyz, c80
    mad r4.xyz, r4, r3.y, c79
    mul r4.xyz, r2.y, r4
    mov r5.xyz, c77
    mad r3.xyw, c78.xyzz, r3.x, r5.xyzz
    mov r5.xyz, c82
    mad r5.xyz, r5, r3.z, c81
    mad_pp r3.xyz, r2.x, r3.xyww, r4
    mad_pp r2.xyz, r2.z, r5, r3
    mad_pp r2.xyz, c36, r2.w, r2
    mul_pp r2.xyz, r2, c16
    mad_pp r0.xyz, r2, r0, r1
    mul_pp r0.xyz, r0, v4
    texld_pp r1, v3.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 63 instruction slots used (4 texture, 59 arithmetic)
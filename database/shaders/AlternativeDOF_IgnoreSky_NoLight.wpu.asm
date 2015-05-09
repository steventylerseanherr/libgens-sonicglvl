//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   sampler2D g_Source;
//   sampler2D g_SourceLow;
//   float4 g_dofLerpScaleBias[2];
//
//
// Registers:
//
//   Name               Reg   Size
//   ------------------ ----- ----
//   g_dofLerpScaleBias c166     2
//   g_Source           s0       1
//   g_SourceLow        s1       1
//

    ps_3_0
    def c0, 0.996078432, -0.996078432, 255, 1
    def c1, 0.941176474, 1, 0, 0
    dcl_texcoord v0.xy
    dcl_2d s0
    dcl_2d s1
    texld_pp r0, v0, s1
    add_pp r1.x, r0.w, c0.y
    mad_pp r1.x, r1.x, -c0.z, c0.w
    add r1.y, -r0.w, c0.x
    cmp_pp r0.w, r1.y, r0.w, r1.x
    mov r1, c166
    mad_sat_pp r1, r0.w, r1, c167
    add_pp r2.xy, -r1, c0.w
    min_pp r3.xy, r2, r1.yzzw
    mul_pp r1.xyz, r0, r3.y
    texld_pp r2, v0, s0
    mul_pp r4.xyz, r2, c1.x
    mad_pp r1.xyz, r3.x, r4, r1
    mad_pp r0.xyz, r1.w, r0, r1
    mov_pp r3.z, r1.w
    dp3_pp r0.w, r3, c1.xyyw
    add_pp r0.w, -r0.w, c0.w
    mad_pp oC0.xyz, r2, r0.w, r0
    mov_pp oC0.w, c0.w

// approximately 19 instruction slots used (2 texture, 17 arithmetic)
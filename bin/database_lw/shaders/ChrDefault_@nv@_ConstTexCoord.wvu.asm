//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_EyePosition;
//   float4 g_LightScatteringFarNearScale;
//   row_major float3x4 g_MtxPalette[25];
//   row_major float4x4 g_MtxProjection;
//   row_major float4x4 g_MtxView;
//   row_major float4x4 g_MtxWorld;
//   float2 mrgFresnelParam;
//   float4 mrgGlobalLight_Direction;
//   bool mrgHasBone;
//   float4 mrgTexcoordIndex[4];
//   float4 mrgTexcoordOffset[2];
//   float4 mrgZOffsetRate;
//
//
// Registers:
//
//   Name                          Reg   Size
//   ----------------------------- ----- ----
//   mrgHasBone                    b15      1
//   g_MtxPalette                  c28     75
//   g_EyePosition                 c178     1
//   mrgGlobalLight_Direction      c183     1
//   mrgTexcoordIndex              c187     1
//   mrgTexcoordOffset             c191     2
//   mrgFresnelParam               c193     1
//   mrgZOffsetRate                c195     1
//   g_LightScatteringFarNearScale c199     1
//   g_MtxProjection               c224     4
//   g_MtxView                     c228     4
//   g_MtxWorld                    c232     4
//

    vs_3_0
    def c4, 3, 0.5, 0, 0
    def c0, 1, 0, 0, 0
    def c1, 0, 1, 0, 0
    def c2, 0, 0, 1, 0
    def c3, 0, 0, 0, 1
    dcl_position v0
    dcl_texcoord v1
    dcl_texcoord1 v2
    dcl_texcoord2 v3
    dcl_texcoord3 v4
    dcl_color v5
    dcl_normal v6
    dcl_tangent v7
    dcl_binormal v8
    dcl_blendweight v9
    dcl_blendindices v10
    dcl_position o0
    dcl_texcoord o1
    dcl_texcoord2 o2
    dcl_texcoord3 o3
    dcl_texcoord4 o4
    dcl_texcoord5 o5
    dcl_texcoord7 o6
    dcl_texcoord8 o7
    dcl_color o8
    frc r0.x, c187.x
    slt r0.y, -r0.x, r0.x
    add r0.x, -r0.x, c187.x
    slt r0.z, c187.x, -c187.x
    mad r0.x, r0.z, r0.y, r0.x
    add r0.yz, c191.xxyw, v1.xxyw
    add r1.xy, c191.zwzw, v2
    add r1.zw, c192.xyxy, v3.xyxy
    mova a0.x, r0.x
    mul r0.xy, r0.yzzw, c0[a0.x].x
    mad r0.xy, c0[a0.x].y, r1, r0
    mad r0.xy, c0[a0.x].z, r1.zwzw, r0
    add r0.zw, c192, v4.xyxy
    mad o1.xy, c0[a0.x].w, r0.zwzw, r0
    abs r0.x, c195.x
    sge r0.x, -r0.x, r0.x
    if b15
      add r0.y, -v9.x, c0.x
      add r0.y, r0.y, -v9.y
      add r0.y, r0.y, -v9.z
      mul r1, v10, c4.x
      mova a0, r1.yxzw
      mul r2, v9.y, c30[a0.x]
      mad r2, v9.x, c30[a0.y], r2
      mad r2, v9.z, c30[a0.z], r2
      mad r1, r0.y, c30[a0.w], r2
      dp3 r0.z, r1, v6
      mad r2, v0.xyzx, c0.xxxw, c0.yyzx
      dp4 r0.w, r1, r2
      mul r3, v9.y, c28[a0.x]
      mad r3, v9.x, c28[a0.y], r3
      mad r3, v9.z, c28[a0.z], r3
      mad r3, r0.y, c28[a0.w], r3
      dp4 r1.w, r3, r2
      dp3 r3.w, r3, v6
      dp3 r4.x, r3, v7
      mul r5, v9.y, c29[a0.x]
      mad r5, v9.x, c29[a0.y], r5
      mad r5, v9.z, c29[a0.z], r5
      mad r5, r0.y, c29[a0.w], r5
      dp4 r0.y, r5, r2
      dp3 r2.x, r5, v6
      dp3 r2.y, r5, v7
      dp3 r2.z, r1, v7
      dp3 r2.w, r3, -v8
      dp3 r3.x, r5, -v8
      dp3 r1.x, r1, -v8
    else
      mov r4.x, v7.x
      mov r2.yz, v7
      mov r2.w, -v8.x
      mov r3.x, -v8.y
      mov r1.x, -v8.z
      mov r3.w, v6.x
      mov r2.x, v6.y
      mov r0.z, v6.z
      mov r1.w, v0.x
      mov r0.yw, v0.xyzz
    endif
    mul r4.yzw, r2.y, c233.xxyz
    mad r4.xyz, r4.x, c232, r4.yzww
    mad o6.xyz, r2.z, c234, r4
    mul r3.xyz, r3.x, c233
    mad r2.yzw, r2.w, c232.xxyz, r3.xxyz
    mad o7.xyz, r1.x, c234, r2.yzww
    mul r1.xyz, r2.x, c233
    mad r1.xyz, r3.w, c232, r1
    mad r1.xyz, r0.z, c234, r1
    nrm r2.xyz, r1
    mov o3.xyz, r2
    mul r3, r0.y, c233
    mad r1, r1.w, c232, r3
    mad r1, r0.w, c234, r1
    add r1, r1, c235
    mov o2.xyz, r1
    mul r3, r1.y, c229
    mad r3, r1.x, c228, r3
    mad r3, r1.z, c230, r3
    mad r3, r1.w, c231, r3
    mov r4.xyw, c0
    mad r5, c195.x, r4.yyxw, r3
    mul r0.yz, r5.y, c225.xzww
    mad r0.yz, r5.x, c224.xzww, r0
    mad r0.yz, r5.z, c226.xzww, r0
    mad r0.yz, r5.w, c227.xzww, r0
    rcp r0.z, r0.z
    mul r0.y, r0.z, r0.y
    mul r5, r3.y, c225
    mad r5, r3.x, c224, r5
    mad r5, r3.z, c226, r5
    mad r5, r3.w, c227, r5
    mov o0.xyw, r5
    mad r0.z, r0.y, -r5.w, r5.z
    mul r0.y, r0.y, r5.w
    mad o0.z, r0.x, r0.z, r0.y
    add r0.x, r4.x, -c193.x
    add r0.yzw, -r1.xxyz, c178.xxyz
    nrm r1.xyz, r0.yzww
    dp3_sat r0.y, r2, r1
    add r0.y, -r0.y, c0.x
    mul r0.z, r0.y, r0.y
    mul r0.z, r0.z, r0.z
    mul r0.y, r0.y, r0.z
    mad o3.w, r0.y, r0.x, c193.x
    add r0.x, -r3.z, -c195.x
    mov o2.w, r0.x
    add r0.x, r0.x, -c199.y
    mul_sat o5.x, r0.x, c199.x
    dp3 r0.x, -c183, r1
    mad o5.y, r0.x, c4.y, c4.y
    mov o1.zw, c0.w
    mov o4, c0.w
    mov o5.zw, c0.w
    mov o6.w, c0.w
    mov o7.w, c0.w
    mov o8, v5

// approximately 122 instruction slots used

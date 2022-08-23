Shader "Unlit/test"



// Compiled shader for Android

//////////////////////////////////////////////////////////////////////////
// 
// NOTE: This is *not* a valid shader file, the contents are provided just
// for information and for debugging purposes only.
// 
//////////////////////////////////////////////////////////////////////////
// Skipping shader variants that would not be included into build of current scene.

//Shader "Particles/VertexLit Blended" 
{
	Properties{
		_EmisColor("Emissive Color", Color) = (0.200000,0.200000,0.200000,0.000000)
		_MainTex("Particle Texture", 2D) = "white" { }
	}
		SubShader{
		Tags{ "LIGHTMODE" = "Vertex" "QUEUE" = "Transparent" "IGNOREPROJECTOR" = "true" "RenderType" = "Transparent" "PreviewType" = "Plane" }


		// Stats for Vertex shader:
		//         gles: 1 math, 1 texture
		Pass{
		Tags{ "LIGHTMODE" = "Vertex" "QUEUE" = "Transparent" "IGNOREPROJECTOR" = "true" "RenderType" = "Transparent" "PreviewType" = "Plane" }
		ZWrite Off
		Cull Off
		Blend SrcAlpha OneMinusSrcAlpha
		ColorMask RGB
		//////////////////////////////////
		//                              //
		//      Compiled programs       //
		//                              //
		//////////////////////////////////
		//////////////////////////////////////////////////////
		No keywords set in this variant.
		--Hardware tier variant : Tier 1
		--Vertex shader for "gles" :
		// Stats: 1 math, 1 textures
		Shader Disassembly :
	#version 100

#ifdef VERTEX
		attribute vec4 _glesVertex;
	attribute vec4 _glesColor;
	attribute vec3 _glesNormal;
	attribute vec4 _glesMultiTexCoord0;
	uniform mediump vec4 unity_LightColor[8];
	uniform highp vec4 unity_LightPosition[8];
	uniform highp mat4 unity_ObjectToWorld;
	uniform highp mat4 unity_WorldToObject;
	uniform lowp vec4 glstate_lightmodel_ambient;
	uniform highp mat4 unity_MatrixInvV;
	uniform highp mat4 unity_MatrixVP;
	uniform mediump vec4 _EmisColor;
	uniform highp vec4 _MainTex_ST;
	varying lowp vec4 xlv_COLOR0;
	varying highp vec2 xlv_TEXCOORD0;
	void main()
	{
		highp mat4 m_1;
		m_1 = (unity_WorldToObject * unity_MatrixInvV);
		highp vec4 tmpvar_2;
		highp vec4 tmpvar_3;
		highp vec4 tmpvar_4;
		tmpvar_2.x = m_1[0].x;
		tmpvar_2.y = m_1[1].x;
		tmpvar_2.z = m_1[2].x;
		tmpvar_2.w = m_1[3].x;
		tmpvar_3.x = m_1[0].y;
		tmpvar_3.y = m_1[1].y;
		tmpvar_3.z = m_1[2].y;
		tmpvar_3.w = m_1[3].y;
		tmpvar_4.x = m_1[0].z;
		tmpvar_4.y = m_1[1].z;
		tmpvar_4.z = m_1[2].z;
		tmpvar_4.w = m_1[3].z;
		mediump vec3 lcolor_5;
		mediump vec3 eyeNormal_6;
		mediump vec4 color_7;
		color_7.w = _glesColor.w;
		highp mat3 tmpvar_8;
		tmpvar_8[0] = tmpvar_2.xyz;
		tmpvar_8[1] = tmpvar_3.xyz;
		tmpvar_8[2] = tmpvar_4.xyz;
		highp vec3 tmpvar_9;
		tmpvar_9 = normalize((tmpvar_8 * _glesNormal));
		eyeNormal_6 = tmpvar_9;
		lcolor_5 = (_EmisColor.xyz + (_glesColor.xyz * glstate_lightmodel_ambient.xyz));
		highp vec3 tmpvar_10;
		tmpvar_10 = unity_LightPosition[0].xyz;
		mediump vec3 dirToLight_11;
		dirToLight_11 = tmpvar_10;
		lcolor_5 = (lcolor_5 + min((
			((max(dot(eyeNormal_6, dirToLight_11), 0.0) * _glesColor.xyz) * unity_LightColor[0].xyz)
			* 0.5), vec3(1.0, 1.0, 1.0)));
		highp vec3 tmpvar_12;
		tmpvar_12 = unity_LightPosition[1].xyz;
		mediump vec3 dirToLight_13;
		dirToLight_13 = tmpvar_12;
		lcolor_5 = (lcolor_5 + min((
			((max(dot(eyeNormal_6, dirToLight_13), 0.0) * _glesColor.xyz) * unity_LightColor[1].xyz)
			* 0.5), vec3(1.0, 1.0, 1.0)));
		highp vec3 tmpvar_14;
		tmpvar_14 = unity_LightPosition[2].xyz;
		mediump vec3 dirToLight_15;
		dirToLight_15 = tmpvar_14;
		lcolor_5 = (lcolor_5 + min((
			((max(dot(eyeNormal_6, dirToLight_15), 0.0) * _glesColor.xyz) * unity_LightColor[2].xyz)
			* 0.5), vec3(1.0, 1.0, 1.0)));
		highp vec3 tmpvar_16;
		tmpvar_16 = unity_LightPosition[3].xyz;
		mediump vec3 dirToLight_17;
		dirToLight_17 = tmpvar_16;
		lcolor_5 = (lcolor_5 + min((
			((max(dot(eyeNormal_6, dirToLight_17), 0.0) * _glesColor.xyz) * unity_LightColor[3].xyz)
			* 0.5), vec3(1.0, 1.0, 1.0)));
		highp vec3 tmpvar_18;
		tmpvar_18 = unity_LightPosition[4].xyz;
		mediump vec3 dirToLight_19;
		dirToLight_19 = tmpvar_18;
		lcolor_5 = (lcolor_5 + min((
			((max(dot(eyeNormal_6, dirToLight_19), 0.0) * _glesColor.xyz) * unity_LightColor[4].xyz)
			* 0.5), vec3(1.0, 1.0, 1.0)));
		highp vec3 tmpvar_20;
		tmpvar_20 = unity_LightPosition[5].xyz;
		mediump vec3 dirToLight_21;
		dirToLight_21 = tmpvar_20;
		lcolor_5 = (lcolor_5 + min((
			((max(dot(eyeNormal_6, dirToLight_21), 0.0) * _glesColor.xyz) * unity_LightColor[5].xyz)
			* 0.5), vec3(1.0, 1.0, 1.0)));
		highp vec3 tmpvar_22;
		tmpvar_22 = unity_LightPosition[6].xyz;
		mediump vec3 dirToLight_23;
		dirToLight_23 = tmpvar_22;
		lcolor_5 = (lcolor_5 + min((
			((max(dot(eyeNormal_6, dirToLight_23), 0.0) * _glesColor.xyz) * unity_LightColor[6].xyz)
			* 0.5), vec3(1.0, 1.0, 1.0)));
		highp vec3 tmpvar_24;
		tmpvar_24 = unity_LightPosition[7].xyz;
		mediump vec3 dirToLight_25;
		dirToLight_25 = tmpvar_24;
		lcolor_5 = (lcolor_5 + min((
			((max(dot(eyeNormal_6, dirToLight_25), 0.0) * _glesColor.xyz) * unity_LightColor[7].xyz)
			* 0.5), vec3(1.0, 1.0, 1.0)));
		color_7.xyz = lcolor_5;
		color_7.w = color_7.w;
		lowp vec4 tmpvar_26;
		mediump vec4 tmpvar_27;
		tmpvar_27 = clamp(color_7, 0.0, 1.0);
		tmpvar_26 = tmpvar_27;
		highp vec4 tmpvar_28;
		tmpvar_28.w = 1.0;
		tmpvar_28.xyz = _glesVertex.xyz;
		xlv_COLOR0 = tmpvar_26;
		xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
		gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_28));
	}


#endif
#ifdef FRAGMENT
	uniform sampler2D _MainTex;
	varying lowp vec4 xlv_COLOR0;
	varying highp vec2 xlv_TEXCOORD0;
	void main()
	{
		lowp vec4 tmpvar_1;
		tmpvar_1 = (xlv_COLOR0 * texture2D (_MainTex, xlv_TEXCOORD0));
		gl_FragData[0] = tmpvar_1;
	}


#endif


	--Hardware tier variant : Tier 1
		--Fragment shader for "gles" :
		Shader Disassembly :
	// All GLSL source is contained within the vertex program

	--Hardware tier variant : Tier 2
		--Vertex shader for "gles" :
		// Stats: 1 math, 1 textures
		Shader Disassembly :
	#version 100

#ifdef VERTEX
		attribute vec4 _glesVertex;
	attribute vec4 _glesColor;
	attribute vec3 _glesNormal;
	attribute vec4 _glesMultiTexCoord0;
	uniform mediump vec4 unity_LightColor[8];
	uniform highp vec4 unity_LightPosition[8];
	uniform highp mat4 unity_ObjectToWorld;
	uniform highp mat4 unity_WorldToObject;
	uniform lowp vec4 glstate_lightmodel_ambient;
	uniform highp mat4 unity_MatrixInvV;
	uniform highp mat4 unity_MatrixVP;
	uniform mediump vec4 _EmisColor;
	uniform highp vec4 _MainTex_ST;
	varying lowp vec4 xlv_COLOR0;
	varying highp vec2 xlv_TEXCOORD0;
	void main()
	{
		highp mat4 m_1;
		m_1 = (unity_WorldToObject * unity_MatrixInvV);
		highp vec4 tmpvar_2;
		highp vec4 tmpvar_3;
		highp vec4 tmpvar_4;
		tmpvar_2.x = m_1[0].x;
		tmpvar_2.y = m_1[1].x;
		tmpvar_2.z = m_1[2].x;
		tmpvar_2.w = m_1[3].x;
		tmpvar_3.x = m_1[0].y;
		tmpvar_3.y = m_1[1].y;
		tmpvar_3.z = m_1[2].y;
		tmpvar_3.w = m_1[3].y;
		tmpvar_4.x = m_1[0].z;
		tmpvar_4.y = m_1[1].z;
		tmpvar_4.z = m_1[2].z;
		tmpvar_4.w = m_1[3].z;
		mediump vec3 lcolor_5;
		mediump vec3 eyeNormal_6;
		mediump vec4 color_7;
		color_7.w = _glesColor.w;
		highp mat3 tmpvar_8;
		tmpvar_8[0] = tmpvar_2.xyz;
		tmpvar_8[1] = tmpvar_3.xyz;
		tmpvar_8[2] = tmpvar_4.xyz;
		highp vec3 tmpvar_9;
		tmpvar_9 = normalize((tmpvar_8 * _glesNormal));
		eyeNormal_6 = tmpvar_9;
		lcolor_5 = (_EmisColor.xyz + (_glesColor.xyz * glstate_lightmodel_ambient.xyz));
		highp vec3 tmpvar_10;
		tmpvar_10 = unity_LightPosition[0].xyz;
		mediump vec3 dirToLight_11;
		dirToLight_11 = tmpvar_10;
		lcolor_5 = (lcolor_5 + min((
			((max(dot(eyeNormal_6, dirToLight_11), 0.0) * _glesColor.xyz) * unity_LightColor[0].xyz)
			* 0.5), vec3(1.0, 1.0, 1.0)));
		highp vec3 tmpvar_12;
		tmpvar_12 = unity_LightPosition[1].xyz;
		mediump vec3 dirToLight_13;
		dirToLight_13 = tmpvar_12;
		lcolor_5 = (lcolor_5 + min((
			((max(dot(eyeNormal_6, dirToLight_13), 0.0) * _glesColor.xyz) * unity_LightColor[1].xyz)
			* 0.5), vec3(1.0, 1.0, 1.0)));
		highp vec3 tmpvar_14;
		tmpvar_14 = unity_LightPosition[2].xyz;
		mediump vec3 dirToLight_15;
		dirToLight_15 = tmpvar_14;
		lcolor_5 = (lcolor_5 + min((
			((max(dot(eyeNormal_6, dirToLight_15), 0.0) * _glesColor.xyz) * unity_LightColor[2].xyz)
			* 0.5), vec3(1.0, 1.0, 1.0)));
		highp vec3 tmpvar_16;
		tmpvar_16 = unity_LightPosition[3].xyz;
		mediump vec3 dirToLight_17;
		dirToLight_17 = tmpvar_16;
		lcolor_5 = (lcolor_5 + min((
			((max(dot(eyeNormal_6, dirToLight_17), 0.0) * _glesColor.xyz) * unity_LightColor[3].xyz)
			* 0.5), vec3(1.0, 1.0, 1.0)));
		highp vec3 tmpvar_18;
		tmpvar_18 = unity_LightPosition[4].xyz;
		mediump vec3 dirToLight_19;
		dirToLight_19 = tmpvar_18;
		lcolor_5 = (lcolor_5 + min((
			((max(dot(eyeNormal_6, dirToLight_19), 0.0) * _glesColor.xyz) * unity_LightColor[4].xyz)
			* 0.5), vec3(1.0, 1.0, 1.0)));
		highp vec3 tmpvar_20;
		tmpvar_20 = unity_LightPosition[5].xyz;
		mediump vec3 dirToLight_21;
		dirToLight_21 = tmpvar_20;
		lcolor_5 = (lcolor_5 + min((
			((max(dot(eyeNormal_6, dirToLight_21), 0.0) * _glesColor.xyz) * unity_LightColor[5].xyz)
			* 0.5), vec3(1.0, 1.0, 1.0)));
		highp vec3 tmpvar_22;
		tmpvar_22 = unity_LightPosition[6].xyz;
		mediump vec3 dirToLight_23;
		dirToLight_23 = tmpvar_22;
		lcolor_5 = (lcolor_5 + min((
			((max(dot(eyeNormal_6, dirToLight_23), 0.0) * _glesColor.xyz) * unity_LightColor[6].xyz)
			* 0.5), vec3(1.0, 1.0, 1.0)));
		highp vec3 tmpvar_24;
		tmpvar_24 = unity_LightPosition[7].xyz;
		mediump vec3 dirToLight_25;
		dirToLight_25 = tmpvar_24;
		lcolor_5 = (lcolor_5 + min((
			((max(dot(eyeNormal_6, dirToLight_25), 0.0) * _glesColor.xyz) * unity_LightColor[7].xyz)
			* 0.5), vec3(1.0, 1.0, 1.0)));
		color_7.xyz = lcolor_5;
		color_7.w = color_7.w;
		lowp vec4 tmpvar_26;
		mediump vec4 tmpvar_27;
		tmpvar_27 = clamp(color_7, 0.0, 1.0);
		tmpvar_26 = tmpvar_27;
		highp vec4 tmpvar_28;
		tmpvar_28.w = 1.0;
		tmpvar_28.xyz = _glesVertex.xyz;
		xlv_COLOR0 = tmpvar_26;
		xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
		gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_28));
	}


#endif
#ifdef FRAGMENT
	uniform sampler2D _MainTex;
	varying lowp vec4 xlv_COLOR0;
	varying highp vec2 xlv_TEXCOORD0;
	void main()
	{
		lowp vec4 tmpvar_1;
		tmpvar_1 = (xlv_COLOR0 * texture2D (_MainTex, xlv_TEXCOORD0));
		gl_FragData[0] = tmpvar_1;
	}


#endif


	--Hardware tier variant : Tier 2
		--Fragment shader for "gles" :
		Shader Disassembly :
	// All GLSL source is contained within the vertex program

	--Hardware tier variant : Tier 3
		--Vertex shader for "gles" :
		// Stats: 1 math, 1 textures
		Shader Disassembly :
	#version 100

#ifdef VERTEX
		attribute vec4 _glesVertex;
	attribute vec4 _glesColor;
	attribute vec3 _glesNormal;
	attribute vec4 _glesMultiTexCoord0;
	uniform mediump vec4 unity_LightColor[8];
	uniform highp vec4 unity_LightPosition[8];
	uniform highp mat4 unity_ObjectToWorld;
	uniform highp mat4 unity_WorldToObject;
	uniform lowp vec4 glstate_lightmodel_ambient;
	uniform highp mat4 unity_MatrixInvV;
	uniform highp mat4 unity_MatrixVP;
	uniform mediump vec4 _EmisColor;
	uniform highp vec4 _MainTex_ST;
	varying lowp vec4 xlv_COLOR0;
	varying highp vec2 xlv_TEXCOORD0;
	void main()
	{
		highp mat4 m_1;
		m_1 = (unity_WorldToObject * unity_MatrixInvV);
		highp vec4 tmpvar_2;
		highp vec4 tmpvar_3;
		highp vec4 tmpvar_4;
		tmpvar_2.x = m_1[0].x;
		tmpvar_2.y = m_1[1].x;
		tmpvar_2.z = m_1[2].x;
		tmpvar_2.w = m_1[3].x;
		tmpvar_3.x = m_1[0].y;
		tmpvar_3.y = m_1[1].y;
		tmpvar_3.z = m_1[2].y;
		tmpvar_3.w = m_1[3].y;
		tmpvar_4.x = m_1[0].z;
		tmpvar_4.y = m_1[1].z;
		tmpvar_4.z = m_1[2].z;
		tmpvar_4.w = m_1[3].z;
		mediump vec3 lcolor_5;
		mediump vec3 eyeNormal_6;
		mediump vec4 color_7;
		color_7.w = _glesColor.w;
		highp mat3 tmpvar_8;
		tmpvar_8[0] = tmpvar_2.xyz;
		tmpvar_8[1] = tmpvar_3.xyz;
		tmpvar_8[2] = tmpvar_4.xyz;
		highp vec3 tmpvar_9;
		tmpvar_9 = normalize((tmpvar_8 * _glesNormal));
		eyeNormal_6 = tmpvar_9;
		lcolor_5 = (_EmisColor.xyz + (_glesColor.xyz * glstate_lightmodel_ambient.xyz));
		highp vec3 tmpvar_10;
		tmpvar_10 = unity_LightPosition[0].xyz;
		mediump vec3 dirToLight_11;
		dirToLight_11 = tmpvar_10;
		lcolor_5 = (lcolor_5 + min((
			((max(dot(eyeNormal_6, dirToLight_11), 0.0) * _glesColor.xyz) * unity_LightColor[0].xyz)
			* 0.5), vec3(1.0, 1.0, 1.0)));
		highp vec3 tmpvar_12;
		tmpvar_12 = unity_LightPosition[1].xyz;
		mediump vec3 dirToLight_13;
		dirToLight_13 = tmpvar_12;
		lcolor_5 = (lcolor_5 + min((
			((max(dot(eyeNormal_6, dirToLight_13), 0.0) * _glesColor.xyz) * unity_LightColor[1].xyz)
			* 0.5), vec3(1.0, 1.0, 1.0)));
		highp vec3 tmpvar_14;
		tmpvar_14 = unity_LightPosition[2].xyz;
		mediump vec3 dirToLight_15;
		dirToLight_15 = tmpvar_14;
		lcolor_5 = (lcolor_5 + min((
			((max(dot(eyeNormal_6, dirToLight_15), 0.0) * _glesColor.xyz) * unity_LightColor[2].xyz)
			* 0.5), vec3(1.0, 1.0, 1.0)));
		highp vec3 tmpvar_16;
		tmpvar_16 = unity_LightPosition[3].xyz;
		mediump vec3 dirToLight_17;
		dirToLight_17 = tmpvar_16;
		lcolor_5 = (lcolor_5 + min((
			((max(dot(eyeNormal_6, dirToLight_17), 0.0) * _glesColor.xyz) * unity_LightColor[3].xyz)
			* 0.5), vec3(1.0, 1.0, 1.0)));
		highp vec3 tmpvar_18;
		tmpvar_18 = unity_LightPosition[4].xyz;
		mediump vec3 dirToLight_19;
		dirToLight_19 = tmpvar_18;
		lcolor_5 = (lcolor_5 + min((
			((max(dot(eyeNormal_6, dirToLight_19), 0.0) * _glesColor.xyz) * unity_LightColor[4].xyz)
			* 0.5), vec3(1.0, 1.0, 1.0)));
		highp vec3 tmpvar_20;
		tmpvar_20 = unity_LightPosition[5].xyz;
		mediump vec3 dirToLight_21;
		dirToLight_21 = tmpvar_20;
		lcolor_5 = (lcolor_5 + min((
			((max(dot(eyeNormal_6, dirToLight_21), 0.0) * _glesColor.xyz) * unity_LightColor[5].xyz)
			* 0.5), vec3(1.0, 1.0, 1.0)));
		highp vec3 tmpvar_22;
		tmpvar_22 = unity_LightPosition[6].xyz;
		mediump vec3 dirToLight_23;
		dirToLight_23 = tmpvar_22;
		lcolor_5 = (lcolor_5 + min((
			((max(dot(eyeNormal_6, dirToLight_23), 0.0) * _glesColor.xyz) * unity_LightColor[6].xyz)
			* 0.5), vec3(1.0, 1.0, 1.0)));
		highp vec3 tmpvar_24;
		tmpvar_24 = unity_LightPosition[7].xyz;
		mediump vec3 dirToLight_25;
		dirToLight_25 = tmpvar_24;
		lcolor_5 = (lcolor_5 + min((
			((max(dot(eyeNormal_6, dirToLight_25), 0.0) * _glesColor.xyz) * unity_LightColor[7].xyz)
			* 0.5), vec3(1.0, 1.0, 1.0)));
		color_7.xyz = lcolor_5;
		color_7.w = color_7.w;
		lowp vec4 tmpvar_26;
		mediump vec4 tmpvar_27;
		tmpvar_27 = clamp(color_7, 0.0, 1.0);
		tmpvar_26 = tmpvar_27;
		highp vec4 tmpvar_28;
		tmpvar_28.w = 1.0;
		tmpvar_28.xyz = _glesVertex.xyz;
		xlv_COLOR0 = tmpvar_26;
		xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
		gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_28));
	}


#endif
#ifdef FRAGMENT
	uniform sampler2D _MainTex;
	varying lowp vec4 xlv_COLOR0;
	varying highp vec2 xlv_TEXCOORD0;
	void main()
	{
		lowp vec4 tmpvar_1;
		tmpvar_1 = (xlv_COLOR0 * texture2D (_MainTex, xlv_TEXCOORD0));
		gl_FragData[0] = tmpvar_1;
	}


#endif


	--Hardware tier variant : Tier 3
		--Fragment shader for "gles" :
		Shader Disassembly :
	// All GLSL source is contained within the vertex program

	--Hardware tier variant : Tier 1
		--Vertex shader for "gles3" :
		Shader Disassembly :
#ifdef VERTEX
	#version 300 es

		uniform 	mediump vec4 unity_LightColor[8];
	uniform 	vec4 unity_LightPosition[8];
	uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
	uniform 	vec4 hlslcc_mtx4x4unity_WorldToObject[4];
	uniform 	mediump vec4 glstate_lightmodel_ambient;
	uniform 	vec4 hlslcc_mtx4x4unity_MatrixInvV[4];
	uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
	uniform 	mediump vec4 _EmisColor;
	uniform 	ivec4 unity_VertexLightParams;
	uniform 	vec4 _MainTex_ST;
	in highp vec3 in_POSITION0;
	in highp vec3 in_NORMAL0;
	in mediump vec4 in_COLOR0;
	in highp vec3 in_TEXCOORD0;
	out mediump vec4 vs_COLOR0;
	out highp vec2 vs_TEXCOORD0;
	vec4 u_xlat0;
	vec4 u_xlat1;
	mediump vec4 u_xlat16_1;
	vec3 u_xlat2;
	bool u_xlatb2;
	mediump vec3 u_xlat16_3;
	mediump vec3 u_xlat16_4;
	float u_xlat15;
	int u_xlati15;
	mediump float u_xlat16_18;
	void main()
	{
		u_xlat0.xyz = hlslcc_mtx4x4unity_WorldToObject[1].xyz * hlslcc_mtx4x4unity_MatrixInvV[0].yyy;
		u_xlat0.xyz = hlslcc_mtx4x4unity_WorldToObject[0].xyz * hlslcc_mtx4x4unity_MatrixInvV[0].xxx + u_xlat0.xyz;
		u_xlat0.xyz = hlslcc_mtx4x4unity_WorldToObject[2].xyz * hlslcc_mtx4x4unity_MatrixInvV[0].zzz + u_xlat0.xyz;
		u_xlat0.xyz = hlslcc_mtx4x4unity_WorldToObject[3].xyz * hlslcc_mtx4x4unity_MatrixInvV[0].www + u_xlat0.xyz;
		u_xlat1.xyz = hlslcc_mtx4x4unity_WorldToObject[1].xyz * hlslcc_mtx4x4unity_MatrixInvV[1].yyy;
		u_xlat1.xyz = hlslcc_mtx4x4unity_WorldToObject[0].xyz * hlslcc_mtx4x4unity_MatrixInvV[1].xxx + u_xlat1.xyz;
		u_xlat1.xyz = hlslcc_mtx4x4unity_WorldToObject[2].xyz * hlslcc_mtx4x4unity_MatrixInvV[1].zzz + u_xlat1.xyz;
		u_xlat1.xyz = hlslcc_mtx4x4unity_WorldToObject[3].xyz * hlslcc_mtx4x4unity_MatrixInvV[1].www + u_xlat1.xyz;
		u_xlat2.xyz = hlslcc_mtx4x4unity_WorldToObject[1].xyz * hlslcc_mtx4x4unity_MatrixInvV[2].yyy;
		u_xlat2.xyz = hlslcc_mtx4x4unity_WorldToObject[0].xyz * hlslcc_mtx4x4unity_MatrixInvV[2].xxx + u_xlat2.xyz;
		u_xlat2.xyz = hlslcc_mtx4x4unity_WorldToObject[2].xyz * hlslcc_mtx4x4unity_MatrixInvV[2].zzz + u_xlat2.xyz;
		u_xlat2.xyz = hlslcc_mtx4x4unity_WorldToObject[3].xyz * hlslcc_mtx4x4unity_MatrixInvV[2].www + u_xlat2.xyz;
		u_xlat0.x = dot(u_xlat0.xyz, in_NORMAL0.xyz);
		u_xlat0.y = dot(u_xlat1.xyz, in_NORMAL0.xyz);
		u_xlat0.z = dot(u_xlat2.xyz, in_NORMAL0.xyz);
		u_xlat15 = dot(u_xlat0.xyz, u_xlat0.xyz);
		u_xlat15 = inversesqrt(u_xlat15);
		u_xlat0.xyz = vec3(u_xlat15) * u_xlat0.xyz;
		u_xlat16_3.xyz = in_COLOR0.xyz * glstate_lightmodel_ambient.xyz + _EmisColor.xyz;
		u_xlat16_1.xyz = u_xlat16_3.xyz;
		for (int u_xlati_loop_1 = 0; u_xlati_loop_1<unity_VertexLightParams.x; u_xlati_loop_1++)
		{
			u_xlat16_18 = dot(u_xlat0.xyz, unity_LightPosition[u_xlati_loop_1].xyz);
			u_xlat16_18 = max(u_xlat16_18, 0.0);
			u_xlat16_4.xyz = vec3(u_xlat16_18) * in_COLOR0.xyz;
			u_xlat16_4.xyz = u_xlat16_4.xyz * unity_LightColor[u_xlati_loop_1].xyz;
			u_xlat16_4.xyz = u_xlat16_4.xyz * vec3(0.5, 0.5, 0.5);
			u_xlat16_4.xyz = min(u_xlat16_4.xyz, vec3(1.0, 1.0, 1.0));
			u_xlat16_1.xyz = u_xlat16_1.xyz + u_xlat16_4.xyz;
		}
		u_xlat16_1.w = in_COLOR0.w;
		vs_COLOR0 = u_xlat16_1;
#ifdef UNITY_ADRENO_ES3
		vs_COLOR0 = min(max(vs_COLOR0, 0.0), 1.0);
#else
		vs_COLOR0 = clamp(vs_COLOR0, 0.0, 1.0);
#endif
		vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
		u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
		u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
		u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
		u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
		u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
		u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
		u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
		gl_Position = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
		return;
	}

#endif
#ifdef FRAGMENT
	#version 300 es

		precision highp int;
	uniform lowp sampler2D _MainTex;
	in mediump vec4 vs_COLOR0;
	in highp vec2 vs_TEXCOORD0;
	layout(location = 0) out mediump vec4 SV_Target0;
	lowp vec4 u_xlat10_0;
	void main()
	{
		u_xlat10_0 = texture(_MainTex, vs_TEXCOORD0.xy);
		SV_Target0 = u_xlat10_0 * vs_COLOR0;
		return;
	}

#endif


	--Hardware tier variant : Tier 1
		--Fragment shader for "gles3" :
		Shader Disassembly :
	// All GLSL source is contained within the vertex program

	--Hardware tier variant : Tier 2
		--Vertex shader for "gles3" :
		Shader Disassembly :
#ifdef VERTEX
	#version 300 es

		uniform 	mediump vec4 unity_LightColor[8];
	uniform 	vec4 unity_LightPosition[8];
	uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
	uniform 	vec4 hlslcc_mtx4x4unity_WorldToObject[4];
	uniform 	mediump vec4 glstate_lightmodel_ambient;
	uniform 	vec4 hlslcc_mtx4x4unity_MatrixInvV[4];
	uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
	uniform 	mediump vec4 _EmisColor;
	uniform 	ivec4 unity_VertexLightParams;
	uniform 	vec4 _MainTex_ST;
	in highp vec3 in_POSITION0;
	in highp vec3 in_NORMAL0;
	in mediump vec4 in_COLOR0;
	in highp vec3 in_TEXCOORD0;
	out mediump vec4 vs_COLOR0;
	out highp vec2 vs_TEXCOORD0;
	vec4 u_xlat0;
	vec4 u_xlat1;
	mediump vec4 u_xlat16_1;
	vec3 u_xlat2;
	bool u_xlatb2;
	mediump vec3 u_xlat16_3;
	mediump vec3 u_xlat16_4;
	float u_xlat15;
	int u_xlati15;
	mediump float u_xlat16_18;
	void main()
	{
		u_xlat0.xyz = hlslcc_mtx4x4unity_WorldToObject[1].xyz * hlslcc_mtx4x4unity_MatrixInvV[0].yyy;
		u_xlat0.xyz = hlslcc_mtx4x4unity_WorldToObject[0].xyz * hlslcc_mtx4x4unity_MatrixInvV[0].xxx + u_xlat0.xyz;
		u_xlat0.xyz = hlslcc_mtx4x4unity_WorldToObject[2].xyz * hlslcc_mtx4x4unity_MatrixInvV[0].zzz + u_xlat0.xyz;
		u_xlat0.xyz = hlslcc_mtx4x4unity_WorldToObject[3].xyz * hlslcc_mtx4x4unity_MatrixInvV[0].www + u_xlat0.xyz;
		u_xlat1.xyz = hlslcc_mtx4x4unity_WorldToObject[1].xyz * hlslcc_mtx4x4unity_MatrixInvV[1].yyy;
		u_xlat1.xyz = hlslcc_mtx4x4unity_WorldToObject[0].xyz * hlslcc_mtx4x4unity_MatrixInvV[1].xxx + u_xlat1.xyz;
		u_xlat1.xyz = hlslcc_mtx4x4unity_WorldToObject[2].xyz * hlslcc_mtx4x4unity_MatrixInvV[1].zzz + u_xlat1.xyz;
		u_xlat1.xyz = hlslcc_mtx4x4unity_WorldToObject[3].xyz * hlslcc_mtx4x4unity_MatrixInvV[1].www + u_xlat1.xyz;
		u_xlat2.xyz = hlslcc_mtx4x4unity_WorldToObject[1].xyz * hlslcc_mtx4x4unity_MatrixInvV[2].yyy;
		u_xlat2.xyz = hlslcc_mtx4x4unity_WorldToObject[0].xyz * hlslcc_mtx4x4unity_MatrixInvV[2].xxx + u_xlat2.xyz;
		u_xlat2.xyz = hlslcc_mtx4x4unity_WorldToObject[2].xyz * hlslcc_mtx4x4unity_MatrixInvV[2].zzz + u_xlat2.xyz;
		u_xlat2.xyz = hlslcc_mtx4x4unity_WorldToObject[3].xyz * hlslcc_mtx4x4unity_MatrixInvV[2].www + u_xlat2.xyz;
		u_xlat0.x = dot(u_xlat0.xyz, in_NORMAL0.xyz);
		u_xlat0.y = dot(u_xlat1.xyz, in_NORMAL0.xyz);
		u_xlat0.z = dot(u_xlat2.xyz, in_NORMAL0.xyz);
		u_xlat15 = dot(u_xlat0.xyz, u_xlat0.xyz);
		u_xlat15 = inversesqrt(u_xlat15);
		u_xlat0.xyz = vec3(u_xlat15) * u_xlat0.xyz;
		u_xlat16_3.xyz = in_COLOR0.xyz * glstate_lightmodel_ambient.xyz + _EmisColor.xyz;
		u_xlat16_1.xyz = u_xlat16_3.xyz;
		for (int u_xlati_loop_1 = 0; u_xlati_loop_1<unity_VertexLightParams.x; u_xlati_loop_1++)
		{
			u_xlat16_18 = dot(u_xlat0.xyz, unity_LightPosition[u_xlati_loop_1].xyz);
			u_xlat16_18 = max(u_xlat16_18, 0.0);
			u_xlat16_4.xyz = vec3(u_xlat16_18) * in_COLOR0.xyz;
			u_xlat16_4.xyz = u_xlat16_4.xyz * unity_LightColor[u_xlati_loop_1].xyz;
			u_xlat16_4.xyz = u_xlat16_4.xyz * vec3(0.5, 0.5, 0.5);
			u_xlat16_4.xyz = min(u_xlat16_4.xyz, vec3(1.0, 1.0, 1.0));
			u_xlat16_1.xyz = u_xlat16_1.xyz + u_xlat16_4.xyz;
		}
		u_xlat16_1.w = in_COLOR0.w;
		vs_COLOR0 = u_xlat16_1;
#ifdef UNITY_ADRENO_ES3
		vs_COLOR0 = min(max(vs_COLOR0, 0.0), 1.0);
#else
		vs_COLOR0 = clamp(vs_COLOR0, 0.0, 1.0);
#endif
		vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
		u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
		u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
		u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
		u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
		u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
		u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
		u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
		gl_Position = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
		return;
	}

#endif
#ifdef FRAGMENT
	#version 300 es

		precision highp int;
	uniform lowp sampler2D _MainTex;
	in mediump vec4 vs_COLOR0;
	in highp vec2 vs_TEXCOORD0;
	layout(location = 0) out mediump vec4 SV_Target0;
	lowp vec4 u_xlat10_0;
	void main()
	{
		u_xlat10_0 = texture(_MainTex, vs_TEXCOORD0.xy);
		SV_Target0 = u_xlat10_0 * vs_COLOR0;
		return;
	}

#endif


	--Hardware tier variant : Tier 2
		--Fragment shader for "gles3" :
		Shader Disassembly :
	// All GLSL source is contained within the vertex program

	--Hardware tier variant : Tier 3
		--Vertex shader for "gles3" :
		Shader Disassembly :
#ifdef VERTEX
	#version 300 es

		uniform 	mediump vec4 unity_LightColor[8];
	uniform 	vec4 unity_LightPosition[8];
	uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
	uniform 	vec4 hlslcc_mtx4x4unity_WorldToObject[4];
	uniform 	mediump vec4 glstate_lightmodel_ambient;
	uniform 	vec4 hlslcc_mtx4x4unity_MatrixInvV[4];
	uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
	uniform 	mediump vec4 _EmisColor;
	uniform 	ivec4 unity_VertexLightParams;
	uniform 	vec4 _MainTex_ST;
	in highp vec3 in_POSITION0;
	in highp vec3 in_NORMAL0;
	in mediump vec4 in_COLOR0;
	in highp vec3 in_TEXCOORD0;
	out mediump vec4 vs_COLOR0;
	out highp vec2 vs_TEXCOORD0;
	vec4 u_xlat0;
	vec4 u_xlat1;
	mediump vec4 u_xlat16_1;
	vec3 u_xlat2;
	bool u_xlatb2;
	mediump vec3 u_xlat16_3;
	mediump vec3 u_xlat16_4;
	float u_xlat15;
	int u_xlati15;
	mediump float u_xlat16_18;
	void main()
	{
		u_xlat0.xyz = hlslcc_mtx4x4unity_WorldToObject[1].xyz * hlslcc_mtx4x4unity_MatrixInvV[0].yyy;
		u_xlat0.xyz = hlslcc_mtx4x4unity_WorldToObject[0].xyz * hlslcc_mtx4x4unity_MatrixInvV[0].xxx + u_xlat0.xyz;
		u_xlat0.xyz = hlslcc_mtx4x4unity_WorldToObject[2].xyz * hlslcc_mtx4x4unity_MatrixInvV[0].zzz + u_xlat0.xyz;
		u_xlat0.xyz = hlslcc_mtx4x4unity_WorldToObject[3].xyz * hlslcc_mtx4x4unity_MatrixInvV[0].www + u_xlat0.xyz;
		u_xlat1.xyz = hlslcc_mtx4x4unity_WorldToObject[1].xyz * hlslcc_mtx4x4unity_MatrixInvV[1].yyy;
		u_xlat1.xyz = hlslcc_mtx4x4unity_WorldToObject[0].xyz * hlslcc_mtx4x4unity_MatrixInvV[1].xxx + u_xlat1.xyz;
		u_xlat1.xyz = hlslcc_mtx4x4unity_WorldToObject[2].xyz * hlslcc_mtx4x4unity_MatrixInvV[1].zzz + u_xlat1.xyz;
		u_xlat1.xyz = hlslcc_mtx4x4unity_WorldToObject[3].xyz * hlslcc_mtx4x4unity_MatrixInvV[1].www + u_xlat1.xyz;
		u_xlat2.xyz = hlslcc_mtx4x4unity_WorldToObject[1].xyz * hlslcc_mtx4x4unity_MatrixInvV[2].yyy;
		u_xlat2.xyz = hlslcc_mtx4x4unity_WorldToObject[0].xyz * hlslcc_mtx4x4unity_MatrixInvV[2].xxx + u_xlat2.xyz;
		u_xlat2.xyz = hlslcc_mtx4x4unity_WorldToObject[2].xyz * hlslcc_mtx4x4unity_MatrixInvV[2].zzz + u_xlat2.xyz;
		u_xlat2.xyz = hlslcc_mtx4x4unity_WorldToObject[3].xyz * hlslcc_mtx4x4unity_MatrixInvV[2].www + u_xlat2.xyz;
		u_xlat0.x = dot(u_xlat0.xyz, in_NORMAL0.xyz);
		u_xlat0.y = dot(u_xlat1.xyz, in_NORMAL0.xyz);
		u_xlat0.z = dot(u_xlat2.xyz, in_NORMAL0.xyz);
		u_xlat15 = dot(u_xlat0.xyz, u_xlat0.xyz);
		u_xlat15 = inversesqrt(u_xlat15);
		u_xlat0.xyz = vec3(u_xlat15) * u_xlat0.xyz;
		u_xlat16_3.xyz = in_COLOR0.xyz * glstate_lightmodel_ambient.xyz + _EmisColor.xyz;
		u_xlat16_1.xyz = u_xlat16_3.xyz;
		for (int u_xlati_loop_1 = 0; u_xlati_loop_1<unity_VertexLightParams.x; u_xlati_loop_1++)
		{
			u_xlat16_18 = dot(u_xlat0.xyz, unity_LightPosition[u_xlati_loop_1].xyz);
			u_xlat16_18 = max(u_xlat16_18, 0.0);
			u_xlat16_4.xyz = vec3(u_xlat16_18) * in_COLOR0.xyz;
			u_xlat16_4.xyz = u_xlat16_4.xyz * unity_LightColor[u_xlati_loop_1].xyz;
			u_xlat16_4.xyz = u_xlat16_4.xyz * vec3(0.5, 0.5, 0.5);
			u_xlat16_4.xyz = min(u_xlat16_4.xyz, vec3(1.0, 1.0, 1.0));
			u_xlat16_1.xyz = u_xlat16_1.xyz + u_xlat16_4.xyz;
		}
		u_xlat16_1.w = in_COLOR0.w;
		vs_COLOR0 = u_xlat16_1;
#ifdef UNITY_ADRENO_ES3
		vs_COLOR0 = min(max(vs_COLOR0, 0.0), 1.0);
#else
		vs_COLOR0 = clamp(vs_COLOR0, 0.0, 1.0);
#endif
		vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
		u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
		u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
		u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
		u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
		u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
		u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
		u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
		gl_Position = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
		return;
	}

#endif
#ifdef FRAGMENT
	#version 300 es

		precision highp int;
	uniform lowp sampler2D _MainTex;
	in mediump vec4 vs_COLOR0;
	in highp vec2 vs_TEXCOORD0;
	layout(location = 0) out mediump vec4 SV_Target0;
	lowp vec4 u_xlat10_0;
	void main()
	{
		u_xlat10_0 = texture(_MainTex, vs_TEXCOORD0.xy);
		SV_Target0 = u_xlat10_0 * vs_COLOR0;
		return;
	}

#endif


	--Hardware tier variant : Tier 3
		--Fragment shader for "gles3" :
		Shader Disassembly :
	// All GLSL source is contained within the vertex program

	//////////////////////////////////////////////////////
	Keywords set in this variant : POINT
		-- Hardware tier variant : Tier 1
		--Vertex shader for "gles" :
		// Stats: 1 math, 1 textures
		Shader Disassembly :
	#version 100

#ifdef VERTEX
		attribute vec4 _glesVertex;
	attribute vec4 _glesColor;
	attribute vec3 _glesNormal;
	attribute vec4 _glesMultiTexCoord0;
	uniform mediump vec4 unity_LightColor[8];
	uniform highp vec4 unity_LightPosition[8];
	uniform mediump vec4 unity_LightAtten[8];
	uniform highp mat4 unity_ObjectToWorld;
	uniform highp mat4 unity_WorldToObject;
	uniform lowp vec4 glstate_lightmodel_ambient;
	uniform highp mat4 unity_MatrixV;
	uniform highp mat4 unity_MatrixInvV;
	uniform highp mat4 unity_MatrixVP;
	uniform mediump vec4 _EmisColor;
	uniform highp vec4 _MainTex_ST;
	varying lowp vec4 xlv_COLOR0;
	varying highp vec2 xlv_TEXCOORD0;
	void main()
	{
		highp mat4 m_1;
		m_1 = (unity_WorldToObject * unity_MatrixInvV);
		highp vec4 tmpvar_2;
		highp vec4 tmpvar_3;
		highp vec4 tmpvar_4;
		tmpvar_2.x = m_1[0].x;
		tmpvar_2.y = m_1[1].x;
		tmpvar_2.z = m_1[2].x;
		tmpvar_2.w = m_1[3].x;
		tmpvar_3.x = m_1[0].y;
		tmpvar_3.y = m_1[1].y;
		tmpvar_3.z = m_1[2].y;
		tmpvar_3.w = m_1[3].y;
		tmpvar_4.x = m_1[0].z;
		tmpvar_4.y = m_1[1].z;
		tmpvar_4.z = m_1[2].z;
		tmpvar_4.w = m_1[3].z;
		highp vec3 tmpvar_5;
		tmpvar_5 = _glesVertex.xyz;
		mediump vec3 lcolor_7;
		mediump vec3 eyeNormal_8;
		highp vec3 eyePos_9;
		mediump vec4 color_10;
		color_10 = _glesColor;
		highp vec4 tmpvar_11;
		tmpvar_11.w = 1.0;
		tmpvar_11.xyz = tmpvar_5;
		eyePos_9 = ((unity_MatrixV * unity_ObjectToWorld) * tmpvar_11).xyz;
		highp mat3 tmpvar_12;
		tmpvar_12[0] = tmpvar_2.xyz;
		tmpvar_12[1] = tmpvar_3.xyz;
		tmpvar_12[2] = tmpvar_4.xyz;
		highp vec3 tmpvar_13;
		tmpvar_13 = normalize((tmpvar_12 * _glesNormal));
		eyeNormal_8 = tmpvar_13;
		lcolor_7 = (_EmisColor.xyz + (_glesColor.xyz * glstate_lightmodel_ambient.xyz));
		for (highp int il_6 = 0; il_6 < 8; il_6++) {
			mediump float att_14;
			highp vec3 dirToLight_15;
			dirToLight_15 = (unity_LightPosition[il_6].xyz - (eyePos_9 * unity_LightPosition[il_6].w));
			highp float tmpvar_16;
			tmpvar_16 = dot(dirToLight_15, dirToLight_15);
			att_14 = (1.0 / ((1.0 + (unity_LightAtten[il_6].z * tmpvar_16))));
			if (((unity_LightPosition[il_6].w != 0.0) && (tmpvar_16 > unity_LightAtten[il_6].w))) {
				att_14 = 0.0;
			};
			dirToLight_15 = (dirToLight_15 * inversesqrt(max(tmpvar_16, 1e-06)));
			att_14 = (att_14 * 0.5);
			mediump vec3 dirToLight_17;
			dirToLight_17 = dirToLight_15;
			lcolor_7 = (lcolor_7 + min((
				((max(dot(eyeNormal_8, dirToLight_17), 0.0) * color_10.xyz) * unity_LightColor[il_6].xyz)
				* att_14), vec3(1.0, 1.0, 1.0)));
		};
		color_10.xyz = lcolor_7;
		color_10.w = color_10.w;
		lowp vec4 tmpvar_18;
		mediump vec4 tmpvar_19;
		tmpvar_19 = clamp(color_10, 0.0, 1.0);
		tmpvar_18 = tmpvar_19;
		highp vec4 tmpvar_20;
		tmpvar_20.w = 1.0;
		tmpvar_20.xyz = tmpvar_5;
		xlv_COLOR0 = tmpvar_18;
		xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
		gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_20));
	}


#endif
#ifdef FRAGMENT
	uniform sampler2D _MainTex;
	varying lowp vec4 xlv_COLOR0;
	varying highp vec2 xlv_TEXCOORD0;
	void main()
	{
		lowp vec4 tmpvar_1;
		tmpvar_1 = (xlv_COLOR0 * texture2D (_MainTex, xlv_TEXCOORD0));
		gl_FragData[0] = tmpvar_1;
	}


#endif


	--Hardware tier variant : Tier 1
		--Fragment shader for "gles" :
		Shader Disassembly :
	// All GLSL source is contained within the vertex program

	--Hardware tier variant : Tier 2
		--Vertex shader for "gles" :
		// Stats: 1 math, 1 textures
		Shader Disassembly :
	#version 100

#ifdef VERTEX
		attribute vec4 _glesVertex;
	attribute vec4 _glesColor;
	attribute vec3 _glesNormal;
	attribute vec4 _glesMultiTexCoord0;
	uniform mediump vec4 unity_LightColor[8];
	uniform highp vec4 unity_LightPosition[8];
	uniform mediump vec4 unity_LightAtten[8];
	uniform highp mat4 unity_ObjectToWorld;
	uniform highp mat4 unity_WorldToObject;
	uniform lowp vec4 glstate_lightmodel_ambient;
	uniform highp mat4 unity_MatrixV;
	uniform highp mat4 unity_MatrixInvV;
	uniform highp mat4 unity_MatrixVP;
	uniform mediump vec4 _EmisColor;
	uniform highp vec4 _MainTex_ST;
	varying lowp vec4 xlv_COLOR0;
	varying highp vec2 xlv_TEXCOORD0;
	void main()
	{
		highp mat4 m_1;
		m_1 = (unity_WorldToObject * unity_MatrixInvV);
		highp vec4 tmpvar_2;
		highp vec4 tmpvar_3;
		highp vec4 tmpvar_4;
		tmpvar_2.x = m_1[0].x;
		tmpvar_2.y = m_1[1].x;
		tmpvar_2.z = m_1[2].x;
		tmpvar_2.w = m_1[3].x;
		tmpvar_3.x = m_1[0].y;
		tmpvar_3.y = m_1[1].y;
		tmpvar_3.z = m_1[2].y;
		tmpvar_3.w = m_1[3].y;
		tmpvar_4.x = m_1[0].z;
		tmpvar_4.y = m_1[1].z;
		tmpvar_4.z = m_1[2].z;
		tmpvar_4.w = m_1[3].z;
		highp vec3 tmpvar_5;
		tmpvar_5 = _glesVertex.xyz;
		mediump vec3 lcolor_7;
		mediump vec3 eyeNormal_8;
		highp vec3 eyePos_9;
		mediump vec4 color_10;
		color_10 = _glesColor;
		highp vec4 tmpvar_11;
		tmpvar_11.w = 1.0;
		tmpvar_11.xyz = tmpvar_5;
		eyePos_9 = ((unity_MatrixV * unity_ObjectToWorld) * tmpvar_11).xyz;
		highp mat3 tmpvar_12;
		tmpvar_12[0] = tmpvar_2.xyz;
		tmpvar_12[1] = tmpvar_3.xyz;
		tmpvar_12[2] = tmpvar_4.xyz;
		highp vec3 tmpvar_13;
		tmpvar_13 = normalize((tmpvar_12 * _glesNormal));
		eyeNormal_8 = tmpvar_13;
		lcolor_7 = (_EmisColor.xyz + (_glesColor.xyz * glstate_lightmodel_ambient.xyz));
		for (highp int il_6 = 0; il_6 < 8; il_6++) {
			mediump float att_14;
			highp vec3 dirToLight_15;
			dirToLight_15 = (unity_LightPosition[il_6].xyz - (eyePos_9 * unity_LightPosition[il_6].w));
			highp float tmpvar_16;
			tmpvar_16 = dot(dirToLight_15, dirToLight_15);
			att_14 = (1.0 / ((1.0 + (unity_LightAtten[il_6].z * tmpvar_16))));
			if (((unity_LightPosition[il_6].w != 0.0) && (tmpvar_16 > unity_LightAtten[il_6].w))) {
				att_14 = 0.0;
			};
			dirToLight_15 = (dirToLight_15 * inversesqrt(max(tmpvar_16, 1e-06)));
			att_14 = (att_14 * 0.5);
			mediump vec3 dirToLight_17;
			dirToLight_17 = dirToLight_15;
			lcolor_7 = (lcolor_7 + min((
				((max(dot(eyeNormal_8, dirToLight_17), 0.0) * color_10.xyz) * unity_LightColor[il_6].xyz)
				* att_14), vec3(1.0, 1.0, 1.0)));
		};
		color_10.xyz = lcolor_7;
		color_10.w = color_10.w;
		lowp vec4 tmpvar_18;
		mediump vec4 tmpvar_19;
		tmpvar_19 = clamp(color_10, 0.0, 1.0);
		tmpvar_18 = tmpvar_19;
		highp vec4 tmpvar_20;
		tmpvar_20.w = 1.0;
		tmpvar_20.xyz = tmpvar_5;
		xlv_COLOR0 = tmpvar_18;
		xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
		gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_20));
	}


#endif
#ifdef FRAGMENT
	uniform sampler2D _MainTex;
	varying lowp vec4 xlv_COLOR0;
	varying highp vec2 xlv_TEXCOORD0;
	void main()
	{
		lowp vec4 tmpvar_1;
		tmpvar_1 = (xlv_COLOR0 * texture2D (_MainTex, xlv_TEXCOORD0));
		gl_FragData[0] = tmpvar_1;
	}


#endif


	--Hardware tier variant : Tier 2
		--Fragment shader for "gles" :
		Shader Disassembly :
	// All GLSL source is contained within the vertex program

	--Hardware tier variant : Tier 3
		--Vertex shader for "gles" :
		// Stats: 1 math, 1 textures
		Shader Disassembly :
	#version 100

#ifdef VERTEX
		attribute vec4 _glesVertex;
	attribute vec4 _glesColor;
	attribute vec3 _glesNormal;
	attribute vec4 _glesMultiTexCoord0;
	uniform mediump vec4 unity_LightColor[8];
	uniform highp vec4 unity_LightPosition[8];
	uniform mediump vec4 unity_LightAtten[8];
	uniform highp mat4 unity_ObjectToWorld;
	uniform highp mat4 unity_WorldToObject;
	uniform lowp vec4 glstate_lightmodel_ambient;
	uniform highp mat4 unity_MatrixV;
	uniform highp mat4 unity_MatrixInvV;
	uniform highp mat4 unity_MatrixVP;
	uniform mediump vec4 _EmisColor;
	uniform highp vec4 _MainTex_ST;
	varying lowp vec4 xlv_COLOR0;
	varying highp vec2 xlv_TEXCOORD0;
	void main()
	{
		highp mat4 m_1;
		m_1 = (unity_WorldToObject * unity_MatrixInvV);
		highp vec4 tmpvar_2;
		highp vec4 tmpvar_3;
		highp vec4 tmpvar_4;
		tmpvar_2.x = m_1[0].x;
		tmpvar_2.y = m_1[1].x;
		tmpvar_2.z = m_1[2].x;
		tmpvar_2.w = m_1[3].x;
		tmpvar_3.x = m_1[0].y;
		tmpvar_3.y = m_1[1].y;
		tmpvar_3.z = m_1[2].y;
		tmpvar_3.w = m_1[3].y;
		tmpvar_4.x = m_1[0].z;
		tmpvar_4.y = m_1[1].z;
		tmpvar_4.z = m_1[2].z;
		tmpvar_4.w = m_1[3].z;
		highp vec3 tmpvar_5;
		tmpvar_5 = _glesVertex.xyz;
		mediump vec3 lcolor_7;
		mediump vec3 eyeNormal_8;
		highp vec3 eyePos_9;
		mediump vec4 color_10;
		color_10 = _glesColor;
		highp vec4 tmpvar_11;
		tmpvar_11.w = 1.0;
		tmpvar_11.xyz = tmpvar_5;
		eyePos_9 = ((unity_MatrixV * unity_ObjectToWorld) * tmpvar_11).xyz;
		highp mat3 tmpvar_12;
		tmpvar_12[0] = tmpvar_2.xyz;
		tmpvar_12[1] = tmpvar_3.xyz;
		tmpvar_12[2] = tmpvar_4.xyz;
		highp vec3 tmpvar_13;
		tmpvar_13 = normalize((tmpvar_12 * _glesNormal));
		eyeNormal_8 = tmpvar_13;
		lcolor_7 = (_EmisColor.xyz + (_glesColor.xyz * glstate_lightmodel_ambient.xyz));
		for (highp int il_6 = 0; il_6 < 8; il_6++) {
			mediump float att_14;
			highp vec3 dirToLight_15;
			dirToLight_15 = (unity_LightPosition[il_6].xyz - (eyePos_9 * unity_LightPosition[il_6].w));
			highp float tmpvar_16;
			tmpvar_16 = dot(dirToLight_15, dirToLight_15);
			att_14 = (1.0 / ((1.0 + (unity_LightAtten[il_6].z * tmpvar_16))));
			if (((unity_LightPosition[il_6].w != 0.0) && (tmpvar_16 > unity_LightAtten[il_6].w))) {
				att_14 = 0.0;
			};
			dirToLight_15 = (dirToLight_15 * inversesqrt(max(tmpvar_16, 1e-06)));
			att_14 = (att_14 * 0.5);
			mediump vec3 dirToLight_17;
			dirToLight_17 = dirToLight_15;
			lcolor_7 = (lcolor_7 + min((
				((max(dot(eyeNormal_8, dirToLight_17), 0.0) * color_10.xyz) * unity_LightColor[il_6].xyz)
				* att_14), vec3(1.0, 1.0, 1.0)));
		};
		color_10.xyz = lcolor_7;
		color_10.w = color_10.w;
		lowp vec4 tmpvar_18;
		mediump vec4 tmpvar_19;
		tmpvar_19 = clamp(color_10, 0.0, 1.0);
		tmpvar_18 = tmpvar_19;
		highp vec4 tmpvar_20;
		tmpvar_20.w = 1.0;
		tmpvar_20.xyz = tmpvar_5;
		xlv_COLOR0 = tmpvar_18;
		xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
		gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_20));
	}


#endif
#ifdef FRAGMENT
	uniform sampler2D _MainTex;
	varying lowp vec4 xlv_COLOR0;
	varying highp vec2 xlv_TEXCOORD0;
	void main()
	{
		lowp vec4 tmpvar_1;
		tmpvar_1 = (xlv_COLOR0 * texture2D (_MainTex, xlv_TEXCOORD0));
		gl_FragData[0] = tmpvar_1;
	}


#endif


	--Hardware tier variant : Tier 3
		--Fragment shader for "gles" :
		Shader Disassembly :
	// All GLSL source is contained within the vertex program

	--Hardware tier variant : Tier 1
		--Vertex shader for "gles3" :
		Shader Disassembly :
#ifdef VERTEX
	#version 300 es

		uniform 	mediump vec4 unity_LightColor[8];
	uniform 	vec4 unity_LightPosition[8];
	uniform 	mediump vec4 unity_LightAtten[8];
	uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
	uniform 	vec4 hlslcc_mtx4x4unity_WorldToObject[4];
	uniform 	mediump vec4 glstate_lightmodel_ambient;
	uniform 	vec4 hlslcc_mtx4x4unity_MatrixV[4];
	uniform 	vec4 hlslcc_mtx4x4unity_MatrixInvV[4];
	uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
	uniform 	mediump vec4 _EmisColor;
	uniform 	ivec4 unity_VertexLightParams;
	uniform 	vec4 _MainTex_ST;
	in highp vec3 in_POSITION0;
	in highp vec3 in_NORMAL0;
	in mediump vec4 in_COLOR0;
	in highp vec3 in_TEXCOORD0;
	out mediump vec4 vs_COLOR0;
	out highp vec2 vs_TEXCOORD0;
	vec4 u_xlat0;
	vec4 u_xlat1;
	vec3 u_xlat2;
	mediump vec4 u_xlat16_2;
	vec3 u_xlat3;
	vec3 u_xlat4;
	bool u_xlatb4;
	vec3 u_xlat5;
	vec3 u_xlat6;
	mediump vec3 u_xlat16_7;
	mediump vec3 u_xlat16_8;
	bool u_xlatb13;
	float u_xlat27;
	int u_xlati27;
	float u_xlat28;
	bool u_xlatb28;
	float u_xlat30;
	mediump float u_xlat16_34;
	void main()
	{
		u_xlat0.xyz = hlslcc_mtx4x4unity_ObjectToWorld[0].yyy * hlslcc_mtx4x4unity_MatrixV[1].xyz;
		u_xlat0.xyz = hlslcc_mtx4x4unity_MatrixV[0].xyz * hlslcc_mtx4x4unity_ObjectToWorld[0].xxx + u_xlat0.xyz;
		u_xlat0.xyz = hlslcc_mtx4x4unity_MatrixV[2].xyz * hlslcc_mtx4x4unity_ObjectToWorld[0].zzz + u_xlat0.xyz;
		u_xlat0.xyz = hlslcc_mtx4x4unity_MatrixV[3].xyz * hlslcc_mtx4x4unity_ObjectToWorld[0].www + u_xlat0.xyz;
		u_xlat1.xyz = hlslcc_mtx4x4unity_ObjectToWorld[1].yyy * hlslcc_mtx4x4unity_MatrixV[1].xyz;
		u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[0].xyz * hlslcc_mtx4x4unity_ObjectToWorld[1].xxx + u_xlat1.xyz;
		u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[2].xyz * hlslcc_mtx4x4unity_ObjectToWorld[1].zzz + u_xlat1.xyz;
		u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[3].xyz * hlslcc_mtx4x4unity_ObjectToWorld[1].www + u_xlat1.xyz;
		u_xlat2.xyz = hlslcc_mtx4x4unity_ObjectToWorld[2].yyy * hlslcc_mtx4x4unity_MatrixV[1].xyz;
		u_xlat2.xyz = hlslcc_mtx4x4unity_MatrixV[0].xyz * hlslcc_mtx4x4unity_ObjectToWorld[2].xxx + u_xlat2.xyz;
		u_xlat2.xyz = hlslcc_mtx4x4unity_MatrixV[2].xyz * hlslcc_mtx4x4unity_ObjectToWorld[2].zzz + u_xlat2.xyz;
		u_xlat2.xyz = hlslcc_mtx4x4unity_MatrixV[3].xyz * hlslcc_mtx4x4unity_ObjectToWorld[2].www + u_xlat2.xyz;
		u_xlat3.xyz = hlslcc_mtx4x4unity_ObjectToWorld[3].yyy * hlslcc_mtx4x4unity_MatrixV[1].xyz;
		u_xlat3.xyz = hlslcc_mtx4x4unity_MatrixV[0].xyz * hlslcc_mtx4x4unity_ObjectToWorld[3].xxx + u_xlat3.xyz;
		u_xlat3.xyz = hlslcc_mtx4x4unity_MatrixV[2].xyz * hlslcc_mtx4x4unity_ObjectToWorld[3].zzz + u_xlat3.xyz;
		u_xlat3.xyz = hlslcc_mtx4x4unity_MatrixV[3].xyz * hlslcc_mtx4x4unity_ObjectToWorld[3].www + u_xlat3.xyz;
		u_xlat4.xyz = hlslcc_mtx4x4unity_WorldToObject[1].xyz * hlslcc_mtx4x4unity_MatrixInvV[0].yyy;
		u_xlat4.xyz = hlslcc_mtx4x4unity_WorldToObject[0].xyz * hlslcc_mtx4x4unity_MatrixInvV[0].xxx + u_xlat4.xyz;
		u_xlat4.xyz = hlslcc_mtx4x4unity_WorldToObject[2].xyz * hlslcc_mtx4x4unity_MatrixInvV[0].zzz + u_xlat4.xyz;
		u_xlat4.xyz = hlslcc_mtx4x4unity_WorldToObject[3].xyz * hlslcc_mtx4x4unity_MatrixInvV[0].www + u_xlat4.xyz;
		u_xlat5.xyz = hlslcc_mtx4x4unity_WorldToObject[1].xyz * hlslcc_mtx4x4unity_MatrixInvV[1].yyy;
		u_xlat5.xyz = hlslcc_mtx4x4unity_WorldToObject[0].xyz * hlslcc_mtx4x4unity_MatrixInvV[1].xxx + u_xlat5.xyz;
		u_xlat5.xyz = hlslcc_mtx4x4unity_WorldToObject[2].xyz * hlslcc_mtx4x4unity_MatrixInvV[1].zzz + u_xlat5.xyz;
		u_xlat5.xyz = hlslcc_mtx4x4unity_WorldToObject[3].xyz * hlslcc_mtx4x4unity_MatrixInvV[1].www + u_xlat5.xyz;
		u_xlat6.xyz = hlslcc_mtx4x4unity_WorldToObject[1].xyz * hlslcc_mtx4x4unity_MatrixInvV[2].yyy;
		u_xlat6.xyz = hlslcc_mtx4x4unity_WorldToObject[0].xyz * hlslcc_mtx4x4unity_MatrixInvV[2].xxx + u_xlat6.xyz;
		u_xlat6.xyz = hlslcc_mtx4x4unity_WorldToObject[2].xyz * hlslcc_mtx4x4unity_MatrixInvV[2].zzz + u_xlat6.xyz;
		u_xlat6.xyz = hlslcc_mtx4x4unity_WorldToObject[3].xyz * hlslcc_mtx4x4unity_MatrixInvV[2].www + u_xlat6.xyz;
		u_xlat1.xyz = u_xlat1.xyz * in_POSITION0.yyy;
		u_xlat0.xyz = u_xlat0.xyz * in_POSITION0.xxx + u_xlat1.xyz;
		u_xlat0.xyz = u_xlat2.xyz * in_POSITION0.zzz + u_xlat0.xyz;
		u_xlat0.xyz = u_xlat3.xyz + u_xlat0.xyz;
		u_xlat1.x = dot(u_xlat4.xyz, in_NORMAL0.xyz);
		u_xlat1.y = dot(u_xlat5.xyz, in_NORMAL0.xyz);
		u_xlat1.z = dot(u_xlat6.xyz, in_NORMAL0.xyz);
		u_xlat27 = dot(u_xlat1.xyz, u_xlat1.xyz);
		u_xlat27 = inversesqrt(u_xlat27);
		u_xlat1.xyz = vec3(u_xlat27) * u_xlat1.xyz;
		u_xlat16_7.xyz = in_COLOR0.xyz * glstate_lightmodel_ambient.xyz + _EmisColor.xyz;
		u_xlat16_2.xyz = u_xlat16_7.xyz;
		for (int u_xlati_loop_1 = 0; u_xlati_loop_1<unity_VertexLightParams.x; u_xlati_loop_1++)
		{
			u_xlat3.xyz = (-u_xlat0.xyz) * unity_LightPosition[u_xlati_loop_1].www + unity_LightPosition[u_xlati_loop_1].xyz;
			u_xlat28 = dot(u_xlat3.xyz, u_xlat3.xyz);
			u_xlat30 = unity_LightAtten[u_xlati_loop_1].z * u_xlat28 + 1.0;
			u_xlat30 = float(1.0) / u_xlat30;
#ifdef UNITY_ADRENO_ES3
			u_xlatb4 = !!(0.0 != unity_LightPosition[u_xlati_loop_1].w);
#else
			u_xlatb4 = 0.0 != unity_LightPosition[u_xlati_loop_1].w;
#endif
#ifdef UNITY_ADRENO_ES3
			u_xlatb13 = !!(unity_LightAtten[u_xlati_loop_1].w<u_xlat28);
#else
			u_xlatb13 = unity_LightAtten[u_xlati_loop_1].w<u_xlat28;
#endif
			u_xlatb4 = u_xlatb13 && u_xlatb4;
			u_xlat28 = max(u_xlat28, 9.99999997e-007);
			u_xlat28 = inversesqrt(u_xlat28);
			u_xlat3.xyz = vec3(u_xlat28) * u_xlat3.xyz;
			u_xlat28 = u_xlat30 * 0.5;
			u_xlat16_34 = (u_xlatb4) ? 0.0 : u_xlat28;
			u_xlat16_8.x = dot(u_xlat1.xyz, u_xlat3.xyz);
			u_xlat16_8.x = max(u_xlat16_8.x, 0.0);
			u_xlat16_8.xyz = u_xlat16_8.xxx * in_COLOR0.xyz;
			u_xlat16_8.xyz = u_xlat16_8.xyz * unity_LightColor[u_xlati_loop_1].xyz;
			u_xlat16_8.xyz = vec3(u_xlat16_34) * u_xlat16_8.xyz;
			u_xlat16_8.xyz = min(u_xlat16_8.xyz, vec3(1.0, 1.0, 1.0));
			u_xlat16_2.xyz = u_xlat16_2.xyz + u_xlat16_8.xyz;
		}
		u_xlat16_2.w = in_COLOR0.w;
		vs_COLOR0 = u_xlat16_2;
#ifdef UNITY_ADRENO_ES3
		vs_COLOR0 = min(max(vs_COLOR0, 0.0), 1.0);
#else
		vs_COLOR0 = clamp(vs_COLOR0, 0.0, 1.0);
#endif
		vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
		u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
		u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
		u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
		u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
		u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
		u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
		u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
		gl_Position = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
		return;
	}

#endif
#ifdef FRAGMENT
	#version 300 es

		precision highp int;
	uniform lowp sampler2D _MainTex;
	in mediump vec4 vs_COLOR0;
	in highp vec2 vs_TEXCOORD0;
	layout(location = 0) out mediump vec4 SV_Target0;
	lowp vec4 u_xlat10_0;
	void main()
	{
		u_xlat10_0 = texture(_MainTex, vs_TEXCOORD0.xy);
		SV_Target0 = u_xlat10_0 * vs_COLOR0;
		return;
	}

#endif


	--Hardware tier variant : Tier 1
		--Fragment shader for "gles3" :
		Shader Disassembly :
	// All GLSL source is contained within the vertex program

	--Hardware tier variant : Tier 2
		--Vertex shader for "gles3" :
		Shader Disassembly :
#ifdef VERTEX
	#version 300 es

		uniform 	mediump vec4 unity_LightColor[8];
	uniform 	vec4 unity_LightPosition[8];
	uniform 	mediump vec4 unity_LightAtten[8];
	uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
	uniform 	vec4 hlslcc_mtx4x4unity_WorldToObject[4];
	uniform 	mediump vec4 glstate_lightmodel_ambient;
	uniform 	vec4 hlslcc_mtx4x4unity_MatrixV[4];
	uniform 	vec4 hlslcc_mtx4x4unity_MatrixInvV[4];
	uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
	uniform 	mediump vec4 _EmisColor;
	uniform 	ivec4 unity_VertexLightParams;
	uniform 	vec4 _MainTex_ST;
	in highp vec3 in_POSITION0;
	in highp vec3 in_NORMAL0;
	in mediump vec4 in_COLOR0;
	in highp vec3 in_TEXCOORD0;
	out mediump vec4 vs_COLOR0;
	out highp vec2 vs_TEXCOORD0;
	vec4 u_xlat0;
	vec4 u_xlat1;
	vec3 u_xlat2;
	mediump vec4 u_xlat16_2;
	vec3 u_xlat3;
	vec3 u_xlat4;
	bool u_xlatb4;
	vec3 u_xlat5;
	vec3 u_xlat6;
	mediump vec3 u_xlat16_7;
	mediump vec3 u_xlat16_8;
	bool u_xlatb13;
	float u_xlat27;
	int u_xlati27;
	float u_xlat28;
	bool u_xlatb28;
	float u_xlat30;
	mediump float u_xlat16_34;
	void main()
	{
		u_xlat0.xyz = hlslcc_mtx4x4unity_ObjectToWorld[0].yyy * hlslcc_mtx4x4unity_MatrixV[1].xyz;
		u_xlat0.xyz = hlslcc_mtx4x4unity_MatrixV[0].xyz * hlslcc_mtx4x4unity_ObjectToWorld[0].xxx + u_xlat0.xyz;
		u_xlat0.xyz = hlslcc_mtx4x4unity_MatrixV[2].xyz * hlslcc_mtx4x4unity_ObjectToWorld[0].zzz + u_xlat0.xyz;
		u_xlat0.xyz = hlslcc_mtx4x4unity_MatrixV[3].xyz * hlslcc_mtx4x4unity_ObjectToWorld[0].www + u_xlat0.xyz;
		u_xlat1.xyz = hlslcc_mtx4x4unity_ObjectToWorld[1].yyy * hlslcc_mtx4x4unity_MatrixV[1].xyz;
		u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[0].xyz * hlslcc_mtx4x4unity_ObjectToWorld[1].xxx + u_xlat1.xyz;
		u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[2].xyz * hlslcc_mtx4x4unity_ObjectToWorld[1].zzz + u_xlat1.xyz;
		u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[3].xyz * hlslcc_mtx4x4unity_ObjectToWorld[1].www + u_xlat1.xyz;
		u_xlat2.xyz = hlslcc_mtx4x4unity_ObjectToWorld[2].yyy * hlslcc_mtx4x4unity_MatrixV[1].xyz;
		u_xlat2.xyz = hlslcc_mtx4x4unity_MatrixV[0].xyz * hlslcc_mtx4x4unity_ObjectToWorld[2].xxx + u_xlat2.xyz;
		u_xlat2.xyz = hlslcc_mtx4x4unity_MatrixV[2].xyz * hlslcc_mtx4x4unity_ObjectToWorld[2].zzz + u_xlat2.xyz;
		u_xlat2.xyz = hlslcc_mtx4x4unity_MatrixV[3].xyz * hlslcc_mtx4x4unity_ObjectToWorld[2].www + u_xlat2.xyz;
		u_xlat3.xyz = hlslcc_mtx4x4unity_ObjectToWorld[3].yyy * hlslcc_mtx4x4unity_MatrixV[1].xyz;
		u_xlat3.xyz = hlslcc_mtx4x4unity_MatrixV[0].xyz * hlslcc_mtx4x4unity_ObjectToWorld[3].xxx + u_xlat3.xyz;
		u_xlat3.xyz = hlslcc_mtx4x4unity_MatrixV[2].xyz * hlslcc_mtx4x4unity_ObjectToWorld[3].zzz + u_xlat3.xyz;
		u_xlat3.xyz = hlslcc_mtx4x4unity_MatrixV[3].xyz * hlslcc_mtx4x4unity_ObjectToWorld[3].www + u_xlat3.xyz;
		u_xlat4.xyz = hlslcc_mtx4x4unity_WorldToObject[1].xyz * hlslcc_mtx4x4unity_MatrixInvV[0].yyy;
		u_xlat4.xyz = hlslcc_mtx4x4unity_WorldToObject[0].xyz * hlslcc_mtx4x4unity_MatrixInvV[0].xxx + u_xlat4.xyz;
		u_xlat4.xyz = hlslcc_mtx4x4unity_WorldToObject[2].xyz * hlslcc_mtx4x4unity_MatrixInvV[0].zzz + u_xlat4.xyz;
		u_xlat4.xyz = hlslcc_mtx4x4unity_WorldToObject[3].xyz * hlslcc_mtx4x4unity_MatrixInvV[0].www + u_xlat4.xyz;
		u_xlat5.xyz = hlslcc_mtx4x4unity_WorldToObject[1].xyz * hlslcc_mtx4x4unity_MatrixInvV[1].yyy;
		u_xlat5.xyz = hlslcc_mtx4x4unity_WorldToObject[0].xyz * hlslcc_mtx4x4unity_MatrixInvV[1].xxx + u_xlat5.xyz;
		u_xlat5.xyz = hlslcc_mtx4x4unity_WorldToObject[2].xyz * hlslcc_mtx4x4unity_MatrixInvV[1].zzz + u_xlat5.xyz;
		u_xlat5.xyz = hlslcc_mtx4x4unity_WorldToObject[3].xyz * hlslcc_mtx4x4unity_MatrixInvV[1].www + u_xlat5.xyz;
		u_xlat6.xyz = hlslcc_mtx4x4unity_WorldToObject[1].xyz * hlslcc_mtx4x4unity_MatrixInvV[2].yyy;
		u_xlat6.xyz = hlslcc_mtx4x4unity_WorldToObject[0].xyz * hlslcc_mtx4x4unity_MatrixInvV[2].xxx + u_xlat6.xyz;
		u_xlat6.xyz = hlslcc_mtx4x4unity_WorldToObject[2].xyz * hlslcc_mtx4x4unity_MatrixInvV[2].zzz + u_xlat6.xyz;
		u_xlat6.xyz = hlslcc_mtx4x4unity_WorldToObject[3].xyz * hlslcc_mtx4x4unity_MatrixInvV[2].www + u_xlat6.xyz;
		u_xlat1.xyz = u_xlat1.xyz * in_POSITION0.yyy;
		u_xlat0.xyz = u_xlat0.xyz * in_POSITION0.xxx + u_xlat1.xyz;
		u_xlat0.xyz = u_xlat2.xyz * in_POSITION0.zzz + u_xlat0.xyz;
		u_xlat0.xyz = u_xlat3.xyz + u_xlat0.xyz;
		u_xlat1.x = dot(u_xlat4.xyz, in_NORMAL0.xyz);
		u_xlat1.y = dot(u_xlat5.xyz, in_NORMAL0.xyz);
		u_xlat1.z = dot(u_xlat6.xyz, in_NORMAL0.xyz);
		u_xlat27 = dot(u_xlat1.xyz, u_xlat1.xyz);
		u_xlat27 = inversesqrt(u_xlat27);
		u_xlat1.xyz = vec3(u_xlat27) * u_xlat1.xyz;
		u_xlat16_7.xyz = in_COLOR0.xyz * glstate_lightmodel_ambient.xyz + _EmisColor.xyz;
		u_xlat16_2.xyz = u_xlat16_7.xyz;
		for (int u_xlati_loop_1 = 0; u_xlati_loop_1<unity_VertexLightParams.x; u_xlati_loop_1++)
		{
			u_xlat3.xyz = (-u_xlat0.xyz) * unity_LightPosition[u_xlati_loop_1].www + unity_LightPosition[u_xlati_loop_1].xyz;
			u_xlat28 = dot(u_xlat3.xyz, u_xlat3.xyz);
			u_xlat30 = unity_LightAtten[u_xlati_loop_1].z * u_xlat28 + 1.0;
			u_xlat30 = float(1.0) / u_xlat30;
#ifdef UNITY_ADRENO_ES3
			u_xlatb4 = !!(0.0 != unity_LightPosition[u_xlati_loop_1].w);
#else
			u_xlatb4 = 0.0 != unity_LightPosition[u_xlati_loop_1].w;
#endif
#ifdef UNITY_ADRENO_ES3
			u_xlatb13 = !!(unity_LightAtten[u_xlati_loop_1].w<u_xlat28);
#else
			u_xlatb13 = unity_LightAtten[u_xlati_loop_1].w<u_xlat28;
#endif
			u_xlatb4 = u_xlatb13 && u_xlatb4;
			u_xlat28 = max(u_xlat28, 9.99999997e-007);
			u_xlat28 = inversesqrt(u_xlat28);
			u_xlat3.xyz = vec3(u_xlat28) * u_xlat3.xyz;
			u_xlat28 = u_xlat30 * 0.5;
			u_xlat16_34 = (u_xlatb4) ? 0.0 : u_xlat28;
			u_xlat16_8.x = dot(u_xlat1.xyz, u_xlat3.xyz);
			u_xlat16_8.x = max(u_xlat16_8.x, 0.0);
			u_xlat16_8.xyz = u_xlat16_8.xxx * in_COLOR0.xyz;
			u_xlat16_8.xyz = u_xlat16_8.xyz * unity_LightColor[u_xlati_loop_1].xyz;
			u_xlat16_8.xyz = vec3(u_xlat16_34) * u_xlat16_8.xyz;
			u_xlat16_8.xyz = min(u_xlat16_8.xyz, vec3(1.0, 1.0, 1.0));
			u_xlat16_2.xyz = u_xlat16_2.xyz + u_xlat16_8.xyz;
		}
		u_xlat16_2.w = in_COLOR0.w;
		vs_COLOR0 = u_xlat16_2;
#ifdef UNITY_ADRENO_ES3
		vs_COLOR0 = min(max(vs_COLOR0, 0.0), 1.0);
#else
		vs_COLOR0 = clamp(vs_COLOR0, 0.0, 1.0);
#endif
		vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
		u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
		u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
		u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
		u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
		u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
		u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
		u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
		gl_Position = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
		return;
	}

#endif
#ifdef FRAGMENT
	#version 300 es

		precision highp int;
	uniform lowp sampler2D _MainTex;
	in mediump vec4 vs_COLOR0;
	in highp vec2 vs_TEXCOORD0;
	layout(location = 0) out mediump vec4 SV_Target0;
	lowp vec4 u_xlat10_0;
	void main()
	{
		u_xlat10_0 = texture(_MainTex, vs_TEXCOORD0.xy);
		SV_Target0 = u_xlat10_0 * vs_COLOR0;
		return;
	}

#endif


	--Hardware tier variant : Tier 2
		--Fragment shader for "gles3" :
		Shader Disassembly :
	// All GLSL source is contained within the vertex program

	--Hardware tier variant : Tier 3
		--Vertex shader for "gles3" :
		Shader Disassembly :
#ifdef VERTEX
	#version 300 es

		uniform 	mediump vec4 unity_LightColor[8];
	uniform 	vec4 unity_LightPosition[8];
	uniform 	mediump vec4 unity_LightAtten[8];
	uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
	uniform 	vec4 hlslcc_mtx4x4unity_WorldToObject[4];
	uniform 	mediump vec4 glstate_lightmodel_ambient;
	uniform 	vec4 hlslcc_mtx4x4unity_MatrixV[4];
	uniform 	vec4 hlslcc_mtx4x4unity_MatrixInvV[4];
	uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
	uniform 	mediump vec4 _EmisColor;
	uniform 	ivec4 unity_VertexLightParams;
	uniform 	vec4 _MainTex_ST;
	in highp vec3 in_POSITION0;
	in highp vec3 in_NORMAL0;
	in mediump vec4 in_COLOR0;
	in highp vec3 in_TEXCOORD0;
	out mediump vec4 vs_COLOR0;
	out highp vec2 vs_TEXCOORD0;
	vec4 u_xlat0;
	vec4 u_xlat1;
	vec3 u_xlat2;
	mediump vec4 u_xlat16_2;
	vec3 u_xlat3;
	vec3 u_xlat4;
	bool u_xlatb4;
	vec3 u_xlat5;
	vec3 u_xlat6;
	mediump vec3 u_xlat16_7;
	mediump vec3 u_xlat16_8;
	bool u_xlatb13;
	float u_xlat27;
	int u_xlati27;
	float u_xlat28;
	bool u_xlatb28;
	float u_xlat30;
	mediump float u_xlat16_34;
	void main()
	{
		u_xlat0.xyz = hlslcc_mtx4x4unity_ObjectToWorld[0].yyy * hlslcc_mtx4x4unity_MatrixV[1].xyz;
		u_xlat0.xyz = hlslcc_mtx4x4unity_MatrixV[0].xyz * hlslcc_mtx4x4unity_ObjectToWorld[0].xxx + u_xlat0.xyz;
		u_xlat0.xyz = hlslcc_mtx4x4unity_MatrixV[2].xyz * hlslcc_mtx4x4unity_ObjectToWorld[0].zzz + u_xlat0.xyz;
		u_xlat0.xyz = hlslcc_mtx4x4unity_MatrixV[3].xyz * hlslcc_mtx4x4unity_ObjectToWorld[0].www + u_xlat0.xyz;
		u_xlat1.xyz = hlslcc_mtx4x4unity_ObjectToWorld[1].yyy * hlslcc_mtx4x4unity_MatrixV[1].xyz;
		u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[0].xyz * hlslcc_mtx4x4unity_ObjectToWorld[1].xxx + u_xlat1.xyz;
		u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[2].xyz * hlslcc_mtx4x4unity_ObjectToWorld[1].zzz + u_xlat1.xyz;
		u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[3].xyz * hlslcc_mtx4x4unity_ObjectToWorld[1].www + u_xlat1.xyz;
		u_xlat2.xyz = hlslcc_mtx4x4unity_ObjectToWorld[2].yyy * hlslcc_mtx4x4unity_MatrixV[1].xyz;
		u_xlat2.xyz = hlslcc_mtx4x4unity_MatrixV[0].xyz * hlslcc_mtx4x4unity_ObjectToWorld[2].xxx + u_xlat2.xyz;
		u_xlat2.xyz = hlslcc_mtx4x4unity_MatrixV[2].xyz * hlslcc_mtx4x4unity_ObjectToWorld[2].zzz + u_xlat2.xyz;
		u_xlat2.xyz = hlslcc_mtx4x4unity_MatrixV[3].xyz * hlslcc_mtx4x4unity_ObjectToWorld[2].www + u_xlat2.xyz;
		u_xlat3.xyz = hlslcc_mtx4x4unity_ObjectToWorld[3].yyy * hlslcc_mtx4x4unity_MatrixV[1].xyz;
		u_xlat3.xyz = hlslcc_mtx4x4unity_MatrixV[0].xyz * hlslcc_mtx4x4unity_ObjectToWorld[3].xxx + u_xlat3.xyz;
		u_xlat3.xyz = hlslcc_mtx4x4unity_MatrixV[2].xyz * hlslcc_mtx4x4unity_ObjectToWorld[3].zzz + u_xlat3.xyz;
		u_xlat3.xyz = hlslcc_mtx4x4unity_MatrixV[3].xyz * hlslcc_mtx4x4unity_ObjectToWorld[3].www + u_xlat3.xyz;
		u_xlat4.xyz = hlslcc_mtx4x4unity_WorldToObject[1].xyz * hlslcc_mtx4x4unity_MatrixInvV[0].yyy;
		u_xlat4.xyz = hlslcc_mtx4x4unity_WorldToObject[0].xyz * hlslcc_mtx4x4unity_MatrixInvV[0].xxx + u_xlat4.xyz;
		u_xlat4.xyz = hlslcc_mtx4x4unity_WorldToObject[2].xyz * hlslcc_mtx4x4unity_MatrixInvV[0].zzz + u_xlat4.xyz;
		u_xlat4.xyz = hlslcc_mtx4x4unity_WorldToObject[3].xyz * hlslcc_mtx4x4unity_MatrixInvV[0].www + u_xlat4.xyz;
		u_xlat5.xyz = hlslcc_mtx4x4unity_WorldToObject[1].xyz * hlslcc_mtx4x4unity_MatrixInvV[1].yyy;
		u_xlat5.xyz = hlslcc_mtx4x4unity_WorldToObject[0].xyz * hlslcc_mtx4x4unity_MatrixInvV[1].xxx + u_xlat5.xyz;
		u_xlat5.xyz = hlslcc_mtx4x4unity_WorldToObject[2].xyz * hlslcc_mtx4x4unity_MatrixInvV[1].zzz + u_xlat5.xyz;
		u_xlat5.xyz = hlslcc_mtx4x4unity_WorldToObject[3].xyz * hlslcc_mtx4x4unity_MatrixInvV[1].www + u_xlat5.xyz;
		u_xlat6.xyz = hlslcc_mtx4x4unity_WorldToObject[1].xyz * hlslcc_mtx4x4unity_MatrixInvV[2].yyy;
		u_xlat6.xyz = hlslcc_mtx4x4unity_WorldToObject[0].xyz * hlslcc_mtx4x4unity_MatrixInvV[2].xxx + u_xlat6.xyz;
		u_xlat6.xyz = hlslcc_mtx4x4unity_WorldToObject[2].xyz * hlslcc_mtx4x4unity_MatrixInvV[2].zzz + u_xlat6.xyz;
		u_xlat6.xyz = hlslcc_mtx4x4unity_WorldToObject[3].xyz * hlslcc_mtx4x4unity_MatrixInvV[2].www + u_xlat6.xyz;
		u_xlat1.xyz = u_xlat1.xyz * in_POSITION0.yyy;
		u_xlat0.xyz = u_xlat0.xyz * in_POSITION0.xxx + u_xlat1.xyz;
		u_xlat0.xyz = u_xlat2.xyz * in_POSITION0.zzz + u_xlat0.xyz;
		u_xlat0.xyz = u_xlat3.xyz + u_xlat0.xyz;
		u_xlat1.x = dot(u_xlat4.xyz, in_NORMAL0.xyz);
		u_xlat1.y = dot(u_xlat5.xyz, in_NORMAL0.xyz);
		u_xlat1.z = dot(u_xlat6.xyz, in_NORMAL0.xyz);
		u_xlat27 = dot(u_xlat1.xyz, u_xlat1.xyz);
		u_xlat27 = inversesqrt(u_xlat27);
		u_xlat1.xyz = vec3(u_xlat27) * u_xlat1.xyz;
		u_xlat16_7.xyz = in_COLOR0.xyz * glstate_lightmodel_ambient.xyz + _EmisColor.xyz;
		u_xlat16_2.xyz = u_xlat16_7.xyz;
		for (int u_xlati_loop_1 = 0; u_xlati_loop_1<unity_VertexLightParams.x; u_xlati_loop_1++)
		{
			u_xlat3.xyz = (-u_xlat0.xyz) * unity_LightPosition[u_xlati_loop_1].www + unity_LightPosition[u_xlati_loop_1].xyz;
			u_xlat28 = dot(u_xlat3.xyz, u_xlat3.xyz);
			u_xlat30 = unity_LightAtten[u_xlati_loop_1].z * u_xlat28 + 1.0;
			u_xlat30 = float(1.0) / u_xlat30;
#ifdef UNITY_ADRENO_ES3
			u_xlatb4 = !!(0.0 != unity_LightPosition[u_xlati_loop_1].w);
#else
			u_xlatb4 = 0.0 != unity_LightPosition[u_xlati_loop_1].w;
#endif
#ifdef UNITY_ADRENO_ES3
			u_xlatb13 = !!(unity_LightAtten[u_xlati_loop_1].w<u_xlat28);
#else
			u_xlatb13 = unity_LightAtten[u_xlati_loop_1].w<u_xlat28;
#endif
			u_xlatb4 = u_xlatb13 && u_xlatb4;
			u_xlat28 = max(u_xlat28, 9.99999997e-007);
			u_xlat28 = inversesqrt(u_xlat28);
			u_xlat3.xyz = vec3(u_xlat28) * u_xlat3.xyz;
			u_xlat28 = u_xlat30 * 0.5;
			u_xlat16_34 = (u_xlatb4) ? 0.0 : u_xlat28;
			u_xlat16_8.x = dot(u_xlat1.xyz, u_xlat3.xyz);
			u_xlat16_8.x = max(u_xlat16_8.x, 0.0);
			u_xlat16_8.xyz = u_xlat16_8.xxx * in_COLOR0.xyz;
			u_xlat16_8.xyz = u_xlat16_8.xyz * unity_LightColor[u_xlati_loop_1].xyz;
			u_xlat16_8.xyz = vec3(u_xlat16_34) * u_xlat16_8.xyz;
			u_xlat16_8.xyz = min(u_xlat16_8.xyz, vec3(1.0, 1.0, 1.0));
			u_xlat16_2.xyz = u_xlat16_2.xyz + u_xlat16_8.xyz;
		}
		u_xlat16_2.w = in_COLOR0.w;
		vs_COLOR0 = u_xlat16_2;
#ifdef UNITY_ADRENO_ES3
		vs_COLOR0 = min(max(vs_COLOR0, 0.0), 1.0);
#else
		vs_COLOR0 = clamp(vs_COLOR0, 0.0, 1.0);
#endif
		vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
		u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
		u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
		u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
		u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
		u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
		u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
		u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
		gl_Position = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
		return;
	}

#endif
#ifdef FRAGMENT
	#version 300 es

		precision highp int;
	uniform lowp sampler2D _MainTex;
	in mediump vec4 vs_COLOR0;
	in highp vec2 vs_TEXCOORD0;
	layout(location = 0) out mediump vec4 SV_Target0;
	lowp vec4 u_xlat10_0;
	void main()
	{
		u_xlat10_0 = texture(_MainTex, vs_TEXCOORD0.xy);
		SV_Target0 = u_xlat10_0 * vs_COLOR0;
		return;
	}

#endif


	--Hardware tier variant : Tier 3
		--Fragment shader for "gles3" :
		Shader Disassembly :
	// All GLSL source is contained within the vertex program

	--Hardware tier variant : Tier 1
		--Vertex shader for "gles" :
		// Stats: 1 math, 1 textures
		Shader Disassembly :
	#version 100

#ifdef VERTEX
		attribute vec4 _glesVertex;
	attribute vec4 _glesColor;
	attribute vec3 _glesNormal;
	attribute vec4 _glesMultiTexCoord0;
	uniform mediump vec4 unity_LightColor[8];
	uniform highp vec4 unity_LightPosition[8];
	uniform mediump vec4 unity_LightAtten[8];
	uniform highp vec4 unity_SpotDirection[8];
	uniform highp mat4 unity_ObjectToWorld;
	uniform highp mat4 unity_WorldToObject;
	uniform lowp vec4 glstate_lightmodel_ambient;
	uniform highp mat4 unity_MatrixV;
	uniform highp mat4 unity_MatrixInvV;
	uniform highp mat4 unity_MatrixVP;
	uniform mediump vec4 _EmisColor;
	uniform highp vec4 _MainTex_ST;
	varying lowp vec4 xlv_COLOR0;
	varying highp vec2 xlv_TEXCOORD0;
	void main()
	{
		highp mat4 m_1;
		m_1 = (unity_WorldToObject * unity_MatrixInvV);
		highp vec4 tmpvar_2;
		highp vec4 tmpvar_3;
		highp vec4 tmpvar_4;
		tmpvar_2.x = m_1[0].x;
		tmpvar_2.y = m_1[1].x;
		tmpvar_2.z = m_1[2].x;
		tmpvar_2.w = m_1[3].x;
		tmpvar_3.x = m_1[0].y;
		tmpvar_3.y = m_1[1].y;
		tmpvar_3.z = m_1[2].y;
		tmpvar_3.w = m_1[3].y;
		tmpvar_4.x = m_1[0].z;
		tmpvar_4.y = m_1[1].z;
		tmpvar_4.z = m_1[2].z;
		tmpvar_4.w = m_1[3].z;
		highp vec3 tmpvar_5;
		tmpvar_5 = _glesVertex.xyz;
		mediump vec3 lcolor_7;
		mediump vec3 eyeNormal_8;
		highp vec3 eyePos_9;
		mediump vec4 color_10;
		color_10 = _glesColor;
		highp vec4 tmpvar_11;
		tmpvar_11.w = 1.0;
		tmpvar_11.xyz = tmpvar_5;
		eyePos_9 = ((unity_MatrixV * unity_ObjectToWorld) * tmpvar_11).xyz;
		highp mat3 tmpvar_12;
		tmpvar_12[0] = tmpvar_2.xyz;
		tmpvar_12[1] = tmpvar_3.xyz;
		tmpvar_12[2] = tmpvar_4.xyz;
		highp vec3 tmpvar_13;
		tmpvar_13 = normalize((tmpvar_12 * _glesNormal));
		eyeNormal_8 = tmpvar_13;
		lcolor_7 = (_EmisColor.xyz + (_glesColor.xyz * glstate_lightmodel_ambient.xyz));
		for (highp int il_6 = 0; il_6 < 8; il_6++) {
			mediump float rho_14;
			mediump float att_15;
			highp vec3 dirToLight_16;
			dirToLight_16 = (unity_LightPosition[il_6].xyz - (eyePos_9 * unity_LightPosition[il_6].w));
			highp float tmpvar_17;
			tmpvar_17 = dot(dirToLight_16, dirToLight_16);
			att_15 = (1.0 / ((1.0 + (unity_LightAtten[il_6].z * tmpvar_17))));
			if (((unity_LightPosition[il_6].w != 0.0) && (tmpvar_17 > unity_LightAtten[il_6].w))) {
				att_15 = 0.0;
			};
			dirToLight_16 = (dirToLight_16 * inversesqrt(max(tmpvar_17, 1e-06)));
			highp float tmpvar_18;
			tmpvar_18 = max(dot(dirToLight_16, unity_SpotDirection[il_6].xyz), 0.0);
			rho_14 = tmpvar_18;
			att_15 = (att_15 * clamp((
				(rho_14 - unity_LightAtten[il_6].x)
				* unity_LightAtten[il_6].y), 0.0, 1.0));
			att_15 = (att_15 * 0.5);
			mediump vec3 dirToLight_19;
			dirToLight_19 = dirToLight_16;
			lcolor_7 = (lcolor_7 + min((
				((max(dot(eyeNormal_8, dirToLight_19), 0.0) * color_10.xyz) * unity_LightColor[il_6].xyz)
				* att_15), vec3(1.0, 1.0, 1.0)));
		};
		color_10.xyz = lcolor_7;
		color_10.w = color_10.w;
		lowp vec4 tmpvar_20;
		mediump vec4 tmpvar_21;
		tmpvar_21 = clamp(color_10, 0.0, 1.0);
		tmpvar_20 = tmpvar_21;
		highp vec4 tmpvar_22;
		tmpvar_22.w = 1.0;
		tmpvar_22.xyz = tmpvar_5;
		xlv_COLOR0 = tmpvar_20;
		xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
		gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_22));
	}


#endif
#ifdef FRAGMENT
	uniform sampler2D _MainTex;
	varying lowp vec4 xlv_COLOR0;
	varying highp vec2 xlv_TEXCOORD0;
	void main()
	{
		lowp vec4 tmpvar_1;
		tmpvar_1 = (xlv_COLOR0 * texture2D (_MainTex, xlv_TEXCOORD0));
		gl_FragData[0] = tmpvar_1;
	}


#endif


	--Hardware tier variant : Tier 1
		--Fragment shader for "gles" :
		Shader Disassembly :
	// All GLSL source is contained within the vertex program

	--Hardware tier variant : Tier 2
		--Vertex shader for "gles" :
		// Stats: 1 math, 1 textures
		Shader Disassembly :
	#version 100

#ifdef VERTEX
		attribute vec4 _glesVertex;
	attribute vec4 _glesColor;
	attribute vec3 _glesNormal;
	attribute vec4 _glesMultiTexCoord0;
	uniform mediump vec4 unity_LightColor[8];
	uniform highp vec4 unity_LightPosition[8];
	uniform mediump vec4 unity_LightAtten[8];
	uniform highp vec4 unity_SpotDirection[8];
	uniform highp mat4 unity_ObjectToWorld;
	uniform highp mat4 unity_WorldToObject;
	uniform lowp vec4 glstate_lightmodel_ambient;
	uniform highp mat4 unity_MatrixV;
	uniform highp mat4 unity_MatrixInvV;
	uniform highp mat4 unity_MatrixVP;
	uniform mediump vec4 _EmisColor;
	uniform highp vec4 _MainTex_ST;
	varying lowp vec4 xlv_COLOR0;
	varying highp vec2 xlv_TEXCOORD0;
	void main()
	{
		highp mat4 m_1;
		m_1 = (unity_WorldToObject * unity_MatrixInvV);
		highp vec4 tmpvar_2;
		highp vec4 tmpvar_3;
		highp vec4 tmpvar_4;
		tmpvar_2.x = m_1[0].x;
		tmpvar_2.y = m_1[1].x;
		tmpvar_2.z = m_1[2].x;
		tmpvar_2.w = m_1[3].x;
		tmpvar_3.x = m_1[0].y;
		tmpvar_3.y = m_1[1].y;
		tmpvar_3.z = m_1[2].y;
		tmpvar_3.w = m_1[3].y;
		tmpvar_4.x = m_1[0].z;
		tmpvar_4.y = m_1[1].z;
		tmpvar_4.z = m_1[2].z;
		tmpvar_4.w = m_1[3].z;
		highp vec3 tmpvar_5;
		tmpvar_5 = _glesVertex.xyz;
		mediump vec3 lcolor_7;
		mediump vec3 eyeNormal_8;
		highp vec3 eyePos_9;
		mediump vec4 color_10;
		color_10 = _glesColor;
		highp vec4 tmpvar_11;
		tmpvar_11.w = 1.0;
		tmpvar_11.xyz = tmpvar_5;
		eyePos_9 = ((unity_MatrixV * unity_ObjectToWorld) * tmpvar_11).xyz;
		highp mat3 tmpvar_12;
		tmpvar_12[0] = tmpvar_2.xyz;
		tmpvar_12[1] = tmpvar_3.xyz;
		tmpvar_12[2] = tmpvar_4.xyz;
		highp vec3 tmpvar_13;
		tmpvar_13 = normalize((tmpvar_12 * _glesNormal));
		eyeNormal_8 = tmpvar_13;
		lcolor_7 = (_EmisColor.xyz + (_glesColor.xyz * glstate_lightmodel_ambient.xyz));
		for (highp int il_6 = 0; il_6 < 8; il_6++) {
			mediump float rho_14;
			mediump float att_15;
			highp vec3 dirToLight_16;
			dirToLight_16 = (unity_LightPosition[il_6].xyz - (eyePos_9 * unity_LightPosition[il_6].w));
			highp float tmpvar_17;
			tmpvar_17 = dot(dirToLight_16, dirToLight_16);
			att_15 = (1.0 / ((1.0 + (unity_LightAtten[il_6].z * tmpvar_17))));
			if (((unity_LightPosition[il_6].w != 0.0) && (tmpvar_17 > unity_LightAtten[il_6].w))) {
				att_15 = 0.0;
			};
			dirToLight_16 = (dirToLight_16 * inversesqrt(max(tmpvar_17, 1e-06)));
			highp float tmpvar_18;
			tmpvar_18 = max(dot(dirToLight_16, unity_SpotDirection[il_6].xyz), 0.0);
			rho_14 = tmpvar_18;
			att_15 = (att_15 * clamp((
				(rho_14 - unity_LightAtten[il_6].x)
				* unity_LightAtten[il_6].y), 0.0, 1.0));
			att_15 = (att_15 * 0.5);
			mediump vec3 dirToLight_19;
			dirToLight_19 = dirToLight_16;
			lcolor_7 = (lcolor_7 + min((
				((max(dot(eyeNormal_8, dirToLight_19), 0.0) * color_10.xyz) * unity_LightColor[il_6].xyz)
				* att_15), vec3(1.0, 1.0, 1.0)));
		};
		color_10.xyz = lcolor_7;
		color_10.w = color_10.w;
		lowp vec4 tmpvar_20;
		mediump vec4 tmpvar_21;
		tmpvar_21 = clamp(color_10, 0.0, 1.0);
		tmpvar_20 = tmpvar_21;
		highp vec4 tmpvar_22;
		tmpvar_22.w = 1.0;
		tmpvar_22.xyz = tmpvar_5;
		xlv_COLOR0 = tmpvar_20;
		xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
		gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_22));
	}


#endif
#ifdef FRAGMENT
	uniform sampler2D _MainTex;
	varying lowp vec4 xlv_COLOR0;
	varying highp vec2 xlv_TEXCOORD0;
	void main()
	{
		lowp vec4 tmpvar_1;
		tmpvar_1 = (xlv_COLOR0 * texture2D (_MainTex, xlv_TEXCOORD0));
		gl_FragData[0] = tmpvar_1;
	}


#endif


	--Hardware tier variant : Tier 2
		--Fragment shader for "gles" :
		Shader Disassembly :
	// All GLSL source is contained within the vertex program

	--Hardware tier variant : Tier 3
		--Vertex shader for "gles" :
		// Stats: 1 math, 1 textures
		Shader Disassembly :
	#version 100

#ifdef VERTEX
		attribute vec4 _glesVertex;
	attribute vec4 _glesColor;
	attribute vec3 _glesNormal;
	attribute vec4 _glesMultiTexCoord0;
	uniform mediump vec4 unity_LightColor[8];
	uniform highp vec4 unity_LightPosition[8];
	uniform mediump vec4 unity_LightAtten[8];
	uniform highp vec4 unity_SpotDirection[8];
	uniform highp mat4 unity_ObjectToWorld;
	uniform highp mat4 unity_WorldToObject;
	uniform lowp vec4 glstate_lightmodel_ambient;
	uniform highp mat4 unity_MatrixV;
	uniform highp mat4 unity_MatrixInvV;
	uniform highp mat4 unity_MatrixVP;
	uniform mediump vec4 _EmisColor;
	uniform highp vec4 _MainTex_ST;
	varying lowp vec4 xlv_COLOR0;
	varying highp vec2 xlv_TEXCOORD0;
	void main()
	{
		highp mat4 m_1;
		m_1 = (unity_WorldToObject * unity_MatrixInvV);
		highp vec4 tmpvar_2;
		highp vec4 tmpvar_3;
		highp vec4 tmpvar_4;
		tmpvar_2.x = m_1[0].x;
		tmpvar_2.y = m_1[1].x;
		tmpvar_2.z = m_1[2].x;
		tmpvar_2.w = m_1[3].x;
		tmpvar_3.x = m_1[0].y;
		tmpvar_3.y = m_1[1].y;
		tmpvar_3.z = m_1[2].y;
		tmpvar_3.w = m_1[3].y;
		tmpvar_4.x = m_1[0].z;
		tmpvar_4.y = m_1[1].z;
		tmpvar_4.z = m_1[2].z;
		tmpvar_4.w = m_1[3].z;
		highp vec3 tmpvar_5;
		tmpvar_5 = _glesVertex.xyz;
		mediump vec3 lcolor_7;
		mediump vec3 eyeNormal_8;
		highp vec3 eyePos_9;
		mediump vec4 color_10;
		color_10 = _glesColor;
		highp vec4 tmpvar_11;
		tmpvar_11.w = 1.0;
		tmpvar_11.xyz = tmpvar_5;
		eyePos_9 = ((unity_MatrixV * unity_ObjectToWorld) * tmpvar_11).xyz;
		highp mat3 tmpvar_12;
		tmpvar_12[0] = tmpvar_2.xyz;
		tmpvar_12[1] = tmpvar_3.xyz;
		tmpvar_12[2] = tmpvar_4.xyz;
		highp vec3 tmpvar_13;
		tmpvar_13 = normalize((tmpvar_12 * _glesNormal));
		eyeNormal_8 = tmpvar_13;
		lcolor_7 = (_EmisColor.xyz + (_glesColor.xyz * glstate_lightmodel_ambient.xyz));
		for (highp int il_6 = 0; il_6 < 8; il_6++) {
			mediump float rho_14;
			mediump float att_15;
			highp vec3 dirToLight_16;
			dirToLight_16 = (unity_LightPosition[il_6].xyz - (eyePos_9 * unity_LightPosition[il_6].w));
			highp float tmpvar_17;
			tmpvar_17 = dot(dirToLight_16, dirToLight_16);
			att_15 = (1.0 / ((1.0 + (unity_LightAtten[il_6].z * tmpvar_17))));
			if (((unity_LightPosition[il_6].w != 0.0) && (tmpvar_17 > unity_LightAtten[il_6].w))) {
				att_15 = 0.0;
			};
			dirToLight_16 = (dirToLight_16 * inversesqrt(max(tmpvar_17, 1e-06)));
			highp float tmpvar_18;
			tmpvar_18 = max(dot(dirToLight_16, unity_SpotDirection[il_6].xyz), 0.0);
			rho_14 = tmpvar_18;
			att_15 = (att_15 * clamp((
				(rho_14 - unity_LightAtten[il_6].x)
				* unity_LightAtten[il_6].y), 0.0, 1.0));
			att_15 = (att_15 * 0.5);
			mediump vec3 dirToLight_19;
			dirToLight_19 = dirToLight_16;
			lcolor_7 = (lcolor_7 + min((
				((max(dot(eyeNormal_8, dirToLight_19), 0.0) * color_10.xyz) * unity_LightColor[il_6].xyz)
				* att_15), vec3(1.0, 1.0, 1.0)));
		};
		color_10.xyz = lcolor_7;
		color_10.w = color_10.w;
		lowp vec4 tmpvar_20;
		mediump vec4 tmpvar_21;
		tmpvar_21 = clamp(color_10, 0.0, 1.0);
		tmpvar_20 = tmpvar_21;
		highp vec4 tmpvar_22;
		tmpvar_22.w = 1.0;
		tmpvar_22.xyz = tmpvar_5;
		xlv_COLOR0 = tmpvar_20;
		xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
		gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_22));
	}


#endif
#ifdef FRAGMENT
	uniform sampler2D _MainTex;
	varying lowp vec4 xlv_COLOR0;
	varying highp vec2 xlv_TEXCOORD0;
	void main()
	{
		lowp vec4 tmpvar_1;
		tmpvar_1 = (xlv_COLOR0 * texture2D (_MainTex, xlv_TEXCOORD0));
		gl_FragData[0] = tmpvar_1;
	}


#endif


	--Hardware tier variant : Tier 3
		--Fragment shader for "gles" :
		Shader Disassembly :
	// All GLSL source is contained within the vertex program

	--Hardware tier variant : Tier 1
		--Vertex shader for "gles3" :
		Shader Disassembly :
#ifdef VERTEX
	#version 300 es

		uniform 	mediump vec4 unity_LightColor[8];
	uniform 	vec4 unity_LightPosition[8];
	uniform 	mediump vec4 unity_LightAtten[8];
	uniform 	vec4 unity_SpotDirection[8];
	uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
	uniform 	vec4 hlslcc_mtx4x4unity_WorldToObject[4];
	uniform 	mediump vec4 glstate_lightmodel_ambient;
	uniform 	vec4 hlslcc_mtx4x4unity_MatrixV[4];
	uniform 	vec4 hlslcc_mtx4x4unity_MatrixInvV[4];
	uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
	uniform 	mediump vec4 _EmisColor;
	uniform 	ivec4 unity_VertexLightParams;
	uniform 	vec4 _MainTex_ST;
	in highp vec3 in_POSITION0;
	in highp vec3 in_NORMAL0;
	in mediump vec4 in_COLOR0;
	in highp vec3 in_TEXCOORD0;
	out mediump vec4 vs_COLOR0;
	out highp vec2 vs_TEXCOORD0;
	vec4 u_xlat0;
	vec4 u_xlat1;
	vec3 u_xlat2;
	mediump vec4 u_xlat16_2;
	vec3 u_xlat3;
	vec3 u_xlat4;
	bool u_xlatb4;
	vec3 u_xlat5;
	vec3 u_xlat6;
	mediump vec3 u_xlat16_7;
	mediump vec3 u_xlat16_8;
	bool u_xlatb13;
	float u_xlat27;
	int u_xlati27;
	float u_xlat28;
	bool u_xlatb28;
	float u_xlat30;
	mediump float u_xlat16_34;
	void main()
	{
		u_xlat0.xyz = hlslcc_mtx4x4unity_ObjectToWorld[0].yyy * hlslcc_mtx4x4unity_MatrixV[1].xyz;
		u_xlat0.xyz = hlslcc_mtx4x4unity_MatrixV[0].xyz * hlslcc_mtx4x4unity_ObjectToWorld[0].xxx + u_xlat0.xyz;
		u_xlat0.xyz = hlslcc_mtx4x4unity_MatrixV[2].xyz * hlslcc_mtx4x4unity_ObjectToWorld[0].zzz + u_xlat0.xyz;
		u_xlat0.xyz = hlslcc_mtx4x4unity_MatrixV[3].xyz * hlslcc_mtx4x4unity_ObjectToWorld[0].www + u_xlat0.xyz;
		u_xlat1.xyz = hlslcc_mtx4x4unity_ObjectToWorld[1].yyy * hlslcc_mtx4x4unity_MatrixV[1].xyz;
		u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[0].xyz * hlslcc_mtx4x4unity_ObjectToWorld[1].xxx + u_xlat1.xyz;
		u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[2].xyz * hlslcc_mtx4x4unity_ObjectToWorld[1].zzz + u_xlat1.xyz;
		u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[3].xyz * hlslcc_mtx4x4unity_ObjectToWorld[1].www + u_xlat1.xyz;
		u_xlat2.xyz = hlslcc_mtx4x4unity_ObjectToWorld[2].yyy * hlslcc_mtx4x4unity_MatrixV[1].xyz;
		u_xlat2.xyz = hlslcc_mtx4x4unity_MatrixV[0].xyz * hlslcc_mtx4x4unity_ObjectToWorld[2].xxx + u_xlat2.xyz;
		u_xlat2.xyz = hlslcc_mtx4x4unity_MatrixV[2].xyz * hlslcc_mtx4x4unity_ObjectToWorld[2].zzz + u_xlat2.xyz;
		u_xlat2.xyz = hlslcc_mtx4x4unity_MatrixV[3].xyz * hlslcc_mtx4x4unity_ObjectToWorld[2].www + u_xlat2.xyz;
		u_xlat3.xyz = hlslcc_mtx4x4unity_ObjectToWorld[3].yyy * hlslcc_mtx4x4unity_MatrixV[1].xyz;
		u_xlat3.xyz = hlslcc_mtx4x4unity_MatrixV[0].xyz * hlslcc_mtx4x4unity_ObjectToWorld[3].xxx + u_xlat3.xyz;
		u_xlat3.xyz = hlslcc_mtx4x4unity_MatrixV[2].xyz * hlslcc_mtx4x4unity_ObjectToWorld[3].zzz + u_xlat3.xyz;
		u_xlat3.xyz = hlslcc_mtx4x4unity_MatrixV[3].xyz * hlslcc_mtx4x4unity_ObjectToWorld[3].www + u_xlat3.xyz;
		u_xlat4.xyz = hlslcc_mtx4x4unity_WorldToObject[1].xyz * hlslcc_mtx4x4unity_MatrixInvV[0].yyy;
		u_xlat4.xyz = hlslcc_mtx4x4unity_WorldToObject[0].xyz * hlslcc_mtx4x4unity_MatrixInvV[0].xxx + u_xlat4.xyz;
		u_xlat4.xyz = hlslcc_mtx4x4unity_WorldToObject[2].xyz * hlslcc_mtx4x4unity_MatrixInvV[0].zzz + u_xlat4.xyz;
		u_xlat4.xyz = hlslcc_mtx4x4unity_WorldToObject[3].xyz * hlslcc_mtx4x4unity_MatrixInvV[0].www + u_xlat4.xyz;
		u_xlat5.xyz = hlslcc_mtx4x4unity_WorldToObject[1].xyz * hlslcc_mtx4x4unity_MatrixInvV[1].yyy;
		u_xlat5.xyz = hlslcc_mtx4x4unity_WorldToObject[0].xyz * hlslcc_mtx4x4unity_MatrixInvV[1].xxx + u_xlat5.xyz;
		u_xlat5.xyz = hlslcc_mtx4x4unity_WorldToObject[2].xyz * hlslcc_mtx4x4unity_MatrixInvV[1].zzz + u_xlat5.xyz;
		u_xlat5.xyz = hlslcc_mtx4x4unity_WorldToObject[3].xyz * hlslcc_mtx4x4unity_MatrixInvV[1].www + u_xlat5.xyz;
		u_xlat6.xyz = hlslcc_mtx4x4unity_WorldToObject[1].xyz * hlslcc_mtx4x4unity_MatrixInvV[2].yyy;
		u_xlat6.xyz = hlslcc_mtx4x4unity_WorldToObject[0].xyz * hlslcc_mtx4x4unity_MatrixInvV[2].xxx + u_xlat6.xyz;
		u_xlat6.xyz = hlslcc_mtx4x4unity_WorldToObject[2].xyz * hlslcc_mtx4x4unity_MatrixInvV[2].zzz + u_xlat6.xyz;
		u_xlat6.xyz = hlslcc_mtx4x4unity_WorldToObject[3].xyz * hlslcc_mtx4x4unity_MatrixInvV[2].www + u_xlat6.xyz;
		u_xlat1.xyz = u_xlat1.xyz * in_POSITION0.yyy;
		u_xlat0.xyz = u_xlat0.xyz * in_POSITION0.xxx + u_xlat1.xyz;
		u_xlat0.xyz = u_xlat2.xyz * in_POSITION0.zzz + u_xlat0.xyz;
		u_xlat0.xyz = u_xlat3.xyz + u_xlat0.xyz;
		u_xlat1.x = dot(u_xlat4.xyz, in_NORMAL0.xyz);
		u_xlat1.y = dot(u_xlat5.xyz, in_NORMAL0.xyz);
		u_xlat1.z = dot(u_xlat6.xyz, in_NORMAL0.xyz);
		u_xlat27 = dot(u_xlat1.xyz, u_xlat1.xyz);
		u_xlat27 = inversesqrt(u_xlat27);
		u_xlat1.xyz = vec3(u_xlat27) * u_xlat1.xyz;
		u_xlat16_7.xyz = in_COLOR0.xyz * glstate_lightmodel_ambient.xyz + _EmisColor.xyz;
		u_xlat16_2.xyz = u_xlat16_7.xyz;
		for (int u_xlati_loop_1 = 0; u_xlati_loop_1<unity_VertexLightParams.x; u_xlati_loop_1++)
		{
			u_xlat3.xyz = (-u_xlat0.xyz) * unity_LightPosition[u_xlati_loop_1].www + unity_LightPosition[u_xlati_loop_1].xyz;
			u_xlat28 = dot(u_xlat3.xyz, u_xlat3.xyz);
			u_xlat30 = unity_LightAtten[u_xlati_loop_1].z * u_xlat28 + 1.0;
			u_xlat30 = float(1.0) / u_xlat30;
#ifdef UNITY_ADRENO_ES3
			u_xlatb4 = !!(0.0 != unity_LightPosition[u_xlati_loop_1].w);
#else
			u_xlatb4 = 0.0 != unity_LightPosition[u_xlati_loop_1].w;
#endif
#ifdef UNITY_ADRENO_ES3
			u_xlatb13 = !!(unity_LightAtten[u_xlati_loop_1].w<u_xlat28);
#else
			u_xlatb13 = unity_LightAtten[u_xlati_loop_1].w<u_xlat28;
#endif
			u_xlatb4 = u_xlatb13 && u_xlatb4;
			u_xlat16_34 = (u_xlatb4) ? 0.0 : u_xlat30;
			u_xlat28 = max(u_xlat28, 9.99999997e-007);
			u_xlat28 = inversesqrt(u_xlat28);
			u_xlat3.xyz = vec3(u_xlat28) * u_xlat3.xyz;
			u_xlat28 = dot(u_xlat3.xyz, unity_SpotDirection[u_xlati_loop_1].xyz);
			u_xlat28 = max(u_xlat28, 0.0);
			u_xlat16_8.x = u_xlat28 + (-unity_LightAtten[u_xlati_loop_1].x);
			u_xlat16_8.x = u_xlat16_8.x * unity_LightAtten[u_xlati_loop_1].y;
#ifdef UNITY_ADRENO_ES3
			u_xlat16_8.x = min(max(u_xlat16_8.x, 0.0), 1.0);
#else
			u_xlat16_8.x = clamp(u_xlat16_8.x, 0.0, 1.0);
#endif
			u_xlat16_34 = u_xlat16_34 * u_xlat16_8.x;
			u_xlat16_34 = u_xlat16_34 * 0.5;
			u_xlat16_8.x = dot(u_xlat1.xyz, u_xlat3.xyz);
			u_xlat16_8.x = max(u_xlat16_8.x, 0.0);
			u_xlat16_8.xyz = u_xlat16_8.xxx * in_COLOR0.xyz;
			u_xlat16_8.xyz = u_xlat16_8.xyz * unity_LightColor[u_xlati_loop_1].xyz;
			u_xlat16_8.xyz = vec3(u_xlat16_34) * u_xlat16_8.xyz;
			u_xlat16_8.xyz = min(u_xlat16_8.xyz, vec3(1.0, 1.0, 1.0));
			u_xlat16_2.xyz = u_xlat16_2.xyz + u_xlat16_8.xyz;
		}
		u_xlat16_2.w = in_COLOR0.w;
		vs_COLOR0 = u_xlat16_2;
#ifdef UNITY_ADRENO_ES3
		vs_COLOR0 = min(max(vs_COLOR0, 0.0), 1.0);
#else
		vs_COLOR0 = clamp(vs_COLOR0, 0.0, 1.0);
#endif
		vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
		u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
		u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
		u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
		u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
		u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
		u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
		u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
		gl_Position = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
		return;
	}

#endif
#ifdef FRAGMENT
	#version 300 es

		precision highp int;
	uniform lowp sampler2D _MainTex;
	in mediump vec4 vs_COLOR0;
	in highp vec2 vs_TEXCOORD0;
	layout(location = 0) out mediump vec4 SV_Target0;
	lowp vec4 u_xlat10_0;
	void main()
	{
		u_xlat10_0 = texture(_MainTex, vs_TEXCOORD0.xy);
		SV_Target0 = u_xlat10_0 * vs_COLOR0;
		return;
	}

#endif


	--Hardware tier variant : Tier 1
		--Fragment shader for "gles3" :
		Shader Disassembly :
	// All GLSL source is contained within the vertex program

	--Hardware tier variant : Tier 2
		--Vertex shader for "gles3" :
		Shader Disassembly :
#ifdef VERTEX
	#version 300 es

		uniform 	mediump vec4 unity_LightColor[8];
	uniform 	vec4 unity_LightPosition[8];
	uniform 	mediump vec4 unity_LightAtten[8];
	uniform 	vec4 unity_SpotDirection[8];
	uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
	uniform 	vec4 hlslcc_mtx4x4unity_WorldToObject[4];
	uniform 	mediump vec4 glstate_lightmodel_ambient;
	uniform 	vec4 hlslcc_mtx4x4unity_MatrixV[4];
	uniform 	vec4 hlslcc_mtx4x4unity_MatrixInvV[4];
	uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
	uniform 	mediump vec4 _EmisColor;
	uniform 	ivec4 unity_VertexLightParams;
	uniform 	vec4 _MainTex_ST;
	in highp vec3 in_POSITION0;
	in highp vec3 in_NORMAL0;
	in mediump vec4 in_COLOR0;
	in highp vec3 in_TEXCOORD0;
	out mediump vec4 vs_COLOR0;
	out highp vec2 vs_TEXCOORD0;
	vec4 u_xlat0;
	vec4 u_xlat1;
	vec3 u_xlat2;
	mediump vec4 u_xlat16_2;
	vec3 u_xlat3;
	vec3 u_xlat4;
	bool u_xlatb4;
	vec3 u_xlat5;
	vec3 u_xlat6;
	mediump vec3 u_xlat16_7;
	mediump vec3 u_xlat16_8;
	bool u_xlatb13;
	float u_xlat27;
	int u_xlati27;
	float u_xlat28;
	bool u_xlatb28;
	float u_xlat30;
	mediump float u_xlat16_34;
	void main()
	{
		u_xlat0.xyz = hlslcc_mtx4x4unity_ObjectToWorld[0].yyy * hlslcc_mtx4x4unity_MatrixV[1].xyz;
		u_xlat0.xyz = hlslcc_mtx4x4unity_MatrixV[0].xyz * hlslcc_mtx4x4unity_ObjectToWorld[0].xxx + u_xlat0.xyz;
		u_xlat0.xyz = hlslcc_mtx4x4unity_MatrixV[2].xyz * hlslcc_mtx4x4unity_ObjectToWorld[0].zzz + u_xlat0.xyz;
		u_xlat0.xyz = hlslcc_mtx4x4unity_MatrixV[3].xyz * hlslcc_mtx4x4unity_ObjectToWorld[0].www + u_xlat0.xyz;
		u_xlat1.xyz = hlslcc_mtx4x4unity_ObjectToWorld[1].yyy * hlslcc_mtx4x4unity_MatrixV[1].xyz;
		u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[0].xyz * hlslcc_mtx4x4unity_ObjectToWorld[1].xxx + u_xlat1.xyz;
		u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[2].xyz * hlslcc_mtx4x4unity_ObjectToWorld[1].zzz + u_xlat1.xyz;
		u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[3].xyz * hlslcc_mtx4x4unity_ObjectToWorld[1].www + u_xlat1.xyz;
		u_xlat2.xyz = hlslcc_mtx4x4unity_ObjectToWorld[2].yyy * hlslcc_mtx4x4unity_MatrixV[1].xyz;
		u_xlat2.xyz = hlslcc_mtx4x4unity_MatrixV[0].xyz * hlslcc_mtx4x4unity_ObjectToWorld[2].xxx + u_xlat2.xyz;
		u_xlat2.xyz = hlslcc_mtx4x4unity_MatrixV[2].xyz * hlslcc_mtx4x4unity_ObjectToWorld[2].zzz + u_xlat2.xyz;
		u_xlat2.xyz = hlslcc_mtx4x4unity_MatrixV[3].xyz * hlslcc_mtx4x4unity_ObjectToWorld[2].www + u_xlat2.xyz;
		u_xlat3.xyz = hlslcc_mtx4x4unity_ObjectToWorld[3].yyy * hlslcc_mtx4x4unity_MatrixV[1].xyz;
		u_xlat3.xyz = hlslcc_mtx4x4unity_MatrixV[0].xyz * hlslcc_mtx4x4unity_ObjectToWorld[3].xxx + u_xlat3.xyz;
		u_xlat3.xyz = hlslcc_mtx4x4unity_MatrixV[2].xyz * hlslcc_mtx4x4unity_ObjectToWorld[3].zzz + u_xlat3.xyz;
		u_xlat3.xyz = hlslcc_mtx4x4unity_MatrixV[3].xyz * hlslcc_mtx4x4unity_ObjectToWorld[3].www + u_xlat3.xyz;
		u_xlat4.xyz = hlslcc_mtx4x4unity_WorldToObject[1].xyz * hlslcc_mtx4x4unity_MatrixInvV[0].yyy;
		u_xlat4.xyz = hlslcc_mtx4x4unity_WorldToObject[0].xyz * hlslcc_mtx4x4unity_MatrixInvV[0].xxx + u_xlat4.xyz;
		u_xlat4.xyz = hlslcc_mtx4x4unity_WorldToObject[2].xyz * hlslcc_mtx4x4unity_MatrixInvV[0].zzz + u_xlat4.xyz;
		u_xlat4.xyz = hlslcc_mtx4x4unity_WorldToObject[3].xyz * hlslcc_mtx4x4unity_MatrixInvV[0].www + u_xlat4.xyz;
		u_xlat5.xyz = hlslcc_mtx4x4unity_WorldToObject[1].xyz * hlslcc_mtx4x4unity_MatrixInvV[1].yyy;
		u_xlat5.xyz = hlslcc_mtx4x4unity_WorldToObject[0].xyz * hlslcc_mtx4x4unity_MatrixInvV[1].xxx + u_xlat5.xyz;
		u_xlat5.xyz = hlslcc_mtx4x4unity_WorldToObject[2].xyz * hlslcc_mtx4x4unity_MatrixInvV[1].zzz + u_xlat5.xyz;
		u_xlat5.xyz = hlslcc_mtx4x4unity_WorldToObject[3].xyz * hlslcc_mtx4x4unity_MatrixInvV[1].www + u_xlat5.xyz;
		u_xlat6.xyz = hlslcc_mtx4x4unity_WorldToObject[1].xyz * hlslcc_mtx4x4unity_MatrixInvV[2].yyy;
		u_xlat6.xyz = hlslcc_mtx4x4unity_WorldToObject[0].xyz * hlslcc_mtx4x4unity_MatrixInvV[2].xxx + u_xlat6.xyz;
		u_xlat6.xyz = hlslcc_mtx4x4unity_WorldToObject[2].xyz * hlslcc_mtx4x4unity_MatrixInvV[2].zzz + u_xlat6.xyz;
		u_xlat6.xyz = hlslcc_mtx4x4unity_WorldToObject[3].xyz * hlslcc_mtx4x4unity_MatrixInvV[2].www + u_xlat6.xyz;
		u_xlat1.xyz = u_xlat1.xyz * in_POSITION0.yyy;
		u_xlat0.xyz = u_xlat0.xyz * in_POSITION0.xxx + u_xlat1.xyz;
		u_xlat0.xyz = u_xlat2.xyz * in_POSITION0.zzz + u_xlat0.xyz;
		u_xlat0.xyz = u_xlat3.xyz + u_xlat0.xyz;
		u_xlat1.x = dot(u_xlat4.xyz, in_NORMAL0.xyz);
		u_xlat1.y = dot(u_xlat5.xyz, in_NORMAL0.xyz);
		u_xlat1.z = dot(u_xlat6.xyz, in_NORMAL0.xyz);
		u_xlat27 = dot(u_xlat1.xyz, u_xlat1.xyz);
		u_xlat27 = inversesqrt(u_xlat27);
		u_xlat1.xyz = vec3(u_xlat27) * u_xlat1.xyz;
		u_xlat16_7.xyz = in_COLOR0.xyz * glstate_lightmodel_ambient.xyz + _EmisColor.xyz;
		u_xlat16_2.xyz = u_xlat16_7.xyz;
		for (int u_xlati_loop_1 = 0; u_xlati_loop_1<unity_VertexLightParams.x; u_xlati_loop_1++)
		{
			u_xlat3.xyz = (-u_xlat0.xyz) * unity_LightPosition[u_xlati_loop_1].www + unity_LightPosition[u_xlati_loop_1].xyz;
			u_xlat28 = dot(u_xlat3.xyz, u_xlat3.xyz);
			u_xlat30 = unity_LightAtten[u_xlati_loop_1].z * u_xlat28 + 1.0;
			u_xlat30 = float(1.0) / u_xlat30;
#ifdef UNITY_ADRENO_ES3
			u_xlatb4 = !!(0.0 != unity_LightPosition[u_xlati_loop_1].w);
#else
			u_xlatb4 = 0.0 != unity_LightPosition[u_xlati_loop_1].w;
#endif
#ifdef UNITY_ADRENO_ES3
			u_xlatb13 = !!(unity_LightAtten[u_xlati_loop_1].w<u_xlat28);
#else
			u_xlatb13 = unity_LightAtten[u_xlati_loop_1].w<u_xlat28;
#endif
			u_xlatb4 = u_xlatb13 && u_xlatb4;
			u_xlat16_34 = (u_xlatb4) ? 0.0 : u_xlat30;
			u_xlat28 = max(u_xlat28, 9.99999997e-007);
			u_xlat28 = inversesqrt(u_xlat28);
			u_xlat3.xyz = vec3(u_xlat28) * u_xlat3.xyz;
			u_xlat28 = dot(u_xlat3.xyz, unity_SpotDirection[u_xlati_loop_1].xyz);
			u_xlat28 = max(u_xlat28, 0.0);
			u_xlat16_8.x = u_xlat28 + (-unity_LightAtten[u_xlati_loop_1].x);
			u_xlat16_8.x = u_xlat16_8.x * unity_LightAtten[u_xlati_loop_1].y;
#ifdef UNITY_ADRENO_ES3
			u_xlat16_8.x = min(max(u_xlat16_8.x, 0.0), 1.0);
#else
			u_xlat16_8.x = clamp(u_xlat16_8.x, 0.0, 1.0);
#endif
			u_xlat16_34 = u_xlat16_34 * u_xlat16_8.x;
			u_xlat16_34 = u_xlat16_34 * 0.5;
			u_xlat16_8.x = dot(u_xlat1.xyz, u_xlat3.xyz);
			u_xlat16_8.x = max(u_xlat16_8.x, 0.0);
			u_xlat16_8.xyz = u_xlat16_8.xxx * in_COLOR0.xyz;
			u_xlat16_8.xyz = u_xlat16_8.xyz * unity_LightColor[u_xlati_loop_1].xyz;
			u_xlat16_8.xyz = vec3(u_xlat16_34) * u_xlat16_8.xyz;
			u_xlat16_8.xyz = min(u_xlat16_8.xyz, vec3(1.0, 1.0, 1.0));
			u_xlat16_2.xyz = u_xlat16_2.xyz + u_xlat16_8.xyz;
		}
		u_xlat16_2.w = in_COLOR0.w;
		vs_COLOR0 = u_xlat16_2;
#ifdef UNITY_ADRENO_ES3
		vs_COLOR0 = min(max(vs_COLOR0, 0.0), 1.0);
#else
		vs_COLOR0 = clamp(vs_COLOR0, 0.0, 1.0);
#endif
		vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
		u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
		u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
		u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
		u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
		u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
		u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
		u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
		gl_Position = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
		return;
	}

#endif
#ifdef FRAGMENT
	#version 300 es

		precision highp int;
	uniform lowp sampler2D _MainTex;
	in mediump vec4 vs_COLOR0;
	in highp vec2 vs_TEXCOORD0;
	layout(location = 0) out mediump vec4 SV_Target0;
	lowp vec4 u_xlat10_0;
	void main()
	{
		u_xlat10_0 = texture(_MainTex, vs_TEXCOORD0.xy);
		SV_Target0 = u_xlat10_0 * vs_COLOR0;
		return;
	}

#endif


	--Hardware tier variant : Tier 2
		--Fragment shader for "gles3" :
		Shader Disassembly :
	// All GLSL source is contained within the vertex program

	--Hardware tier variant : Tier 3
		--Vertex shader for "gles3" :
		Shader Disassembly :
#ifdef VERTEX
	#version 300 es

		uniform 	mediump vec4 unity_LightColor[8];
	uniform 	vec4 unity_LightPosition[8];
	uniform 	mediump vec4 unity_LightAtten[8];
	uniform 	vec4 unity_SpotDirection[8];
	uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
	uniform 	vec4 hlslcc_mtx4x4unity_WorldToObject[4];
	uniform 	mediump vec4 glstate_lightmodel_ambient;
	uniform 	vec4 hlslcc_mtx4x4unity_MatrixV[4];
	uniform 	vec4 hlslcc_mtx4x4unity_MatrixInvV[4];
	uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
	uniform 	mediump vec4 _EmisColor;
	uniform 	ivec4 unity_VertexLightParams;
	uniform 	vec4 _MainTex_ST;
	in highp vec3 in_POSITION0;
	in highp vec3 in_NORMAL0;
	in mediump vec4 in_COLOR0;
	in highp vec3 in_TEXCOORD0;
	out mediump vec4 vs_COLOR0;
	out highp vec2 vs_TEXCOORD0;
	vec4 u_xlat0;
	vec4 u_xlat1;
	vec3 u_xlat2;
	mediump vec4 u_xlat16_2;
	vec3 u_xlat3;
	vec3 u_xlat4;
	bool u_xlatb4;
	vec3 u_xlat5;
	vec3 u_xlat6;
	mediump vec3 u_xlat16_7;
	mediump vec3 u_xlat16_8;
	bool u_xlatb13;
	float u_xlat27;
	int u_xlati27;
	float u_xlat28;
	bool u_xlatb28;
	float u_xlat30;
	mediump float u_xlat16_34;
	void main()
	{
		u_xlat0.xyz = hlslcc_mtx4x4unity_ObjectToWorld[0].yyy * hlslcc_mtx4x4unity_MatrixV[1].xyz;
		u_xlat0.xyz = hlslcc_mtx4x4unity_MatrixV[0].xyz * hlslcc_mtx4x4unity_ObjectToWorld[0].xxx + u_xlat0.xyz;
		u_xlat0.xyz = hlslcc_mtx4x4unity_MatrixV[2].xyz * hlslcc_mtx4x4unity_ObjectToWorld[0].zzz + u_xlat0.xyz;
		u_xlat0.xyz = hlslcc_mtx4x4unity_MatrixV[3].xyz * hlslcc_mtx4x4unity_ObjectToWorld[0].www + u_xlat0.xyz;
		u_xlat1.xyz = hlslcc_mtx4x4unity_ObjectToWorld[1].yyy * hlslcc_mtx4x4unity_MatrixV[1].xyz;
		u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[0].xyz * hlslcc_mtx4x4unity_ObjectToWorld[1].xxx + u_xlat1.xyz;
		u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[2].xyz * hlslcc_mtx4x4unity_ObjectToWorld[1].zzz + u_xlat1.xyz;
		u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[3].xyz * hlslcc_mtx4x4unity_ObjectToWorld[1].www + u_xlat1.xyz;
		u_xlat2.xyz = hlslcc_mtx4x4unity_ObjectToWorld[2].yyy * hlslcc_mtx4x4unity_MatrixV[1].xyz;
		u_xlat2.xyz = hlslcc_mtx4x4unity_MatrixV[0].xyz * hlslcc_mtx4x4unity_ObjectToWorld[2].xxx + u_xlat2.xyz;
		u_xlat2.xyz = hlslcc_mtx4x4unity_MatrixV[2].xyz * hlslcc_mtx4x4unity_ObjectToWorld[2].zzz + u_xlat2.xyz;
		u_xlat2.xyz = hlslcc_mtx4x4unity_MatrixV[3].xyz * hlslcc_mtx4x4unity_ObjectToWorld[2].www + u_xlat2.xyz;
		u_xlat3.xyz = hlslcc_mtx4x4unity_ObjectToWorld[3].yyy * hlslcc_mtx4x4unity_MatrixV[1].xyz;
		u_xlat3.xyz = hlslcc_mtx4x4unity_MatrixV[0].xyz * hlslcc_mtx4x4unity_ObjectToWorld[3].xxx + u_xlat3.xyz;
		u_xlat3.xyz = hlslcc_mtx4x4unity_MatrixV[2].xyz * hlslcc_mtx4x4unity_ObjectToWorld[3].zzz + u_xlat3.xyz;
		u_xlat3.xyz = hlslcc_mtx4x4unity_MatrixV[3].xyz * hlslcc_mtx4x4unity_ObjectToWorld[3].www + u_xlat3.xyz;
		u_xlat4.xyz = hlslcc_mtx4x4unity_WorldToObject[1].xyz * hlslcc_mtx4x4unity_MatrixInvV[0].yyy;
		u_xlat4.xyz = hlslcc_mtx4x4unity_WorldToObject[0].xyz * hlslcc_mtx4x4unity_MatrixInvV[0].xxx + u_xlat4.xyz;
		u_xlat4.xyz = hlslcc_mtx4x4unity_WorldToObject[2].xyz * hlslcc_mtx4x4unity_MatrixInvV[0].zzz + u_xlat4.xyz;
		u_xlat4.xyz = hlslcc_mtx4x4unity_WorldToObject[3].xyz * hlslcc_mtx4x4unity_MatrixInvV[0].www + u_xlat4.xyz;
		u_xlat5.xyz = hlslcc_mtx4x4unity_WorldToObject[1].xyz * hlslcc_mtx4x4unity_MatrixInvV[1].yyy;
		u_xlat5.xyz = hlslcc_mtx4x4unity_WorldToObject[0].xyz * hlslcc_mtx4x4unity_MatrixInvV[1].xxx + u_xlat5.xyz;
		u_xlat5.xyz = hlslcc_mtx4x4unity_WorldToObject[2].xyz * hlslcc_mtx4x4unity_MatrixInvV[1].zzz + u_xlat5.xyz;
		u_xlat5.xyz = hlslcc_mtx4x4unity_WorldToObject[3].xyz * hlslcc_mtx4x4unity_MatrixInvV[1].www + u_xlat5.xyz;
		u_xlat6.xyz = hlslcc_mtx4x4unity_WorldToObject[1].xyz * hlslcc_mtx4x4unity_MatrixInvV[2].yyy;
		u_xlat6.xyz = hlslcc_mtx4x4unity_WorldToObject[0].xyz * hlslcc_mtx4x4unity_MatrixInvV[2].xxx + u_xlat6.xyz;
		u_xlat6.xyz = hlslcc_mtx4x4unity_WorldToObject[2].xyz * hlslcc_mtx4x4unity_MatrixInvV[2].zzz + u_xlat6.xyz;
		u_xlat6.xyz = hlslcc_mtx4x4unity_WorldToObject[3].xyz * hlslcc_mtx4x4unity_MatrixInvV[2].www + u_xlat6.xyz;
		u_xlat1.xyz = u_xlat1.xyz * in_POSITION0.yyy;
		u_xlat0.xyz = u_xlat0.xyz * in_POSITION0.xxx + u_xlat1.xyz;
		u_xlat0.xyz = u_xlat2.xyz * in_POSITION0.zzz + u_xlat0.xyz;
		u_xlat0.xyz = u_xlat3.xyz + u_xlat0.xyz;
		u_xlat1.x = dot(u_xlat4.xyz, in_NORMAL0.xyz);
		u_xlat1.y = dot(u_xlat5.xyz, in_NORMAL0.xyz);
		u_xlat1.z = dot(u_xlat6.xyz, in_NORMAL0.xyz);
		u_xlat27 = dot(u_xlat1.xyz, u_xlat1.xyz);
		u_xlat27 = inversesqrt(u_xlat27);
		u_xlat1.xyz = vec3(u_xlat27) * u_xlat1.xyz;
		u_xlat16_7.xyz = in_COLOR0.xyz * glstate_lightmodel_ambient.xyz + _EmisColor.xyz;
		u_xlat16_2.xyz = u_xlat16_7.xyz;
		for (int u_xlati_loop_1 = 0; u_xlati_loop_1<unity_VertexLightParams.x; u_xlati_loop_1++)
		{
			u_xlat3.xyz = (-u_xlat0.xyz) * unity_LightPosition[u_xlati_loop_1].www + unity_LightPosition[u_xlati_loop_1].xyz;
			u_xlat28 = dot(u_xlat3.xyz, u_xlat3.xyz);
			u_xlat30 = unity_LightAtten[u_xlati_loop_1].z * u_xlat28 + 1.0;
			u_xlat30 = float(1.0) / u_xlat30;
#ifdef UNITY_ADRENO_ES3
			u_xlatb4 = !!(0.0 != unity_LightPosition[u_xlati_loop_1].w);
#else
			u_xlatb4 = 0.0 != unity_LightPosition[u_xlati_loop_1].w;
#endif
#ifdef UNITY_ADRENO_ES3
			u_xlatb13 = !!(unity_LightAtten[u_xlati_loop_1].w<u_xlat28);
#else
			u_xlatb13 = unity_LightAtten[u_xlati_loop_1].w<u_xlat28;
#endif
			u_xlatb4 = u_xlatb13 && u_xlatb4;
			u_xlat16_34 = (u_xlatb4) ? 0.0 : u_xlat30;
			u_xlat28 = max(u_xlat28, 9.99999997e-007);
			u_xlat28 = inversesqrt(u_xlat28);
			u_xlat3.xyz = vec3(u_xlat28) * u_xlat3.xyz;
			u_xlat28 = dot(u_xlat3.xyz, unity_SpotDirection[u_xlati_loop_1].xyz);
			u_xlat28 = max(u_xlat28, 0.0);
			u_xlat16_8.x = u_xlat28 + (-unity_LightAtten[u_xlati_loop_1].x);
			u_xlat16_8.x = u_xlat16_8.x * unity_LightAtten[u_xlati_loop_1].y;
#ifdef UNITY_ADRENO_ES3
			u_xlat16_8.x = min(max(u_xlat16_8.x, 0.0), 1.0);
#else
			u_xlat16_8.x = clamp(u_xlat16_8.x, 0.0, 1.0);
#endif
			u_xlat16_34 = u_xlat16_34 * u_xlat16_8.x;
			u_xlat16_34 = u_xlat16_34 * 0.5;
			u_xlat16_8.x = dot(u_xlat1.xyz, u_xlat3.xyz);
			u_xlat16_8.x = max(u_xlat16_8.x, 0.0);
			u_xlat16_8.xyz = u_xlat16_8.xxx * in_COLOR0.xyz;
			u_xlat16_8.xyz = u_xlat16_8.xyz * unity_LightColor[u_xlati_loop_1].xyz;
			u_xlat16_8.xyz = vec3(u_xlat16_34) * u_xlat16_8.xyz;
			u_xlat16_8.xyz = min(u_xlat16_8.xyz, vec3(1.0, 1.0, 1.0));
			u_xlat16_2.xyz = u_xlat16_2.xyz + u_xlat16_8.xyz;
		}
		u_xlat16_2.w = in_COLOR0.w;
		vs_COLOR0 = u_xlat16_2;
#ifdef UNITY_ADRENO_ES3
		vs_COLOR0 = min(max(vs_COLOR0, 0.0), 1.0);
#else
		vs_COLOR0 = clamp(vs_COLOR0, 0.0, 1.0);
#endif
		vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
		u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
		u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
		u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
		u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
		u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
		u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
		u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
		gl_Position = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
		return;
	}

#endif
#ifdef FRAGMENT
	#version 300 es

		precision highp int;
	uniform lowp sampler2D _MainTex;
	in mediump vec4 vs_COLOR0;
	in highp vec2 vs_TEXCOORD0;
	layout(location = 0) out mediump vec4 SV_Target0;
	lowp vec4 u_xlat10_0;
	void main()
	{
		u_xlat10_0 = texture(_MainTex, vs_TEXCOORD0.xy);
		SV_Target0 = u_xlat10_0 * vs_COLOR0;
		return;
	}

#endif


	--Hardware tier variant : Tier 3
		--Fragment shader for "gles3" :
		Shader Disassembly :
	// All GLSL source is contained within the vertex program

	}
	}
}


// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Tony/TonyAdditive"

{
	Properties{

		_MainTex("Albedo (RGB)", 2D) = "white" {}


		_Color("Color", Color) = (1,1,1,1)
		_Saturation("Saturation", Range(-3, 3)) = 1
		_Brightness("Brightness", Range(-3, 3)) = 1

	}

	SubShader{
		Tags{ "QUEUE" = "Transparent" "IGNOREPROJECTOR" = "true" "RenderType" = "Transparent" }

		Pass{
		ZWrite Off
		Blend SrcAlpha One//use (SrcAlpha,One), not (One,One)
		CGPROGRAM

		#pragma vertex vert
		#pragma fragment frag
		#pragma target 3.0

		#include "UnityCG.cginc"

		sampler2D _MainTex;
		fixed4 _Color;
		half _Brightness;
		half _Saturation;

		struct myV2F {
			float4 pos:SV_POSITION; //http://wiki.unity3d.com/index.php?title=Shader_Code
			float2 uv    : TEXCOORD0;
		};

		myV2F vert(appdata_base v) {
			myV2F v2f;
			v2f.pos = UnityObjectToClipPos(v.vertex);
			v2f.uv = v.texcoord;
			return v2f;
		}


		fixed4 frag(myV2F v2f) : COLOR{
			fixed4 renderTex = tex2D(_MainTex, v2f.uv);

			//根据Saturation在饱和度最低的图像和原图之间差值 
			//finalColor = lerp(grayColor, finalColor, _Saturation);


			fixed3 finalColor = renderTex * _Brightness;

			//saturation饱和度：首先根据公式计算同等亮度情况下饱和度最低的值： 
			fixed gray = 0.2125 * renderTex.r + 0.7154 * renderTex.g + 0.0721 * renderTex.b;
			fixed3 grayColor = fixed3(gray, gray, gray);

			//根据Saturation在饱和度最低的图像和原图之间差值 
			finalColor = lerp(grayColor, finalColor, _Saturation);

			fixed4 col = fixed4(finalColor, renderTex.a);

			col *= _Color;


		return col;
		}

		ENDCG
	}
	}
}
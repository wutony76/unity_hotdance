Shader "Unlit/Glow"{
	Properties{
		_MainTex("Texture", 2D) = "white" {}
		_Color("Color", Color) = (1,1,1,1)
		_Glow("Intensity", Range(0, 3)) = 1


			//tony add
			_Saturation("Saturation", Range(-3, 3)) = 1
			_Brightness("Brightness", Range(-3, 3)) = 1

	}


		SubShader{

		Tags{
		"Queue" = "Transparent"
		"IgnoreProjector" = "True"
		"RenderType" = "Transparent" //Transparent TransparentCutout
	}

		LOD 100
		Cull Off
		ZWrite On
		Blend SrcAlpha OneMinusSrcAlpha
		//AlphaToMask On

		Pass{

		CGPROGRAM
#pragma vertex vert
#pragma fragment frag

		sampler2D _MainTex;
	half4 _MainTex_ST;
	fixed4 _Color;
	half _Glow;

	half _Brightness;
	half _Saturation;


	struct vertIn {
		float4 pos : POSITION;
		half2 tex : TEXCOORD0;
	};

	struct v2f {
		float4 pos : SV_POSITION;
		half2 tex : TEXCOORD0;
	};

	v2f vert(vertIn v) {
		v2f o;
		o.pos = UnityObjectToClipPos(v.pos);
		o.tex = v.tex * _MainTex_ST.xy + _MainTex_ST.zw;
		return o;
	}

	fixed4 frag(v2f i) : SV_Target{

		//从_MainTex中根据uv坐标进行采样 
		fixed4 renderTex = tex2D(_MainTex, i.tex);

	//brigtness亮度直接乘以一个系数，也就是RGB整体缩放，调整亮度 
	fixed3 finalColor = renderTex * _Brightness;

	//saturation饱和度：首先根据公式计算同等亮度情况下饱和度最低的值： 
	fixed gray = 0.2125 * renderTex.r + 0.7154 * renderTex.g + 0.0721 * renderTex.b;
	fixed3 grayColor = fixed3(gray, gray, gray);

	//根据Saturation在饱和度最低的图像和原图之间差值 
	finalColor = lerp(grayColor, finalColor, _Saturation);



	//fixed4 col = tex2D(_MainTex, i.tex);
	fixed4 col = fixed4(finalColor, renderTex.a);


	col *= _Color;
	col *= _Glow;
	return col;
	}

		ENDCG
	}
		}


}
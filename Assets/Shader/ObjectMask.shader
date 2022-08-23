Shader "Unlit/ObjectMask"
{
		

		//一个Shader有多个SubShader。一个SubShader可理解为一个Shader的一个渲染方案
	SubShader {
	// "Queue"标签。定义渲染顺序 ,用户可以定义任意值，"Geometry"。值为2000。大部分物体在这个队列 .比如"Queue"="Geometry - 10"
		Tags {"Queue" = "Geometry-10" }  
		// Lighting On | Off 打开|关闭顶点光照.
		Lighting Off
		//ZTest (Less | Greater | LEqual | GEqual | Equal | NotEqual) 设置深度检测模式.见【 Cull and Depth page 】
		ZTest LEqual
		//ZWrite On | Off 设置深度写模式.见【 Cull and Depth page 】
		ZWrite On
		// ColorMask RGB | A | 0 | any combinaion of R,G,B,A 设置颜色写入mask, 0，表示关闭所有颜色通道写入.见【Material page】
		ColorMask 0
		//subshader中包含了一个通道（Pass）
		Pass {}

	}
}

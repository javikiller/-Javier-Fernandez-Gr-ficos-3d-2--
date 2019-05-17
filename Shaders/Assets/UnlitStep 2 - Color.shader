
Shader "Unlit/Step 2 - Color"
{
	Properties
	{
		_Color("Color", color) = (1.0, 1.0, 1.0, 1.0)
	}
		SubShader
	{
		Tags{ "RenderType" = "Opaque" }

		Pass
	{
		CGPROGRAM
#pragma vertex vert
#pragma fragment frag

		struct appdata {
		float4 vertex : POSITION;
	};

	struct v2f {
		float4 pos : SV_POSITION;
	};

	v2f vert(appdata v) {
		v2f o;
		o.pos = UnityObjectToClipPos(v.vertex);
		return o;
	}

	// Color from the property section
	float4 _Color;

	float4 frag(v2f i) : SV_Target{
		return _Color;
	}

		ENDCG
	}
	}
}
// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33926,y:32835,varname:node_3138,prsc:2|emission-9079-OUT,alpha-1352-OUT;n:type:ShaderForge.SFN_Tex2d,id:8737,x:32320,y:32794,varname:node_8737,prsc:2,tex:21ce91afdaaa28f4fa9f6787fb703a54,ntxv:0,isnm:False|TEX-5221-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:5221,x:32097,y:32854,ptovrint:False,ptlb:Video Input,ptin:_VideoInput,varname:node_5221,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:21ce91afdaaa28f4fa9f6787fb703a54,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Ceil,id:9907,x:32885,y:33118,varname:node_9907,prsc:2|IN-1251-OUT;n:type:ShaderForge.SFN_Ceil,id:9658,x:32919,y:33287,varname:node_9658,prsc:2|IN-2954-OUT;n:type:ShaderForge.SFN_Multiply,id:3074,x:33100,y:33166,varname:node_3074,prsc:2|A-9907-OUT,B-9658-OUT;n:type:ShaderForge.SFN_Clamp01,id:1251,x:32822,y:32969,varname:node_1251,prsc:2|IN-544-OUT;n:type:ShaderForge.SFN_Clamp01,id:2954,x:32749,y:33287,varname:node_2954,prsc:2|IN-800-OUT;n:type:ShaderForge.SFN_Subtract,id:539,x:32613,y:32894,varname:node_539,prsc:2|A-8737-R,B-376-R;n:type:ShaderForge.SFN_Slider,id:7926,x:32031,y:33074,ptovrint:False,ptlb:Offset,ptin:_Offset,varname:node_7926,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1336931,max:1;n:type:ShaderForge.SFN_Subtract,id:544,x:32613,y:33010,varname:node_544,prsc:2|A-539-OUT,B-7926-OUT;n:type:ShaderForge.SFN_Subtract,id:800,x:32565,y:33287,varname:node_800,prsc:2|A-1866-OUT,B-7926-OUT;n:type:ShaderForge.SFN_Subtract,id:1866,x:32513,y:33146,varname:node_1866,prsc:2|A-8737-G,B-376-G;n:type:ShaderForge.SFN_Lerp,id:9079,x:33405,y:32802,varname:node_9079,prsc:2|A-8737-RGB,B-9230-R,T-8817-OUT;n:type:ShaderForge.SFN_Color,id:376,x:32049,y:33242,ptovrint:False,ptlb:Chroma Key,ptin:_ChromaKey,varname:node_376,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2205882,c2:0.2132895,c3:0.118404,c4:1;n:type:ShaderForge.SFN_Color,id:9230,x:33103,y:32897,ptovrint:False,ptlb:node_9230,ptin:_node_9230,varname:node_9230,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Subtract,id:4111,x:32479,y:33442,varname:node_4111,prsc:2|A-8737-B,B-376-B;n:type:ShaderForge.SFN_Subtract,id:801,x:32539,y:33623,varname:node_801,prsc:2|A-4111-OUT,B-7926-OUT;n:type:ShaderForge.SFN_Clamp01,id:5647,x:32729,y:33623,varname:node_5647,prsc:2|IN-801-OUT;n:type:ShaderForge.SFN_Ceil,id:4354,x:32912,y:33623,varname:node_4354,prsc:2|IN-5647-OUT;n:type:ShaderForge.SFN_Multiply,id:8817,x:33309,y:33151,varname:node_8817,prsc:2|A-3074-OUT,B-4354-OUT;n:type:ShaderForge.SFN_Vector1,id:7635,x:33276,y:33372,varname:node_7635,prsc:2,v1:-1;n:type:ShaderForge.SFN_Multiply,id:6310,x:33496,y:33204,varname:node_6310,prsc:2|A-8817-OUT,B-7635-OUT;n:type:ShaderForge.SFN_Add,id:1352,x:33672,y:33323,varname:node_1352,prsc:2|A-6310-OUT,B-7866-OUT;n:type:ShaderForge.SFN_Vector1,id:7866,x:33364,y:33468,varname:node_7866,prsc:2,v1:1;proporder:5221-7926-376-9230;pass:END;sub:END;*/

Shader "Shader Forge/Chroma" {
    Properties {
        _VideoInput ("Video Input", 2D) = "white" {}
        _Offset ("Offset", Range(0, 1)) = 0.1336931
        _ChromaKey ("Chroma Key", Color) = (0.2205882,0.2132895,0.118404,1)
        _node_9230 ("node_9230", Color) = (0,0,0,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _VideoInput; uniform float4 _VideoInput_ST;
            uniform float _Offset;
            uniform float4 _ChromaKey;
            uniform float4 _node_9230;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 node_8737 = tex2D(_VideoInput,TRANSFORM_TEX(i.uv0, _VideoInput));
                float node_8817 = ((ceil(saturate(((node_8737.r-_ChromaKey.r)-_Offset)))*ceil(saturate(((node_8737.g-_ChromaKey.g)-_Offset))))*ceil(saturate(((node_8737.b-_ChromaKey.b)-_Offset))));
                float3 emissive = lerp(node_8737.rgb,float3(_node_9230.r,_node_9230.r,_node_9230.r),node_8817);
                float3 finalColor = emissive;
                return fixed4(finalColor,((node_8817*(-1.0))+1.0));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}

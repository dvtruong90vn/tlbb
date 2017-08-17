--»ÆÁúNPC
--Ä½ÈİÌìÀÇ
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x023004_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"T¸ch Nhan này lai l¸ch m¶ ám, không phäi ngß¶i tµc ta, lòng dÕ t¤t khác! Ta ğã cho A Vån chú ı hành tung cüa nó, nhßng A Vån l¥n nào cûng báo cáo không có gì khác thß¶ng... Ta nghî ta nhìn ngß¶i không h« sai, nh¤t ğ¸nh có xäy ra chuy®n gì khác.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

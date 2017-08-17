--´óÀí¹«¸æÅÆ

--ÈÎÎñºÅ
x714014_g_MissionId = 704

x714014_g_SignPost = {x = 160, z = 156, tip = "Tri®u Thiên Sß"}

function x714014_OnDefaultEvent( sceneId, selfId, targetId )	--µã»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	if	IsHaveMission(sceneId,selfId,x714014_g_MissionId)>0	 then
		misIndex = GetMissionIndexByID(sceneId,selfId,x714014_g_MissionId)
	    SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	    SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
		BeginEvent(sceneId)
			AddText(sceneId,"#{BGDH_81009_01}")
		EndEvent( )
		DispatchMissionTips(sceneId,selfId)
		BeginEvent(sceneId)
			AddText(sceneId,"#GThiên Long Bát Bµ vi®t hóa b·i #r#YHà Hoàng ( Sói Kool - Facebook )#G. Have fun!...")
		EndEvent( )
		DispatchEventList(sceneId,selfId,targetId)
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId,sceneId, x714014_g_SignPost.x, x714014_g_SignPost.z, x714014_g_SignPost.tip )
	else
		BeginEvent(sceneId)
			AddText(sceneId,"Khai mÕc Võ Lâm ÐÕi Hµi còn 7 kh¡c.")
		EndEvent( )
		DispatchEventList(sceneId,selfId,targetId)
	end
end

--ÉÚ×Ó

--½Å±¾ºÅ
x300001_g_scriptId = 300001

--**********************************
--Ë¢ÐÂÊÂ¼þ
--**********************************
function x300001_OnDefaultEvent( sceneId, selfId, BagIndex )
	if ( GetHumanWorldX(sceneId,selfId) >= 225 ) and ( GetHumanWorldX(sceneId,selfId) <= 243 ) then		--X×ø±êÂú×ãÒªÇó
		if (GetHumanWorldZ(sceneId,selfId) >= 12) and (GetHumanWorldZ(sceneId,selfId) <= 28 ) then		--Z×ø±êÂú×ãÒªÇó
			if LuaFnGetCopySceneData_Param(sceneId, 2) == 0 then			--³¡¾°±äÁ¿Îª0,³¡¾°±äÁ¿ÔÚ·þÎñÆ÷Æô¶¯Ê±Îª0,Ö®ºóÓÉ½Å±¾¿ØÖÆ
				npcobjid = LuaFnCreateMonster( sceneId, 28, 234,18, 3,2, 019000 ) ;
				LuaFnSetCopySceneData_Param(sceneId, 2, npcobjid);
				--ÉèÖÃ¶¨Ê±Æ÷,ÓÃÀ´¿ØÖÆ20ÃëºóÂ³Æ½ÏûÊ§
				timeIndex = SetTimer( sceneId,selfId,300001,"OnTimeUp",20000)
			else
				BeginEvent(sceneId)
				AddText(sceneId,"L² Bình · ngay g¥n ðây")
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
			end
		else
			BeginEvent(sceneId)
			AddText(sceneId,"Phäi sØ døng · g¥n cån l«u thþ sån")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
	else
		BeginEvent(sceneId)
		AddText(sceneId,"Phäi sØ døng · g¥n cån l«u thþ sån")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end
end

function x300001_OnTimeUp( sceneId, selfId, timeIndex )
	npcobjid = LuaFnGetCopySceneData_Param(sceneId, 2)
	if npcobjid ~= 0 then
		LuaFnDeleteMonster( sceneId, npcobjid )
		LuaFnSetCopySceneData_Param(sceneId, 2, 0)
		StopTimer( sceneId,timeIndex)
	end
end


function x300001_IsSkillLikeScript( sceneId, selfId)
	return 0;
end


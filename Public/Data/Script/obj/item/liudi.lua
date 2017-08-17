--ÁøµÑ

--½Å±¾ºÅ
x300002_g_scriptId = 300002
--**********************************
--Ë¢ÐÂÊÂ¼þ
--**********************************
function x300002_OnDefaultEvent( sceneId, selfId, BagIndex )
		if	sceneId == 30 then
			if DelItem( sceneId,selfId,40002077,1) == 1  then
				LuaFnCreateMonster(sceneId,529,181,258,1,0,-1)
			end
		else
			BeginEvent(sceneId)
				strText = "— ðây không th¬ sØ døng ðßþc"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
end

function x300002_IsSkillLikeScript( sceneId, selfId)
	return 0;
end

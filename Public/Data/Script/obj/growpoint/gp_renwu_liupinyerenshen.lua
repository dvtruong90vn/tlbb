--´´½¨

-- scriptId = 715002
function 		x715002_OnCreate(sceneId,growPointType,x,y)
	
	ItemCount = 1	-- ÎïÆ·ÊýÁ¿
	Item0			=	40002097 --ÎïÆ·ITEM_TYPE ±àºÅ
	ItemBoxEnterScene(x,y,growPointType,sceneId,QUALITY_MUST_BE_CHANGE,ItemCount,Item0)	--º¯Êýµ÷ÓÃ	
	
end

--Tr· v«ÀàÐÍ
-- 0 ±íÊ¾´ò¿ª³É¹¦
--´ò¿ªÇ°
--TÕi CONFIG/ABILITY.TXTÎÄ¼þÖÐ
function	 x715002_OnOpen(sceneId,selfId,targetId)
	--ABilityID		=	GetItemBoxRequireAbilityID(sceneId,targetId)
	--AbilityLevel = QueryHumanAbilityLevel(sceneId,selfId,ABilityID)
	if HaveItem (sceneId,selfId,40002097) > 0 then 
		BeginEvent(sceneId)
			strText = "ÒÑ¾­Các hÕ phäi ðªn ÈË²ÎÁË,¿ìÈ¥½»ÈÎÎñ°É"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return OR_MISSION_NOT_FIND
	end
	
	if IsHaveMission(sceneId,selfId,MISSION_564) > 0 then
		return OR_OK
	else
		return OR_MISSION_NOT_FIND
	end
	
end

--»ØÊÕ
function	 x715002_OnRecycle(sceneId,selfId,targetId)
 	return 1;
end

--´ò¿ªºó
function	x715002_OnProcOver(sceneId,selfId,targetId)
	return 0
end

function x715002_OnTickCreateFinish( sceneId, growPointType, tickCount )
end

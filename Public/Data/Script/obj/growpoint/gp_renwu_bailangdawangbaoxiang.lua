--´´½¨

-- scriptId = 715000
function 		x715000_OnCreate(sceneId,growPointType,x,y)
	
	ItemCount = 1	-- ÎïÆ·ÊýÁ¿
	Item0			=	40002066 --ÎïÆ·ITEM_TYPE ±àºÅ
	ItemBoxEnterScene(x,y,growPointType,sceneId,QUALITY_MUST_BE_CHANGE,ItemCount,Item0)	--º¯Êýµ÷ÓÃ	
	
end

--Tr· v«ÀàÐÍ
-- 0 ±íÊ¾´ò¿ª³É¹¦
--´ò¿ªÇ°
--TÕi CONFIG/ABILITY.TXTÎÄ¼þÖÐ
function	 x715000_OnOpen(sceneId,selfId,targetId)
	--ABilityID		=	GetItemBoxRequireAbilityID(sceneId,targetId)
	--AbilityLevel = QueryHumanAbilityLevel(sceneId,selfId,ABilityID)
	if HaveItem (sceneId,selfId,40002066) > 0 then 
		BeginEvent(sceneId)
			strText = "ÒÑ¾­Các hÕ phäi ðªn ÁË¶ú»·,¿ìÈ¥½»ÈÎÎñ°É"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return OR_MISSION_NOT_FIND
	end
	
	if IsHaveMission(sceneId,selfId,MISSION_546) > 0 then
		return OR_OK
	else
		return OR_MISSION_NOT_FIND
	end
	
end

--»ØÊÕ
function	 x715000_OnRecycle(sceneId,selfId,targetId)
 	return 1;
end

--´ò¿ªºó
function	x715000_OnProcOver(sceneId,selfId,targetId)
	return 0
end

function x715000_OnTickCreateFinish( sceneId, growPointType, tickCount )
end

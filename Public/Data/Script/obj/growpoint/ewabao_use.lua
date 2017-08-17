-- ×Ô¼ºid,±³°üindex,³¡¾°±àºÅ
function		x713552_OnUse(sceneId,selfId,targetId)	
		-- ðÕt ðßþc²Ø±¦Í¼Î»ÖÃºÍ³¡¾°±àºÅ
		StoreMapX = GetStoreMapX(sceneId,selfId,targetId)
		StoreMapZ = GetStoreMapZ(sceneId,selfId,targetId)		
		
		StoreMapSceneID = GetStoreMapSceneID(sceneId,selfId,targetId)
		--Èç¹ûÓë½ÇÉ«ËùTÕi ³¡¾°²»·ûºÏ¾ÍTr· v«th¤t bÕi
		if StoreMapSceneID~=sceneId then
			return USEITEM_SKILL_FAIL
		end
		
		--ÅÐ¶Ï½ÇÉ«Î»ÖÃºÍ²Ø±¦Í¼Î»ÖÃÐúng·ñTÕi mµt cái·¶Î§ÄÚ
		HumanX	=	GetHumanWorldX(sceneId,selfId)
		HumanX = StoreMapX - HumanX
		
		if abs(HumanX)>2.0 then
			return USEITEM_SKILL_FAIL
		end
		
		HumanZ	=	GetHumanWorldZ(sceneId,selfId)	
		
		HumanZ = StoreMapZ - HumanZ
		
		if abs(HumanZ)>2.0 then
			return USEITEM_SKILL_FAIL
		end
		--TÕi ³¡¾°ÀïÕÒmµt cáiÓë²Ø±¦Í¼·ûºÏtoÕ ðµ ²Ø±¦ ði¬m
		StoreMapIndex = FindStorePointOnScene(sceneId,0,StoreMapX,StoreMapZ)
		
		if StoreMapIndex	== -1 then	
			return USEITEM_CANNT_USE			
		end
		-- ðÕt ðßþc²Ø±¦Í¼ÀàÐÍ
		StoreMapType = GetStorePointType(sceneId,StoreMapIndex)
		--É¾³ý²Ø±¦ ði¬m
		DelStorePointOnScene(sceneId,StoreMapType,StoreMapIndex)
		--½±Àø
		TryRecieveItem(sceneId,selfId,10222001,QUALITY_MUST_BE_CHANGE)
		
		
	return USEITEM_SUCCESS
	
end

--¶òĞŞÂŞ»¤Éí·û£¬ÓÀÒ¹ĞŞÂŞ»¤Éí·û£¬Íò½ÙĞŞÂŞ»¤Éí·û

--½Å±¾ºÅ
x300003_g_scriptId = 300003

--ÈÎÎñºÅ
x300003_g_MissionId = 637

--ÎïÆ·±àºÅ
x300003_g_ItemId1 = 40002087		--¶òĞŞÂŞ»¤Éí·û
x300003_g_ItemId2 =	40002088		--ÓÀÒ¹ĞŞÂŞ»¤Éí·û
x300003_g_ItemId3 =	40002089		--Íò½ÙĞŞÂŞ»¤Éí·û
x300003_g_ItemId4 = 40002090		--ĞŞÂŞÍõµÄÖ¸Ê¾
--**********************************
--Ë¢ĞÂÊÂ¼ş
--**********************************
function x300003_OnDefaultEvent( sceneId, selfId, BagIndex )
	--ÅĞ¶ÏÊÇ·ñÓĞ¶òĞŞÂŞ»¤Éí·û
	if (HaveItem (sceneId,selfId,x300003_g_ItemId1) < 0 ) then
		BeginEvent(sceneId)
			AddText(sceneId,"C¥n có bùa hµ thân Ách Tu La")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	--ÅĞ¶ÏÊÇ·ñÓĞ¶òĞŞÂŞ»¤Éí·û
	if (HaveItem (sceneId,selfId,x300003_g_ItemId2) < 0 ) then
		BeginEvent(sceneId)
			AddText(sceneId,"C¥n bùa hµ thân Vînh DÕ Tu La")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	--ÅĞ¶ÏÊÇ·ñÓĞ
	if (HaveItem (sceneId,selfId,x300003_g_ItemId3) < 0 ) then
		BeginEvent(sceneId)
			AddText(sceneId,"C¥n bùa hµ thân VÕn Kiªp Tu La")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	--Ôö¼ÓĞŞÂŞÍõµÄÖ¸Ê¾
	BeginAddItem(sceneId)
		AddItem( sceneId,x300003_g_ItemId4, 1 )
	ret = EndAddItem(sceneId,selfId)
	if ret >0 then 
		AddItemListToHuman(sceneId,selfId)
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ l¤y ğßşc chï l®nh cüa Tu La Vß½ng 1/1")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		--°ÑÈÎÎñÍê³É±êÖ¾ÖÃÎª1
		misIndex = GetMissionIndexByID(sceneId,selfId,x300003_g_MissionId)
		num = GetMissionParam(sceneId,selfId,misIndex,0)
		if num == 0 then
			SetMissionByIndex(sceneId,selfId,misIndex,0,0)
		end
		--É¾³ı3¸ö»¤Éí·û
		DelItem( sceneId, selfId, x300003_g_ItemId1, 1 )
		DelItem( sceneId, selfId, x300003_g_ItemId2, 1 )
		DelItem( sceneId, selfId, x300003_g_ItemId3, 1 )
	else
		BeginEvent(sceneId)
			AddText(sceneId,"Tay näi ğã hªt ch² r°i")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
end


function x300003_IsSkillLikeScript( sceneId, selfId)
	return 0;
end


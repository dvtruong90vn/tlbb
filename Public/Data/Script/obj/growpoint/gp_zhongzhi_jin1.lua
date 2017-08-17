--Éú³¤ ği¬m½Å±¾,½õÓ×Ãç
--½Å±¾ºÅ
--g_ScriptId = 711069

--´ËÉú³¤ ği¬m±àºÅ
x711069_g_GpId = 570

--ÏÂmµt cáiÉú³¤ ği¬mtoÕ ğµ ±àºÅ
x711069_g_GpIdNext = 571

function	 x711069_OnRecycle(sceneId,selfId,targetId)
	itemBoxX = GetItemBoxWorldPosX(sceneId,targetId)
	itemBoxZ = GetItemBoxWorldPosZ(sceneId,targetId)
	ItemBoxId = ItemBoxEnterScene(itemBoxX,itemBoxZ,x711069_g_GpIdNext,sceneId,QUALITY_MUST_BE_CHANGE,0)
	-- ği¬mµ½Éú³¤ ği¬mtoÕ ğµ Ö÷ÈËGUID
	ItemBoxOwnerGUID = GetItemBoxOwner(sceneId, targetId)		--²ÎÊıĞúngSceneID,ItemBoxID
	--¸øItemBoxÉè¶¨Ö÷ÈË
	SetItemBoxOwner(sceneId,ItemBoxId,ItemBoxOwnerGUID)

	SetItemBoxMaxGrowTime(sceneId,ItemBoxId,450000)	--Éè¶¨»ØÊÕÊ±¼ä
	return 1
end

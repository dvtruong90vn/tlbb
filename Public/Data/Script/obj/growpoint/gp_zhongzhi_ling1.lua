--Éú³¤ ði¬m½Å±¾,ç±Ó×Ãç
--½Å±¾ºÅ
--g_ScriptId = 711057

--´ËÉú³¤ ði¬m±àºÅ
x711057_g_GpId = 558

--ÏÂmµt cáiÉú³¤ ði¬mtoÕ ðµ ±àºÅ
x711057_g_GpIdNext = 559

function	 x711057_OnRecycle(sceneId,selfId,targetId)
	itemBoxX = GetItemBoxWorldPosX(sceneId,targetId)
	itemBoxZ = GetItemBoxWorldPosZ(sceneId,targetId)
	ItemBoxId = ItemBoxEnterScene(itemBoxX,itemBoxZ,x711057_g_GpIdNext,sceneId,QUALITY_MUST_BE_CHANGE,0)
	-- ði¬mµ½Éú³¤ ði¬mtoÕ ðµ Ö÷ÈËGUID
	ItemBoxOwnerGUID = GetItemBoxOwner(sceneId, targetId)		--²ÎÊýÐúngSceneID,ItemBoxID
	--¸øItemBoxÉè¶¨Ö÷ÈË
	SetItemBoxOwner(sceneId,ItemBoxId,ItemBoxOwnerGUID)

	SetItemBoxMaxGrowTime(sceneId,ItemBoxId,450000)	--Éè¶¨»ØÊÕÊ±¼ä
	return 1
end

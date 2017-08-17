--Éú³¤ ði¬m½Å±¾,²¯Ó×Ãç
--½Å±¾ºÅ
--g_ScriptId = 711045

--´ËÉú³¤ ði¬m±àºÅ
x711045_g_GpId = 546

--ÏÂmµt cáiÉú³¤ ði¬mtoÕ ðµ ±àºÅ
x711045_g_GpIdNext = 547

function	 x711045_OnRecycle(sceneId,selfId,targetId)
	itemBoxX = GetItemBoxWorldPosX(sceneId,targetId)
	itemBoxZ = GetItemBoxWorldPosZ(sceneId,targetId)
	ItemBoxId = ItemBoxEnterScene(itemBoxX,itemBoxZ,x711045_g_GpIdNext,sceneId,QUALITY_MUST_BE_CHANGE,0)
	-- ði¬mµ½Éú³¤ ði¬mtoÕ ðµ Ö÷ÈËGUID
	ItemBoxOwnerGUID = GetItemBoxOwner(sceneId, targetId)		--²ÎÊýÐúngSceneID,ItemBoxID
	--¸øItemBoxÉè¶¨Ö÷ÈË
	SetItemBoxOwner(sceneId,ItemBoxId,ItemBoxOwnerGUID)

	SetItemBoxMaxGrowTime(sceneId,ItemBoxId,450000)	--Éè¶¨»ØÊÕÊ±¼ä
	return 1
end

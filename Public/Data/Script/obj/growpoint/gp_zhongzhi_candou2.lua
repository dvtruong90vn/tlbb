--Éú³¤ ði¬m½Å±¾,²Ï¶¹2
--½Å±¾ºÅ
--g_ScriptId = 711028

--´ËÉú³¤ ði¬m±àºÅ
x711028_g_GpId = 529

--ÏÂmµt cáiÉú³¤ ði¬mtoÕ ðµ ±àºÅ
x711028_g_GpIdNext = 530

function	 x711028_OnRecycle(sceneId,selfId,targetId)
	itemBoxX = GetItemBoxWorldPosX(sceneId,targetId)
	itemBoxZ = GetItemBoxWorldPosZ(sceneId,targetId)
	ItemBoxId = ItemBoxEnterScene(itemBoxX,itemBoxZ,x711028_g_GpIdNext,sceneId,QUALITY_MUST_BE_CHANGE,1,20104010)
	
	-- ði¬mµ½Éú³¤ ði¬mtoÕ ðµ Ö÷ÈËID
	ItemBoxOwnerGUID = GetItemBoxOwner(sceneId, targetId)		--²ÎÊýÐúngSceneID,ItemBoxID
	--¸øItemBoxÉè¶¨Ö÷ÈË
	SetItemBoxOwner(sceneId,ItemBoxId,ItemBoxOwnerGUID)
	SetItemBoxPickOwnerTime(sceneId,ItemBoxId,600000)	--Éè¶¨°ó¶¨Ê±¼ä
	EnableItemBoxPickOwnerTime(sceneId,ItemBoxId)		--±£»¤Ê±¼ä¿ªÊ¼¼ÆÊ±

	SetItemBoxMaxGrowTime(sceneId,ItemBoxId,600000)	--Éè¶¨»ØÊÕÊ±¼ä

	--È¡ ði¬mÉú³¤ ði¬mtoÕ ðµ ×ø±ê
	GP_X = GetItemBoxWorldPosX(sceneId,targetId)
	GP_Z = GetItemBoxWorldPosZ(sceneId,targetId)
	--ÏÂÈ¡Õû
	GP_X = floor(GP_X)
	GP_Z = floor(GP_Z)
	--ÅÐ¶ÏÖÖÖ²ÅÆtoÕ ðµ Î»ÖÃTÕi ÄÄcáiÖÖÖ²ÅÆ¹ÜÏ½toÕ ðµ ·¶Î§ÄÚ
	local num = 0
	for i, findid in PLANTNPC_ADDRESS do
		if	(GP_X >= findid.X_MIN)  and (GP_Z >= findid.Z_MIN) and (GP_X <= findid.X_MAX)  and (GP_Z <= findid.Z_MAX) and (sceneId == findid.Scene) then
			num = i	
			break
		end
	end
	
	--Èç¹ûÕÒ²»µ½ÕýÈ·toÕ ðµ Î»ÖÃÔòTr· v«
	if num == 0 then
		return
	end

	--ÅÐ¶ÏÖÖÖ²ÅÆÐúng·ñÐúng8,Èç¹ûÐúng8ÔòÍ¨ÖªÍæ¼Ò
	if PLANTFLAG[num] == 8 then
		LuaFnSendMailToGUID(sceneId,ItemBoxOwnerGUID,"ÄãÖÖÖ²toÕ ðµ Ö²ÎïÒÑ¾­³ÉÊìÁË,ÇëTÕi 10 phútÄÚÊÕ»ñ.")
	end
	--ÕÒµ½ÕýÈ·toÕ ðµ ±àºÅ,°ÑÖÖÖ²ÅÆ-1
	PLANTFLAG[num] = PLANTFLAG[num] - 1

	return 1
end

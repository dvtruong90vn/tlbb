--Éú³¤ ði¬m½Å±¾,»¨Éú3
--½Å±¾ºÅ
--g_ScriptId = 711011

--´ËÉú³¤ ði¬m±àºÅ
x711011_g_GpId = 512

--Éú³¤ ði¬mC¥n toÕ ðµ µÈc¤p
x711011_g_ItemBoxNeedLevel = 4

function	x711011_OnOpen(sceneId,selfId,targetId)
	-- ði¬mµ½Éú³¤ ði¬mtoÕ ðµ Ö÷ÈËGUID
	ItemBoxOwnerGUID = GetItemBoxOwner(sceneId, targetId)		--²ÎÊýÐúngSceneID,ItemBoxID
	-- ði¬mµ½ ði¬m»÷Éú³¤ ði¬mtoÕ ðµ Íæ¼ÒtoÕ ðµ guid
	PlayerGuid = GetHumanGUID(sceneId,selfId)
	if ItemBoxOwnerGUID~= PlayerGuid then
		BeginEvent(sceneId)
	  		AddText(sceneId,"Ëæ±ãÊÕ¸î±ðÈËÖÖtoÕ ðµ ×¯¼Ú¿É²»ÐÐßÏ!");
	  	EndEvent(sceneId)
	  	DispatchMissionTips(sceneId,selfId)
		return OR_INVALID_TARGET_POS
	end
	-- ði¬mµ½¼¼ÄÜµÈc¤p
	AbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_ZHONGZHI)
	if AbilityLevel >= x711011_g_ItemBoxNeedLevel then
		return OR_OK
	else
		return OR_NO_LEVEL
	end
end

function	x711011_OnProcOver(sceneId,selfId,targetId)
	return OR_OK
end

function	 x711011_OnRecycle(sceneId,selfId,targetId)
	local num = 0
	--È¡ ði¬mÉú³¤ ði¬mtoÕ ðµ ×ø±ê
	GP_X = GetItemBoxWorldPosX(sceneId,targetId)
	GP_Z = GetItemBoxWorldPosZ(sceneId,targetId)
	--ÏÂÈ¡Õû
	GP_X = floor(GP_X)
	GP_Z = floor(GP_Z)
	--ÅÐ¶ÏÖÖÖ²ÅÆtoÕ ðµ Î»ÖÃTÕi ÄÄcáiÖÖÖ²ÅÆ¹ÜÏ½toÕ ðµ ·¶Î§ÄÚ
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
	--ÕÒµ½ÕýÈ·toÕ ðµ ±àºÅ,°ÑÖÖÖ²ÅÆ-1
	PLANTFLAG[num] = PLANTFLAG[num] - 1
	return 1
end

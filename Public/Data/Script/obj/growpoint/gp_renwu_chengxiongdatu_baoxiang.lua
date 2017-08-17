
--Ã¿´Î´ò¿ª±Ø¶¨ ğÕt ğßşctoÕ ğµ ²úÆ·
x715031_g_MainItemId = 20103008
--¿ÉÄÜ ği¬mµ½toÕ ğµ ²úÆ·
x715031_g_SubItemId = 50112003
--½ÇÉ«ÉíÉÏ±ØĞëÓĞtoÕ ğµ ÎïÆ·
x715031_g_MustHaveItemId = 20309009

function 	x715031_OnCreate(sceneId,growPointType,x,y)
	local targetId  = ItemBoxEnterScene(x,y,growPointType,sceneId,QUALITY_MUST_BE_CHANGE,1,x715031_g_MainItemId)
	
	--80%¼¸ÂÊ,±¦ÏäÀï³öÏÖ1cáiÎïÆ·,³öÏÖtoÕ ğµ ÎïÆ·toÕ ğµ ÅĞ¶¨µÈÓÚ Ğào báu v§t toÕ ğµ Ê±ºò³öÏÖÎïÆ·toÕ ğµ ÅĞ¶¨.
	if random(100) <= 80 then
		local ItemSn, ItemName, bBroadCast = GetItemSnByDropRateOfItemTable()
		AddItemToBox(sceneId,targetId,QUALITY_MUST_BE_CHANGE,1,ItemSn)
	end	
	
end


--´ò¿ªÇ°º¯Êı¿ªÊ¼&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
function	 x715031_OnOpen(sceneId,selfId,targetId)
--Tr· v«ÀàĞÍ
-- 0 ±íÊ¾´ò¿ª³É¹¦
	--PrintStr("OnOpen...")
	if HaveItem(sceneId,selfId, x715031_g_MustHaveItemId) > 0 then
		local Bagpos = GetBagPosByItemSn(sceneId,selfId,x715031_g_MustHaveItemId)
		if LuaFnIsItemAvailable(sceneId,selfId,Bagpos) == 1 then
			return OR_OK
		else
			Msg2Player(  sceneId, selfId,"±¦²ØÖ÷ÈËtoÕ ğµ Ô¿³×ÏÖTÕi ËÆºõ²»¿ÉÓÃ." ,MSG2PLAYER_PARA )	
			BeginEvent(sceneId)
				AddText(sceneId, "±¦²ØÖ÷ÈËtoÕ ğµ Ô¿³×ÏÖTÕi ËÆºõ²»¿ÉÓÃ.")
			EndEvent()
			DispatchMissionTips(sceneId,selfId)
			return OR_ERROR	
		end
	else
		BeginEvent(sceneId)
			AddText(sceneId, "C¥n ±¦²ØÖ÷ÈËtoÕ ğµ Ô¿³×²ÅÄÜ´ò¿ª");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return OR_STUFF_LACK	
	end
end
--´ò¿ªÇ°º¯Êı½áÊø&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&


function	x715031_OnProcOver(sceneId,selfId,targetId)
	--PrintStr("OnProcOver...")
	--´ò¿ª±¦Ïä»á100% ğÕt ğßşcÇ®,Ö±½Ó¼ÓTÕi Íæ¼ÒÉíÉÏ¼´¿É.
	--Ç®Êı=114£«(bossµÈc¤p£­30)¡Á16 -->bosslevel == playerlevel
	if 1 == LuaFnDelAvailableItem(sceneId,selfId, x715031_g_MustHaveItemId, 1) then
		local BonusMoney = 114 + (GetLevel(sceneId, selfId)-20) * 16
		AddMoney(sceneId, selfId, BonusMoney)
		Msg2Player(  sceneId, selfId,"Äã ği¬mµ½ÁË#{_MONEY" .. tostring(BonusMoney) .. "}" ,MSG2PLAYER_PARA )	
	else
		Msg2Player(  sceneId, selfId,"±¦²ØÖ÷ÈËtoÕ ğµ Ô¿³×ÏÖTÕi ËÆºõ²»¿ÉÓÃ." ,MSG2PLAYER_PARA )	
		return OR_ERROR
	end
	return OR_OK
end

--»ØÊÕº¯Êı¿ªÊ¼########################################################################
function	 x715031_OnRecycle(sceneId,selfId,targetId)
		return OR_OK
end
--»ØÊÕº¯Êı½áÊø########################################################################

function x715031_OnTickCreateFinish( sceneId, growPointType, tickCount )
end

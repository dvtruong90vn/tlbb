--»î¶¯¡ª¡ª
--ÌìÊ¹Ð£·þ¼Æ»®

--½Å±¾ºÅ
x889052_g_ScriptId = 889052

--»î¶¯Ê±¼ä
x889052_g_startTime = 09069 --»î¶¯¿ªÊ¼Ê±¼ä
x889052_g_EndTime   = 09099 --»î¶¯½áÊøÊ±¼ä



--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x889052_OnDefaultEvent( sceneId, selfId, targetId )
		
		--¼ì²âÊ±¼äÐúng·ñÕýÈ·
		if x889052_CheckRightTime() == 0 then
			return 
		end
		
		if GetNumText() == 1 then
			BeginEvent(sceneId)
				AddText(sceneId,"#{TSJH_090224_4}")
				AddNumText(sceneId,x889052_g_ScriptId,"#{TSJH_090224_5}",6,2)
				AddNumText(sceneId,x889052_g_ScriptId,"#{TSJH_090224_6}",11,3)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		elseif GetNumText() == 2 then
			x889052_GiveGift(sceneId, selfId, targetId)
		elseif GetNumText() == 3 then
			BeginEvent(sceneId)
				AddText(sceneId,"#{TSJH_090224_7}")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end

end

--**********************************
--¸øÍæ¼Ò·¢ÓÊ¼þ
--**********************************
function x889052_OnPlayerLogin( sceneId, selfId )
	
	local curDate = x889052_CheckRightTime( )
	if curDate == 1 then
		BroadMsgByChatPipe( sceneId, selfId, "#{TSJH_090224_1}", 4 )
	end
	
end

--**********************************
--¼ì²âÐúng·ñÐúng»î¶¯Ê±¼ä
--**********************************
function x889052_CheckRightTime()
	local curDayTime = GetDayTime()
	if curDayTime >= x889052_g_startTime and curDayTime <= x889052_g_EndTime then
		return 1
	else
		return 0
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x889052_OnEnumerate( sceneId, selfId, targetId )

		if x889052_CheckRightTime() == 0 then
			return 
		end
		
		AddNumText(sceneId, x889052_g_ScriptId, "#{TSJH_090224_3}", 1, 1)
end

function x889052_GiveGift(sceneId, selfId, targetId)

	--Ðúng·ñ²Î¼Ó¹ý¸Ã»î¶¯
	local bHave = GetMissionFlag(sceneId, selfId, MF_TW_SCHOOLUNIFORM_JOIN)
	if (bHave ==1) then
		
		x889052_NotifyFailBox(sceneId, selfId,targetId,"#{TSJH_090224_8}")
		return
	end
	
	--Ô ðÕo cø ðã ð¥y¸Ðúng·ñ×ã¹»  
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
			x889052_NotifyFailBox(sceneId, selfId,targetId,"#{TSJH_090224_9}")
			return
	end
	
	--¸ù¾ÝµÈc¤p ðÕt ðßþcÀñÆ·
	if GetLevel( sceneId, selfId ) >50 then
			--¸øÍæ¼Ò¶«Î÷,Íê³É
			BeginAddItem( sceneId )
				local nIndex = AddItem( sceneId, 30504065, 1 )
			local ret = EndAddItem( sceneId, selfId )
			if ret <= 0 then 
				return
			end
			AddItemListToHuman(sceneId,selfId)
			--ÐÑÄ¿ÌáÊ¾
			x889052_NotifySucessBox(sceneId,selfId,"#{TSJH_090224_11}")
	else
		--¸øÍæ¼Ò¶«Î÷,Íê³É
			BeginAddItem( sceneId )
				local nIndex = AddItem( sceneId, 30504059, 1 )
			local ret = EndAddItem( sceneId, selfId )
			if ret <= 0 then 
				return
			end
			AddItemListToHuman(sceneId,selfId)
			--ÐÑÄ¿ÌáÊ¾
			x889052_NotifySucessBox(sceneId,selfId,"#{TSJH_090224_10}")
	end
	
	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 1000 )
	SetMissionFlag(sceneId, selfId, MF_TW_SCHOOLUNIFORM_JOIN, 1)
	
	--Í³¼ÆÈÕÖ¾
	AuditGetSChoolUniform(sceneId, selfId,GetLevel(sceneId, selfId),LuaFnGetSex(sceneId,selfId))
	
end

--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x889052_NotifySucessBox( sceneId, selfId,msg )
	--ÐÑÄ¿ÌáÊ¾
		BeginEvent(sceneId) 
			AddText( sceneId,msg)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
end


--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x889052_NotifyFailBox( sceneId, selfId,targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x889052_CheckAccept( sceneId, selfId )
end

--**********************************
--Tiªp thø
--**********************************
function x889052_OnAccept( sceneId, selfId )
end

--**********************************
--·ÅÆú
--**********************************
function x889052_OnAbandon( sceneId, selfId )
end

--**********************************
--¼ÌÐø
--**********************************
function x889052_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x889052_CheckSubmit( sceneId, selfId )
end

--**********************************
--Ìá½»
--**********************************
function x889052_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x889052_OnKillObject( sceneId, selfId, objdataId ,objId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x889052_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x889052_OnItemChanged( sceneId, selfId, itemdataId )
end

---------------------------------------------------
--Name£º	2008 5.1»î¶¯½Å±¾ Ö® Ç©ÃûÅÆ¶Ò»»
--Author£º	Áõ¶Ü
--Date£º	2008-04-15
---------------------------------------------------

--½Å±¾ºÅ
x808091_g_ScriptId = 808091

--ÁìÈ¡ÉùÒôĞ§¹ûID

--GlobalLaborDayActivityTable = {
--	PetCageCardID					= 40004446,
--	PetCageLv1 						= 30509500,
--	PetCageDelayBuff 				= 30187,
--	PetCagePresentStartTime 		= 20080415, --¶Ò»»ÊŞÀ¸¿ªÊ¼Ê±¼ä
--	PetCagePresentEndTime 			= 20080417, --¶Ò»»ÊŞÀ¸½áÊøÊ±¼ä
--	CardPresentStartTime 			= 20080417,	--Ç©ÃûÅÆ¿ªÊ¼¶Ò»»Ê±¼ä
--	CardPresentEndTime 				= 20080417,	--Ç©ÃûÅÆ½áÊø¶Ò»»Ê±¼ä
--	MailStartDayTime 				= 20080415,	--·¢ËÍÓÊ¼ş¿ªÊ¼Ê±¼ä
--	MailEndDayTime 					= 20080418	--·¢ËÍÓÊ¼ş½áÊøÊ±¼ä
--}

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x808091_OnDefaultEvent( sceneId, selfId, targetId )

	local ItemID = GetNumText()
	if(ItemID == 808091001) then
		BeginEvent(sceneId)
			AddText(sceneId, "#{SL_20080416_06}")
			AddNumText( sceneId, x808091_g_ScriptId, "Ta mu¯n tham gia", 6, 808091003 )
			AddNumText( sceneId, x808091_g_ScriptId, "Hay là thôi ği", 13, 808091004 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	--»î¶¯°ïÖú
	elseif(ItemID == 808091002) then
		BeginEvent(sceneId)
			AddText(sceneId,"#{SL_20080416_11}")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)

	elseif(ItemID == 808091003) then
	
		local condition = x808091_CheckActivityCondition(sceneId, selfId)
		
		--·¢·Å¶Ò»»Ç©ÃûÅÆ£¬²¢¸øÒ»¸ö50·ÖÖÓµÄbuf
		if condition == 0 then
			local is_suc = x808091_PresentPetCageCard(sceneId, selfId, targetId)
			if(is_suc == 1) then
				BeginEvent(sceneId)
					AddText(sceneId, "#{SL_20080416_10}")
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
			end

		--¶Ò»»Ç©ÃûÅÆµÄÊ±¼äÒÑ¾­¹ıÁË
		elseif(condition == 1) then
			BeginEvent(sceneId)
				AddText(sceneId, "Xin l²i, hoÕt ğµng sß môn l­ v§t ğã kªt thúc ğ±i kí tên bài")
			EndEvent(sceneId)
			DispatchEventList(sceneId, selfId, targetId)
			
		--ÒÑ¾­²Î¼Ó¹ı¶Ò»»Ç©ÃûÅÆµÄ»î¶¯ÁË, ²¢ÇÒÒÑ¾­¶Ò»»ÁËÊŞÀ¸
		elseif(condition == 2) then
			BeginEvent(sceneId)
				AddText(sceneId, "#{SL_20080416_09}")
			EndEvent(sceneId)
			DispatchEventList(sceneId, selfId, targetId)
	
		--ÒÑ¾­²Î¼Ó£¬²¢ÇÒÉíÉÏ»¹´ø×ÅÇ©ÃûÅÆ
		elseif(condition == 3) then
			BeginEvent(sceneId)
				AddText(sceneId, "#{SL_20080416_08}")
			EndEvent(sceneId)
			DispatchEventList(sceneId, selfId, targetId)
				
		--Äã»¹Ã»ÓĞ¼ÓÈëÃÅÅÉÄØ
		elseif(condition == 4) then
			BeginEvent(sceneId)
				AddText(sceneId, "#{SL_20080416_07}")
			EndEvent(sceneId)
			DispatchEventList(sceneId, selfId, targetId)	
		end

	elseif(ItemID == 808091004) then
		--¹Ø±Õ½çÃæ
		DispatchUICommand(sceneId, selfId, 1000)
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x808091_OnEnumerate( sceneId, selfId, targetId )
	if (x808091_IsActivityTimeOut() == 0) then
		AddNumText( sceneId, x808091_g_ScriptId, "Tham gia sñ ki®n sß môn t£ng l­", 6, 808091001 )
		AddNumText( sceneId, x808091_g_ScriptId, "V« sñ ki®n sß môn t£ng l­", 11, 808091002 )
	end
end

--**********************************
--¼ì²â²ÎÓë»î¶¯µÄÇé¿ö
--**********************************
function x808091_CheckActivityCondition(sceneId, selfId)
	--¶Ò»»Ç©ÃûÅÆµÄÊ±¼äÒÑ¾­¹ıÁË
	if (x808091_IsActivityTimeOut() == 1) then
		return 1
	end
		
	--ÒÑ¾­¶Ò»»¹ıÊŞÀ¸ÁË
	local flag = GetMissionFlag(sceneId, selfId, MF_LABORDAY_PETCAGE_GIFT)
	if(flag > 0) then
		return 2
	end
	
	--ÉíÉÏ»¹´ø×ÅÇ©ÃûÅÆ
	local card_count = GetItemCount(sceneId, selfId, GlobalLaborDayActivityTable.PetCageCardID)
	if (card_count >= 1) then
		return 3
	end
	
	--Äã»¹Ã»ÓĞ¼ÓÈëÃÅÅÉÄØ
	local mp_id = GetMenPai(sceneId, selfId)
	if (mp_id == 9) then
		return 4
	end
		
	return 0
end

--**********************************
--¼ì²âÔùËÍ¶Ò»»ÅÆµÄÇé¿ö
--**********************************
function x808091_CheckPresentCardCondition(sceneId, selfId)
	--¼ì²âÈÎÎñ±³°üÊÇ·ñÓĞµØ·½
	if (LuaFnGetTaskItemBagSpace( sceneId, selfId ) < 1 ) then
		return 1
	end	
	return 0
end

--**********************************
--¼ì²âÌí¼ÓBuffµÄÇé¿ö
--**********************************
function x808091_CheckBuffCondition(sceneId, selfId)
	return 0
end


--**********************************
--¼ì²â»î¶¯ÊÇ·ñ¹ıÆÚ
--**********************************
function x808091_IsActivityTimeOut( )
	local curDayTime = GetTime2Day()
	if (curDayTime < GlobalLaborDayActivityTable.CardPresentStartTime) then 
		return 1
	
	elseif (curDayTime > GlobalLaborDayActivityTable.CardPresentEndTime) then
		return 1
	end
	return 0
end

--**********************************
--¼ì²âÓÊ¼şÍ¨ÖªÊ±¼äÊÇ·ñ¹ıÆÚ
--**********************************
function x808091_IsMailTimeOut( )
	local curDayTime = GetTime2Day()
	if (curDayTime < GlobalLaborDayActivityTable.MailStartDayTime) then
		return 1
	elseif (curDayTime > GlobalLaborDayActivityTable.MailEndDayTime) then
		return 1
	end
	return 0
end

--**********************************
--ÔùËÍ¶Ò»»ÅÆ£¬¼Óbuff
--**********************************
function x808091_PresentPetCageCard(sceneId, selfId, targetId)

	local present_card_condition = x808091_CheckPresentCardCondition(sceneId, selfId)

	--¿ÉÒÔÌí¼Ó¶Ò»»ÅÆ
	if (present_card_condition == 0) then
		--·¢·ÅÒ»¸ö"»î¶¯¶Ò½±ÅÆ"
		BeginAddItem(sceneId)
			AddItem(sceneId, GlobalLaborDayActivityTable.PetCageCardID, 1)
		EndAddItem(sceneId, selfId)
		AddItemListToHuman(sceneId, selfId)--¼ÓÎïÆ·¸øÍæ¼Ò
		
		--¹«¸æÍæ¼Ò×Ô¼º
		BroadMsgByChatPipe( sceneId, selfId, "Ngß½i ğÕt ğßşc mµt cái thú lan l­ v§t kí tên bài", MSG2PLAYER_PARA )	
		
		--ĞÑÄ¿ÌáÊ¾
		BeginEvent( sceneId )
			AddText( sceneId, "Ngß½i ğÕt ğßşc mµt cái thú lan l­ v§t kí tên bài." )
		EndEvent( sceneId )
		DispatchMissionTips( sceneId, selfId )
		
		--Ìí¼Ó50·ÖÖÓµÄÌØĞ§
		x808091_PresentPetCageBuffer(sceneId, selfId)
		return 1
	
	--ÈÎÎñÎïÆ·±³°ü¿Õ¼ä²»×ã
	elseif(present_card_condition == 1) then		
		BeginEvent(sceneId)
			AddText(sceneId, "Ô nhi®m vø ğã ğ¥y, mong hãy s¡p xªp lÕi")
		EndEvent(sceneId)
		DispatchMissionTips( sceneId, selfId )
		return 0
	end
	
end

--**********************************
--¸øÍæ¼ÒÌí¼Ó¶Ò»»Buff
--**********************************
function x808091_PresentPetCageBuffer(sceneId, selfId)
	LuaFnCancelSpecificImpact( sceneId, selfId, GlobalLaborDayActivityTable.PetCageDelayBuff )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, GlobalLaborDayActivityTable.PetCageDelayBuff, 100 )
end

--**********************************
--¸øĞÂÍæ¼Ò·¢ÓÊ¼ş
--**********************************
function x808091_OnPlayerLogin( sceneId, selfId )
	if ( x808091_IsMailTimeOut() == 0 ) then
		local flag = GetMissionFlag(sceneId, selfId, MF_LABORDAY_PETCAGE_MAIL)
		if (flag == 0) then
			LuaFnSendSystemMail( sceneId, GetName( sceneId, selfId ), "#{SL_20080416_01}" )
			SetMissionFlag(sceneId, selfId, MF_LABORDAY_PETCAGE_MAIL, 1)
		end
	end
end

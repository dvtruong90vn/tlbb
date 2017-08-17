--------------------------------------------
--Title: 	2008 5.1»î¶¯½Å±¾ Ö® ÊÞÀ¸ÔùËÍ
--Author: 	Áõ¶Ü
--Date: 	2008-04-15
--------------------------------------------

--½Å±¾ºÅ
x808092_g_ScriptId = 808092

--sceneId List
--9		Thiªu LâmËÂ
--10	Cái Bang×Ü¶æ
--11	¹âÃ÷µî
--12	Võ ÐangÉ½
--13	Thiên LongËÂ
--14	Áè²¨¶´
--15	Nga MyÉ½
--16	Tinh Túcº£
--17	Thiên S½n

--MenPaiId List
--0		Thiªu Lâm
--1		Minh Giáo
--2		Cái Bang
--3		Võ Ðang
--4		Nga My
--5		Tinh Túc
--6		ÐÕi Lý
--7		Thiên S½n
--8		Tiêu Dao
--9		±ê×¼

--GlobalLaborDayActivityTable = {
--	PetCageCardID					= 40004446,
--	PetCageLv1 						= 30509500,
--	PetCageDelayBuff 				= 30187,
--	PetCagePresentStartTime 		= 20080415, --¶mµt »ÊÞÀ¸¿ªÊ¼Ê±¼ä
--	PetCagePresentEndTime 			= 20080417, --¶mµt »ÊÞÀ¸½áÊøÊ±¼ä
--	CardPresentStartTime 			= 20080417,	--Ç©ÃûÅÆ¿ªÊc¤pmµt »Ê±¼ä
--	CardPresentEndTime 				= 20080417,	--Ç©ÃûÅÆ½áÊø¶mµt »Ê±¼ä
--	MailStartDayTime 				= 20080415,	--·¢ËÍÓÊ¼þ¿ªÊ¼Ê±¼ä
--	MailEndDayTime 					= 20080418	--·¢ËÍÓÊ¼þ½áÊøÊ±¼ä
--}

function x808092_Scene2MenPaiID( sceneId )
	if (sceneId == 9) then
		return 0
	elseif (sceneId == 10) then
		return 2
	elseif (sceneId == 11) then
		return 1
	elseif (sceneId == 12) then
		return 3
	elseif (sceneId == 13) then
		return 6
	elseif (sceneId == 14) then
		return 8
	elseif (sceneId == 15) then
		return 4
	elseif (sceneId == 16) then
		return 5
	elseif (sceneId == 17) then
		return 7
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x808092_OnDefaultEvent( sceneId, selfId, targetId )
	local ItemID = GetNumText()	
	if(ItemID == 808092000) then
		BeginEvent(sceneId)
			AddText(sceneId, "#{SL_20080416_12}")
			AddNumText( sceneId, x808092_g_ScriptId, "Ta mu¯n lînh thú lan", 6, 808092002 )
			AddNumText( sceneId, x808092_g_ScriptId, "Hay là thôi ði", 11, 808092003 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif(ItemID == 808092001) then
		BeginEvent(sceneId)
			AddText(sceneId,"#{SL_20080416_11}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif(ItemID == 808092002) then
		--¶mµt »ÊÞÀ¸
		local condition = x808092_CheckActivityCondition(sceneId, selfId, targetId)
		
		if (condition == 0) then
			if(x808092_PresentPetCage(sceneId, selfId) == 1) then
				--AuditPetCageActivity(sceneId, selfId)
				BeginEvent(sceneId)
					AddText(sceneId, "#{SL_20080416_19}")
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
				x808092_PresentPetCageBuffer(sceneId, selfId)
				SetMissionFlag(sceneId, selfId, MF_LABORDAY_PETCAGE_GIFT, 1)
				AuditPetCagePresent(sceneId, selfId)
			end
			
		--Lînh ÊÞÀ¸toÕ ðµ Ê±¼äÒÑ¾­¹ýÁË
		elseif (condition == 1) then
			BeginEvent(sceneId)
				AddText(sceneId, "#{SL_20080416_14}")
			EndEvent(sceneId)
			DispatchEventList(sceneId, selfId, targetId)

		--ÒÑ¾­¶mµt »¹ýÊÞÀ¸ÁË
		elseif(condition == 2) then
			BeginEvent(sceneId)
				AddText(sceneId, "#{SL_20080416_16}")
			EndEvent(sceneId)
			DispatchEventList(sceneId, selfId, targetId)

		--Ã»ÓÐÇ©ÃûÅÆ
		elseif(condition == 3) then
			BeginEvent(sceneId)
				AddText(sceneId, "#{SL_20080416_13}")
			EndEvent(sceneId)
			DispatchEventList(sceneId, selfId, targetId)

		--·Ç±¾ÃÅµÜ×Ó
		elseif(condition == 4) then
			BeginEvent(sceneId)
				AddText(sceneId, "#{SL_20080416_15}")
			EndEvent(sceneId)
			DispatchEventList(sceneId, selfId, targetId)
			
		--ÌØÐ§»¹Î´ÏûÊ§
		elseif(condition == 5) then
			BeginEvent(sceneId)
				AddText(sceneId, "#{SL_20080416_17}")
			EndEvent(sceneId)
			DispatchEventList(sceneId, selfId, targetId)
		end
		
	elseif(ItemID == 808092003) then
		--¹Ø±Õ½çÃæ
		DispatchUICommand(sceneId, selfId, 1000)
	end	
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x808092_OnEnumerate( sceneId, selfId, targetId )
	if (x808092_IsActivityTimeOut() == 0) then
		AddNumText(sceneId, x808092_g_ScriptId, "Tham gia sñ ki®n sß môn t£ng l­", 1, 808092000 )
		AddNumText(sceneId, x808092_g_ScriptId, "V« sñ ki®n sß môn t£ng l­", 11, 808092001 )	
	end
end

--**********************************
--¼ì²â»î¶¯Ðúng·ñ¹ýÆÚ
--**********************************
function x808092_IsActivityTimeOut( )
	local curDayTime = GetTime2Day()
	if (curDayTime < GlobalLaborDayActivityTable.PetCagePresentStartTime) then 
		return 1
	
	elseif (curDayTime > GlobalLaborDayActivityTable.PetCagePresentEndTime) then
		return 1
	end
	return 0
end

--**********************************
--Lînh ÊÞÀ¸
--**********************************
function x808092_PresentPetCage(sceneId, selfId, targetId)	
	--µÀ¾ß±³°üÒÑÂú
	local condition = x808092_CheckPresentCageCondition(sceneId, selfId)
	if (condition == 0) then
		--ÏÈÉ¾³ý,ÔÙÌí¼Ó
		LuaFnDelAvailableItem(sceneId, selfId, GlobalLaborDayActivityTable.PetCageCardID, 1)

		--ËÍÊÞÀ¸²¢°ó¶¨....
		local bagIndex = TryRecieveItem( sceneId, selfId, GlobalLaborDayActivityTable.PetCageLv1, QUALITY_MUST_BE_CHANGE )
		if bagIndex > 0 then
			LuaFnItemBind( sceneId, selfId, bagIndex)
		end

		--¹«¸æÍæ¼Ò×Ô¼º
		BroadMsgByChatPipe( sceneId, selfId, "Ngß½i thành công ð±i mµt cái thú lan c¤p 1", MSG2PLAYER_PARA )	
		
		--ÐÑÄ¿ÌáÊ¾
		BeginEvent( sceneId )
			AddText( sceneId, "Ngß½i thành công ð±i mµt cái thú lan c¤p 1" )
		EndEvent( sceneId )
		DispatchMissionTips( sceneId, selfId )
		
		x808092_PresentPetCageBuffer(sceneId, selfId)
		return 1
	elseif (condition == 1) then
		BeginEvent(sceneId)
			AddText(sceneId, "Ô ðÕo cø ðã ð¥y, xin hãy s¡p xªp lÕi")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
		return 0
	end
	return 0
	
end


--**********************************
--¼ì²â²ÎÓë»î¶¯toÕ ðµ Çé¿ö
--**********************************
function x808092_CheckActivityCondition(sceneId, selfId)
	--Lînh ÊÞÀ¸toÕ ðµ Ê±¼äÒÑ¾­¹ýÁË
	if (x808092_IsActivityTimeOut() == 1) then
		return 1
	end

	--ÒÑ¾­¶mµt »¹ýÊÞÀ¸ÁË
	local flag = GetMissionFlag(sceneId, selfId, MF_LABORDAY_PETCAGE_GIFT)
	if(flag > 0) then
		return 2
	end

	--Ã»ÓÐÇ©ÃûÅÆ
	local card_count = GetItemCount( sceneId, selfId, GlobalLaborDayActivityTable.PetCageCardID )
	if (card_count < 1) then
		return 3
	end

	--·Ç±¾ÃÅµÜ×Ó
	local menpaiId = GetMenPai(sceneId, selfId)
	local curSceneMenPaiId = x808092_Scene2MenPaiID(sceneId)
	if ( menpaiId ~= curSceneMenPaiId ) then
		return 4
	end
	
	--ÌØÐ§»¹Î´ÏûÊ§
	local hasImapct = LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, GlobalLaborDayActivityTable.PetCageDelayBuff)
	if ( hasImapct > 0 ) then
		return 5
	end

	return 0
end

--**********************************
--¼ì²âTiªp thøÊÞÀ¸ÎïÆ·Çé¿ö
--**********************************
function x808092_CheckPresentCageCondition(sceneId, selfId)
	--µÀ¾ß°ü¹üÒÑ¾­ÂúÁË
	if (LuaFnGetPropertyBagSpace(sceneId, selfId) < 1) then
		return 1
	end
	return 0
end

--**********************************
--Ìí¼ÓLînh ³É¹¦toÕ ðµ Ð§¹û
--**********************************
function x808092_PresentPetCageBuffer(sceneId, selfId)
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 49, 0 )
end

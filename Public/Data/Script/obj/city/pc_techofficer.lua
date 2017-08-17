--³ÇÊÐNPC
--¿Æ¼¼¹ÙÔ±

x805015_g_scriptId = 805015
x805015_g_BuildingID9 = 13

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x805015_g_eventList = { 600012 }

-- ÈÎÎñ¼¯ÊÂ¼þ ID ÁÐ±í£¬ÕâÀàÊÂ¼þ°üº¬×ÓÊÂ¼þ
x805015_g_eventSetList = { 600012 }

--ÁìÈ¡ÌÌ½ðÃûÌûÐèÒªµÄ°ï¹±µãÊý	--add by xindefeng
x805015_g_MingTieNeedBangGong = 50
--ÌÌ½ðÃûÌûID	--add by xindefeng
x805015_g_TangJinMingTieID = 30505205
--Ã¿´Î¿ÉÒÔÁìÈ¡ÌÌ½ðÃûÌûÊýÁ¿
x805015_g_TangJinMingTieCount = 1

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x805015_UpdateEventList( sceneId, selfId, targetId )
	local i = 1
	local eventId = 0
	
	local Humanguildid 	= GetHumanGuildID(sceneId,selfId)
	local cityguildid 	= GetCityGuildID(sceneId, selfId, sceneId)

	BeginEvent( sceneId )
		if Humanguildid == cityguildid then
			AddText( sceneId, "HÑng thú cüa Mãn Thành, ð«u t§p trung vào kÛ ngh® uyên thâm, chúng ta là huynh ð® cùng bang, có gì c¥n ta giúp, mau nói ði." )
			for i, eventId in x805015_g_eventList do
				CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
			end
			AddNumText( sceneId, x805015_g_scriptId, "Gi¾i thi®u nhi®m vø khoa h÷c kÛ thu§t", 11, 1 )
			--AddNumText( sceneId, x805015_g_scriptId, "ÐÞ¸Ä°ï»á³ÆºÅ", 6, 3 )	--ÍõÒ»´¨ÒªÇó¸Éµô--del by xindefeng
			AddNumText( sceneId, x805015_g_scriptId, "Nghiên cÑu thß½ng ph¦m m¾i", 6, 4 )
			AddNumText( sceneId, x805015_g_scriptId, "Ðúc tßþng thành th¸", 6, 5 )
			AddNumText( sceneId, x805015_g_scriptId, "Sáng chª bang huy cho bang hµi", 6, 6 )
			AddNumText( sceneId, x805015_g_scriptId, "Gi¾i thi®u thß phòng", 11, 2 )
			AddNumText( sceneId, x805015_g_scriptId, "Lînh Nång Kim danh thiªp", 6, 20 )	--add by xindefeng
			AddNumText( sceneId, x805015_g_scriptId, "V« lînh bang hµi tñ ðính danh hi®u", 11, 22 )	--add by xindefeng
		
			--life Ìí¼ÓÕâ¸ö½¨ÖþÎïµÄÏàÓ¦Éú»î¼¼ÄÜÑ¡Ïî
			CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "AddCityLifeAbilityOpt",sceneId, selfId, x805015_g_scriptId,x805015_g_BuildingID9,888)
		else
			local PlayerGender = GetSex( sceneId, selfId )
			local rank

			if PlayerGender == 0 then
				rank = " Hi®p næ "
			elseif PlayerGender == 1 then
				rank = " ÐÕi hi®p "
			else
				rank = " Xin höi "
			end

			AddText( sceneId, "A!" .. rank .. "không gi¯ng nhß ngß¶i trong b±n bang, ti¬u sinh không ti®n nói nhi«u cái ðó." )
		end
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x805015_OnDefaultEvent( sceneId, selfId, targetId )
	x805015_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
-- ÅÐ¶ÏÄ³¸öÊÂ¼þÊÇ·ñ¿ÉÒÔÍ¨¹ý´Ë NPC Ö´ÐÐ
--**********************************
function x805015_IsValidEvent( sceneId, selfId, eventId )
	local i = 1
	local findId = 0
	local bValid = 0

	for i, findId in x805015_g_eventList do
		if eventId == findId then
			bValid = 1
			break
		end
	end

	if bValid == 0 then
		for i, findId in x805015_g_eventSetList do
			if CallScriptFunction( findId, "IsInEventList", sceneId, selfId, eventId ) == 1 then
				bValid = 1
				break
			end
		end
	end

	return bValid
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x805015_OnEventRequest( sceneId, selfId, targetId, eventId )
	if x805015_IsValidEvent( sceneId, selfId, eventId ) == 1 then
		CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
		return
	--life ´¦ÀíÕâ¸ö½¨ÖþÎïµÄÏàÓ¦Éú»î¼¼ÄÜÑ¡Ïî
	elseif eventId ~= x805015_g_scriptId then
		CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnDefaultEvent",sceneId, selfId, targetId, eventId, x805015_g_scriptId, x805015_g_BuildingID9 )
		return
	end
	if GetNumText() == 1 then
		BeginEvent(sceneId)
		AddText( sceneId, "#{City_Tec_Mission_Help}" )		
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 2 then
		BeginEvent(sceneId)
		AddText( sceneId, "#{City_Intro_ShuFang}" )		
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )

	--elseif GetNumText() == 3 then--ÍõÒ»´¨ÒªÇó¸Éµô--del by xindefeng
	--	BeginEvent(sceneId)
	--	AddText( sceneId, "ChÑc nång này s¡p ðßþc thñc hi®n" )		
	--	EndEvent(sceneId)
	--	DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 4 then
		BeginEvent(sceneId)
		AddText( sceneId, "ChÑc nång này s¡p ðßþc thñc hi®n" )		
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 5 then
		BeginEvent(sceneId)
		AddText( sceneId, "ChÑc nång này s¡p ðßþc thñc hi®n" )		
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 6 then
		BeginEvent(sceneId)
		AddText( sceneId, "ChÑc nång này s¡p ðßþc thñc hi®n" )		
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 20 then																--ÁìÈ¡ÌÌ½ðÃûÌû	--add by xindefeng
		-- ¼ÓÈëÈ·ÈÏÒ³Ãæ			add by WTT
		BeginEvent(sceneId)
			-- ÁìÈ¡ÌÌ½ðÃûÌûÐèÒªÏûºÄ50µã°ï»á¹±Ï×¶È¡£ÄãÈ·¶¨ÒªÁìÈ¡Âð£¿
			AddText( sceneId, "#{TJMT_090213_01}" )
			--È·¶¨¶Ò»»°´Å¥
			AddNumText(sceneId, x805015_g_scriptId, "Ðúng, ta xác nh§n", 6, 201)				
			--·µ»ØÉÏÒ»Ò³°´Å¥
			AddNumText(sceneId, x805015_g_scriptId, "Không, t× bö", 6, 202)		
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 201 then																-- È·ÈÏÁìÈ¡ÌÌ½ðÃûÌû		add by WTT
		x805015_GetTangJinMinTie(sceneId, selfId, targetId)

	elseif GetNumText() == 202 then																-- ·ÅÆúÁìÈ¡ÌÌ½ðÃûÌû		add by WTT
		BeginEvent( sceneId )
			x805015_OnDefaultEvent( sceneId, selfId, targetId )				-- ·µ»ØÉÏÒ»Ò³
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
	elseif GetNumText() == 22 then	--¹ØÓÚÁìÈ¡°ï»á×Ô¶¨Òå³ÆºÅ	--add by xindefeng
		BeginEvent(sceneId)
			AddText( sceneId, "#{TangJinMingTie_Help}")
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 888 then
		BeginEvent(sceneId)
		--life Ìí¼ÓÕâ¸ö½¨ÖþÎïµÄÏàÓ¦Éú»î¼¼ÄÜÑ¡Ïî
		CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnEnumerate",sceneId, selfId, targetId, x805015_g_BuildingID9 )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x805015_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	if x805015_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		local ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
		if ret > 0 then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
		elseif ret == -1 then
			x805015_NotifyFailTips( sceneId, selfId, "Ngß½i hi®n không th¬ nh§n nhi®m vø này" )
		elseif ret == -2 then
			x805015_NotifyFailTips( sceneId, selfId, "Không th¬ tiªp nh§n nhi«u nhi®m vø" )
		end

		return
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x805015_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	if x805015_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		x805015_UpdateEventList( sceneId, selfId, targetId )
		return
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x805015_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	if x805015_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
		return
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x805015_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	if x805015_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
		return
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x805015_OnDie( sceneId, selfId, killerId )
end

function x805015_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--ÁìÈ¡ÌÌ½ðÃûÌû	--add by xindefeng
--**********************************
function x805015_GetTangJinMinTie(sceneId, selfId, targetId)
	--¼ì²â°ï¹±
	local szMsg = nil
	local nBangGongPoint = CityGetAttr(sceneId, selfId, GUILD_CONTRIB_POINT)	--»ñÈ¡°ï¹±ÊýÁ¿
  if nBangGongPoint < x805015_g_MingTieNeedBangGong then
  	szMsg = format("Ði¬m c¯ng hiªn không ðü #G%d#W. Không th¬ ð±i ðßþc danh hi®u này.", x805015_g_MingTieNeedBangGong)
  	x805015_NotifyFailTips( sceneId, selfId, szMsg)
  	return
  end
  	
  --¼ì²â±³°üÊÇ·ñÓÐµØ·½
	if (LuaFnGetPropertyBagSpace( sceneId, selfId ) < x805015_g_TangJinMingTieCount) then
		--ÐÑÄ¿ÌáÊ¾"¿Õ¼ä²»×ã"
		x805015_NotifyFailTips(sceneId, selfId, "#{YRJ_BagFullTip}")
		return
	end	
	
	--Ìõ¼þÍ¨¹ý
	
	--É¾³ý°ï¹±
  local ret = CityChangeAttr(sceneId, selfId, 6, -x805015_g_MingTieNeedBangGong)
	if not ret or ret ~= 1 then		
		x805015_NotifyFailTips(sceneId, selfId, "Không th¬ kh¤u tr× Bang c¯ng!")	--ÐÑÄ¿ÌáÊ¾"ÎÞ·¨É¾³ý°ï¹±"
		return
	end
	
	--·¢·ÅÒ»¸ö"ÌÌ½ðÃûÌû"
	BeginAddItem(sceneId)
		AddItem(sceneId, x805015_g_TangJinMingTieID, x805015_g_TangJinMingTieCount)
	EndAddItem(sceneId, selfId)
	AddItemListToHuman(sceneId, selfId)--¼ÓÎïÆ·¸øÍæ¼Ò
	
	--ÍêÊÂÁË,ÐÂ½çÃæ:ÄúÊÕºÃ:)
	BeginEvent( sceneId )
		AddText( sceneId, "Ðây là #GThi®p vàng#W, c¥m l¤y và sØ døng t¯t!" )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

-- ¡ÏΩ±NPC

x002084_g_scriptId = 002084

x002084_g_PrimaryAward = 1
x002084_g_Award2 = 2
x002084_g_Award3 = 3

x002084_g_Intro = 4

x002084_g_NewCard1 = 5
x002084_g_NewCard2 = 6
x002084_g_NewCard3 = 7
x002084_g_NewCard4 = 10
x002084_g_NewCard5 = 11
x002084_g_NewCard6 = 12
x002084_g_NewCard7 = 13
x002084_g_NewCard8 = 14

x002084_g_NewCardIntro = 9
x002084_g_VirtualNew = 30505080


--≤∆∏ªø®
x002084_g_NewCardList = {}
x002084_g_NewCardList[x002084_g_NewCard1] = {
	needLevel = 10,
	itemAward = { hashTable = {}, itemList = {} },
	moneyReward = 100,
	PropBagSpaceNeed = 0,
	MatBagSpaceNeed = 0,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetNewUserCard0,
	redundantMsg = "NgﬂΩi „ nhßn ph•n thﬂ∑ng c§p ph•n thﬂ∑ng c§p 10. –™n c§p 30 l’i ™n tÏm ta.",
	recvMsg = "Ch˙c m◊ng ngﬂΩi nhßn ﬂ˛c #G100 NguyÍn B‰o.",
}
x002084_g_NewCardList[x002084_g_NewCard2] = {
	needLevel = 30,
	itemAward = { hashTable = {}, itemList = {} },
	moneyReward = 500,
	PropBagSpaceNeed = 0,
	MatBagSpaceNeed = 0,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetNewUserCard1,
	redundantMsg = "NgﬂΩi „ nhßn ph•n thﬂ∑ng c§p 30. –™n c§p 50 l’i ™n tÏm ta.",
	recvMsg = "Ch˙c m◊ng ngﬂΩi nhßn ﬂ˛c #G500 NguyÍn B‰o.",
}
x002084_g_NewCardList[x002084_g_NewCard3] = {
	needLevel = 50,
	itemAward = { hashTable = {}, itemList = {} },
	moneyReward = 6000,
	PropBagSpaceNeed = 0,
	MatBagSpaceNeed = 0,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetNewUserCard2,
	redundantMsg = "NgﬂΩi „ nhßn ph•n thﬂ∑ng c§p 50",
	recvMsg = "Ch˙c m◊ng ngﬂΩi nhßn ﬂ˛c #G1000 NguyÍn B‰o.",
}
x002084_g_NewCardList[x002084_g_NewCard4] = {
	needLevel = 70,
	itemAward = { hashTable = {}, itemList = {} },
	moneyReward = 5000,
	PropBagSpaceNeed = 0,
	MatBagSpaceNeed = 0,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetNewUserCard3,
	redundantMsg = "NgﬂΩi „ nhßn ph•n thﬂ∑ng c§p 70",
	recvMsg = "Ch˙c m◊ng ngﬂΩi nhßn ﬂ˛c #G5000 NguyÍn B‰o.",
}
x002084_g_NewCardList[x002084_g_NewCard5] = {
	needLevel = 90,
	itemAward = { hashTable = {}, itemList = {} },
	moneyReward = 10000,
	PropBagSpaceNeed = 0,
	MatBagSpaceNeed = 0,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetNewUserCard4,
	redundantMsg = "    NgﬂΩi „ nhßn ph•n thﬂ∑ng c§p 90",
	recvMsg = "Ch˙c m◊ng ngﬂΩi nhßn ﬂ˛c #G1 V’n NguyÍn B‰o.",
}
x002084_g_NewCardList[x002084_g_NewCard6] = {
	needLevel = 100,
	itemAward = { hashTable = {}, itemList = {} },
	moneyReward = 50000,
	PropBagSpaceNeed = 0,
	MatBagSpaceNeed = 0,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetNewUserCard5,
	redundantMsg = "    NgﬂΩi „ nhßn ph•n thﬂ∑ng c§p 100",
	recvMsg = "Ch˙c m◊ng ngﬂΩi nhßn ﬂ˛c #G5 V’n NguyÍn B‰o.",
}
x002084_g_NewCardList[x002084_g_NewCard7] = {
	needLevel = 110,
	itemAward = { hashTable = {}, itemList = {} },
	moneyReward = 100000,
	PropBagSpaceNeed = 0,
	MatBagSpaceNeed = 0,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetNewUserCard6,
	redundantMsg = "    NgﬂΩi „ nhßn ph•n thﬂ∑ng c§p 110",
	recvMsg = "Ch˙c m◊ng ngﬂΩi nhßn ﬂ˛c #G10 V’n NguyÍn B‰o.",
}
x002084_g_NewCardList[x002084_g_NewCard8] = {
	needLevel = 149,
	itemAward = { hashTable = {}, itemList = {} },
	moneyReward = 400000,
	PropBagSpaceNeed = 0,
	MatBagSpaceNeed = 0,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetNewUserCard7,
	redundantMsg = "    NgﬂΩi „ nhßn ph•n thﬂ∑ng c§p 149",
	recvMsg = "Ch˙c m◊ng ngﬂΩi nhßn ﬂ˛c #G40 V’n NguyÍn B‰o.",
}

--**********************************
-- ¬º˛Ωªª•»Îø⁄
--**********************************
function x002084_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		strText = "Hoan nghÍnh c·c h’ ™n væi ThiÍn Long B·t Bµ. MuØn lÓnh nhßn NguyÍn B‰o khÙng?"
		AddText( sceneId, strText )

		AddNumText( sceneId, x002084_g_scriptId, "KÌch ho’t thÎ T‡i Ph˙", 2, 101 )

	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--≤∆∏ªø®
function x002084_AddNewUserCardNumText(sceneId, selfId, targetId)
	local eventNum = 0
	BeginEvent( sceneId )
		if GetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "NguyÍn B‰o", 2, 8 )
			 eventNum = eventNum + 1
		end

		if GetMissionFlag( sceneId, selfId, x002084_g_NewCardList[x002084_g_NewCard1].flagBit ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "Nhßn ph•n thﬂ∑ng T‚n Th¸", 2, x002084_g_NewCard1 )
			 eventNum = eventNum + 1
		end

		if GetMissionFlag( sceneId, selfId, x002084_g_NewCardList[x002084_g_NewCard2].flagBit ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "Nhßn " .. x002084_g_NewCardList[x002084_g_NewCard2].needLevel .. "500 NguyÍn B‰o", 2, x002084_g_NewCard2 )
			 eventNum = eventNum + 1
		end

		if GetMissionFlag( sceneId, selfId, x002084_g_NewCardList[x002084_g_NewCard3].flagBit ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "Nhßn " .. x002084_g_NewCardList[x002084_g_NewCard3].needLevel .. "1000 NguyÍn B‰o", 2, x002084_g_NewCard3 )
			 eventNum = eventNum + 1
		end
		
		if GetMissionFlag( sceneId, selfId, x002084_g_NewCardList[x002084_g_NewCard4].flagBit ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "Nhßn " .. x002084_g_NewCardList[x002084_g_NewCard4].needLevel .. "5000 NguyÍn B‰o", 2, x002084_g_NewCard4 )
			 eventNum = eventNum + 1
		end

		if GetMissionFlag( sceneId, selfId, x002084_g_NewCardList[x002084_g_NewCard5].flagBit ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "Nhßn " .. x002084_g_NewCardList[x002084_g_NewCard5].needLevel .. "10000 NguyÍn B‰o", 2, x002084_g_NewCard5 )
			 eventNum = eventNum + 1
		end

		if GetMissionFlag( sceneId, selfId, x002084_g_NewCardList[x002084_g_NewCard6].flagBit ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "Nhßn " .. x002084_g_NewCardList[x002084_g_NewCard6].needLevel .. "50000 NguyÍn B‰o", 2, x002084_g_NewCard6 )
			 eventNum = eventNum + 1
		end

		if GetMissionFlag( sceneId, selfId, x002084_g_NewCardList[x002084_g_NewCard7].flagBit ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "Nhßn " .. x002084_g_NewCardList[x002084_g_NewCard7].needLevel .. "100000 NguyÍn B‰o", 2, x002084_g_NewCard7 )
			 eventNum = eventNum + 1
		end

		if GetMissionFlag( sceneId, selfId, x002084_g_NewCardList[x002084_g_NewCard8].flagBit ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "Nhßn " .. x002084_g_NewCardList[x002084_g_NewCard8].needLevel .. "40V’n NguyÍn B‰o", 2, x002084_g_NewCard8 )
			 eventNum = eventNum + 1
		end

	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	
	if eventNum == 0 then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "NgﬂΩi „ lÓnh thﬂ∑ng." )
	end
end

--**********************************
-- ¬º˛¡–±Ì—°÷–“ªœÓ
--**********************************
function x002084_OnEventRequest( sceneId, selfId, targetId, eventId )


if x002084_g_NewCardIntro == GetNumText() then
		
		BeginEvent( sceneId )
			AddText( sceneId, "#{XinShouKa_Help_001}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 520 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{CHAOJIDALIKA_090112_1}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )			
	end

	if GetNumText() == 8 then
		x002084_CheckNewUserCard(sceneId, selfId, targetId)
	elseif x002084_g_NewCardList[GetNumText()] then
		x002084_GetNewCardPrize( sceneId, selfId, targetId, GetNumText())
	elseif GetNumText() == 101 then
		x002084_AddNewUserCardNumText(sceneId,selfId,targetId)
	elseif GetNumText() == 1000 then
		x002084_UpdateXinFa(sceneId,selfId,targetId)
	end
		
	
end


--**********************************
-- ºÏ≤È ≤∆∏ªø®
--**********************************
function x002084_CheckNewUserCard( sceneId, selfId, targetId )
	
	if GetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard ) == 1 then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "NgﬂΩi „ kÌch ho’t thÎ T‡i Ph˙, khÙng c•n kÌch ho’t l’i" )
		return
	end
	
	-- ≈–∂œ «∑Ò÷±Ω”º§ªÓ≤∆∏ªø®
	-- [ QUFEI 2008-02-29 22:26 UPDATE BugID 32610 ]
	local nIsActive = 0
	nIsActive = IsActiveRichesCard()
	if nIsActive == 1 then
		--≤∆∏ªø®ø™ø®
		SetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard, 1 )
		x002084_NotifyFailBox( sceneId, selfId, targetId, "KÌch ho’t th‡nh cÙng, cÛ th¨ ™n ch≤ ta lÓnh thﬂ∑ng r∞i!" )
		
		return 0
	end
	
	local nItemNum = LuaFnGetAvailableItemCount( sceneId, selfId, x002084_g_VirtualNew )
	if nItemNum > 0 then
		local ret = LuaFnDelAvailableItem( sceneId, selfId, x002084_g_VirtualNew, 1 )
		if ret < 1 then
			return
		end
		--≤∆∏ªø®µƒ–Èƒ‚ø®ø™ø®
		SetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard, 1 )
		x002084_NotifyFailBox( sceneId, selfId, targetId, "KÌch ho’t th‡nh cÙng, cÛ th¨ ™n ch≤ ta lÓnh thﬂ∑ng r∞i!" )
	else
	
		if GetLevel( sceneId, selfId ) > 30 then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "NgﬂΩi c§p µ qu· cao, khÙng th¨ kÌch ho’t" )
		return
		end
	
		--¥Úø™ ‰»Î≤∆∏ªø®ø®∫≈ΩÁ√Ê
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 2004 )
	end

	-- “‘œ¬Œ™≤‚ ‘ π”√
	--SetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard, 1 )
end

--**********************************
-- Õ∆π„‘±œµÕ≥ΩÈ…‹
--**********************************
function x002084_Introduce( sceneId, selfId, targetId )
	x002084_NotifyFailBox( sceneId, selfId, targetId, "ChÔ ﬂ˛c lÓnh thﬂ∑ng mµt l•n. Key n‡y „ lÓnh thﬂ∑ng r∞i." )
end

--**********************************
-- ¡Ï≤∆∏ªø®Ω±∆∑
--**********************************
function x002084_GetNewCardPrize( sceneId, selfId, targetId, grade )
	local awardInfo = x002084_g_NewCardList[grade]
	if not awardInfo then
		return
	end

	if GetMissionFlag( sceneId, selfId, awardInfo.flagBit ) == 1 then
		x002084_NotifyFailBox( sceneId, selfId, targetId, awardInfo.redundantMsg )
		return													-- ¡Ïπ˝¡À
	end

	if GetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard ) ~= 1 then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "NgﬂΩi t’m th∂i khÙng th¨ lÓnh thﬂ∑ng" )
		return
	end

	if GetLevel( sceneId, selfId ) < awardInfo.needLevel then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "NgﬂΩi khÙng ¸ c§p µ." .. awardInfo.needLevel .. " l’i ™n tÏm ta." )
		return
	end

	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < awardInfo.PropBagSpaceNeed then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "T˙i eo thi™u khÙng gian" .. awardInfo.PropBagSpaceNeed .. "∏Ò°£" )
		return
	end

	if LuaFnGetMaterialBagSpace( sceneId, selfId ) < awardInfo.MatBagSpaceNeed then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "T˙i eo thi™u khÙng gian" .. awardInfo.MatBagSpaceNeed .. "∏Ò°£" )
		return
	end

	if LuaFnGetTaskItemBagSpace( sceneId, selfId ) < awardInfo.TaskBagSpaceNeed then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "T˙i eo thi™u khÙng gian" .. awardInfo.TaskBagSpaceNeed .. "∏Ò°£" )
		return
	end
	
	if grade == x002084_g_NewCard3 then
		if TryCreatePet(sceneId,selfId,1) <= 0 then
			x002084_NotifyFailBox( sceneId, selfId, targetId, "‘ ch—a tr‚n th˙ khÙng ¸." )
			return
		end
	end

	local itemSN, itemName, itemDesc, bBroadCast
	for i, row in awardInfo.itemAward.hashTable do
		local itemSN, itemName, itemDesc, bBroadCast = GetOneMissionBonusItem( row )
		if itemSN > -1 then
			TryRecieveItem( sceneId, selfId, itemSN, 9 )								-- ∑≈≤ªœ¬æÕ√ª”–¡À
		end
	end

	for i, itemSN in awardInfo.itemAward.itemList do
		local ibagidx
		ibagidx =TryRecieveItem( sceneId, selfId, itemSN, 9 )
		if(itemSN == 30900015 and ibagidx ~= -1) then			--µÕº∂±¶ Ø∫œ≥…∑˚∞Û∂® by Vega 20081008
			LuaFnItemBind(sceneId, selfId,ibagidx)								
		end
	end

	if awardInfo.moneyReward > 0 then
		if grade == x002084_g_NewCard1 or grade == x002084_g_NewCard2 or grade == x002084_g_NewCard3 or grade == x002084_g_NewCard4 or grade == x002084_g_NewCard5 or grade == x002084_g_NewCard6 or grade == x002084_g_NewCard7 or grade == x002084_g_NewCard8 then
			YuanBao(sceneId,selfId,targetId,1,awardInfo.moneyReward)
		else
			AddMoney( sceneId, selfId, awardInfo.moneyReward )
		end
	end
	
	if grade == x002084_g_NewCard3 then
		local mItem = x002084_GetMenpaiTaoEquip(GetMenPai(sceneId,selfId))
		if mItem > 0 then
			TryRecieveItem( sceneId, selfId, mItem, 9 )
		end
		LuaFnCreatePetToHuman(sceneId, selfId, 3359, 1, 0)
	end
	
	if grade == x002084_g_NewCard7 then
		local mItem = x002084_GetMenpaiYaoJue(GetMenPai(sceneId,selfId))
		if mItem > 0 then
			TryRecieveItem( sceneId, selfId, mItem, 9 )
		end
	end

	SetMissionFlag( sceneId, selfId, awardInfo.flagBit, 1 )
	x002084_NotifyFailBox( sceneId, selfId, targetId, awardInfo.recvMsg )
end

--**********************************
-- ∂‘ª∞¥∞ø⁄–≈œ¢Ã· æ
--**********************************
function x002084_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

-- √≈≈…Ã◊◊∞
function x002084_GetMenpaiTaoEquip(mid)
	if(mid == MP_SHAOLIN) then
		return 10500002
	elseif(mid == MP_MINGJIAO) then
		return 10500012
	elseif(mid == MP_GAIBANG) then
		return 10501002
	elseif(mid == MP_WUDANG) then
		return 10502002
	elseif(mid == MP_EMEI) then
		return 10503002
	elseif(mid == MP_XINGSU) then
		return 10503012
	elseif(mid == MP_DALI) then
		return 10505002
	elseif(mid == MP_TIANSHAN) then
		return 10504002
	elseif(mid == MP_XIAOYAO) then
		return 10504012
	else
		return 0
	end
	return 0
end

-- √≈≈…“™æ˜
function x002084_GetMenpaiYaoJue(mid)
	if(mid == MP_SHAOLIN) then
		return 30308011
	elseif(mid == MP_MINGJIAO) then
		return 30308012
	elseif(mid == MP_GAIBANG) then
		return 30308013
	elseif(mid == MP_WUDANG) then
		return 30308014
	elseif(mid == MP_EMEI) then
		return 30308015
	elseif(mid == MP_XINGSU) then
		return 30308016
	elseif(mid == MP_DALI) then
		return 30308017
	elseif(mid == MP_TIANSHAN) then
		return 30308018
	elseif(mid == MP_XIAOYAO) then
		return 30308019
	else
		return 0
	end
	return 0
end


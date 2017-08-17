--Thánh Thú S½n±¦ÏäÕù¶á

--½Å±¾ºÅ
x808066_g_ScriptId	= 808066

--NPC´ó±¦Ïä
x808066_g_BigBox = {

	Name			= "BÕch mãng bäo tß½ng",
	MonsterID	= 5011,
	PosX			= 142,
	PosY			= 112,
	ScriptID	= 808067

}

--µ±Ç°toÕ ðµ ´ó±¦ÏäÐúng·ñ´æTÕi ....1´æTÕi  0²»´æTÕi 
x808066_g_IsBigBoxExist = 0

--µ±Ç°Ðúng·ñÓÐÈËTÕi M· ra ´ó±¦Ïä....
x808066_g_IsBigBoxOpening = 0
x808066_g_OpeningPlayerName = "(ERROR)"

--ÕýTÕi ¿ª±¦ÏätoÕ ðµ ÈË¿ªÊ¼¿ª±¦ÏätoÕ ðµ Ê±¼ä....
x808066_g_PlayerOpeningTime = 0

--¼¼ÄÜÊéID
x808066_g_SkillBooks = {

			30402051,
			30402052,
			30402053,
			30402054,
			30402012,
			30402014,
			30402016,
			30402018,
			30402020,
			30402088,
			30402090,
			30402026,
			30402030,
			30402032,
			30402034,
			30402036,
			30402038,
			30402040,
			30402042,
			30402044,
			30402046,
			30402048,
			30402050,
			30402056,
			30402060,
			30402062,
			30402064,
			30402066,
			30402068,
			30402070,
			30402072,
			30402074
}

x808066_g_SkillBooksNormal = {

			30402051,
			30402052,
			30402053,
			30402054,
			30402012,
			30402014,
			30402016,
			--30402018,
			30402020,
			--30402088,
			--30402090,
			--30402026,
			30402030,
			30402032,
			30402034,
			30402036,
			30402038,
			--30402040,
			30402042,
			30402044,
			--30402046,
			30402048,
			30402050,
			--30402056,
			--30402060,
			30402062,
			30402064,
			30402066,
			--30402068,
			30402070,
			--30402072,
			30402074
}

--¿ª³ötoÕ ðµ BOSStoÕ ðµ Êý¾Ý±í....
x808066_g_BOSSData = {

	{ ID = 3845, PosX = 144, PosY = 112, BaseAI = 15, ExtAIScript = 0, ScriptID = -1, PatrolId = 0 },
	{ ID = 3846, PosX = 140, PosY = 112, BaseAI = 15, ExtAIScript = 0, ScriptID = -1, PatrolId = 1 },
	{ ID = 3847, PosX = 140, PosY = 113, BaseAI = 15, ExtAIScript = 0, ScriptID = -1, PatrolId = 2 },
	{ ID = 3848, PosX = 144, PosY = 113, BaseAI = 15, ExtAIScript = 0, ScriptID = -1, PatrolId = 3 },

}

--µôÂä°ü×ø±ê....ÓÐ¶àÉÙ×ø±ê¾Íµô¶àÉÙµôÂä°ü....
x808066_g_DropBox = {

	{ PosX = 135, PosY = 108 },
	{ PosX = 136, PosY = 112 },
	{ PosX = 138, PosY = 108 },
	{ PosX = 143, PosY = 113 },
	{ PosX = 146, PosY = 109 },
	{ PosX = 147, PosY = 109 },

	{ PosX = 135, PosY = 113 },
	{ PosX = 137, PosY = 113 },
	{ PosX = 138, PosY = 114 },
	{ PosX = 143, PosY = 115 },
	{ PosX = 146, PosY = 112 },
	{ PosX = 147, PosY = 113 },

	{ PosX = 135, PosY = 115 },
	{ PosX = 137, PosY = 115 },
	{ PosX = 138, PosY = 116 },
	{ PosX = 143, PosY = 117 },
	{ PosX = 146, PosY = 114 },
	{ PosX = 147, PosY = 115 },

	{ PosX = 135, PosY = 117 },
	{ PosX = 147, PosY = 117 },

}

--µôÂä°ütoÕ ðµ ÎïÆ·µôÂä±í....
x808066_g_DropBoxItem = {

	{ odds = 100, itemId =30505145 },

}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x808066_OnDefaultEvent( sceneId, actId, param1, param2, param3, param4, param5 )

	--²»¹ÜÐúng·ñ´´½¨ÐÂtoÕ ðµ ´ó±¦Ïä¶¼·¢¹«¸æ....
	local message = format("@*;SrvMsg;SCA:#{ShengShouBigBoxNotice}" )
	AddGlobalCountNews( sceneId, message )

	--À×µç½»¼ÓÌìÆøÐ§¹û....
	local curWeather = LuaFnGetSceneWeather(sceneId)
	if not curWeather or curWeather ~= -1 then
		--ÒÑ¾­ÓÐÌìÆøÁËÔò²»¸Ä±äÌìÆø....
	else
		LuaFnSetSceneWeather(sceneId, 3, 5*60*1000 )
	end

	--Èç¹ûÒÑ¾­ÓÐÁË¾Í²»ÔÙ´´½¨ÐÂtoÕ ðµ ´ó±¦Ïä....
	if x808066_g_IsBigBoxExist == 1 then
		return
	end

	--Ã»ÓÐÔò´´½¨NPC´ó±¦Ïä....
	local MstId = LuaFnCreateMonster(sceneId, x808066_g_BigBox.MonsterID, x808066_g_BigBox.PosX, x808066_g_BigBox.PosY, 3, 0, x808066_g_BigBox.ScriptID )
	SetCharacterName( sceneId, MstId, x808066_g_BigBox.Name )
	x808066_g_IsBigBoxExist = 1

end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔ´ò¿ª´ó±¦Ïä....
--**********************************
function x808066_CheckOpenBigBox( sceneId, selfId )

	--±¦ÏäÐúng·ñ´æTÕi ....
	if x808066_g_IsBigBoxExist == 0 then
		return 0, "(ERROR)"
	end

	--Èç¹ûÓÐÈËÕýTÕi ¿ª´ó±¦Ïä....
	if x808066_g_IsBigBoxOpening == 1 then

		--Èç¹ûÐúng×Ô¼ºTÕi ¿ª....
		if x808066_g_OpeningPlayerName == LuaFnGetName( sceneId, selfId ) then
			return 1, "(ERROR)"
		end

		--Èç¹ûÐúng±ðÈËTÕi ¿ª²¢ÇÒËûÒÑ¾­³¬Ê±ÁË....ÔòÈÃÎ»¸øÎÒÀ´¿ª....
		local NowTime = LuaFnGetCurrentTime()
		if (NowTime - x808066_g_PlayerOpeningTime) > 150 then
			x808066_g_PlayerOpeningTime = NowTime
			x808066_g_OpeningPlayerName = LuaFnGetName( sceneId, selfId )
			return 1, "(ERROR)"
		else
			return -1, x808066_g_OpeningPlayerName
		end

	end

	--Ã»ÓÐÈËTÕi ¿ª´ó±¦Ïä....
	x808066_g_IsBigBoxOpening = 1
	x808066_g_PlayerOpeningTime = LuaFnGetCurrentTime()
	x808066_g_OpeningPlayerName = LuaFnGetName( sceneId, selfId )
	return 1, "(ERROR)"

end

--**********************************
--Íæ¼Ò¿ª´ó±¦Ïä±»´ò¶ÏÊÂ¼þ(ÓÉ´ó±¦Ïä½Å±¾µ÷ÓÃ)....
--**********************************
function x808066_OnCancelOpen( sceneId )

	x808066_g_IsBigBoxOpening = 0
	x808066_g_OpeningPlayerName = "(ERROR)"
	x808066_g_PlayerOpeningTime = 0

end

--**********************************
--´ó±¦Ïä±»´ò¿ªÊÂ¼þ(ÓÉ´ó±¦Ïä½Å±¾µ÷ÓÃ)....
--**********************************
function x808066_OnBigBoxOpen( sceneId, selfId, activatorId )

	local rand = random(100)
	if rand <= 33 then
		--¿ª³ö¼¼ÄÜÊé....
		x808066_GiveSkillBook( sceneId, selfId, activatorId )
	elseif rand <= 66 then
		--¿ª³öBOSS....
		x808066_GiveBOSS( sceneId, selfId, activatorId )
	else
		--¿ª³ömµt ¶ÑµôÂä°ü....
		x808066_GiveDropBox( sceneId, selfId, activatorId )
	end

	--kill´ó±¦Ïä....´ó±¦ÏäËÀÍö¶¯»­Îª´ò¿ª¸Ç×Ó....
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 169, 0);
	LuaFnGmKillObj( sceneId, activatorId, selfId )

	--Í³¼Æ....
	LuaFnAuditShengShouOpenBigBox(sceneId, activatorId)

	x808066_g_IsBigBoxExist = 0
	x808066_g_IsBigBoxOpening = 0
	x808066_g_OpeningPlayerName = "(ERROR)"
	x808066_g_PlayerOpeningTime = 0

end

--**********************************
--´ó±¦Ïä±»´ò¿ªÊÂ¼þ_¸ø¼¼ÄÜÊé....
--**********************************
function x808066_GiveSkillBook( sceneId, selfId, activatorId )

	--Ëæ»ú¸øÍæ¼Òmµt ±¾¼¼ÄÜÊé....²¢¹«¸æ....
	local rand = random(100)
	
	local numBooks
	local randBook
	local BookID
	
	if (rand < 80) then			--80%¼¸ÂÊTÕi ËùÓÐ¿ÉÄÜµôÂätoÕ ðµ ÊéÀïËæ»ú
		numBooks = getn(x808066_g_SkillBooks)
		randBook = random(numBooks)
		BookID = x808066_g_SkillBooks[ randBook ]
	else										--20%²»°üÀ¨10±¾ÌØ¶¨¼¼ÄÜ
		numBooks = getn(x808066_g_SkillBooksNormal)
		randBook = random(numBooks)
		BookID = x808066_g_SkillBooksNormal[ randBook ]
	end

	--¸øÎïÆ·²¢¹«¸æ....
	local BagIndex = TryRecieveItem( sceneId, activatorId, BookID, QUALITY_MUST_BE_CHANGE )
	if BagIndex ~= -1 then

		BeginEvent( sceneId )
			AddText( sceneId, "Các hÕ ðã nh§n ðßþc mµt cái#{_ITEM"..BookID.."}" )
		EndEvent( sceneId )
		DispatchMissionTips( sceneId, activatorId )

		--¹«¸æ....
		local ItemTransfer = GetBagItemTransfer(sceneId,activatorId,BagIndex)
		local PlayerName = GetName(sceneId, activatorId)
		local str = format( "#W#{_INFOUSR%s}#PTÕi #GThánh Thú S½n#P cØ yên phóng höa không c¦n th§n ánh m¡t, m½ h° bên trong ðánh vào #YÐÕi bäo sß½ng #P, m· ra v×a th¤y, dî nhiên là mµt quy¬n #{_INFOMSG%s}.", PlayerName, ItemTransfer )
		BroadMsgByChatPipe( sceneId, activatorId, str, 4 )

	end

	--kill´ó±¦Ïä....´ó±¦ÏäËÀÍö¶¯»­Îª´ò¿ª¸Ç×Ó....
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 169, 0);
	LuaFnGmKillObj( sceneId, activatorId, selfId )

end

--**********************************
--´ó±¦Ïä±»´ò¿ªÊÂ¼þ_¿ª³öBOSS....
--**********************************
function x808066_GiveBOSS( sceneId, selfId, activatorId )

	--Ë¢BOSS....
	local MstId
	for _, BOSSData in x808066_g_BOSSData do
		MstId = LuaFnCreateMonster(sceneId, BOSSData.ID, BOSSData.PosX, BOSSData.PosY, BOSSData.BaseAI, BOSSData.ExtAIScript, BOSSData.ScriptID )
		SetCharacterDieTime(sceneId, MstId, 2*60*60*1000 )
		SetPatrolId(sceneId, MstId, BOSSData.PatrolId)
	end

	--¹«¸æ....
	local PlayerName = GetName(sceneId, activatorId)
	local str = format( "#GThánh Thú S½n#P Thßþng qu¥n anh ðoÕt bäo, duy #W#{_INFOUSR%s}#P tài cao mµt b§c, h²n chiªn bên trong mµt chß·ng ðem #YBÕch mãng bäo tß½ng#P ðánh ngã, không ng¶ nhßng lÕi nhäy ra b¯n #WBäo tß½ng ð°ng tØ #P!", PlayerName )
	BroadMsgByChatPipe( sceneId, activatorId, str, 4 )

end

--**********************************
--´ó±¦Ïä±»´ò¿ªÊÂ¼þ_µôÂämµt ¶ÑµôÂä°ü....
--**********************************
function x808066_GiveDropBox( sceneId, selfId, activatorId )

	--¼ÆËã×ÜÈ¨ÖØ....
	local totalOdds = 0
	for _, item in x808066_g_DropBoxItem do
		totalOdds = totalOdds  + item.odds
	end
	if totalOdds < 1 then
		return
	end

	--¸øµôÂä°ü....
	local BoxId = -1
	local DropItemId = -1
	local randValue = 0
	for _, box in x808066_g_DropBox do

		--¼ÆËã±¾°üµôÂätoÕ ðµ ÎïÆ·....
		randValue = random(1, totalOdds);
		randValue = randValue - 1;
		for _, item in x808066_g_DropBoxItem do
			if item.odds >= randValue then
				DropItemId = item.itemId;
				break;
			end
			randValue = randValue - item.odds;
		end

		--·ÅµôÂä°üµ½³¡¾°Àï....
		if DropItemId > 0 then
			BoxId = DropBoxEnterScene( box.PosX, box.PosY, sceneId )
			if BoxId > -1 then
				AddItemToBox(sceneId,BoxId,QUALITY_CREATE_BY_BOSS,1,DropItemId)
			end
		end

	end
	
	--¹«¸æ....
	local PlayerName = GetName(sceneId, activatorId)
	local str = format( "#GThánh Thú S½n#W#{_INFOUSR%s}#P qu¥n hào ð« cØ m· ra #YBÕch mãng bäo tß½ng#P, chï th¤y kim quang hi®n lên, kh¡p cä tài bäo, tiªng hoan hô vang dµi.", PlayerName )
	BroadMsgByChatPipe( sceneId, activatorId, str, 4 )

end

function x808066_OnPlayerPickUpItemInBoar( sceneId, selfId, itemId, bagidx )

	--¹«¸æ....
	if itemId == 40004429 then

		local playerName = GetName(sceneId, selfId)
		local transfer = GetBagItemTransfer(sceneId,selfId,bagidx)
		local str = format( "#{BoarItem_Info_001}#{_INFOUSR%s}#{BoarItem_Info_002}#{_INFOMSG%s}#{BoarItem_Info_003}", playerName, transfer)

		BroadMsgByChatPipe(sceneId, selfId, str, 4)

	end
	
end

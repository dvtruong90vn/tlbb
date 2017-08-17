--ÕäÊÞ¼¼ÄÜÑ§Ï°UI 3

x311111_g_ScriptId = 311111;

x311111_g_MenPaiId = 0;
x311111_g_MenPaiSkillIds = {701,702,703}

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x311111_OnEnumerate( sceneId, selfId, targetId, sel )
	if(sel == 6) then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId); --µ÷ÓÃ·¢²¼Õ÷ÓÑÐÅÏ¢½çÃæ
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 5)
		
		local ret = DispatchPetPlacardList(sceneId,selfId,targetId,-1,-1,1);
		if(0 == ret) then
			Msg2Player( sceneId,selfId,"Hãy bö trân thú vào ô trß¾c tiên",MSG2PLAYER_PARA)
		end
	elseif (sel == 1) then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId);	--µ÷ÓÃÐÂ°æÕäÊÞ¼¼ÄÜÑ§Ï°½çÃæ UI 223
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 223)
	else
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId);
			UICommand_AddInt(sceneId,sel)		--µ÷ÓÃ¼¼ÄÜÑ§Ï°½çÃæ
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 3)
	end
end

--Ìõ¼þ¼ì²é£¬·µ»Ø0 ¼ì²éÊ§°Ü ,1 ¼ì²é³É¹¦
function x311111_PetSkillStudy_MenPaiCheck(sceneId, selfId)
	if(x311111_g_MenPaiId ~= tonumber(GetMenPai(sceneId, selfId))) then
		return 0;
	else
		return 1;
	end
end

--ÃÅÅÉ¼¼ÄÜÑ§Ï°
function x311111_PetSkillStudy_MenPai_Learn(sceneId, selfId, petHid, petLid, skillId)
	local ret = PetStudySkill_MenPai(sceneId, selfId, petHid, petLid, skillId);
	if( 1 == ret ) then
		Msg2Player( sceneId,selfId,"H÷c t§p kÛ nång trân thú thành công!",MSG2PLAYER_PARA)
	else
		Msg2Player( sceneId,selfId,"H÷c t§p kÛ nång trân thú th¤t bÕi!",MSG2PLAYER_PARA)
	end
end

--Ñ±Ñø·Ñ²éÑ¯
function x311111_PetSkillStudy_Ask_Money(sceneId, selfId, petHid, petLid)
	local money	= x311111_CalcMoney_ha( sceneId, selfId, petHid, petLid )
	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId, money)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 4)
end

--Ñ±ÑøÕäÊÞ
function x311111_PetSkillStudy_Domestication(sceneId, selfId, petHid, petLid)
--local ret = PetDomestication(sceneId, selfId, petHid, petLid);
	local checkAvailable = LuaFnIsPetAvailableByGUIDNoPW(sceneId, selfId, petHid, petLid);
	if checkAvailable and checkAvailable == 1 then
		local money	= x311111_CalcMoney_ha( sceneId, selfId, petHid, petLid )
		local PlayerMoney = GetMoney( sceneId, selfId )  +  GetMoneyJZ(sceneId, selfId)  --½»×ÓÆÕ¼° Vega
		if PlayerMoney < money then
			return
		end
		--¸øÍæ¼ÒµÄÕäÊÞÌáÉý¿ìÀÖ¶È²¢É¾³ý½ðÇ®
		LuaFnCostMoneyWithPriority( sceneId, selfId, money )
		LuaFnSetPetHappiness( sceneId, selfId, petHid, petLid, 100 )
		Msg2Player( sceneId, selfId, "Thu¥n dßÞng trân thú thành công!", MSG2PLAYER_PARA )
	else
		Msg2Player( sceneId, selfId, "Thu¥n dßÞng trân thú th¤t bÕi!", MSG2PLAYER_PARA )
	end
end

--²é¿´Ç°Ò»ÆªÕ÷ÓÑÐÅÏ¢
function x311111_PetInviteFriend_Ask_NewPage(sceneId, selfId, npcId, guid1, guid2, dir)
	local ret = DispatchPetPlacardList(sceneId, selfId, npcId, guid1, guid2, dir)
	if(0 == ret) then
		Msg2Player( sceneId,selfId,"Không có trân thú",MSG2PLAYER_PARA)
	end
end

--**********************************
--¼ÆËã»Ö¸´»¶ÀÖ¶È·ÑÓÃ
--**********************************
--µ¥Î»ÑªÑ±Ñø¼ÛÖµ£º0.025+n*0.0005£¨nÎªÕäÊÞµÈ¼¶£©
--µ¥Î»¿ìÀÖ¶È¼ÛÖµ£º0.373+0.44*n£¨nÎªÕäÊÞµÈ¼¶£©
function x311111_CalcMoney_ha( sceneId, selfId, petHid, petLid )
	local lv	= LuaFnGetPetLevelByGUID( sceneId, selfId, petHid, petLid )
	local	ha	= 100 - LuaFnGetPetHappiness( sceneId, selfId, petHid, petLid )
	if ha <= 0 then
		return 0
	end

	local	gld	= floor( ( 0.373+lv*0.44 ) * ha )
	if gld < 1 then
		gld			= 1
	end
	return gld
end

x600022_g_ScriptId = CITY_BUILDING_ABILITY_SCRIPT

--*******************************************************************************
--Thành ph¯ Éú»î kÛ nång¼ì²é±¨´íĞÅÏ¢
--*******************************************************************************
x600022_g_ErrorMsg = {
	{-1, "— ğây không có kÛ nång cuµc s¯ng này"},
	{-2, "ĞÆng c¤p không ğü"},
	{-3, "Ngân lßşng không ğü"},
	{-4, "Kinh nghi®m không ğü"},
	{-5, "Các hÕ c¥n phäi nâng c¤p công trình xây dñng này"},
	{-6, "Các hÕ chßa h÷c ğßşc kÛ nång cuµc s¯ng này"},
	{-7, "Các hÕ ğã h÷c ğßşc kÛ nång cuµc s¯ng này"},
	{-8, "Các hÕ không th¬ sØ døng chÑc nång cüa thành ph¯ này"},
	{-9, "Máy phøc vø b§n, ğ« ngh¸ lát næa thØ lÕi"},
	{-10, "Không có ngß¶i tìm th¤y thông tin tiêu hao mÑc ğµ c¯ng hiªn cho bang"},
	{-11, "MÑc ğµ c¯ng hiªn cho bang không ğü"},
	{-12, "Ğµ thành thøc cüa kÛ nång chßa ğü"},
	{-13, "Các hÕ c¥n phäi nâng c¤p công trình xây dñng này"},
	{-14, "Các hÕ ğã ğÕt t¾i ğÆng c¤p cao nh¤t cüa kÛ nång này, không c¥n phäi nâng c¤p næa"},
	{-15, "Công trình kiªn trúc này hi®n tÕi ğã là ğÆng c¤p cao nh¤t, chï có th¬ nâng c¤p kÛ nång này ğªn c¤p b§c này, không th¬ nâng c¤p ğßşc h½n"},
}
x600022_g_CITY_BUILDING_MaxLevel = {
					[CITY_BUILDING_SHUFANG]		= 4,
					[CITY_BUILDING_DUANTAI]		= 4,
					[CITY_BUILDING_MICANG]		= 4,
					[CITY_BUILDING_JIFANG]		=	4,
					[CITY_BUILDING_JIUSI]			=	3,
					[CITY_BUILDING_YISHE]			=	3,
					[CITY_BUILDING_QIANZHUANG]=	4,

}

--¿Û³ı°ï¹±toÕ ğµ Ëø
x600022_g_Contribution_Lock	=	0					--enum Obj_Human::BITLOCKTYPE
x600022_g_Contribution_AttrType = 6

--×î´óµÈc¤pĞúng12c¤ptoÕ ğµ Éú»î kÛ nångtoÕ ğµ °ï¹±ÏûºÄ±í
x600022_g_Contribution_Cost_12 = {
	30,		-- 0 -> 1
	40,		-- 1 -> 2
	50,
	60,
	70,
	100,
	250,
	500,
	1000,
	2000,
	6870,
	7500,		-- 11 -> 12
}

--×î´óµÈc¤pĞúng100c¤ptoÕ ğµ Éú»î kÛ nångtoÕ ğµ °ï¹±ÏûºÄ±í
--minlv ×îĞ¡ kÛ nångµÈc¤p
--maxlv ×î´ó kÛ nångµÈc¤p
--costrate C¥n costrate*curlv°ï¹±
--x600022_g_Contribution_Cost_100 = {
--	{minlv=1,		maxlv=20,		costrate=1},
--	{minlv=21,	maxlv=40,		costrate=2},
--	{minlv=41,	maxlv=60,		costrate=3},
--	{minlv=61,	maxlv=80,		costrate=4},
--	{minlv=81,	maxlv=100,	costrate=5},
--}

x600022_g_ExtraNPCName = {{"Mµc Uy¬n Thanh", "Nguy­n Tinh Trúc", "Gia Lu§t ĞÕi ThÕch"}
													,{ABILITY_FENGREN, ABILITY_GONGYI, ABILITY_ZHUZAO}}

function x600022_GetCostContributionByAbilityLevel(aid,alv)
	if CITY_ABILITY_DETAIL[aid] then
		local ret, maxlevel = LuaFnGetAbilityMaxLevel(aid);
		if ret and ret == 1 and maxlevel then
			if 10 == maxlevel then
			--12c¤p·â¶¥toÕ ğµ  kÛ nång,²é±í¿´¿Û³ı¶àÉÙ°ï¹±
				return x600022_g_Contribution_Cost_12[alv+1]
			elseif 100 == maxlevel or 99 == maxlevel then
			--100c¤p·â¶¥toÕ ğµ  kÛ nång,Í¨¹ı kÛ nångµÈc¤pËã³öÀ´
				return floor( x600022_g_Contribution_Cost_12[ floor( alv/10 ) + 1 ] / 10 )

			--	for i = 1, getn(x600022_g_Contribution_Cost_100) do
			--		local l = x600022_g_Contribution_Cost_100[i]
			--		if alv+1 >= l.minlv and alv+1 <= l.maxlv then
			--			return (alv+1)*l.costrate
			--		end
			--	end
			end
		end
	end
	--if CITY_ABILITY_DETAIL[aid] and CITY_ABILITY_DETAIL[aid].cond[alv+1] then
	--	if 12 == getn(CITY_ABILITY_DETAIL[aid].cond) then
	--	--12c¤p·â¶¥toÕ ğµ  kÛ nång,²é±í¿´¿Û³ı¶àÉÙ°ï¹±
	--		return x600022_g_Contribution_Cost_12[alv+1]
	--	elseif 100 == getn(CITY_ABILITY_DETAIL[aid].cond) then
	--	--100c¤p·â¶¥toÕ ğµ  kÛ nång,Í¨¹ı kÛ nångµÈc¤pËã³öÀ´
	--		for i = 1, getn(x600022_g_Contribution_Cost_100) do
	--			local l = x600022_g_Contribution_Cost_100[i]
	--			if alv+1 >= l.minlv and alv+1 <= l.maxlv then
	--				return (alv+1)*l.costrate
	--			end
	--		end
	--	end
	--end

	return -1
end

function x600022_ShowErrorMsg(sceneId,selfId,errid)
	for i = 1, getn(x600022_g_ErrorMsg) do
		if x600022_g_ErrorMsg[i][1] == errid then
			Msg2Player( sceneId,selfId,"@*;SrvMsg;DBD:"..x600022_g_ErrorMsg[i][2],MSG2PLAYER_PARA)
			--BeginEvent(sceneId)
      --	AddText(sceneId,x600022_g_ErrorMsg[i][2]);
      --EndEvent(sceneId)
      --DispatchMissionTips(sceneId,selfId)
			break
		end
	end
	return errid
end

--´¦ÀíÓÃ»§ ği¬m»÷toÕ ğµ ´Ë½¨ÖşÎïtoÕ ğµ Éú»î kÛ nångÑ¡Ïî
function x600022_OnDefaultEvent( sceneId, selfId, targetId, eventScriptId, npcScriptId, bid )
	--ÅĞ¶ÏÍæ¼ÒĞúng²»ĞúngCái này Thành ph¯ ËùÊô°ï»átoÕ ğµ ³ÉÔ±
	--if GetNumText() == 666 then
	--	BeginEvent(sceneId)
	--		AddText(sceneId, "#{JZBZ_081031_01}");
	--	EndEvent()
	--	DispatchEventList(sceneId, selfId, targetId)
	--end
	if CityGetSelfCityID(sceneId,selfId) ~= sceneId then return end

	local nUserSelNum = GetNumText();
	if(eventScriptId == x600022_g_ScriptId) then
		--Íæ¼ÒÑ¡ÔñÁËmµt cáiÉú»î kÛ nång
		local aid = nUserSelNum;
		if(aid and CITY_ABILITY_DETAIL[aid]) then
			BeginEvent(sceneId)
			for i = 1, getn(CITY_ABILITY_DETAIL[aid].script) do
				if(CITY_ABILITY_DETAIL[aid].script[i] > 0) then
					-- i == 1	Ñ§Ï°
					-- i == 2 Éıc¤p
					-- i == 3 ÁË½â
					CallScriptFunction( CITY_ABILITY_DETAIL[aid].script[i], "OnEnumerate",sceneId, selfId, targetId, bid, i)
				end
			end
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	else
		--¾ßÌå kÛ nångtoÕ ğµ ´¦Àíº¯Êı
		if x600022_IsValidCityLifeSkill_Script_Id(eventScriptId) == 1 then
			CallScriptFunction( eventScriptId, "OnDefaultEvent",sceneId, selfId, targetId, nUserSelNum, npcScriptId, bid )
		end
	end
end

--¼ì²éCái này ÊÂ¼şIdĞúng²»ĞúngThành ph¯ Éú»î kÛ nångÑ§Ï°¹ØÏµtoÕ ğµ ½Å±¾
function x600022_IsValidCityLifeSkill_Script_Id(eid)
	if nil == eid then return 0 end
	for i = 1, getn(CITY_ABILITY_DETAIL) do
		if CITY_ABILITY_DETAIL[i] then
			local letb = CITY_ABILITY_DETAIL[i].script
			for k = 1, getn(letb) do
				if eid == letb[k] then return 1 end
			end
		end
	end
	return 0
end

--ÁĞ¾Ù´Ë½¨ÖşÎïÉú»î kÛ nångtoÕ ğµ Ñ¡Ïî
function x600022_GetLifeAbilityByBuildingId(bid)
	local aRet = {}
	if bid and CITY_BUILDING_ABILITY_LIST[bid] then
		aRet = CITY_BUILDING_ABILITY_LIST[bid]
	end

	return aRet	--Tr· v«½á¹û
end

--Ìí¼ÓÑ§Ï°Éú»î kÛ nångÑ¡Ïî
function x600022_AddCityLifeAbilityOpt(sceneId, selfId, scriptid, bid, optid)
	--ÅĞ¶ÏÍæ¼ÒĞúng²»ĞúngCái này Thành ph¯ ËùÊô°ï»átoÕ ğµ ³ÉÔ±
	if CityGetSelfCityID(sceneId,selfId) ~= sceneId then return end
	
	local lifeNum = getn(x600022_GetLifeAbilityByBuildingId(bid))
	if lifeNum > 0 then
		AddNumText( sceneId, scriptid, "H÷c kÛ nång cuµc s¯ng", 6, optid )
		--AddNumText( sceneId, x600022_g_ScriptId, "#{JZBZ_081031_02}", 11, 666)
	end
end

--Ìí¼ÓÉú»î kÛ nångtoÕ ğµ ÏêÏ¸ÄÚÈİ
function x600022_IsHaveLifeAbilityByBuildingId(sceneId, selfId, bid)
	return getn(x600022_GetLifeAbilityByBuildingId(bid))
end

function x600022_OnEnumerate( sceneId, selfId, targetId, bid )
	--ÅĞ¶ÏÍæ¼ÒĞúng²»ĞúngCái này Thành ph¯ ËùÊô°ï»átoÕ ğµ ³ÉÔ±
	if CityGetSelfCityID(sceneId,selfId) ~= sceneId then return end
	--Éú³ÉËùÓĞÉú»î kÛ nångtoÕ ğµ ±íÏî
	AddText( sceneId, "#{BPJZ_081103_05}" )
	local aTable = x600022_GetLifeAbilityByBuildingId(bid)
	for i = 1, getn(aTable) do
		AddNumText( sceneId, x600022_g_ScriptId, CITY_ABILITY_DETAIL[aTable[i]].aname, 6, aTable[i])
	end
end

--¼ì²éCái này ½¨ÖşÎïtoÕ ğµ Ìõ¼şÔ¼Êø,¹©¸÷Éú»î kÛ nång½Å±¾·´µ÷²éÑ¯
--checktype = 1	Ñ§Ï°¼ì²é
--checktype = 2	Éıc¤p¼ì²é
--checktype = 3 Éıc¤p(Client)				--Ñ§Ï°ĞúngTÕi ¸÷Éú»î kÛ nång½Å±¾ÖĞÖ±½ÓÍê³ÉtoÕ ğµ 
--checktype = 4 Ñ§Ï°toÕ ğµ ÌáÊ¾ĞÅÏ¢ÖĞC¥n toÕ ğµ Êı¾İ(Server)
--checktype = 5 ÁĞ¾ÙÑ§Ï°Ñ¡ÏîÊ±toÕ ğµ ¼ì²é
--checktype = 6 ÁĞ¾ÙÉıc¤pÑ¡ÏîÊ±toÕ ğµ ¼ì²é
function x600022_OnCityCheck(sceneId, selfId, aid, bid, checktype, ex1, targetId)
	--ÅĞ¶ÏÍæ¼ÒĞúng²»ĞúngCái này Thành ph¯ ËùÊô°ï»átoÕ ğµ ³ÉÔ±
	if CityGetSelfCityID(sceneId,selfId) ~= sceneId then return x600022_ShowErrorMsg(sceneId, selfId, -8) end

	--Éú³ÉËùÓĞÉú»î kÛ nångtoÕ ğµ ±íÏî
	local blv = CityGetBuildingLevel(sceneId, selfId, sceneId, bid)
	local rl = nil
	if CITY_BUILDING_ABILITY_RULE[bid] and CITY_BUILDING_ABILITY_RULE[bid][blv] then
		local aTable = CITY_BUILDING_ABILITY_RULE[bid][blv]
	for i = 1, getn(aTable) do
		if aTable[i].aid == aid then rl = aTable[i] end
	end
	end

	-- ğÕt ğßşc¼ì²éÀàĞÍ
	local alv
	if(1 == checktype or 5 == checktype) then alv = 0 end	--Ñ§Ï°
	if(2 == checktype or 3 == checktype or 6 == checktype) then --Éıc¤p
		alv = QueryHumanAbilityLevel(sceneId, selfId, aid)
	end

	--°´ÕÕÕÒµ½toÕ ğµ ÕâĞĞÀ´¼ì²é
	if CITY_BUILDING_SIXRATE[bid] then
		--»ñÈ¡Ñ§Ï°ÌáÊ¾toÕ ğµ Êı¾İ
		if(4 == checktype) then return 1 end
		if(2 == checktype) then 
			local ret, maxlevel = LuaFnGetAbilityMaxLevel(aid);
			if ret and ret == 1 and alv>=maxlevel then
				return x600022_ShowErrorMsg(sceneId, selfId, -14);
			end;
			if(alv<1)then
				return x600022_ShowErrorMsg(sceneId, selfId, -6)
			end;
			return 1;			
		end
		--Ğúng·ñÑ§»áÁË kÛ nång
		--Ñ§Ï°
		if 1 == checktype and QueryHumanAbilityLevel(sceneId, selfId, aid) > 0 then
			return x600022_ShowErrorMsg(sceneId, selfId, -7)
		end
		if 5 == checktype and QueryHumanAbilityLevel(sceneId, selfId, aid) > 0 then
			return x600022_ShowErrorMsg(sceneId, selfId, -7)
		end
		--Éıc¤p
		if 3 == checktype  then	--Client
			local ret, maxlevel = LuaFnGetAbilityMaxLevel(aid);
			if ret and ret == 1 and alv>=maxlevel then
				return x600022_ShowErrorMsg(sceneId, selfId, -14);
			end;
			if(alv<1)then
				return x600022_ShowErrorMsg(sceneId, selfId, -6)
			end;
		end
		if 6 == checktype and alv < 1 then	--Server
			return x600022_ShowErrorMsg(sceneId, selfId, -6)
		end

		if rl and 5 ~= checktype and 6 ~= checktype then
			-- kÛ nång×îĞ¡×î´óµÈc¤p¼ì²é
			if alv >= rl.amax	or alv+1 < rl.amin then
				if x600022_g_CITY_BUILDING_MaxLevel[bid] and x600022_g_CITY_BUILDING_MaxLevel[bid]<=blv then
					return x600022_ShowErrorMsg(sceneId, selfId, -15);
				end;
				return x600022_ShowErrorMsg(sceneId, selfId, -5)
			end
		
			local tempAbilityId = rl.aid;
			local tempAbilityLevel = alv+1;
			local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel, extraMoney, extraExp = LuaFnGetAbilityLevelUpConfig2(tempAbilityId, tempAbilityLevel);
			
			--ÌØĞ´¸½¼ÓNPCÂß¼­
			for i = 1, getn(x600022_g_ExtraNPCName[1]) do
				--PrintStr(GetName(sceneId, targetId).." "..x600022_g_ExtraNPCName[1][i].." "..tempAbilityId .." ".. x600022_g_ExtraNPCName[2][i])
				if GetName(sceneId, targetId) == x600022_g_ExtraNPCName[1][i] and tempAbilityId == x600022_g_ExtraNPCName[2][i] then
					demandMoney = extraMoney
					demandExp = extraExp
					break
				end
			end
			
			if ret and ret == 1 then
				--ÈËÎïµÈc¤p¼ì²é
				if GetLevel(sceneId,selfId) < limitLevel then
					return x600022_ShowErrorMsg(sceneId, selfId, -2)
				end
				--ÈËÎï½ğÇ®¼ì²é
				local rate = -0.2	--CITY_BUILDING_SIXRATE[bid]		 ğÕt ğßşcCái này ½¨ÖşÎïtoÕ ğµ ¶ÔÓ¦ÂÊÖµ
				if GetMoney(sceneId,selfId) + GetMoneyJZ(sceneId, selfId) < floor((1+rate)*demandMoney) then
					return x600022_ShowErrorMsg(sceneId, selfId, -3)
				end
				--ÈËÎïKinh nghi®m¼ì²é
				if 1 ~= checktype and 4 ~= checktype then
				if GetExp(sceneId,selfId) < floor((1+rate)*demandExp) then
					return x600022_ShowErrorMsg(sceneId, selfId, -4)
				end
				end
				--ÈËÎï°ï»á¹±Ï×¶È¼ì²é
				local costContribution = x600022_GetCostContributionByAbilityLevel(aid, alv)
				if costContribution < 0 then
					return x600022_ShowErrorMsg(sceneId, selfId, -10)
				end
				local curContribute = CityGetAttr(sceneId,selfId,x600022_g_Contribution_AttrType)
				if ex1 and ex1 < curContribute then curContribute = ex1 end
				if curContribute < costContribution then
					return x600022_ShowErrorMsg(sceneId, selfId, -11)
				end
				--ÈËÎï kÛ nångÊìÁ·¶È¼ì²é
				local aexp = GetAbilityExp(sceneId, selfId, aid)
				if checktype == 3 then
					if aexp < limitAbilityExp then
						return x600022_ShowErrorMsg(sceneId, selfId, -12)
					end
				end
			else
				return 0;
			end
		else
			if nil == rl and 5~= checktype and 6 ~= checktype then
				return x600022_ShowErrorMsg(sceneId, selfId, -13)
			end
		end
	else
		return x600022_ShowErrorMsg(sceneId, selfId, -1)			--Ã»ÓĞÕÒµ½Cái này ½¨ÖşÎï¿ÉÒÔ²Ù×÷ÕâÖÖ kÛ nång
	end

	return 1				--¼ì²é³É¹¦
end

-- ğÕt ğßşcCái này ½¨ÖşÎïÊµ¼Ê¸Ã¿ÛtoÕ ğµ ½ğÇ®¡¢¹±Ï×¶È¡¢Kinh nghi®mµÈÊıÖµ,¹©¸÷Éú»î kÛ nång½Å±¾·´µ÷
--checktype = 1	Ñ§Ï°¼ì²é(Server)
--checktype = 2	Éıc¤p¼ì²é(Server)
--checktype = 3 Éıc¤p(Client)				--Ñ§Ï°ĞúngTÕi ¸÷Éú»î kÛ nång½Å±¾ÖĞÖ±½ÓÍê³ÉtoÕ ğµ 
--checktype = 4 Ñ§Ï°toÕ ğµ ÌáÊ¾ĞÅÏ¢ÖĞC¥n toÕ ğµ Êı¾İ(Server)
function x600022_OnCityAction(sceneId, selfId, targetId, aid, bid, checktype, ex1)
	--Éú³ÉËùÓĞÉú»î kÛ nångtoÕ ğµ ±íÏî
	local blv = CityGetBuildingLevel(sceneId, selfId, sceneId, bid)
	local rl = nil
	if CITY_BUILDING_ABILITY_RULE[bid] and CITY_BUILDING_ABILITY_RULE[bid][blv] then
		local aTable = CITY_BUILDING_ABILITY_RULE[bid][blv]
	for i = 1, getn(aTable) do
		if aTable[i].aid == aid then rl = aTable[i] end
	end
	end

	--°´ÕÕÕÒµ½toÕ ğµ ÕâĞĞÀ´Éú³É
	if x600022_OnCityCheck(sceneId, selfId, aid, bid, checktype, ex1, targetId) == 1 then
		local alv = QueryHumanAbilityLevel(sceneId, selfId, aid)
		local rate = -0.2	--CITY_BUILDING_SIXRATE[bid]		 ğÕt ğßşcCái này ½¨ÖşÎïtoÕ ğµ ¶ÔÓ¦ÂÊÖµ

		local tempAbilityId = aid;
		local tempAbilityLevel = alv+1;
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel, extraMoney, extraExp = LuaFnGetAbilityLevelUpConfig2(tempAbilityId, tempAbilityLevel);
		
		--ÌØĞ´¸½¼ÓNPCÂß¼­
		for i = 1, getn(x600022_g_ExtraNPCName[1]) do
			--PrintStr(GetName(sceneId, targetId).." "..x600022_g_ExtraNPCName[1][i].." "..tempAbilityId .." ".. x600022_g_ExtraNPCName[2][i])
			if GetName(sceneId, targetId) == x600022_g_ExtraNPCName[1][i] and tempAbilityId == x600022_g_ExtraNPCName[2][i] then
				demandMoney = extraMoney
				demandExp = extraExp
				break
			end
		end
		
		if ret and ret == 1 then
			local Need_Money = floor((1+rate)*demandMoney)				--C¥n Íæ¼ÒtoÕ ğµ ½ğÇ®
			local Need_Level	= limitLevel			--C¥n Íæ¼ÒtoÕ ğµ µÈc¤p
			local Need_Exp		=	floor((1+rate)*demandExp)		--C¥n Íæ¼ÒtoÕ ğµ Kinh nghi®mÖµ
			local Need_Aexp	=	limitAbilityExpShow		--C¥n toÕ ğµ  kÛ nångÊìÁ·¶È

			local costContribution = x600022_GetCostContributionByAbilityLevel(aid, alv)
			if costContribution < 0 then
				return x600022_ShowErrorMsg(sceneId, selfId, -10)
			end
			local Need_Contribute = costContribution																--C¥n Íæ¼ÒtoÕ ğµ °ï¹±

			--¼ì²éµ±Ç°Ğúng·ñÄÜ¿Û³ı°ï¹±toÕ ğµ Ëø
			if Need_Contribute > 0 and 1 == checktype and 3 == checktype then
				if IsLocked(sceneId, selfId, x600022_g_Contribution_Lock) then return x600022_ShowErrorMsg(sceneId, selfId, -9) end
			end

			local User_Contribute = CityGetAttr(sceneId,selfId,x600022_g_Contribution_AttrType)			--Íæ¼Òµ±Ç°toÕ ğµ °ï¹±
			if ex1 and ex1 < User_Contribute then User_Contribute = ex1 end	--ÎªÁËÔİÊ±ÏÔÊ¾Ê¹ÓÃ,ÒòÎª°ï¹±ÊôĞÔ±È½ÏÌØÊâ

			if rl and checktype == 1 then	--Server
				--¿Û³ıÏûºÄ
				LuaFnCostMoneyWithPriority(sceneId,selfId,Need_Money)
				--Ñ§Ï°Éú»î kÛ nång²»ºÄKinh nghi®mÖµ
				--if Need_Exp > 0 then AddExp(sceneId,selfId,Need_Exp*-1)	end
				CityChangeAttr(sceneId,selfId,x600022_g_Contribution_AttrType,Need_Contribute*-1)
				--Ñ§Ï°Éú»î kÛ nång
				SetHumanAbilityLevel(sceneId,selfId,rl.aid,1)
				--TÕi npcÁÄÌì´°¿ÚÍ¨ÖªÍæ¼ÒÒÑ¾­Ñ§»áÁË
				BeginEvent(sceneId)
					AddText(sceneId,"Các hÕ ğã h÷c ğßşc "..CITY_ABILITY_DETAIL[rl.aid].aname.." kÛ nång")
				EndEvent()
				DispatchEventList(sceneId,selfId,targetId)
			elseif checktype == 2 then	--Server
				BeginUICommand(sceneId)
					UICommand_AddInt(sceneId,targetId) --µ÷ÓÃThành ph¯ Éú»î kÛ nång½çÃæ
					UICommand_AddInt(sceneId,aid)
					UICommand_AddInt(sceneId,Need_Aexp)
					UICommand_AddInt(sceneId,Need_Money)
					UICommand_AddInt(sceneId,Need_Level)
					UICommand_AddInt(sceneId,Need_Exp)
					UICommand_AddInt(sceneId,Need_Contribute)
					UICommand_AddInt(sceneId,bid)
					UICommand_AddInt(sceneId,User_Contribute)
				EndUICommand(sceneId)
				DispatchUICommand(sceneId,selfId, 555)
			elseif checktype == 3 then	--Client
				--¿Û³ıÏûºÄ
				local bOk = CityChangeAttr(sceneId,selfId,x600022_g_Contribution_AttrType,Need_Contribute*-1)
				if bOk > 0 then
					--ÓÅÏÈ¿Û³ı½»×Ó zchw
					local HumanMoney = LuaFnGetMoney( sceneId, selfId )
  					local HumanMoneyJZ = GetMoneyJZ( sceneId, selfId );
					if HumanMoney + HumanMoneyJZ  <  Need_Money then
						return 0;
					end
					local nDelJZ, nDelMoney = LuaFnCostMoneyWithPriority(sceneId, selfId, Need_Money);
					if (nDelJZ == -1) then
						return 0;
					end

					if Need_Exp > 0 then AddExp(sceneId,selfId,Need_Exp*-1)	end
					--CityChangeAttr(sceneId,selfId,x600022_g_Contribution_AttrType,Need_Contribute*-1)
					--Éıc¤pÉú»î kÛ nång
					SetHumanAbilityLevel(sceneId,selfId,aid,alv+1)
					--ÖØĞÂ¼¤»î¿Í»§¶ËtoÕ ğµ Éıc¤p°´Å¥
					BeginUICommand(sceneId)
						UICommand_AddInt(sceneId,targetId) --µ÷ÓÃThành ph¯ Éú»î kÛ nång½çÃæ
						UICommand_AddInt(sceneId,aid)
						UICommand_AddInt(sceneId,bid)
					EndUICommand(sceneId)
					DispatchUICommand(sceneId,selfId, 556)
					--µİ¹éµ÷ÓÃ×Ô¼º,ÏÔÊ¾ÏÂmµt c¤ptoÕ ğµ ĞÅÏ¢
					x600022_OnCityAction(sceneId, selfId, targetId, aid, bid, 2, User_Contribute-Need_Contribute)
				end
			elseif checktype ==4 then	--Server
				return Need_Level,Need_Money,Need_Contribute
			end
		else
			return x600022_ShowErrorMsg(sceneId, selfId, -1)			--Ã»ÓĞÕÒµ½Cái này ½¨ÖşÎï¿ÉÒÔ²Ù×÷ÕâÖÖ kÛ nång
		end
	else
		return 0			--Ã»ÓĞÕÒµ½Cái này ½¨ÖşÎï¿ÉÒÔ²Ù×÷ÕâÖÖ kÛ nång
	end

	return 1				--¼ì²é³É¹¦
end

--¼ì²éThành ph¯ toÕ ğµ µ±Ç°Î¬»¤×´Ì¬,µÍÎ¬»¤×´Ì¬Ê±,¸øÌáÊ¾ĞÅÏ¢.
function x600022_CheckCityStatus(sceneId, selfId,targetId)
	if CityGetSelfCityID(sceneId,selfId) ~= sceneId then return -2 end
	
	if CityGetMaintainStatus( sceneId, selfId, sceneId ) == 1 then				-- µÍÎ¬»¤×´Ì¬
		BeginEvent(sceneId)
			AddText(sceneId,"Bang chúng ta hi®n gi¶ ngu°n v¯n không ğü, hay là làm thêm các nhi®m vø cüa thß½ng nhân ğ¬ bang chúng ta có th¬ khôi phøc lÕi bình thß¶ng bäo v® lÕi ğªn tìm ta nhé.")
		EndEvent()
		DispatchEventList(sceneId,selfId,targetId)
  	return -1
	end
	
	return 1
end

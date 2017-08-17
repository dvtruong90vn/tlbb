--Thành ph¯ NPC
--Ïá·¿

x805019_g_scriptId=805019
x805019_g_BuildingID14 = 1
x805019_g_SavvyToExp={0 ,6000,12730,18898,31156,46811,82992,172059,236185,827077,837599}	--¸ú¹Çto exp
x805019_g_GrowRateToExp={0,7791,14744,70492,251189}	--³É³¤to exp
x805019_g_hugeExp = 1500000	--¹«¸æexp
x805019_g_safeNum = 600000000	--°²È«ÔËËãÊýÖµÉÏÏÞ
x805019_g_maxExp = 30000000	--ÉáÀû×Ó×î´ó±£´ætoÕ ðµ Kinh nghi®m
--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x805019_OnDefaultEvent( sceneId, selfId,targetId )

	--Ðúng·ñÐúng±¾°ï³ÉÔ±
	local guildid 		= GetHumanGuildID(sceneId,selfId)
	local cityguildid	= GetCityGuildID(sceneId, selfId, sceneId)
	local strText

	if(guildid ~= cityguildid) then
		BeginEvent(sceneId)
			strText = "    M÷i ngß¶i trong bang này ta ð«u nh¾ hªt h÷ tên, chï c¥n nhìn qua thôi ta cûng biªt các hÕ không phäi là ngß¶i cüa bang chúng ta."
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	BeginEvent(sceneId)
		strText = "#{ZSKSSJ_081113_01}"
		AddText(sceneId,strText);
		AddNumText( sceneId, x805019_g_scriptId, "Gi¾i thi®u nhà", 8, 1 )
--¹Ø±ÕÕäÊÞÉáÀû×Ó¼°°ïÖú,Ìí¼Ó¼ÄÁ·ÕäÊÞ, by zhangqiang 2009.6.19
--		AddNumText( sceneId, x805019_g_scriptId, "Á¶ÖÆÕäÊÞÉáÀû×Ó", 6, 2 )
--		AddNumText( sceneId, x805019_g_scriptId, "¹ØÓÚÕäÊÞ¿ìËÙÉýc¤p", 11, 3 )
		AddNumText( sceneId, x805019_g_scriptId, "KÏ luy®n trân thú", 6, 4 )

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x805019_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	if GetNumText() == 3 then
--		BeginEvent(sceneId)
--			AddText( sceneId, "#{ZSKSSJ_081113_27}" )	
--		EndEvent(sceneId)
--		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 1 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{City_Intro_XiangFang}" )	
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	elseif (GetNumText() == 2) then
--		BeginUICommand(sceneId);
--			UICommand_AddInt(sceneId, targetId);
--		EndUICommand(sceneId);
--		DispatchUICommand(sceneId, selfId, 8050191);
	elseif GetNumText() == 4 then 
		BeginEvent(sceneId)
			AddText( sceneId, "ChÑc nång này s¡p ðßþc thñc hi®n" )	
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	end
end
--¼ÆËãÉáÀû×Ó×ª»¯toÕ ðµ Kinh nghi®m
function x805019_PetShelizi(sceneId, selfId, PetGuidH, PetGuidL)

	local ret = LuaFnCheckPetShelizi(sceneId, selfId ,PetGuidH, PetGuidL)

	if ret == 1 then
		if LuaFnIsPetGrowRateByGUID(sceneId, selfId, PetGuidH, PetGuidL) == 0 then
			x805019_Notify(sceneId, selfId,"#{ZSKSSJ_081113_09}")
			return
		end

		local nAllExp = x805019_CalcExp(sceneId, selfId, PetGuidH, PetGuidL)

		BeginUICommand(sceneId);
			UICommand_AddInt(sceneId, nAllExp);
		EndUICommand(sceneId);
		DispatchUICommand(sceneId, selfId, 8050192);
	end
end
--×ª»¯ÉáÀû×Ó
function x805019_PetShelizi_Done(sceneId, selfId, PetGuidH, PetGuidL)
	local pgH , pgL = LuaFnGetCurrentPetGUID(sceneId, selfId)
	--Ðúng·ñ³öÕ½
	if PetGuidH==pgH and PetGuidL==pgL then
		x805019_Notify(sceneId,selfId ,"#{ZSKSSJ_081113_05}")
		return
	end
	--Ðúng·ñ¼ÓËø
	if LuaFnIsPetLockedByGUID(sceneId, selfId, PetGuidH, PetGuidL) == 1 then
		x805019_Notify(sceneId,selfId ,"#{ZSKSSJ_081113_06}")
		return
	end
	--Ðúng·ñTÕi °²È«Ê±¼ä
	if IsPilferLockFlag(sceneId, selfId)  == -1 then
		return
	end
	--Ðúng·ñ´óÓÚµÈÓÚ30c¤p,Ðúng·ñÐúng±¦±¦,¶þ´ú»ò±äÒì
	if LuaFnCheckPetShelizi(sceneId, selfId ,PetGuidH, PetGuidL) ~= 1 then
		return
	end
	--¼ÆËãKinh nghi®m
	local nAllExp = x805019_CalcExp(sceneId, selfId, PetGuidH, PetGuidL)

	--¼ì²âÌõ¼þ½ð±Ò
	local needmoney = floor(nAllExp / 100)
	if needmoney <= 0 then
		needmoney = 1
	end
	local selfMoney = GetMoney( sceneId, selfId )  +  GetMoneyJZ(sceneId, selfId)  --½»×ÓÆÕ¼° Vega
	if selfMoney < needmoney then
		x805019_Notify(sceneId, selfId,"#{no_money}")
		return
	end
	--¼ì²â±³°ü¿Õ¼ä
	if LuaFnGetPropertyBagSpace(sceneId, selfId) == 0 then
		x805019_Notify(sceneId, selfId,"#{QRJ_81009_05}")
		return
	end
	
	local t_growLevel = LuaFnGetPetGrowRateByGUID(sceneId, selfId, PetGuidH, PetGuidL);
	if t_growLevel < 1 then
		t_growLevel = 1
	end
	
	local t_savvy = GetPetSavvy(sceneId, selfId, PetGuidH, PetGuidL);
	if t_savvy < 0 then
		t_savvy = 0
	end
	
	local t_petLevel = LuaFnGetPetLevelByGUID(sceneId, selfId, PetGuidH, PetGuidL);
	
	--¿Û½ð±Ò
	if LuaFnCostMoneyWithPriority(sceneId,selfId ,needmoney) == -1 then
		return
	end

	local PlayerName = GetName(sceneId, selfId)
	--É¾³ýÕäÊÞ
	if LuaFnDeletePetByGUID(sceneId, selfId, PetGuidH, PetGuidL) == 0 then
		return
	end

	--¸øÎïÆ·
	local BagIndex = TryRecieveItem( sceneId, selfId, 30900058, QUALITY_MUST_BE_CHANGE )
	if BagIndex == -1 then
		x805019_Notify(sceneId, selfId,"#{QRJ_81009_05}")
		return
	end
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 49, 0);
	--ÉèÖÃÉáÀû×Ó°üº¬toÕ ðµ Kinh nghi®m
	SetBagItemParam	(sceneId, selfId,BagIndex,4 ,2 , nAllExp)
	--Í¨Öª¿Í»§¶ËË¢ÐÂÎïÆ·ÐÅÏ¢
	LuaFnRefreshItemInfo( sceneId, selfId, BagIndex )
	--ÐÑÄ¿ÌáÊ¾
	x805019_Notify(sceneId, selfId,"#{ZSKSSJ_081126_1}")
	--ÈÕÖ¾Í³¼Æ
	local guid = LuaFnObjId2Guid(sceneId, selfId)
	local log = format("PetGuidH=%X,PetGuidL=%X,PetLevel=%d,PetgrowLevel=%d,PetSavvy=%d,nAllExp=%d", PetGuidH, PetGuidL, t_petLevel, t_growLevel, t_savvy, nAllExp)
	ScriptGlobal_AuditGeneralLog(LUAAUDIT_PETSHELIZI, guid, log)
	--·¢¹«¸æ
	if nAllExp > x805019_g_hugeExp then
		local growstr = ""

		if t_growLevel == 1 then
			growstr = "#{ZSKSSJ_PT}"
		elseif t_growLevel == 2 then
			growstr = "#{ZSKSSJ_YX}"
		elseif t_growLevel == 3 then
			growstr = "#{ZSKSSJ_JC}"
		elseif t_growLevel == 4 then
			growstr = "#{ZSKSSJ_ZY}"
		elseif t_growLevel == 5 then
			growstr = "#{ZSKSSJ_WM}"
		else 
			growstr = "#{ZSKSSJ_PT}"
		end
		
		local ProductItemInfo = GetBagItemTransfer( sceneId, selfId, BagIndex )
	
		local strText = format("#{_INFOUSR%s}#{ZSKSSJ_081113_12}%s#{ZSKSSJ_081113_13}%d#{ZSKSSJ_081113_14}%d#{ZSKSSJ_081113_15}%d#{ZSKSSJ_081113_16}#{_INFOMSG%s}#{ZSKSSJ_081113_17}", PlayerName,growstr,t_savvy,t_petLevel,nAllExp, ProductItemInfo )

		AddGlobalCountNews( sceneId, strText )
	end
end
--ÐÑÄ¿ÌáÊ¾
function x805019_Notify(sceneId,selfId ,str)
	BeginEvent(sceneId)
		AddText(sceneId,str)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end

function x805019_CalcExp(sceneId, selfId, PetGuidH, PetGuidL)
		local t_growLevel = LuaFnGetPetGrowRateByGUID(sceneId, selfId, PetGuidH, PetGuidL);
		if t_growLevel < 1 then
			t_growLevel = 1
		end
		
		local t_savvy = GetPetSavvy(sceneId, selfId, PetGuidH, PetGuidL);
		if t_savvy < 0 then
			t_savvy = 0
		end
	
		local t_petLevel = LuaFnGetPetLevelByGUID(sceneId, selfId, PetGuidH, PetGuidL);

		local nAllExp = x805019_g_SavvyToExp[tonumber(t_savvy) + 1] + x805019_g_GrowRateToExp[tonumber(t_growLevel)]
		
		local levelToExp = 0
		
		for i=1 ,t_petLevel do
			levelToExp = levelToExp + LuaFnGetPetNeedExp(sceneId, selfId,i)
			if levelToExp > x805019_g_safeNum then
				return x805019_g_maxExp
			end
		end
		
		nAllExp = nAllExp + levelToExp * 0.05

		if nAllExp > x805019_g_maxExp then
			return x805019_g_maxExp
		else
			return nAllExp
		end

		return 0
end

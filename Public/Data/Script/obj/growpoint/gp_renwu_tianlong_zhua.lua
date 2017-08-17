--Éú³¤ ği¬m
--ÂúÔÂ
--½Å±¾ºÅ715006
--ÂúÔÂ100%
--µÈc¤p1

--Ã¿´Î´ò¿ª±Ø¶¨ ğÕt ğßşctoÕ ğµ ²úÆ·
x715006_g_MainItemId = 40003003

--Éú³Éº¯Êı¿ªÊ¼************************************************************************
--Ã¿cáiItemBoxÖĞ×î¶à10cáiÎïÆ·
function 		x715006_OnCreate(sceneId,growPointType,x,y)
	--·ÅÈëItemBoxÍ¬Ê±·ÅÈëmµt cáiÎïÆ·
	targetId  = ItemBoxEnterScene(x,y,growPointType,sceneId,QUALITY_MUST_BE_CHANGE,1,x715006_g_MainItemId)	--Ã¿cáiÉú³¤ ği¬m×îÉÙÄÜ ği¬mµ½mµt cáiÎïÆ·,ÕâÀïÖ±½Ó·ÅÈëitemboxÖĞmµt cái
	-- ğÕt ğßşc1~3toÕ ğµ Ëæ»úÊı,Èç¹ûĞúng1Ôò²»C¥n ·ÅÈë,Èç¹û¶àÓà1ÔÙÓÃAddItemToBoxÔö¼ÓÎïÆ·
	--ItemCount = random(1,3)
	--if ItemCount ~= 1 then
	--	for i=1, (ItemCount - 1) do
			AddItemToBox(sceneId,targetId,QUALITY_MUST_BE_CHANGE,1,x715006_g_MainItemId)
	--	end
	--end
	--·ÅÈë´ÎÒª²úÆ·
	--if random(1,100) == 1 then
	--	AddItemToBox(sceneId,targetId,QUALITY_MUST_BE_CHANGE,1,g_SubItemId)
	--end	
end
--Éú³Éº¯Êı½áÊø**********************************************************************


--´ò¿ªÇ°º¯Êı¿ªÊ¼&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
function	 x715006_OnOpen(sceneId,selfId,targetId)
--Tr· v«ÀàĞÍ
-- 0 ±íÊ¾´ò¿ª³É¹¦
	--ABilityID		=	GetItemBoxRequireAbilityID(sceneId,targetId)
	--AbilityLevel = QueryHumanAbilityLevel(sceneId,selfId,ABilityID)
	
	--if AbilityLevel<g_AbilityLevel then
	--if	IsHaveMission
	--	return OR_NO_LEVEL
	--else
		return OR_OK
	--	end
end
--´ò¿ªÇ°º¯Êı½áÊø&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&


--»ØÊÕº¯Êı¿ªÊ¼########################################################################
function	 x715006_OnRecycle(sceneId,selfId,targetId)
	  --È¡ ği¬mµ±Ç°ÊìÁ·¶È
		--ABilityID	=	GetItemBoxRequireAbilityID(sceneId,targetId)
		--AbilityExp	=	GetAbilityExp(sceneId, selfId, ABilityID)
		--ÅĞ¶ÏÒÔÏÖTÕi toÕ ğµ µÈc¤pĞúng·ñÓ¦¸ÃÔö¼ÓÊìÁ·¶È
		--AbilityLevel	=	QueryHumanAbilityLevel(sceneId,selfId,ABilityID)
		--if AbilityLevel - g_AbilityLevel <= 5 then
		--	ExpPlus = 1
		--elseif AbilityLevel - g_AbilityLevel <=10 then
		--	ExpPlus = 1/((AbilityLevel - g_AbilityLevel)+1)
		--else
		--	ExpPlus = 0
		--end
		--ÅĞ¶Ïµ±Ç°ÊìÁ·¶È¼ÓÉÏÒªÔö¼ÓtoÕ ğµ ÊìÁ·¶ÈºóĞúng·ñ³¬¹ı±¾µÈc¤pÊìÁ·¶ÈÉÏÏŞ
		--old
		--if (AbilityExp + ExpPlus) >= LEVELUP_ABILITY_PENGREN[AbilityLevel].AbilityExpLimitTop then
		--new
		--local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(ABILITY_PENGREN, AbilityLevel + 1);
		--if ret and ret == 1 and (AbilityExp + ExpPlus) >= currentLevelAbilityExpTop then
		--	AbilityExp = currentLevelAbilityExpTop;
		--else
		--	AbilityExp = AbilityExp + ExpPlus
		--end
		--Ôö¼ÓÊìÁ·¶È
		--SetAbilityExp(sceneId, selfId, ABilityID, AbilityExp)
		--Í¨ÖªÍæ¼ÒÊìÁ·¶ÈÔö¼ÓÁË
		--AbilityExp	=	GetAbilityExp(sceneId, selfId, ABilityID)
		--Msg2Player(sceneId,selfId,"ÊìÁ·¶ÈÌLinhıµ½"..AbilityExp,MSG2PLAYER_PARA)
		
		--Tr· v«1,Éú³¤ ği¬m»ØÊÕ
		return 1
end
--»ØÊÕº¯Êı½áÊø########################################################################



--´ò¿ªºóº¯Êı¿ªÊ¼@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
function	x715006_OnProcOver(sceneId,selfId,targetId)
	return 0
end
--´ò¿ªºóº¯Êı½áÊø@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

function x715006_OnTickCreateFinish( sceneId, growPointType, tickCount )
end

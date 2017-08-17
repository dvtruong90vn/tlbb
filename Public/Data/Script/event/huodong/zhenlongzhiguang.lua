--Æå¾ÖĞİÏ¢ÊÒ²úÉú¿É²É¼¯toÕ ğµ buff Trân lung chi quang; »î¶¯toÕ ğµ ½Å±¾   2008-11-4 by cuiyinjie
--Ê×ÏÈÒªÅĞ¶ÏĞúngÆå¾ÖĞİÏ¢ÊÒ²ÅÆô¶¯´Ë»î¶¯
--Ëæ»úÎ»ÖÃ²úÉúbuffĞúng´ÓÎ»ÖÃ±íËæ»ú¶ÁÈ¡toÕ ğµ 
--±¾¹¦ÄÜ²ÉÓÃÁË»î¶¯toÕ ğµ 6cái×ÔÓÉ²ÎÊı,1,2,·Ö±ğ¼ÇÂ¼Ğúng·ñ´´½¨ÁËµÚmµt ºÍµÚ¶ş´ÎtoÕ ğµ ²É¼¯ ği¬m,·ÀÖ¹¶à´Î´´½¨. 3,¼ÇÂ¼Ğúng·ñÉ¾³ı¹ı²É¼¯ ği¬m
-- 4,5,6ÎªÍí°Ë ği¬mºótoÕ ğµ ¼ÇÂ¼

--½Å±¾ºÅ
x808123_g_ScriptId	= 808123

x808123_g_RestRooms = {193, 418, 419, 518};      -- Æå¾ÖĞİÏ¢ÊÒtoÕ ğµ ³¡¾°id

x808123_g_iMonsterTypeID = 12150; --52000; -- Òª²É¼¯toÕ ğµ ¹ÖtoÕ ğµ id  MonsterAttrExtable.txt

x808123_g_iZhenglongZhiguangBuffId = 76;    -- Trân lung chi quangbuffid,¼û StandardImpact.txt


--**********************************
--½Å±¾Èë¿Úº¯Êı
--**********************************
function x808123_OnDefaultEvent( sceneId, actId, iNoticeType, param2, param3, param4, param5 )
	local i = 1;
	--ÏÈÅĞ¶ÏĞúng·ñÆå¾ÖĞİÏ¢ÊÒ
	local bIsRestRoom = 0
	for i = 1, 4 do
	   if ( sceneId == x808123_g_RestRooms[i] ) then
          bIsRestRoom = 1
          break
	   end
	end
	if ( 1 ~= bIsRestRoom ) then
	    return
	end

	--²ÎÊıË ği¬m÷: ³¡¾°ID,»î¶¯ID,Ê±¼ä¼ä¸ô,¹«¸æÀàĞÍ(¿ÉÒÔ²»´«,Ä¬ÈÏÆÕÍ¨¹«¸æÀàĞÍ)
	StartOneActivity( sceneId, actId, floor(10*1000), iNoticeType );
	--Æô¶¯ºóÏÈ³õÊ¼»¯×Ô¶¨Òå²ÎÊı
	for i = 1, 6 do
        SetActivityParam( sceneId, actId, i, 0 );
	end
end

--**********************************
--ĞÄÌøº¯Êı
--**********************************
function x808123_OnTimer( sceneId, actId, uTime )
	--PrintStr("hhii");
	--¼ì²â»î¶¯Ğúng·ñ¹ıÆÚ
	if CheckActiviyValidity( sceneId, actId ) == 0 then
		StopOneActivity( sceneId, actId )
	end

	-- ÓÃ×ÔÓÉ²ÎÊı¼ÇÂ¼Ğúng·ñÒÑ¾­²úÉúºÍÉ¾³ı²úÉútoÕ ğµ ²É¼¯ ği¬m
	local iHour = GetHour();
	local iMinute = GetMinute();
	local schedule =
	{
	    [1] =  { StartTime1 = {11, 25}, StartTime2 = {11, 27}, EndTime = {14, 30}, },
		[2] =  { StartTime1 = {20, 25}, StartTime2 = {20, 27}, EndTime = {22, 00}, },
	}
	local i = 1;
	local iParam = 0;
	for i = 1, 2 do
	    local iOffSet = (i - 1) * 3;
	    if ( iHour == schedule[i].EndTime[1] and iMinute == schedule[i].EndTime[2] ) then -- É¾³ıÎ´²É¼¯toÕ ğµ ²É¼¯ ği¬m
	         iParam = GetActivityParam(sceneId, actId, iOffSet + 3);
	         if ( 1 == iParam ) then
	              x808123_RemoveGatherPoints(sceneId, actId);
	              SetActivityParam( sceneId, actId, iOffSet + 3, 0 );    --±ê¼ÇÒÑ¾­É¾³ı²É¼¯ ği¬m
	         end
	    elseif(iHour == schedule[i].StartTime2[1] and iMinute == schedule[i].StartTime2[2]) then
	         iParam = GetActivityParam(sceneId, actId, iOffSet + 2);
	         if ( 0 == iParam ) then
                 x808123_AddGatherPoints(sceneId, actId, 2);
			     SetActivityParam( sceneId, actId, iOffSet + 2, 1 );
			     SetActivityParam( sceneId, actId, iOffSet + 3, 1 );   --±ê¼ÇÒÑ´´½¨²É¼¯ ği¬m
		     end
	    elseif(iHour == schedule[i].StartTime1[1] and iMinute == schedule[i].StartTime1[2]) then  --µÚmµt ´ÎÓ¦¸Ã²úÉú²É¼¯ ği¬mtoÕ ğµ Ê±¿Ì
	         iParam = GetActivityParam(sceneId, actId, iOffSet + 1);
	         if ( 0 == iParam ) then
                 x808123_AddGatherPoints(sceneId, actId, 1);
			     SetActivityParam( sceneId, actId, iOffSet + 1, 1 );
			     SetActivityParam( sceneId, actId, iOffSet + 3, 1 );   --±ê¼ÇÒÑ´´½¨²É¼¯ ği¬m
		     end
	    end
	end
end


--***********************************
--²úÉú²É¼¯ ği¬mtoÕ ğµ º¯Êı
--iIndex = 1Ê±±íÊ¾ĞúngTÕi ´´½¨Ç°10cái²É¼¯ ği¬m,=2Ê±Îª´´½¨ºó10cái²É¼¯ ği¬m
--***********************************
function x808123_AddGatherPoints(sceneId, actId, iIndex)

    --²É¼¯ ği¬mtoÕ ğµ ×ø±ê:
	local AllPos = {
		{ {18,18},{46,18},{18,24},{46,24},{18,30},{46,30},{18,36},{46,36},{18,42},{46,42} },  --TÕi 11: 25ºÍ20: 25³öÏÖtoÕ ğµ BUFFÉú³¤ ği¬m×ø±ê
		{ {24,22},{40,22},{24,27},{40,27},{24,32},{40,32},{24,37},{40,37},{24,42},{40,42} },  --TÕi 11: 27ºÍ20: 27³öÏÖtoÕ ğµ BUFFÉú³¤ ği¬m×ø±ê
	}

	local iAIType = 7;
	local iAIScriptID = 0;
	local iScriptID = x808123_g_ScriptId;  -- ÓÃCái này ½Å±¾toÕ ğµ id,½»»¥»Øµ÷º¯ÊıĞ´TÕi ´Ë½Å±¾ÄÚ
	
	-- ´´½¨10cái
	local i = 1;
	local iObjId = -1;
	for i = 1, 10 do     -- ´Ó101-120 ,20cái ği¬mtoÕ ğµ objid¼ÇÂ¼Èë»î¶¯×Ô¶¨Òå²ÎÊı,ÓÃÓÚÉ¾³ı
		iObjId = LuaFnCreateMonster(sceneId, x808123_g_iMonsterTypeID, AllPos[iIndex][i][1], AllPos[iIndex][i][2], iAIType, iAIScriptID, iScriptID);
	end
end

--***********************************
--É¾³ı²É¼¯ ği¬mtoÕ ğµ º¯Êı
--***********************************
function x808123_RemoveGatherPoints(sceneId, actId)
	--±éÀúËùÓĞ´Ë²É¼¯ ği¬mÀàĞÍtoÕ ğµ obj²¢É¾³ı
	local monsterobjid = -1
	local monstercount = GetMonsterCount(sceneId)
	for i=0, monstercount-1 do
		monsterobjid = GetMonsterObjID(sceneId,i)
		monstertype = GetMonsterDataID(sceneId, monsterobjid) --¹ÖÎïÀàĞÍ
		if monstertype==x808123_g_iMonsterTypeID then
			LuaFnDeleteMonster(sceneId, monsterobjid)
		end
	end
	
	-- ÏÂÃætoÕ ğµ ´úÂëÎªµ÷ÊÔÊ±ÓÃ,Õı³£Ó¦ÓÃÖĞÃ¿Ìì»î¶¯¿ªÊ¼Ê±¾Íµ÷ÓÃÁË,É¾²É¼¯ ği¬mÊ±¾Í²»ÓÃÁË
	for i = 1, 6 do
        SetActivityParam( sceneId, actId, i, 0 );
	end
end

--**********************************
--ĞÑÄ¿ÌáÊ¾
--**********************************
function x808123_NotifyTip( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end


--**********************************
--ÌØÊâ½»»¥:Ìõ¼şÅĞ¶Ï
--**********************************
function x808123_OnActivateConditionCheck( sceneId, selfId, activatorId )
	-- 1 ¼ì²â¶ÓÎéĞúng²»Ğúng¹»ÈËÊı
	if GetTeamSize(sceneId,activatorId) < 2  then
		--"Ngß½i c¥n t± ğµi 2 ngß¶i."
		x808123_NotifyTip( sceneId, activatorId, "Ngß½i c¥n t± ğµi 2 ngß¶i." )
		return 0
	end
	-- 2 ¼ì²âÍæ¼ÒĞúng²»Ğúng¶Ó³¤
	if GetTeamLeader(sceneId,activatorId) ~= activatorId then
        --Chï có ğµi trß·ng m¾i tiªn hành thu th§p.
        x808123_NotifyTip( sceneId, activatorId, "Chï có ğµi trß·ng m¾i tiªn hành thu th§p." )
		return 0
	end
	
	-- ÏŞÖÆÉíÉÏtoÕ ğµ buff
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, activatorId, x808123_g_iZhenglongZhiguangBuffId) == 1 then
	   x808123_NotifyTip( sceneId, activatorId, "Trân lung chi quang ğã v¶n quanh · trên ngß¶i ngß½i, không c¥n thu th§p nØa." )
	   return 0
	end

	return 1
end

--**********************************
--ÌØÊâ½»»¥:ÏûºÄºÍ¿Û³ı´¦Àí
--**********************************
function x808123_OnActivateDeplete( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--ÌØÊâ½»»¥:¾ÛÆøÀà³É¹¦ÉúĞ§´¦Àí
--**********************************
function x808123_OnActivateEffectOnce( sceneId, selfId, activatorId )

	local SmallBoxBuff = {
				{name="Trân lung chi quang",buff=x808123_g_iZhenglongZhiguangBuffId},  -- buffÅäÖÃTÕi   StandardImpact.txt

    }
	-- °´ÕÕCái này NpctoÕ ğµ ĞÕÃû¸øÍæ¼Ò+buff,
	local szName = GetName(sceneId, selfId)

	if szName == SmallBoxBuff[1].name  then
		LuaFnDeleteMonster(sceneId, selfId)
		--LuaFnSendSpecificImpactToUnit(sceneId, activatorId, activatorId, activatorId, SmallBoxBuff[1].buff, 100 )
		-- ¸ø¶ÓÀïÆäËüÍæ¼Ò¼ÓÉÏbuff
  		local	nearteammembercount = GetNearTeamCount( sceneId, activatorId)
		local mems = {}
		for	i=0,nearteammembercount-1 do
			mems[i] = GetNearTeamMember(sceneId, activatorId, i)
			LuaFnSendSpecificImpactToUnit(sceneId, mems[i], mems[i], mems[i], SmallBoxBuff[1].buff, 100 )
		end
	end

	return 1
end

--**********************************
--ÌØÊâ½»»¥:Òıµ¼ÀàÃ¿Ê±¼ä¼ä¸ôÉúĞ§´¦Àí
--**********************************
function x808123_OnActivateEffectEachTick( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--ÌØÊâ½»»¥:½»»¥¿ªÊ¼Ê±toÕ ğµ ÌØÊâ´¦Àí
--**********************************
function x808123_OnActivateActionStart( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--ÌØÊâ½»»¥:½»»¥³·ÏûÊ±toÕ ğµ ÌØÊâ´¦Àí
--**********************************
function x808123_OnActivateCancel( sceneId, selfId, activatorId )
	return 0
end

--**********************************
--ÌØÊâ½»»¥:½»»¥ÖĞ¶ÏÊ±toÕ ğµ ÌØÊâ´¦Àí
--**********************************
function x808123_OnActivateInterrupt( sceneId, selfId, activatorId )
	return 0
end

-- 311012
-- äîÔË£¬µÄÒ»Ð©ÏÞÖÆ£¬

-- Íæ¼ÒÃ¿É±Ò»¸öÅÜäîÔËµÄÈË£¬ÏµÍ³½«»á¼ÇÂ¼Ò»´Î£¬²¢ÏÔÊ¾ÔÚ¡°ÆäËû¡±½çÃæÖÐ£¬ÏÔÊ¾Îª¡°½Ùäî´ÎÊý£ºXX¡±
-- ¸ÃÊý¾ÝÃ¿Ìì0µãÊ±¸´Î»Îª0
-- µ±Íæ¼ÒµÄ½Ùäî´ÎÊý>=10Ê±£¬Ç¿ÐÐÉèÖÃÆäÉ±ÆøÖµ=10£¬²¢¸´Î»½Ùäî´ÎÊý=0¡£

--MD_KILL_CAOYUN_PAOSHANG_CT = 150  -- Ò»ÌìÊ±¼äÀïÍ·´ò½ÙäîÔËÈËµÄ´ÎÊý
--MD_KILL_CAOYUN_PAOSHANG_PRE_TIME = 151 --ÉÏÒ»´Î´ò½ÙÊ±¼ä 

--½Å±¾ºÅ
x311012_g_ScriptId = 311012
x311012_TIME_2000_01_03_ = 946828868

--**********************************
-- ±»½ÙÖ®ºó
--**********************************
function x311012_OnDacoity( sceneId, selfId, Killer )
	-- ÏÈ¿´ÄãÊÇ²»ÊÇ±»ÈËÉ±µÄ
	local nKiller = Killer
	if LuaFnIsObjValid(sceneId, nKiller)==1  and
				--LuaFnIsCanDoScriptLogic(sceneId, nKiller) == 1 and
				GetCharacterType(sceneId, nKiller) == 3  then
		-- Èç¹ûÊÇ³èÎïÉ±ËÀ£¬ÐèÒª×ª»»³ÉÈË
		nKiller = GetPetCreator(sceneId, nKiller)
	end	

	if nKiller == -1  then
		return
	end
	
	if LuaFnIsObjValid(sceneId, nKiller)==1  and
				LuaFnIsCanDoScriptLogic(sceneId, nKiller) == 1 and
				0 == IsInGuildWar(sceneId, selfId, nKiller) and   --ÊÇ·ñÊÇ¹«»áÕ½Õù
				GetCharacterType(sceneId, nKiller) == 1  then
				
		local nDacoityCount = GetMissionData(sceneId, nKiller, MD_KILL_CAOYUN_PAOSHANG_CT)
		local nPreTime = GetMissionData(sceneId, nKiller, MD_KILL_CAOYUN_PAOSHANG_PRE_TIME)
		local nCurTime = LuaFnGetCurrentTime()

		-- ¿´Ê±¼äÊÇ²»ÊÇ¹ýÁËÒ»Ìì£¬¹ýÁË¾ÍÏÈ¸üÐÂ
		if (nCurTime - nPreTime  >= 3600*24)  or
			 (floor((nCurTime-x311012_TIME_2000_01_03_)/(3600*24)) ~= floor((nPreTime-x311012_TIME_2000_01_03_)/(3600*24)))   then
			nDacoityCount = 0
			nPreTime = nCurTime
			SetMissionData(sceneId, nKiller, MD_KILL_CAOYUN_PAOSHANG_PRE_TIME, nPreTime)
		end
		
		nDacoityCount = nDacoityCount + 1
		
		if nDacoityCount >= 10  then
			-- Ç¿ÖÆÉèÖÃÍæ¼ÒµÄÉ±ÆøÎª10
			local nPkValue = LuaFnGetHumanPKValue(sceneId, nKiller)
			LuaFnSetHumanPKValue(sceneId, nKiller, 10)
			SetMissionData(sceneId, nKiller, MD_KILL_CAOYUN_PAOSHANG_CT, 0)
			
			-- [ QUFEI 2007-11-09 15:36 UPDATE BugID 27611 ]		
			local LogInfo	= format( "[ChangePKValue]:CaoYun sceneId=%d, GUID=%0X, CaoYunCount=%d, PKValueBgn=%d, PKValueEnd=%d",
					sceneId,
					LuaFnObjId2Guid( sceneId, selfId ),
					nDacoityCount,
					nPkValue,
					LuaFnGetHumanPKValue(sceneId, nKiller) )
			WriteCheckLog( sceneId, selfId, LogInfo )
			
			local KillGuid = LuaFnObjId2Guid(sceneId, nKiller)
			LuaFnSendMailToGUID(sceneId, KillGuid, "Hôm nay các hÕ ðã cß¾p Tào v§n 10 l¥n, ðã änh hß·ng ðªn lþi ích cüa ngß¶i ch½i khác, tÕm th¶i m¤t sñ tñ do, l¥n sau suy nghî kî hãy làm!")

		else
			SetMissionData(sceneId, nKiller, MD_KILL_CAOYUN_PAOSHANG_CT, nDacoityCount)
			SetMissionData(sceneId, nKiller, MD_KILL_CAOYUN_PAOSHANG_PRE_TIME, nCurTime)
			BeginEvent(sceneId)
				strText = "S¯ l¥n cß¾p Tào v§n hôm nay cüa các hÕ là " .. tostring(nDacoityCount) .. " l¥n, khi các hÕ cß¾p Tào v§n ðÕt 10 l¥n, s¨ b¸ b¡t vào nhà lao, xin suy nghî kî hãy làm!"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,nKiller)
		end
	end
end

--**********************************
-- ¸üÐÂ±»´ò½ÙµÄÊý¾Ý
--**********************************
function x311012_UpdataDacoityData( sceneId, selfId )

	local nDacoityCount = GetMissionData(sceneId, selfId, MD_KILL_CAOYUN_PAOSHANG_CT)
	local nPreTime = GetMissionData(sceneId, selfId, MD_KILL_CAOYUN_PAOSHANG_PRE_TIME)
	local nCurTime = LuaFnGetCurrentTime()
	
	-- ¿´Ê±¼äÊÇ²»ÊÇ¹ýÁËÒ»Ìì£¬¹ýÁË¾ÍÏÈ¸üÐÂ
	if (nCurTime - nPreTime  >= 3600*24)  or
		 (floor((nCurTime-x311012_TIME_2000_01_03_)/(3600*24)) ~= floor((nPreTime-x311012_TIME_2000_01_03_)/(3600*24)))   then
		nDacoityCount = 0
		nPreTime = nCurTime
		SetMissionData(sceneId, selfId, MD_KILL_CAOYUN_PAOSHANG_PRE_TIME, nPreTime)
		SetMissionData(sceneId, selfId, MD_KILL_CAOYUN_PAOSHANG_CT, nDacoityCount)
	end
	
end


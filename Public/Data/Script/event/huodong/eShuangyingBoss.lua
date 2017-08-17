
-- ´´½¨ÈË: 		ñÒÉÙÎ¢
-- ´´½¨Ê±¼ä: 	2008.6.3
-- ¹¦ÄÜÃèÊö: 	¼«Æ·×°±¸·Å³ö,TÕi Thúc Hà C± Tr¤nÃ¿Ê® phútË¢³öËªÓ°BOSS

-- scriptID = 808040

-- PrintStr("808040")

-- ½Å±¾ID
x808040_g_ScriptId	= 808040


-- C¥n Ë¢³ötoÕ ðµ ËªÓ°BOSStoÕ ðµ Êý¾Ý±í....
-- Thúc Hà C± Tr¤nËæ»úµ giây¢ÐÂ,Ã¿¸ô10 phútË¢³ö1Ö»,Ë¢ÐÂ ði¬m¹²ÓÐ4cái ÒªBOSSËÀÍö²Å»áË¢ÐÂ,»î×Å²»Ë¢ÐÂ
-- ¾ßÌå×ø±êÎª:  ði¬m1(31,38), ði¬m2(32,256), ði¬m3(279,119), ði¬m4(31,145)
x808040_g_BossData = {

	-- ID						BOSStoÕ ðµ  monster id
	-- PosX					×ø±ê
	-- PosY					×ø±ê
	-- BaseAI				BOSStoÕ ðµ BaseAI....
	-- ExtAIScript	BOSStoÕ ðµ À©Õ¹AI....
	-- ScriptID			BOSStoÕ ðµ ½Å±¾ID....

	{ ID=11392, PosX=31,  PosY=38, BaseAI=0, ExtAIScript=0, ScriptID=0 },
	{ ID=11392, PosX=32,  PosY=256, BaseAI=0, ExtAIScript=0, ScriptID=0 },
	{ ID=11392, PosX=279,  PosY=119, BaseAI=0, ExtAIScript=0, ScriptID=0 },
	{ ID=11392, PosX=31,  PosY=145, BaseAI=0, ExtAIScript=0, ScriptID=0 },
}

-- ³¡¾°ID,Thúc Hà C± Tr¤ntoÕ ðµ ³¡¾°IDÎª420
x808040_g_SceneID = 420	
	



--**********************************
--½Å±¾Èë¿Úº¯Êý
--**********************************
function x808040_OnDefaultEvent( sceneId, actId, iNoticeType, param2, param3, param4, param5 )

	--PrintStr("x808040_OnDefaultEvent")
	
	--M· ra »î¶¯.... ¼ä¸ôÊ® phút,²âÊÔµ÷³É20 giây¼´¿É. Ê® phút: 600*1000
	StartOneActivity( sceneId, actId, 600*1000, iNoticeType )
	
end

--**********************************
--ÐÄÌøº¯Êý
--**********************************
function x808040_OnTimer( sceneId, actId, uTime )

	--PrintStr("x808040_OnTimer")
	
	local currHour = GetHour()
	--PrintStr("x808040_OnTimer::currHour:"..currHour)
	-- 0 ði¬mµ½2µ giây¢¹Ö
	if currHour >= 0 and currHour < 2 then
		-- Èç¹û³¡¾°ÖÐÃ»ÓÐËªÓ°BOSS,ÔòË¢³ömµt cáiÀ´.
		x808040_CreateABoss()
	end
	-- 10 ði¬mµ½24µ giây¢¹Ö
	if currHour >= 10 and currHour < 24 then
		-- Èç¹û³¡¾°ÖÐÃ»ÓÐËªÓ°BOSS,ÔòË¢³ömµt cáiÀ´.
		x808040_CreateABoss()
	end


	--¼ì²â»î¶¯Ðúng·ñ¹ýÆÚ
	if CheckActiviyValidity( sceneId, actId ) == 0 then
		StopOneActivity( sceneId, actId )
	end

end

function x808040_CreateABoss()

	--±éÀú³¡¾°ÖÐËùÓÐtoÕ ðµ ¹Ö....¸üÐÂBOSSÖØ½¨×´Ì¬....
	local NeedCreate = 1
	local nMonsterNum = GetMonsterCount(x808040_g_SceneID)
	
	--PrintStr("nMonsterNum:"..nMonsterNum)
	
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(x808040_g_SceneID,i)
		local MosDataID = GetMonsterDataID( x808040_g_SceneID, MonsterId )
		if MosDataID == 11392 then
			-- ñÒÉÙÎ¢,2008.6.26.µ±³¡¾°ÄÚ´æTÕi ¶àcái¹ÖÎïÊ± »áË¢ÐÂ³öÁ½cáiËªÓ°BOSS(µ±³¡¾°ÖÐ»¹ÓÐ±ÈËªÓ°IDÖµ¸ü´ótoÕ ðµ ¹Ö).
			NeedCreate = 0
			break
		else
			NeedCreate = 1
		end
	end

	-- PrintStr("NeedCreate:"..NeedCreate)
	
	-- ³¡¾°ÖÐÃ»ÓÐËªÓ°BOSS,ÔòË¢³ömµt cái.
	if NeedCreate == 1 then 
	
		local BossData = x808040_g_BossData[1]
		
		-- Ëæ»úË¢¹ÖtoÕ ðµ Î»ÖÃ,¹²4cái.
		local rand = random(4)
		--PrintStr("Create Boss Pos:"..rand)

		if rand == 1 then
			BossData			= x808040_g_BossData[1]
		elseif rand == 2 then
			BossData			= x808040_g_BossData[2]
		elseif rand == 3 then
			BossData			= x808040_g_BossData[3]
		else
			BossData			= x808040_g_BossData[4]
		end
		
		-- Ë¢³öËªÓ°BOSS
		LuaFnCreateMonster(x808040_g_SceneID, BossData.ID, BossData.PosX, BossData.PosY, BossData.BaseAI, BossData.ExtAIScript, BossData.ScriptID )
	end
end

-- Í³¼ÆÏûÃðËªÓ°BOSS...
function x808040_OnPlayerPickUpItemFromShangyingBoss( sceneId, selfId, itemId, bagidx )
	-- PrintStr("OnPlayerPickUpItemFromShangyingBoss")
	if itemId == 20310101 or itemId == 20310102 then
		AuditJipinZhuangbei(sceneId, selfId, itemId)
	end
end

function x808040_IsNeedMonster()

	--±éÀú³¡¾°ÖÐËùÓÐtoÕ ðµ ¹Ö....¸üÐÂBOSSÖØ½¨×´Ì¬....
	local NeedCreate = 0
	local nMonsterNum = GetMonsterCount(x808040_g_SceneID)
	
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(x808040_g_SceneID,i)
		local MosDataID = GetMonsterDataID( x808040_g_SceneID, MonsterId )
		if MosDataID == 11392 then
			-- ñÒÉÙÎ¢,2008.6.26.µ±³¡¾°ÄÚ´æTÕi ¶àcái¹ÖÎïÊ± »áË¢ÐÂ³öÁ½cáiËªÓ°BOSS(µ±³¡¾°ÖÐ»¹ÓÐ±ÈËªÓ°IDÖµ¸ü´ótoÕ ðµ ¹Ö).
			NeedCreate = 0
			break
		else
			NeedCreate = 1
		end
	end
	--PrintStr("NeedCreate:"..NeedCreate)
	return NeedCreate
	
end

function x808040_TestMonster()
	if x808040_IsNeedMonster() == 0 then
		PrintStr("Have a Monster in the scene")
	else
		PrintStr("There is no Monster in the scene")
	end
end


--x808040_TestMonster()
--x808040_OnDefaultEvent(420, 166, 0, 0, 0, 0, 0)
--x808040_IsHaveMonster()
--x808040_CreateABoss()

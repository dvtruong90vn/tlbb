--ÐÂÐþÎäµº»î¶¯toÕ ðµ Æô¶¯½Å±¾

--½Å±¾ºÅ
x808120_g_ScriptId	= 808120

--C¥n Ë¢³ötoÕ ðµ 10Ö»À×÷ëNPC,10Ö»³û·ïNPCtoÕ ðµ Êý¾Ý±í....
x808120_g_BossData = {

	-- ID						BOSStoÕ ðµ  monster id
	-- AIType				BOSStoÕ ðµ AIType....
	-- AIScriptID	BOSStoÕ ðµ AIScriptID....
	-- ScriptID			BOSStoÕ ðµ ½Å±¾ID....
	-- NeedCreateNum		¶àÉÙcái....

	{ ID=13288, AIType=3, AIScriptID=-1, ScriptID=808121, NeedCreateNum=10, LifeTime=29*60*1000, Title = "Thiên niên kì thú"},   ----À×÷ë
	{ ID=13289, AIType=3, AIScriptID=-1, ScriptID=808121, NeedCreateNum=10, LifeTime=29*60*1000, Title = "Thiên niên kì thú" },
}

x808120_g_beginTime1 = 21*60 + 15
x808120_g_endTime1 = 21*60 + 44
x808120_g_beginTime2 = 21*60 + 45
x808120_g_endTime2 = 22*60 + 14
x808120_g_beginTime3 = 13*60 + 30
x808120_g_endTime3 = 13*60 + 59

x808120_g_type1 = 184   --13:30
x808120_g_type2 = 187   --18:30
x808120_g_type3 = 188   --19:00
x808120_g_type4 = 172   --21:45


--Ë¢³ö¹ÖtoÕ ðµ NPC×ø±êËæ»ú×ø±ê--13:30 and 18: 30
x808120_g_BossPosData = {
  --posX Ëæ»ú ði¬mtoÕ ðµ X×ø±ê 
  --posY Ëæ»ú ði¬mtoÕ ðµ Y×ø±ê 

  {posX = 186, posZ = 143},
  {posX = 136, posZ = 127},
  {posX = 69, posZ = 133},
  {posX = 142, posZ = 89},
  {posX = 174, posZ = 152},
  {posX = 151, posZ = 218},
  {posX = 168, posZ = 252},
  {posX = 108, posZ = 150},
  {posX = 65, posZ = 146},
  {posX = 126, posZ = 37},  --10
  {posX = 173, posZ = 159},
  {posX = 88, posZ = 150},
  {posX = 136, posZ = 153},
  {posX = 121, posZ = 80},
  {posX = 178, posZ = 78},
  {posX = 163, posZ = 203},
  {posX = 119, posZ = 178},
  {posX = 151, posZ = 132},
  {posX = 155, posZ = 49},
  {posX = 164, posZ = 230},
}


--Ë¢³ö¹ÖtoÕ ðµ NPC×ø±êËæ»ú×ø±ê---µÚ¶þÅú  19:00 and 21:45
x808120_g_BossPosData2 = {
  --posX Ëæ»ú ði¬mtoÕ ðµ X×ø±ê 
  --posY Ëæ»ú ði¬mtoÕ ðµ Y×ø±ê 

  {posX = 99, posZ = 197},
  {posX = 38, posZ = 219},
  {posX = 97, posZ = 235},
  {posX = 81, posZ = 83},
  {posX = 78, posZ = 48},
  {posX = 239, posZ = 51},
  {posX = 247, posZ = 89},
  {posX = 242, posZ = 111},
  {posX = 225, posZ = 235},
  {posX = 260, posZ = 263},  --10
  {posX = 65, posZ = 197},
  {posX = 53, posZ = 226},
  {posX = 56, posZ = 82},
  {posX = 28, posZ = 53},
  {posX = 39, posZ = 48},
  {posX = 254, posZ = 41},
  {posX = 235, posZ = 96},
  {posX = 240, posZ = 221},
  {posX = 238, posZ = 225},
  {posX = 290, posZ = 267},
}

--**********************************
--½Å±¾Èë¿Úº¯Êý
--**********************************
function x808120_OnDefaultEvent( sceneId, actId, iNoticeType, param2, param3, param4, param5 )

  local objId = 0
  if actId == x808120_g_type1 then
		for i, BossData in x808120_g_BossData do
			for j = 0, BossData.NeedCreateNum-1 do
		  	 objId = LuaFnCreateMonster( sceneId, BossData.ID, x808120_g_BossPosData[(i-1)*10+j+1].posX, x808120_g_BossPosData[(i-1)*10+j+1].posZ, BossData.AIType, BossData.AIScriptID, BossData.ScriptID )
		  	 SetCharacterDieTime(sceneId, objId, BossData.LifeTime )
		  	 SetCharacterTitle(sceneId, objId, BossData.Title)
			end	
		end	
	elseif actId == x808120_g_type2 then
		for i, BossData in x808120_g_BossData do
			for j = 0, BossData.NeedCreateNum-1 do
		  	 objId = LuaFnCreateMonster( sceneId, BossData.ID, x808120_g_BossPosData[(i-1)*10+j+1].posX, x808120_g_BossPosData[(i-1)*10+j+1].posZ, BossData.AIType, BossData.AIScriptID, BossData.ScriptID )
		  	 SetCharacterDieTime(sceneId, objId, BossData.LifeTime )
		  	 SetCharacterTitle(sceneId, objId, BossData.Title)
			end	
		end
	elseif actId == x808120_g_type3 then
		for i, BossData in x808120_g_BossData do
			for j = 0, BossData.NeedCreateNum-1 do
		  	 objId = LuaFnCreateMonster( sceneId, BossData.ID, x808120_g_BossPosData2[(i-1)*10+j+1].posX, x808120_g_BossPosData2[(i-1)*10+j+1].posZ, BossData.AIType, BossData.AIScriptID, BossData.ScriptID )
		  	 SetCharacterDieTime(sceneId, objId, BossData.LifeTime )
		  	 SetCharacterTitle(sceneId, objId, BossData.Title)
			end	
		end	
	elseif actId == x808120_g_type4 then
		for i, BossData in x808120_g_BossData do
			for j = 0, BossData.NeedCreateNum-1 do
		  	 objId = LuaFnCreateMonster( sceneId, BossData.ID, x808120_g_BossPosData2[(i-1)*10+j+1].posX, x808120_g_BossPosData2[(i-1)*10+j+1].posZ, BossData.AIType, BossData.AIScriptID, BossData.ScriptID )
		  	 SetCharacterDieTime(sceneId, objId, BossData.LifeTime )
		  	 SetCharacterTitle(sceneId, objId, BossData.Title)
			end	
		end	
	end
	
end

--**********************************
--ÐÄÌøº¯Êý
--**********************************
function x808120_OnTimer( sceneId, actId, uTime )

	--¼ì²â»î¶¯Ðúng·ñ¹ýÆÚ
	--if CheckActiviyValidity( sceneId, actId ) == 0 then
	--	StopOneActivity( sceneId, actId )
	--end

end

--Tr· v«Öµ: 
--0: ²»Ðúng»î¶¯Ê±¼ä
--1: 21: 15·Öµ½21: 44»î¶¯
--2: 21: 45µ½22: 14
--3: 13: 30µ½13: 59
--ºóÀ´µ÷Õû»î¶¯Ê±¼äÃ»ÓÐ¼ÌÐø¸üÐÂ±¾º¯Êý,ËùÒÔÈç¹ûÊ¹ÓÃÇëÏÈ¼ì²éÕýÈ·
function x808120_IsActivityOpen(sceneId)
	local nHour = GetHour();
	local nMinute = GetMinute();
	local nCurTempTime = nHour * 60 + nMinute;
	if nCurTempTime >= x808120_g_beginTime1 and nCurTempTime < x808120_g_endTime1 then
		return 1;
	elseif nCurTempTime >= x808120_g_beginTime2 and nCurTempTime < x808120_g_endTime2 then
		return 2;
	elseif nCurTempTime >= x808120_g_beginTime3 and nCurTempTime < x808120_g_endTime3 then
		return 3;
	end
	return 0;
end

-- 005116
-- ¾µºþBOSS

x005116_g_PreTimeHour_1 = 0
x005116_g_PreTimeHour_2 = 0
x005116_g_PreTimeHour_3 = 0

x005116_g_Boss ={
								{x=141,z=96,	b1=885,b2=887,b3=889,n1="B¡c Häi H²n Giang Ti¬u Long",n2="B¡c Häi xu¤t ðµng Ti¬u Giao",n3="B¡c Häi phiên giang Ti¬u Th§n"},
								{x=250,z=98,	b1=885,b2=887,b3=889,n1="Ðông Häi H²n Giang Ti¬u Long",n2="Ðông Häi xu¤t ðµng Ti¬u Giao",n3="Ðông Häi phiên giang Ti¬u Th§n"},
								
								{x=206,z=253,	b1=885,b2=887,b3=889,n1="Nam Häi H²n Giang Ti¬u Long",n2="Nam Häi xu¤t ðµng Ti¬u Giao",n3="Nam Häi phiên giang Ti¬u Th§n"},
								{x=101,z=256,	b1=885,b2=887,b3=889,n1="Tây Häi H²n Giang Ti¬u Long",n2="Tây Häi xu¤t ðµng Ti¬u Giao",n3="Tây Häi phiên giang Ti¬u Th§n"},
								
								{x=139,z=133,	b1=884,b2=886,b3=888,n1="H²n Giang Long",n2="Xu¤t ðµng giao",n3="Phiên giang th§n"}}

-- Ê¹ÓÃÒ»Ð©±¾³¡¾°Î¨Ò»µÄÈ«¾Ö±äÁ¿À´±£´æÊý¾Ý

-- ÕâÀïµÄ¼ÆÊ±Æ÷ÔÚµÚÒ»Íæ¼Ò½øÈë±¾³¡¾°ºó×Ô¼ºÆô¶¯£¬ÓÀ²»¹Ø±Õ¡£
function x005116_OnSceneTimer(sceneId)

	-- »ñµÃµ±Ç°Ê±¼ä
	--begin modified by zhangguoxin 090207
	--local nHour = GetHourTime()
	local nHour = GetQuarterTime()
	--local temp = floor(nHour/100)*100
	
	-- Ö»¶ÃÔÚ 10:00 4:00 Ö±½ÓµÄÕâ¶ÎÊ±¼äÄÚ²Å¶Ã
	--if nHour-temp>16 and nHour-temp<40    then
	--	return
	--end
	
	local nQuarter = mod(nHour,100);
	-- Ö»¶ÃÔÚ 10:00 4:00 Ö±½ÓµÄÕâ¶ÎÊ±¼äÄÚ²Å¶Ã
	if nQuarter > 16 and nQuarter < 40    then
		return
	end
	--end modified by zhangguoxin 090207
	
	--¹ÖÎï·Ö²¼£ºË¢ÐÂÊ±¹²Ë¢³ö5×éBOSS£¬
	--	µÚ45·ÖÖÓ£¬Á½×éBOSS£¬55¼¶´ø53Ð¡µÜ³öÏÖ¡£()
	--	50·ÖÖÓ£¬Á½×éBOSS£¬55¼¶´ø53Ð¡µÜ³öÏÖ¡£	()
	--	55·ÖÖÓ£¬Ò»×éBOSS£¬60¼¶´ø58Ð¡µÜ³öÏÖ¡£	()
	--	×îºóÒ»×éBOSS³öÏÖÊ±ÏµÍ³¹«¸æ¡£	
	
	-- µÚ45·ÖÖÓ£¬Ë¢µÚÒ»¶ÓBOSS
	if GetMinute() >= 45 and GetMinute() < 50  then 
		-- ±¾Ð¡Ê±µÄÕâ×é¹ÖÒÑ¾­Ë¢¹ý
		if nHour == x005116_g_PreTimeHour_1  then
			return
		end
		
		-- ¼ÇÂ¼Õâ¸öÊ±¼äµã
		x005116_g_PreTimeHour_1 = nHour
		
		-- ¼ì²âÊÇ²»ÊÇÂú×ã´´½¨¹ÖµÄÌõ¼þ
		-- ¼ì²â³¡¾°ÖÐ x005116_g_Boss[1].b1 ÊÇ²»ÊÇ»¹´æÔÚ£¬
		-- ´æÔÚ¾Í²»×ö²Ù×÷£¬·ñÔòÇå³ýÐ¡¹ÖÈ»ºóË¢³öÐÂµÄÀ´
		if x005116_IsHaveMonster( sceneId, "B¡c Häi H²n Giang Ti¬u Long" ) == 0  then
			x005116_UpDateMonster( sceneId, 1, 10 )
		end
		if x005116_IsHaveMonster( sceneId, "Ðông Häi H²n Giang Ti¬u Long" ) == 0  then
			x005116_UpDateMonster( sceneId, 2, 11 )
		end

		
	end
	
	-- 55·ÖÖÓ£¬Ë¢µÚ¶þ¶ÓBOSS
	if GetMinute() >= 50 and GetMinute() < 55  then
		-- ±¾Ð¡Ê±µÄÕâ×é¹ÖÒÑ¾­Ë¢¹ý
		if nHour == x005116_g_PreTimeHour_2  then
			return
		end
		
		-- ¼ÇÂ¼Õâ¸öÊ±¼äµã
		x005116_g_PreTimeHour_2 = nHour
		
		-- ¼ì²âÊÇ²»ÊÇÂú×ã´´½¨¹ÖµÄÌõ¼þ
		if x005116_IsHaveMonster( sceneId, "Nam Häi H²n Giang Ti¬u Long" ) == 0  then
			x005116_UpDateMonster( sceneId, 3, 12 )
		end
		if x005116_IsHaveMonster( sceneId, "Tây Häi H²n Giang Ti¬u Long" ) == 0  then
			x005116_UpDateMonster( sceneId, 4, 13 )
		end
		
	end
	
	-- 60·ÖÖÓ£¬Ë¢µÚÈý¶ÓBOSS
	if GetMinute() >= 55 	then
		-- ±¾Ð¡Ê±µÄÕâ×é¹ÖÒÑ¾­Ë¢¹ý
		if nHour == x005116_g_PreTimeHour_3  then
			return
		end
		
		-- ¼ÇÂ¼Õâ¸öÊ±¼äµã
		x005116_g_PreTimeHour_3 = nHour
		
		-- ¼ì²âÊÇ²»ÊÇÂú×ã´´½¨¹ÖµÄÌõ¼þ
		if x005116_IsHaveMonster( sceneId, "H²n Giang Long" ) == 0  then
			x005116_UpDateMonster( sceneId, 5, 14 )
		end
	end
	
		
end

function x005116_IsHaveMonster( sceneId, MonsterName )
	local nMonsterNum = GetMonsterCount(sceneId)
	local bHaveMonster = 0
	for i=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,i)
		if GetName(sceneId, nMonsterId)  == MonsterName  then
			bHaveMonster = 1
		end
	end
	return bHaveMonster
end

function x005116_UpDateMonster( sceneId, nIndex, nGroupId )

	-- ÏÈÇå³ýÕâ¸ö×éÀïÍ·µÄËùÓÐÐ¡¹Ö
	local nMonsterNum = GetMonsterCount(sceneId)
	local bHaveMonster = 0
	for i=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,i)
		if GetName(sceneId, nMonsterId) == x005116_g_Boss[nIndex].n1  then
			LuaFnDeleteMonster(sceneId, nMonsterId)
		end
		
		if GetName(sceneId, nMonsterId) == x005116_g_Boss[nIndex].n2  then
			LuaFnDeleteMonster(sceneId, nMonsterId)
		end
		
		if GetName(sceneId, nMonsterId) == x005116_g_Boss[nIndex].n3  then
			LuaFnDeleteMonster(sceneId, nMonsterId)
		end
	end
	
	-- °Ñ¹ÖÈ«´´½¨³öÀ´
	local nMonId
	nMonId = LuaFnCreateMonster(sceneId, x005116_g_Boss[nIndex].b1, x005116_g_Boss[nIndex].x, x005116_g_Boss[nIndex].z, 19, 197, 005117)
	SetCharacterName(sceneId, nMonId, x005116_g_Boss[nIndex].n1)
	SetMonsterGroupID(sceneId, nMonId, nGroupId)
	SetCharacterTitle(sceneId, nMonId, "H²n Giang Long")
	
	nMonId = LuaFnCreateMonster(sceneId, x005116_g_Boss[nIndex].b2, x005116_g_Boss[nIndex].x+2, x005116_g_Boss[nIndex].z, 19, 198, 005118)
	SetCharacterName(sceneId, nMonId, x005116_g_Boss[nIndex].n2)
	SetMonsterGroupID(sceneId, nMonId, nGroupId)
	SetCharacterTitle(sceneId, nMonId, "H²n Giang Long")
	
	nMonId = LuaFnCreateMonster(sceneId, x005116_g_Boss[nIndex].b3, x005116_g_Boss[nIndex].x-2, x005116_g_Boss[nIndex].z, 19, 199, 005119)
	SetCharacterName(sceneId, nMonId, x005116_g_Boss[nIndex].n3)
	SetMonsterGroupID(sceneId, nMonId, nGroupId)
	SetCharacterTitle(sceneId, nMonId, "H²n Giang Long")
	
	if nIndex == 5   then
		--µ±ÄêºáÐÐä±Ñô½­µÄË®Ôô¡°»ì½­Áú¡±ÒÑ¾­´øÁì²¿ÏÂ³öÏÖÔÚ¾µºþ£¡ÇëÌìÏÂÓ¢ÐÛËÙÈ¥½ËÃð£¡
		-- Ë¢×ÜBOSSµÄÊ±ºò£¬¸øÒ»¸öÊÀ½ç¹«¸æ
		
		local str = "H²n Giang Long thüy t£c T¥m Dß½ng Giang ðang tung hoành th¯ng lînh thuµc hÕ xu¤t hi®n · Kính H°! Xin các v¸ anh hùng hãy nhanh chóng ði tiêu di®t!"
		BroadMsgByChatPipe(sceneId, -1, str, 4)
	end
	
	
end


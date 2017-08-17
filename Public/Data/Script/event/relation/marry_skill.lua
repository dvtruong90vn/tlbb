--·òÆÞ¼¼ÄÜÑ§Ï°

--½Å±¾ºÅ
x806016_g_ScriptId		= 806016


--ÐÄÐÄÏàÓ¡¼¼ÄÜ±í....
x806016_g_skillList_XXXY = {

	{id=260, name="KÛ Nång Phu Thê ( C¤p 1 )", firendPt=1000, lvM=0, lvF=0, exp=0, money=0},
	{id=261, name="KÛ Nång Phu Thê ( C¤p 2 )", firendPt=2000, lvM=0, lvF=0, exp=0, money=442},
	{id=262, name="KÛ Nång Phu Thê ( C¤p 3 )", firendPt=3000, lvM=0, lvF=0, exp=0, money=967},
	{id=263, name="KÛ Nång Phu Thê ( C¤p 4 )", firendPt=4000, lvM=0, lvF=0, exp=0, money=1800},
	{id=264, name="KÛ Nång Phu Thê ( C¤p 5 )", firendPt=5000, lvM=0, lvF=0, exp=0, money=3009},
	{id=265, name="KÛ Nång Phu Thê ( C¤p 6 )", firendPt=6000, lvM=0, lvF=0, exp=0, money=4660},
	{id=266, name="KÛ Nång Phu Thê ( C¤p 7 )", firendPt=7000, lvM=0, lvF=0, exp=0, money=6825},
	{id=267, name="KÛ Nång Phu Thê ( C¤p 8 )", firendPt=8000, lvM=0, lvF=0, exp=0, money=13322},
	{id=268, name="KÛ Nång Phu Thê ( C¤p 9 )", firendPt=9000, lvM=0, lvF=0, exp=0, money=23449}

};

--Í¬ÆøÁ¬Ö¦¼¼ÄÜ±í....
x806016_g_skillList_TQLZ = {

	{id=250, name="Ð°ng Khí Liên Chi ( C¤p 1 )", firendPt=1000, lvM=35, lvF=20, exp=24739, money=10000},
	{id=251, name="Ð°ng Khí Liên Chi ( C¤p 2 )", firendPt=3000, lvM=45, lvF=30, exp=53745, money=40000},
	{id=252, name="Ð°ng Khí Liên Chi ( C¤p 3 )", firendPt=5000, lvM=55, lvF=40, exp=116762, money=100000},
	{id=253, name="Ð°ng Khí Liên Chi ( C¤p 4 )", firendPt=7000, lvM=65, lvF=50, exp=253665, money=200000},
	{id=254, name="Ð°ng Khí Liên Chi ( C¤p 5 )", firendPt=9999, lvM=75, lvF=60, exp=551086, money=500000},

};

--Ìì³¤µØ¾Ã¼¼ÄÜ±í....
x806016_g_skillList_TCDJ = {

	{id=255, name="Thiên Trß¶ng Ð¸a C¥u ( C¤p 1 )", firendPt=1000, lvM=35, lvF=20, exp=24739, money=10000},
	{id=256, name="Thiên Trß¶ng Ð¸a C¥u ( C¤p 2 )", firendPt=3000, lvM=45, lvF=30, exp=53745, money=40000},
	{id=257, name="Thiên Trß¶ng Ð¸a C¥u ( C¤p 3 )", firendPt=5000, lvM=55, lvF=40, exp=116762, money=100000},
	{id=258, name="Thiên Trß¶ng Ð¸a C¥u ( C¤p 4 )", firendPt=7000, lvM=65, lvF=50, exp=253665, money=200000},
	{id=259, name="Thiên Trß¶ng Ð¸a C¥u ( C¤p 5 )", firendPt=9999, lvM=75, lvF=60, exp=551086, money=500000},

	
};

--ÐÎÓ°²»Àë¼¼ÄÜ±í....
x806016_g_skillList_XYBL = {

	{id=269, name="Hình Änh B¤t Ly ( C¤p 1 )", firendPt=1000, lvM=35, lvF=20, exp=24739, money=10000},
	{id=270, name="Hình Änh B¤t Ly ( C¤p 2 )", firendPt=3000, lvM=45, lvF=30, exp=53745, money=40000},
	{id=271, name="Hình Änh B¤t Ly ( C¤p 3 )", firendPt=5000, lvM=55, lvF=40, exp=116762, money=100000},
	{id=272, name="Hình Änh B¤t Ly ( C¤p 4 )", firendPt=7000, lvM=65, lvF=50, exp=253665, money=200000},
	{id=273, name="Hình Änh B¤t Ly ( C¤p 5 )", firendPt=9999, lvM=75, lvF=60, exp=551086, money=500000},

};

--ÐÎÓ°²»Àë1¼¶¶ÔÓ¦µÄ¼¼ÄÜID
x806016_g_xybl_SkillID = 269
--Ñ§Ï°ÐÎÓ°²»Àë1¼¶ÐèÒªµÄÎïÆ·ID
x806016_g_xybl_ItemID = 30308059

--ÐèÒªÊÀ½ç¹«¸æµÄ¼¼ÄÜ±àºÅ±í
x806016_g_MaxMarrySkill_T = {268,253,254,258,259,272,273};

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x806016_OnDefaultEvent(sceneId, selfId, targetId)

	local selectEventId	= GetNumText();

	if selectEventId == 0 then
		BeginEvent(sceneId);
			AddNumText(sceneId, x806016_g_ScriptId, "H÷c t§p #GTâm Ð¥u Ý Hþp", 12, 11);
			AddNumText(sceneId, x806016_g_ScriptId, "H÷c t§p #GÐ°ng Khí Liên Chi", 12, 12);
			AddNumText(sceneId, x806016_g_ScriptId, "H÷c t§p #GThiên Trß¶ng Ð¸a C¥u", 12, 13);
			AddNumText(sceneId, x806016_g_ScriptId, "H÷c t§p #GHình Änh B¤t Ly", 12, 14);
		EndEvent(sceneId);
		DispatchEventList(sceneId, selfId, targetId);

	elseif selectEventId == 11 then

		local ret, nextLevel, maleId, femaleId = x806016_CheckStudySkill( sceneId, selfId, targetId, x806016_g_skillList_XXXY );
		if ret > 0 then
			local skill = x806016_g_skillList_XXXY[nextLevel+1];
			BeginEvent(sceneId);
				AddText(sceneId, "Ý Hþp Tâm Ð¥u có th¬ gia tång th¬ lñc, kÛ nång c¤p b§c càng cao gia tång th¬ lñc càng nhi«u.");
				if skill.money > 0 then
					AddText(sceneId, "Phu quân c¥n t¯n #{_EXCHG"..skill.money.."} ð¬ h÷c t§p "..skill.name..".");
				end
				if nextLevel > 0 then
					AddNumText(sceneId, x806016_g_ScriptId, "Thång c¤p kÛ nång", 12, 21);
				else
					AddNumText(sceneId, x806016_g_ScriptId, "H÷c t§p kÛ nång", 12, 21);
				end
			EndEvent(sceneId);
			DispatchEventList(sceneId, selfId, targetId);
		end

	elseif selectEventId == 12 then

		local ret, nextLevel, maleId, femaleId = x806016_CheckStudySkill( sceneId, selfId, targetId, x806016_g_skillList_TQLZ );
		if ret > 0 then
			local skill = x806016_g_skillList_TQLZ[nextLevel+1];
			BeginEvent(sceneId);
				AddText(sceneId, "  Ð°ng Khí Liên Chi có th¬ khôi phøc huyªt, kÛ nång c¤p b§c càng cao, khôi phøc  huyªt càng nhi«u.");
				AddText(sceneId, "  H÷c t§p "..skill.name.." Phu quân c¥n t¯n "..skill.exp.." Kinh nghi®m cùng #{_EXCHG"..skill.money.."}.");
				AddText(sceneId, "  Ð°ng th¶i c¥n phu thê häo hæu ðµ ðÕt t¾i #G"..skill.firendPt.."#W, Phu quân c¤p b§c ðÕt t¾i c¤p "..skill.lvM..", Nß½ng tØ c¤p b§c ðÕt t¾i c¤p "..skill.lvF..".");
				if nextLevel > 0 then
					AddNumText(sceneId, x806016_g_ScriptId, "Thång c¤p kÛ nång", 12, 22);
				else
					AddNumText(sceneId, x806016_g_ScriptId, "H÷c t§p kÛ nång", 12, 22);
				end
			EndEvent(sceneId);
			DispatchEventList(sceneId, selfId, targetId);
		end

	elseif selectEventId == 13 then

		local ret, nextLevel, maleId, femaleId = x806016_CheckStudySkill( sceneId, selfId, targetId, x806016_g_skillList_TCDJ );
		if ret > 0 then
			local skill = x806016_g_skillList_TCDJ[nextLevel+1];
			BeginEvent(sceneId);
				AddText(sceneId, "  Thiên Trß¶ng Ð¸a C¥u có h°i sinh lÕi ph¯i ngçu cûng h°i phøc nh¤t ð¸nh tï l® huyªt khí, kÛ nång c¤p b§c càng cao, th¶i gian phøc h°i càng ít.");
				AddText(sceneId, "  H÷c t§p "..skill.name.." Phu quân c¥n t¯n "..skill.exp.."Kinh nghi®m cùng #{_EXCHG"..skill.money.."}.");
				AddText(sceneId, "  Ð°ng th¶i c¥n phu thê häo hæu ðµ ðÕt t¾i #G"..skill.firendPt.."#W, Phu quân c¤p b§c ðÕt t¾i c¤p "..skill.lvM..", Nß½ng tØ c¤p b§c ðÕt t¾i c¤p"..skill.lvF..".");
				if nextLevel > 0 then
					AddNumText(sceneId, x806016_g_ScriptId, "Thång c¤p kÛ nång", 12, 23);
				else
					AddNumText(sceneId, x806016_g_ScriptId, "H÷c t§p kÛ nång", 12, 23);
				end
			EndEvent(sceneId);
			DispatchEventList(sceneId, selfId, targetId);
		end

	elseif selectEventId == 14 then

		local ret, nextLevel, maleId, femaleId = x806016_CheckStudySkill( sceneId, selfId, targetId, x806016_g_skillList_XYBL );
		if ret > 0 then
			local skill = x806016_g_skillList_XYBL[nextLevel+1];
			BeginEvent(sceneId);
				AddText(sceneId, "  Hình änh b¤t li có th¬ trong nháy m¡t di chuy¬n ðªn v¸ trí phu thê, kÛ nång c¤p b§c càng cao, th¶i gian càng h°i phøc ít.");
				if skill.id == x806016_g_xybl_SkillID then
					AddText(sceneId, "  H÷c t§p "..skill.name.." Phu quân c¥n có #G#{_ITEM"..tostring(x806016_g_xybl_ItemID).."}#W.");
				else
					AddText(sceneId, "  H÷c t§p "..skill.name.." Phu quân c¥n t¯n "..skill.exp.." Kinh nghi®m cùng #{_EXCHG"..skill.money.."}.");
				end
				AddText(sceneId, "  Ð°ng th¶i c¥n phu thê häo hæu ðµ ðÕt t¾i #G"..skill.firendPt.."#W, Phu quân c¤p b§c ðÕt t¾i c¤p"..skill.lvM..", Nß½ng tØ c¤p b§c ðÕt t¾i c¤p "..skill.lvF..".");
				if nextLevel > 0 then
					AddNumText(sceneId, x806016_g_ScriptId, "Thång c¤p kÛ nång", 12, 24);
				else
					AddNumText(sceneId, x806016_g_ScriptId, "H÷c t§p kÛ nång", 12, 24);
				end
			EndEvent(sceneId);
			DispatchEventList(sceneId, selfId, targetId);
		end

	elseif selectEventId == 21 then

		x806016_StudySkill(sceneId, selfId, targetId, x806016_g_skillList_XXXY)

	elseif selectEventId == 22 then

		x806016_StudySkill(sceneId, selfId, targetId, x806016_g_skillList_TQLZ)

	elseif selectEventId == 23 then

		x806016_StudySkill(sceneId, selfId, targetId, x806016_g_skillList_TCDJ)

	elseif selectEventId == 24 then

		x806016_StudySkill(sceneId, selfId, targetId, x806016_g_skillList_XYBL)

	end

end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x806016_OnEnumerate(sceneId, selfId, targetId)
	local isMarried = LuaFnIsMarried(sceneId, selfId);
	if isMarried and isMarried > 0 then
		AddNumText(sceneId, x806016_g_ScriptId, "H÷c kÛ nång Phu Thê", 12, 0);
	end
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÑ§Ï°Ä³Ïî·òÆÞ¼¼ÄÜ....
--**********************************
function x806016_CheckStudySkill( sceneId, selfId, targetId, SkillList )

	--Ç°ÌáÌõ¼þ
	local szMsg = "Nªu mu¯n h÷c kÛ nång phu thê, m¶i 2 bên Phu quân và Nß½ng tØ cùng h÷p thành mµt nhóm r°i t¾i tìm ta"
	if LuaFnHasTeam(sceneId, selfId) == 0 then
		x806016_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end
	
	szMsg = "Nhóm chï có th¬ do hai bên phu thê l§p thành, trong nhóm không th¬ có thành viên khác"
	if LuaFnGetTeamSize(sceneId, selfId) ~= 2 then
		x806016_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end

	szMsg = "Chï có 2 ngß¶i ð«u ðªn bên ta m¾i có th¬ h÷c kÛ nång này"
	local nearNum = GetNearTeamCount(sceneId, selfId);
	if nearNum ~= 2 then
		x806016_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end

	szMsg = "Không phäi là phu thê, không th¬ h÷c kÛ nång phu thê."
	local maleId = -1;
	local femaleId = -1;
	for nearIndex = 0, nearNum - 1 do
		local memId = GetNearTeamMember(sceneId, selfId, nearIndex);
		local sexType = LuaFnGetSex(sceneId, memId);
		if sexType == 1 then
			maleId = memId;
		else
			femaleId = memId;
		end
	end
	
	if maleId == -1 or femaleId == -1 then
		x806016_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end
	
	local isSpouses = LuaFnIsSpouses(sceneId, maleId, femaleId);
	if isSpouses and isSpouses > 0 then
	else
		x806016_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end

	szMsg = "Nµi bµ b¸ l²i, file không th¬ thñc hi®n bình thß¶ng."
	if LuaFnIsCanDoScriptLogic(sceneId, maleId) ~= 1 then
		return 0;
	end
	if LuaFnIsCanDoScriptLogic(sceneId, femaleId) ~= 1 then
		return 0;
	end
	
	szMsg = "Hai bên b¡t buµc phäi tr· thành bÕn hæu m¾i có ðßþc kÛ nång phu thê."
	local maleIsFirend, femaleIsFirend;
	maleIsFirend = LuaFnIsFriend(sceneId, maleId, femaleId);
	femaleIsFirend = LuaFnIsFriend(sceneId, femaleId, maleId);
	if maleIsFirend and maleIsFirend == 1 and femaleIsFirend and femaleIsFirend == 1 then
	else
		x806016_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end

	local maleSkillLevel, femaleSkillLevel;
	maleSkillLevel = -1;
	femaleSkillLevel = -1;

	local skill, skillLevel;
	skillLevel = 0;
	--¼ì²éÍæ¼ÒµÄ·òÆÞ¼¼ÄÜÒÑ¾­Ñ§µ½¼¸¼¶
	for _, skill in SkillList do
		local maleHaveSkill = HaveSkill(sceneId, maleId, skill.id);
		if maleHaveSkill and maleHaveSkill > 0 then
			maleSkillLevel = skillLevel;
		end
		
		local femaleHaveSkill = HaveSkill(sceneId, femaleId, skill.id);
		if femaleHaveSkill and femaleHaveSkill > 0 then
			femaleSkillLevel = skillLevel;
		end
		skillLevel  =skillLevel + 1;
	end
	
	local maxSkillLevel = skillLevel - 1;
	
	szMsg = "Các ngß½i ðã h÷c xong t¤t cä kÛ nång phu thê."
	if maleSkillLevel >= maxSkillLevel then
		x806016_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end

	nextLevel = femaleSkillLevel+1;

	return 1, nextLevel, maleId, femaleId;

end

--**********************************
--H÷c t§p kÛ nång
--**********************************
function x806016_StudySkill(sceneId, selfId, targetId, SkillList)

	--¼ì²â»ù±¾Ìõ¼þ....
	local ret, nextLevel, maleId, femaleId = x806016_CheckStudySkill( sceneId, selfId, targetId, SkillList );
	if ret == 0 then
		return
	end

	local skill = SkillList[nextLevel+1];

	szMsg = "Ðµ hæu häo cüa hai bên c¥n ðÕt t¾i %d, m¾i có th¬ h÷c ðßþc 1 kÛ nång phu thê."
	local maleFirendPt, femaleFirendPt, needFirendPt;
	maleFirendPt =  LuaFnGetFriendPoint(sceneId, maleId, femaleId);
	femaleFirendPt =  LuaFnGetFriendPoint(sceneId, femaleId, maleId);
	needFirendPt = skill.firendPt;
	if maleFirendPt >= needFirendPt and femaleFirendPt >= needFirendPt then
	else
		szMsg = format(szMsg, needFirendPt);
		x806016_MessageBox(sceneId, selfId, targetId, szMsg);
		return
	end

	szMsg = "Phu quân c¤p b§c phäi ðÕt t¾i %d m¾i có th¬ h÷c ðßþc tiªp theo hÕng kÛ nång phu thê."
	if GetLevel( sceneId, maleId ) < skill.lvM then
		szMsg = format(szMsg, skill.lvM);
		x806016_MessageBox(sceneId, selfId, targetId, szMsg);
		return
	end

	szMsg = "Nß½ng tØ c¤p b§c phäi ðÕt t¾i %d m¾i có th¬ h÷c ðßþc tiªp theo hÕng kÛ nång phu thê."
	if GetLevel( sceneId, femaleId ) < skill.lvF then
		szMsg = format(szMsg, skill.lvF);
		x806016_MessageBox(sceneId, selfId, targetId, szMsg);
		return
	end
	
	if skill.id == x806016_g_xybl_SkillID then
		if HaveItemInBag(sceneId,maleId,x806016_g_xybl_ItemID)<0 then
			x806016_MessageBox(sceneId, selfId, targetId, "Phu quân c¥n có #G#{_ITEM"..tostring(x806016_g_xybl_ItemID).."}#W Tài nång h÷c t§p nên kÛ nång!");
			return
		end
		if LuaFnGetAvailableItemCount(sceneId,maleId,x806016_g_xybl_ItemID)<=0 then
			x806016_MessageBox(sceneId, selfId, targetId, "V§t ph¦m c¥n thiªt #G#{_ITEM"..tostring(x806016_g_xybl_ItemID).."}#WÐã b¸ khóa, thïnh giäi khóa xong h÷c lÕi!");
			return
		end
		--¿Û³ýÎïÆ·
		LuaFnDelAvailableItem(sceneId,maleId,x806016_g_xybl_ItemID,1)
	else
		szMsg = "Phu quân kinh nghi®m phäi ðÕt t¾i %d m¾i có th¬ h÷c ðßþc tiªp theo hÕng kÛ nång phu thê."
		if GetExp(sceneId, maleId) < skill.exp then
			szMsg = format(szMsg, skill.exp);
			x806016_MessageBox(sceneId, selfId, targetId, szMsg);
			return
		end
	
		szMsg = "Phu quân c¥n mang theo #{_EXCHG%d} m¾i có th¬ h÷c t§p kÛ nång."
		local maleMoney, needMoney;
		maleMoney = LuaFnGetMoney(sceneId, maleId);
		needMoney = skill.money;
		
		if maleMoney and maleMoney+GetMoneyJZ(sceneId, maleId) >= needMoney then
		else
			szMsg = format(szMsg, needMoney);
			x806016_MessageBox(sceneId, selfId, targetId, szMsg);
			return
		end
	
		--¿Û³ýÄÐ·½ÉíÉÏ½ðÇ®....
		LuaFnCostMoneyWithPriority(sceneId, maleId, needMoney);
		
		--¿Û³ýÄÐ·½Éí¾­Ñé....
		if skill.exp > 0 then
			LuaFnAddExp( sceneId, maleId, -skill.exp );
		end
	end

	--Ôö¼ÓÒ»¸ö·òÆÞ¼¼ÄÜ¸øË«·½
	x806016_MyAddSkill(sceneId, maleId, SkillList, nextLevel);
	x806016_MyAddSkill( sceneId, femaleId, SkillList, nextLevel);
	x806016_SendWorldMsg(sceneId,maleId,femaleId,SkillList, nextLevel)
	--Ìí¼ÓÍ³¼ÆÐÅÏ¢
	x806016_LogCoupleAction(sceneId,maleId,femaleId,SkillList, nextLevel)
	
	--³É¹¦Ñ§Ï°ºó¹Ø±Õ¶Ô»°´°¿Ú....
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)
	
	return

end

--**********************************
--Ìí¼ÓÒ»Ïî·òÆÞ¼¼ÄÜ
--**********************************
function x806016_MyAddSkill(sceneId, selfId, SkillList, nextLevel)

	--É¾³ý·òÆÞ¼¼ÄÜ
	local tempSkill;
	for _, tempSkill in SkillList do
		local haveSkill = HaveSkill(sceneId, selfId, tempSkill.id);
		if haveSkill and haveSkill > 0 then
			DelSkill(sceneId, selfId, tempSkill.id);
		end
	end

	local skill = SkillList[nextLevel+1];

	AddSkill(sceneId, selfId, skill.id);
	--Msg2Player( sceneId, selfId, "ÄãÑ§»áÁË"..skill.name.."¡£", MSG2PLAYER_PARA )
	
	--BeginEvent(sceneId)
		--AddText(sceneId, "ÄãÑ§»áÁË"..skill.name.."¡£");
	--EndEvent(sceneId)
	--DispatchMissionTips(sceneId,selfId)
	
	if skill.id == x806016_g_xybl_SkillID then
		x806016_SendSkillMsg_XYBL(sceneId,selfId,skill.name)
	else
		x806016_SendSkillMsg(sceneId,selfId,skill.exp,skill.money,skill.name)
	end
end

--**********************************
--¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x806016_MessageBox(sceneId, selfId, targetId, msg)
	BeginEvent(sceneId);
		AddText(sceneId, msg);
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);
end

--Ñ§Ï°ÐÎÓ°²»Àë1¼¶Ê±µÄÌáÊ¾ÐÅÏ¢
function x806016_SendSkillMsg_XYBL(sceneId,selfId,skname)
	if skname then
		local str = format("#IQuý phu thê ð°ng tâm hi®p lñc, bài tr× muôn vàn khó khån, · Phu quân hao phí #Y#{_ITEM"..tostring(x806016_g_xybl_ItemID).."}#Ir¯t cøc h÷c xong kÛ nång phu thê#Y%s.",skname)
		BeginEvent(sceneId)
			AddText(sceneId, str);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end
end

--ÏµÍ³ÌáÊ¾ÐÅÏ¢
function x806016_SendSkillMsg(sceneId,selfId,exp,money,skname)
	if exp and money and skname then
		local moneyt = format("#{_EXCHG%d}",money)
		local str = format("#IQuý phu thê ð°ng tâm hi®p lñc, bài tr× muôn vàn khó khån, · Phu quân hao phí  #Y%d kinh nghi®m cùng %s ti«n tài #Ir¯t cøc h÷c xong kÛ nång phu thê #Y%s.",exp,moneyt,skname)
		BeginEvent(sceneId)
			AddText(sceneId, str);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end
end

--ÊÀ½çÌáÊ¾ÐÅÏ¢
function x806016_SendWorldMsg(sceneId,maleId,femaleId,SkillList, nextLevel)
	local skill = SkillList[nextLevel+1]
	
	if maleId and femaleId and skill then
		for _, tempId in x806016_g_MaxMarrySkill_T do
			if tempId == skill.id then
					local uname = format("#{_INFOUSR%s}",GetName(sceneId,maleId))
					local oname = format("#{_INFOUSR%s}",GetName(sceneId,femaleId))
					local str = format("#W%s#I cùng #W%s#I phu thê ð°ng tâm, r¯t cøc kh± tçn cam lai, h÷c xong #cff66cc%s#I, không h± là s· hæu phu thê  mçu.",uname,oname,skill.name)
					BroadMsgByChatPipe(sceneId, maleId, str, 4)
				return
			end -- end if tempId
		end -- end for
	end -- end if maleId
	
end

--Í³¼ÆÐÅÏ¢
function x806016_LogCoupleAction(sceneId,tid1,tid2,SkillList,nextLevel)
	local skill = SkillList[nextLevel+1]
	local logid = COUPLE_LOG_LEVELUPSKILL
	if nextLevel == 0 then logid = COUPLE_LOG_LEARNSKILL end
	
	if skill and logid and COUPLE_LOG_DETAIL[logid] then
		--CPL:±àºÅ,ËµÃ÷,GUID1,GUID2,¼¼ÄÜID,¼¼ÄÜÃû³Æ,Ê±¼ä
		local logstr = format("CPL:%d,%s,0x%X,0x%X,%d,%s",
									 				logid,
									 				COUPLE_LOG_DETAIL[logid],
									 				LuaFnGetGUID(sceneId,tid1),
									 				LuaFnGetGUID(sceneId,tid2),
									 				skill.id,
									 				skill.name)
		LogCouple(logstr)
	end
end

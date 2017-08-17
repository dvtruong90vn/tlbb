
-- çÎç¿·å³ÆºÅ	20090220 by zhangguoxin
x894100_g_scriptId = 894100
--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í

--Õ÷ÄÏÏÈ·æÓ¡
x894100_g_XuanFuID = 20310184

--¶Ò»»ÐèÇó
x894100_g_Cost = {30,60,90,120,150,180,210}
--³ÆºÅid
x894100_g_TitleID = {447,448,449,450,451,471,472,473,474,475,476,477,478,479,480}
--²»Í¬µÈ¼¶µÄÊ§°ÜÌáÊ¾
x894100_g_FailMsg = {"Ð±i danh hi®u này c¥n #W30 cái Chinh Nam Tiên Phong ?n","Ð±i danh hi®u này c¥n #W60 cái Chinh Nam Tiên Phong ?n","Ð±i danh hi®u này c¥n #W90 cái Chinh Nam Tiên Phong ?n","Ð±i danh hi®u này c¥n #W120 cái Chinh Nam Tiên Phong ?n","Ð±i danh hi®u này c¥n #W150 cái Chinh Nam Tiên Phong ?n","Ð±i danh hi®u này c¥n #W180 cái Chinh Nam Tiên Phong ?n","Ð±i danh hi®u này c¥n #W210 cái Chinh Nam Tiên Phong ?n"}
--³ÆºÅµÈ¼¶
x894100_g_TitleLvNum = 7;
--³ÆºÅidx ³ÌÐòÓÃ
x894100_g_TitleIndex = 19;


function x894100_ChangePiaoMiaoTitle(sceneId, selfId, targetId,titleLv)
	
	--DeleteTitle(sceneId,selfId,x894100_g_TitleIndex);
	--ºÏ·¨ÐÔ¼ì²é
	if titleLv < 1 and titleLv > x894100_g_TitleLvNum then
		return
	end
	
	--½ÇÉ«ÏÖÓÐ³ÆºÅ	
	local HadTitleID = GetTitle(sceneId,selfId,x894100_g_TitleIndex)
	
	if (titleLv == 1) then
		--ÊÇ·ñÒÑÓÐ³ÆºÅ
		if (HadTitleID == x894100_g_TitleID[1]
				or HadTitleID == x894100_g_TitleID[2]
				or HadTitleID == x894100_g_TitleID[3]
				or HadTitleID == x894100_g_TitleID[4]
				or HadTitleID == x894100_g_TitleID[5]
				or HadTitleID == x894100_g_TitleID[6]
				or HadTitleID == x894100_g_TitleID[7]
				or HadTitleID == x894100_g_TitleID[8]
				or HadTitleID == x894100_g_TitleID[9]
				or HadTitleID == x894100_g_TitleID[10]
				or HadTitleID == x894100_g_TitleID[11]
				or HadTitleID == x894100_g_TitleID[12]
				or HadTitleID == x894100_g_TitleID[13]
				or HadTitleID == x894100_g_TitleID[14]
				or HadTitleID == x894100_g_TitleID[15]) then
			x894100_NotifyFailBox(sceneId, selfId, targetId, "#{PMF_REMINDINF_001}")	

			return
		end
	end
	
	if (titleLv == 2) then
		--ÊÇ·ñÒÑÓÐ³ÆºÅ
		if (HadTitleID == x894100_g_TitleID[2]
				or HadTitleID == x894100_g_TitleID[3]
				or HadTitleID == x894100_g_TitleID[4]
				or HadTitleID == x894100_g_TitleID[5]
				or HadTitleID == x894100_g_TitleID[6]
				or HadTitleID == x894100_g_TitleID[7]
				or HadTitleID == x894100_g_TitleID[8]
				or HadTitleID == x894100_g_TitleID[9]
				or HadTitleID == x894100_g_TitleID[10]
				or HadTitleID == x894100_g_TitleID[11]
				or HadTitleID == x894100_g_TitleID[12]
				or HadTitleID == x894100_g_TitleID[13]
				or HadTitleID == x894100_g_TitleID[14]
				or HadTitleID == x894100_g_TitleID[15]) then
			x894100_NotifyFailBox(sceneId, selfId, targetId, "#{PMF_REMINDINF_001}")	
			return
		end
		--ÊÇ·ñÓÐÉÏÒ»µÈ¼¶µÄ³ÆºÅ
		if (HadTitleID ~= x894100_g_TitleID[1]) then
			x894100_NotifyFailBox(sceneId, selfId, targetId, x894100_g_FailMsg[titleLv])
			x894100_NotifyFailBox(sceneId, selfId, targetId, "Các hÕ còn chßa nh§n danh hi®u trß¾c ðó")	

			return
		end
	end
	
	if (titleLv == 3) then
		--ÊÇ·ñÒÑÓÐ³ÆºÅ
		if (HadTitleID == x894100_g_TitleID[3]
				or HadTitleID == x894100_g_TitleID[4]
				or HadTitleID == x894100_g_TitleID[5]
				or HadTitleID == x894100_g_TitleID[6]
				or HadTitleID == x894100_g_TitleID[7]
				or HadTitleID == x894100_g_TitleID[8]
				or HadTitleID == x894100_g_TitleID[9]
				or HadTitleID == x894100_g_TitleID[10]
				or HadTitleID == x894100_g_TitleID[11]
				or HadTitleID == x894100_g_TitleID[12]
				or HadTitleID == x894100_g_TitleID[13]
				or HadTitleID == x894100_g_TitleID[14]
				or HadTitleID == x894100_g_TitleID[15]) then
			x894100_NotifyFailBox(sceneId, selfId, targetId, "#{PMF_REMINDINF_001}")	
			return
		end
		--ÊÇ·ñÓÐÉÏÒ»µÈ¼¶µÄ³ÆºÅ
		if (HadTitleID ~= x894100_g_TitleID[2]) then
			x894100_NotifyFailBox(sceneId, selfId, targetId, x894100_g_FailMsg[titleLv])
			x894100_NotifyFailBox(sceneId, selfId, targetId, "Các hÕ còn chßa nh§n danh hi®u trß¾c ðó")	

			return
		end
	end
	
	if (titleLv == 4) then
		--ÊÇ·ñÒÑÓÐ³ÆºÅ
		if (HadTitleID == x894100_g_TitleID[4]
				or HadTitleID == x894100_g_TitleID[5]
				or HadTitleID == x894100_g_TitleID[6]
				or HadTitleID == x894100_g_TitleID[7]
				or HadTitleID == x894100_g_TitleID[8]
				or HadTitleID == x894100_g_TitleID[9]
				or HadTitleID == x894100_g_TitleID[10]
				or HadTitleID == x894100_g_TitleID[11]
				or HadTitleID == x894100_g_TitleID[12]
				or HadTitleID == x894100_g_TitleID[13]
				or HadTitleID == x894100_g_TitleID[14]
				or HadTitleID == x894100_g_TitleID[15]) then
			x894100_NotifyFailBox(sceneId, selfId, targetId, "#{PMF_REMINDINF_001}")	
			return
		end
		--ÊÇ·ñÓÐÉÏÒ»µÈ¼¶µÄ³ÆºÅ
		if (HadTitleID ~= x894100_g_TitleID[3]) then
			x894100_NotifyFailBox(sceneId, selfId, targetId, x894100_g_FailMsg[titleLv])
			x894100_NotifyFailBox(sceneId, selfId, targetId, "Các hÕ còn chßa nh§n danh hi®u trß¾c ðó")	

			return
		end
	end

	if (titleLv == 5) then
		--ÊÇ·ñÒÑÓÐ³ÆºÅ
		if (HadTitleID == x894100_g_TitleID[5]
				or HadTitleID == x894100_g_TitleID[6]
				or HadTitleID == x894100_g_TitleID[7]
				or HadTitleID == x894100_g_TitleID[8]
				or HadTitleID == x894100_g_TitleID[9]
				or HadTitleID == x894100_g_TitleID[10]
				or HadTitleID == x894100_g_TitleID[11]
				or HadTitleID == x894100_g_TitleID[12]
				or HadTitleID == x894100_g_TitleID[13]
				or HadTitleID == x894100_g_TitleID[14]
				or HadTitleID == x894100_g_TitleID[15]) then

			x894100_NotifyFailBox(sceneId, selfId, targetId, "#{PMF_REMINDINF_001}")	
			return
		end
		--ÊÇ·ñÓÐÉÏÒ»µÈ¼¶µÄ³ÆºÅ
		if (HadTitleID ~= x894100_g_TitleID[4]) then
			x894100_NotifyFailBox(sceneId, selfId, targetId, x894100_g_FailMsg[titleLv])
			x894100_NotifyFailBox(sceneId, selfId, targetId, "Các hÕ còn chßa nh§n danh hi®u trß¾c ðó")	

			return
		end
	end
	if (titleLv == 6) then
		--ÊÇ·ñÒÑÓÐ³ÆºÅ
		if (HadTitleID == x894100_g_TitleID[6]
				or HadTitleID == x894100_g_TitleID[7]
				or HadTitleID == x894100_g_TitleID[8]
				or HadTitleID == x894100_g_TitleID[9]
				or HadTitleID == x894100_g_TitleID[10]
				or HadTitleID == x894100_g_TitleID[11]
				or HadTitleID == x894100_g_TitleID[12]
				or HadTitleID == x894100_g_TitleID[13]
				or HadTitleID == x894100_g_TitleID[14]
				or HadTitleID == x894100_g_TitleID[15]) then

			x894100_NotifyFailBox(sceneId, selfId, targetId, "#{PMF_REMINDINF_001}")	
			return
		end
		--ÊÇ·ñÓÐÉÏÒ»µÈ¼¶µÄ³ÆºÅ
		if (HadTitleID ~= x894100_g_TitleID[5]) then
			x894100_NotifyFailBox(sceneId, selfId, targetId, x894100_g_FailMsg[titleLv])
			x894100_NotifyFailBox(sceneId, selfId, targetId, "Các hÕ còn chßa nh§n danh hi®u trß¾c ðó")	

			return
		end
	end
	if (titleLv == 7) then
		--ÊÇ·ñÒÑÓÐ³ÆºÅ
		if (HadTitleID == x894100_g_TitleID[7]
				or HadTitleID == x894100_g_TitleID[8]
				or HadTitleID == x894100_g_TitleID[9]
				or HadTitleID == x894100_g_TitleID[10]
				or HadTitleID == x894100_g_TitleID[11]
				or HadTitleID == x894100_g_TitleID[12]
				or HadTitleID == x894100_g_TitleID[13]
				or HadTitleID == x894100_g_TitleID[14]
				or HadTitleID == x894100_g_TitleID[15]) then

			x894100_NotifyFailBox(sceneId, selfId, targetId, "#{PMF_REMINDINF_001}")	
			return
		end
		--ÊÇ·ñÓÐÉÏÒ»µÈ¼¶µÄ³ÆºÅ
		if (HadTitleID ~= x894100_g_TitleID[6]) then
			x894100_NotifyFailBox(sceneId, selfId, targetId, x894100_g_FailMsg[titleLv])
			x894100_NotifyFailBox(sceneId, selfId, targetId, "Các hÕ còn chßa nh§n danh hi®u trß¾c ðó")	
			return
		end
	end

	--¼ì²éÎïÐþ·ûÁ¿
	local checkRet = x894100_CheckXuanFu(sceneId,selfId,targetId,x894100_g_Cost[titleLv]);
	if (checkRet ~= 1) then
			x894100_NotifyFailBox(sceneId, selfId, targetId, x894100_g_FailMsg[titleLv])
			return
	end
	
	--¿Û³ýÐþ·û
	local costRet = x894100_CostXuanFu(sceneId,selfId,targetId,x894100_g_Cost[titleLv]);
	if (costRet ~= 1) then
		x894100_NotifyFailBox(sceneId, selfId, targetId, "Không ðü s¯ lßþng Chinh Nam Tiên Phong ?n")
		return
	end
	
	--¸øÓè³ÆºÅ
	AwardTitle( sceneId, selfId, x894100_g_TitleIndex, x894100_g_TitleID[titleLv])
	--Ð´auditÈÕÖ¾ add by zhangguoxin 090226
	local guid = LuaFnObjId2Guid(sceneId, selfId);
	local LogInfo = format("LUAAUDIT_TITLE_GET,0X%08X,%d,",guid,x894100_g_TitleID[titleLv]);
	LuaFnAuditGeneralLog(LogInfo);
	--¸üÐÂ¿Í»§¶Ë
	DispatchAllTitle(sceneId,selfId)
	--ÉèÖÃµ±Ç°³ÆºÅ
	SetCurTitle(sceneId,selfId,43,x894100_g_TitleID[titleLv])
	--¹Ø±Õ¶Ô»°¿ò
	x894100_CloseWindow(sceneId,selfId, targetId)
	--·¢ËÍ¹«¸æ
	x894100_SendNotice(sceneId, selfId, targetId,titleLv)
	--·ÅÌØÐ§
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 49, 0)
	--ÐÑÄ¿ÌáÊ¾
	x894100_MsgBox(sceneId, selfId,"#{PMF_090302_6}")
end

--·¢ËÍ¹«¸æ
function x894100_SendNotice(sceneId, selfId, targetId,lv)

	--ºÏ·¨ÐÔ¼ì²é
	if lv < 1 and lv > x894100_g_TitleLvNum then
		return
	end
	local strformat;
	
	if (lv == 1) then
		strformat	= "#{_INFOUSR%s} c¥m trong tay 30 cái #GChinh Nam Tiên Phong ?n#W ðem ðªn giao cho Lâu Lan - SÑ Giä Binh Thánh KÏ Tr§n, SÑ giä vui m×ng khôn xiªt bèn ban t£ng cho danh hi®u #cFF0000Hi®p Giä Nhân Tâm#W!"
	end
	if (lv == 2) then
		strformat	= "#{_INFOUSR%s} c¥m trong tay 60 cái #GChinh Nam Tiên Phong ?n#W ðem ðªn giao cho Lâu Lan - SÑ Giä Binh Thánh KÏ Tr§n, SÑ giä vui m×ng khôn xiªt bèn ban t£ng cho danh hi®u #cFF0000Sát Tr§n Hành Giä#W!"
	end
	if (lv == 3) then
		strformat	= "#{_INFOUSR%s} c¥m trong tay 90 cái #GChinh Nam Tiên Phong ?n#W ðem ðªn giao cho Lâu Lan - SÑ Giä Binh Thánh KÏ Tr§n, SÑ giä vui m×ng khôn xiªt bèn ban t£ng cho danh hi®u #cFF0000Hùng Tài Vî Lßþc#W!"
	end
	if (lv == 4) then
		strformat	= "#{_INFOUSR%s} c¥m trong tay 120 cái #GChinh Nam Tiên Phong ?n#W ðem ðªn giao cho Lâu Lan - SÑ Giä Binh Thánh KÏ Tr§n, SÑ giä vui m×ng khôn xiªt bèn ban t£ng cho danh hi®u #cFF0000Tiên Thánh Di Phong#W!"
	end

	if (lv == 5) then
		strformat	= "#{_INFOUSR%s} c¥m trong tay 150 cái #GChinh Nam Tiên Phong ?n#W ðem ðªn giao cho Lâu Lan - SÑ Giä Binh Thánh KÏ Tr§n, SÑ giä vui m×ng khôn xiªt bèn ban t£ng cho danh hi®u #cFF0000QuÖ C¯c Vô Song#W!"
	end
	if (lv == 6) then
		strformat	= "#{_INFOUSR%s} c¥m trong tay 180 cái #GChinh Nam Tiên Phong ?n#W ðem ðªn giao cho Lâu Lan - SÑ Giä Binh Thánh KÏ Tr§n, SÑ giä vui m×ng khôn xiªt bèn ban t£ng cho danh hi®u #cFF0000Ðµc Bµ Giang H°#W!"
	end
	if (lv == 7) then
		strformat	= "#{_INFOUSR%s} c¥m trong tay 210 cái #GChinh Nam Tiên Phong ?n#W ðem ðªn giao cho Lâu Lan - SÑ Giä Binh Thánh KÏ Tr§n, SÑ giä vui m×ng khôn xiªt bèn ban t£ng cho danh hi®u #cFF0000Thiên Nhân Hþp Nh¤t#W!"
	end
	
	local strText = format(strformat, GetName(sceneId,selfId))	
	BroadMsgByChatPipe(sceneId, selfId, strText, 4)
end

--¼ì²éÎïÆ·
function x894100_CheckXuanFu(sceneId, selfId, targetId,num)
	if num <= 0 then
		return 0
	end
	
	local nCount =LuaFnGetAvailableItemCount(sceneId, selfId,x894100_g_XuanFuID)
	
	if (nCount < num) then
		return 0;
	end
	
	return 1;
end

--¿Û³ýÎïÆ·
function x894100_CostXuanFu(sceneId, selfId, targetId,num)
	if num <= 0 then
		return 0
	end
	
	local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x894100_g_XuanFuID, num)
	if (ret1 < 1) then
		return 0;
	end
	
	return 1;
end

--¹Ø±Õ¶Ô»°¿ò
function x894100_CloseWindow(sceneId,selfId, targetId)
	BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x894100_OnDefaultEvent( sceneId, selfId, targetId )
	local nNum = GetNumText()
	
	--µÚÒ»²ã½çÃæ
	if (nNum == 10) then
		BeginEvent(sceneId)
			AddText(sceneId,"Chü trì #GBinh Thánh KÏ Tr§n#W là #GGia Lu§t Liên Thành#W chính là ðßþc Liêu Ðª giao tr÷ng trách thân chinh phß½ng nam. Nªu ðánh bÕi h¡n nh§n ðßþc tín v§t cüa Liêu Ðª #GChinh Nam Tiên Phong ?n#W trong ngß¶i h¡n, giao lÕi cho ta, ta s¨ tâu lên thánh thßþng lu§n công ban thß·ng cho các hÕ!")
			AddNumText( sceneId, x894100_g_scriptId, "   #GÐ±i danh hi®u #cFF0000Hi®p Giä Nhân Tâm", 6, 21 )
			AddNumText( sceneId, x894100_g_scriptId, "   #GÐ±i danh hi®u #cFF0000Sát Tr§n Hành Giä", 6, 22 )
			AddNumText( sceneId, x894100_g_scriptId, "   #GÐ±i danh hi®u #cFF0000Hùng Tài Vî Lßþc", 6, 23 )
			AddNumText( sceneId, x894100_g_scriptId, "   #GÐ±i danh hi®u #cFF0000Tiên Thánh Di Phong", 6, 24 )
			AddNumText( sceneId, x894100_g_scriptId, "   #GÐ±i danh hi®u #cFF0000QuÖ C¯c Vô Song", 6, 25 )
			AddNumText( sceneId, x894100_g_scriptId, "   #GÐ±i danh hi®u #cFF0000Ðµc Bµ Giang H°", 6, 26 )
			AddNumText( sceneId, x894100_g_scriptId, "   #GÐ±i danh hi®u #cFF0000Thiên Nhân Hþp Nh¤t", 6, 27 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end

	if (nNum == 200) then
		BeginEvent(sceneId)
			AddText(sceneId,"Chü trì #GBinh Thánh KÏ Tr§n#W là #GGia Lu§t Liên Thành#W chính là ðßþc Liêu Ðª giao tr÷ng trách thân chinh phß½ng nam. Nªu ðánh bÕi h¡n nh§n ðßþc tín v§t cüa Liêu Ðª #GChinh Nam Tiên Phong ?n#W trong ngß¶i h¡n, giao lÕi cho ta, ta s¨ tâu lên thánh thßþng lu§n công ban thß·ng cho các hÕ!")
			AddNumText( sceneId, x894100_g_scriptId, "#GLînh thuµc tính #cFF0000Hi®p Giä Nhân Tâm", 6, 210 )
			AddNumText( sceneId, x894100_g_scriptId, "#GLînh thuµc tính #cFF0000Sát Tr§n Hành Giä", 6, 220 )
			AddNumText( sceneId, x894100_g_scriptId, "#GLînh thuµc tính #cFF0000Hùng Tài Vî Lßþc", 6, 230 )
			AddNumText( sceneId, x894100_g_scriptId, "#GLînh thuµc tính #cFF0000Tiên Thánh Di Phong", 6, 240 )
			AddNumText( sceneId, x894100_g_scriptId, "#GLînh thuµc tính #cFF0000QuÖ C¯c Vô Song", 6, 250 )
			AddNumText( sceneId, x894100_g_scriptId, "#GLînh thuµc tính #cFF0000Ðµc Bµ Giang H°", 6, 260 )
			AddNumText( sceneId, x894100_g_scriptId, "#GLînh thuµc tính #cFF0000Thiên Nhân Hþp Nh¤t", 6, 270 )

			AddNumText( sceneId, x894100_g_scriptId, "#GLînh thuµc tính #cFF0000Tam Hoa Tø Ðình", 6, 280 )
			AddNumText( sceneId, x894100_g_scriptId, "#GLînh thuµc tính #cFF0000Ngû Khí Tri«u Nguyên", 6, 290 )
			AddNumText( sceneId, x894100_g_scriptId, "#GLînh thuµc tính #cFF0000Siêu Phàm Võ Tông", 6, 300 )
			AddNumText( sceneId, x894100_g_scriptId, "#GLînh thuµc tính #cFF0000Kinh Thª Võ Tôn", 6, 310 )
			AddNumText( sceneId, x894100_g_scriptId, "#GLînh thuµc tính #cFF0000Khoáng Thª Thánh Võ", 6, 320 )
			AddNumText( sceneId, x894100_g_scriptId, "#GLînh thuµc tính #cFF0000Thánh Võ Vô Song", 6, 330 )
			AddNumText( sceneId, x894100_g_scriptId, "#GLînh thuµc tính #cFF0000Tuy®t Thª Phong Hoa", 6, 340 )
			AddNumText( sceneId, x894100_g_scriptId, "#GLînh thuµc tính #cFF0000Siêu Phàm Nh§p Thánh", 6, 350 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	--¹ØÓÚ
	if (nNum == 11) then
		BeginEvent(sceneId)
			AddText(sceneId,"#eaf0c14#YHi®p Giä Nhân Tâm#r#GSinh lñc t¯i ða +2%#NgoÕi Công +5%#rNgoÕi Thü +6%#rNµi Công +5%#rNµi Thü +6%#r")
			AddText(sceneId,"#eaf0c14#YSát Tr§n Hành Giä#r#GSinh lñc t¯i ða +5%#NgoÕi Công +10%#rNgoÕi Thü +10%#rNµi Công +10%#rNµi Thü +10%#r")
			AddText(sceneId,"#eaf0c14#YHùng Tài Vî Lßþc#r#GSinh lñc t¯i ða +8%#NgoÕi Công +15%#rNgoÕi Thü +15%#rNµi Công +15%#rNµi Thü +15%#r")
			AddText(sceneId,"#eaf0c14#YTiên Thánh Di Phong#r#GSinh lñc t¯i ða +10%#NgoÕi Công +20%#rNgoÕi Thü +20%#rNµi Công +20%#rNµi Thü +20%#r")
			AddText(sceneId,"#eaf0c14#YQuÖ C¯c Vô Song#r#GSinh lñc t¯i ða +12%#NgoÕi Công +25%#rNgoÕi Thü +25%#rNµi Công +25%#rNµi Thü +25%#r")
			AddText(sceneId,"#eaf0c14#YÐµc Bµ Giang H°#r#GSinh lñc t¯i ða +15%#NgoÕi Công +30%#rNgoÕi Thü +30%#rNµi Công +30%#rNµi Thü +30%#r")
			AddText(sceneId,"#eaf0c14#YThiên Nhân Hþp Nh¤t#r#GSinh lñc t¯i ða +18%#NgoÕi Công +35%#rNgoÕi Thü +35%#rNµi Công +35%#rNµi Thü +35%#r")
			AddText(sceneId,"#eaf0c14#YTam Hoa Tø Ðình#r#GSinh lñc t¯i ða +20%#NgoÕi Công +40%#rNgoÕi Thü +40%#rNµi Công +40%#rNµi Thü +40%#r")
			AddText(sceneId,"#eaf0c14#YNgû Khí Tri«u Nguyên#r#GSinh lñc t¯i ða +23%#NgoÕi Công +45%#rNgoÕi Thü +45%#rNµi Công +45%#rNµi Thü +45%#r")
			AddText(sceneId,"#eaf0c14#YSiêu Phàm Võ Tông#r#GSinh lñc t¯i ða +25%#NgoÕi Công +50%#rNgoÕi Thü +50%#rNµi Công +50%#rNµi Thü +50%#r")
			AddText(sceneId,"#eaf0c14#YKinh Thª Võ Tôn#r#GSinh lñc t¯i ða +28%#NgoÕi Công +55%#rNgoÕi Thü +55%#rNµi Công +55%#rNµi Thü +55%#r")
			AddText(sceneId,"#eaf0c14#YKhoáng Thª Thánh Võ#r#GSinh lñc t¯i ða +30%#NgoÕi Công +60%#rNgoÕi Thü +60%#rNµi Công +60%#rNµi Thü +60%#r")
			AddText(sceneId,"#eaf0c14#YThánh Võ Vô Song#r#GSinh lñc t¯i ða +33%#NgoÕi Công +65%#rNgoÕi Thü +65%#rNµi Công +65%#rNµi Thü +65%#r")
			AddText(sceneId,"#eaf0c14#YTuy®t Thª Phong Hoa#r#GSinh lñc t¯i ða +35%#NgoÕi Công +70%#rNgoÕi Thü +70%#rNµi Công +70%#rNµi Thü +70%#r")
			AddText(sceneId,"#eaf0c14#YSiêu Phàm Nh§p Thánh#r#GSinh lñc t¯i ða +40%#NgoÕi Công +80%#rNgoÕi Thü +80%#rNµi Công +80%#rNµi Thü +80%#r")


		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	--µÚ¶þ²ã½çÃæ
	if (nNum == 21) then
		BeginEvent(sceneId)
			AddText(sceneId,"Mu¯n ð±i danh hi®u này c¥n giao cho ta #G30 cái Chinh Nam Tiên Phong ?n#W ð¬ giao cho Thánh Thßþng lu§n công ban thß·ng. Các hÕ có xác nh§n giao lÕi cho ta không?")
			AddNumText( sceneId, x894100_g_scriptId, "Xác nh§n", 6, 1 )
			AddNumText( sceneId, x894100_g_scriptId, "Hüy bö", 0, 100 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
	end
	
	if (nNum == 22) then
		BeginEvent(sceneId)
			AddText(sceneId,"Mu¯n ð±i danh hi®u này c¥n giao cho ta #G60 cái Chinh Nam Tiên Phong ?n#W ð¬ giao cho Thánh Thßþng lu§n công ban thß·ng. Các hÕ có xác nh§n giao lÕi cho ta không?")
			AddNumText( sceneId, x894100_g_scriptId, "Xác nh§n", 6, 2 )
			AddNumText( sceneId, x894100_g_scriptId, "Hüy bö", 0, 100 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
	end
	
	if (nNum == 23) then
		BeginEvent(sceneId)
			AddText(sceneId,"Mu¯n ð±i danh hi®u này c¥n giao cho ta #G90 cái Chinh Nam Tiên Phong ?n#W ð¬ giao cho Thánh Thßþng lu§n công ban thß·ng. Các hÕ có xác nh§n giao lÕi cho ta không?")
			AddNumText( sceneId, x894100_g_scriptId, "Xác nh§n", 6, 3 )
			AddNumText( sceneId, x894100_g_scriptId, "Hüy bö", 0, 100 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
	end
	
	if (nNum == 24) then
		BeginEvent(sceneId)
			AddText(sceneId,"Mu¯n ð±i danh hi®u này c¥n giao cho ta #G120 cái Chinh Nam Tiên Phong ?n#W ð¬ giao cho Thánh Thßþng lu§n công ban thß·ng. Các hÕ có xác nh§n giao lÕi cho ta không?")
			AddNumText( sceneId, x894100_g_scriptId, "Xác nh§n", 6, 4 )
			AddNumText( sceneId, x894100_g_scriptId, "Hüy bö", 0, 100 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
	end

	if (nNum == 25) then
		BeginEvent(sceneId)
			AddText(sceneId,"Mu¯n ð±i danh hi®u này c¥n giao cho ta #G150 cái Chinh Nam Tiên Phong ?n#W ð¬ giao cho Thánh Thßþng lu§n công ban thß·ng. Các hÕ có xác nh§n giao lÕi cho ta không?")
			AddNumText( sceneId, x894100_g_scriptId, "Xác nh§n", 6, 5 )
			AddNumText( sceneId, x894100_g_scriptId, "Hüy bö", 0, 100 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
	end
	if (nNum == 26) then
		BeginEvent(sceneId)
			AddText(sceneId,"Mu¯n ð±i danh hi®u này c¥n giao cho ta #G180 cái Chinh Nam Tiên Phong ?n#W ð¬ giao cho Thánh Thßþng lu§n công ban thß·ng. Các hÕ có xác nh§n giao lÕi cho ta không?")
			AddNumText( sceneId, x894100_g_scriptId, "Xác nh§n", 6, 6 )
			AddNumText( sceneId, x894100_g_scriptId, "Hüy bö", 0, 100 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
	end
	if (nNum == 27) then
		BeginEvent(sceneId)
			AddText(sceneId,"Mu¯n ð±i danh hi®u này c¥n giao cho ta #G210 cái Chinh Nam Tiên Phong ?n#W ð¬ giao cho Thánh Thßþng lu§n công ban thß·ng. Các hÕ có xác nh§n giao lÕi cho ta không?")
			AddNumText( sceneId, x894100_g_scriptId, "Xác nh§n", 6, 7 )
			AddNumText( sceneId, x894100_g_scriptId, "Hüy bö", 0, 100 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
	end

	if (nNum == 210) then
		local HadTitleID = GetTitle(sceneId,selfId,x894100_g_TitleIndex)
		if HadTitleID == x894100_g_TitleID[1] then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 27217, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
			x894100_NotifyFailBox(sceneId, selfId, targetId, "Nh§n danh hi®u thành công!")	
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Nh§n danh hi®u th¤t bÕi!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
		end
	end
	
	if (nNum == 220) then
		local HadTitleID = GetTitle(sceneId,selfId,x894100_g_TitleIndex)
		if HadTitleID == x894100_g_TitleID[2] then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 27218, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
			x894100_NotifyFailBox(sceneId, selfId, targetId, "Nh§n danh hi®u thành công!")	
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Nh§n danh hi®u th¤t bÕi!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
		end
	end
	
	if (nNum == 230) then
		local HadTitleID = GetTitle(sceneId,selfId,x894100_g_TitleIndex)
		if HadTitleID == x894100_g_TitleID[3] then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 27219, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
			x894100_NotifyFailBox(sceneId, selfId, targetId, "Nh§n danh hi®u thành công!")	
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Nh§n danh hi®u th¤t bÕi!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
		end
	end

	if (nNum == 240) then
		local HadTitleID = GetTitle(sceneId,selfId,x894100_g_TitleIndex)
		if HadTitleID == x894100_g_TitleID[4] then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 27220, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
			x894100_NotifyFailBox(sceneId, selfId, targetId, "Nh§n danh hi®u thành công!")	
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Nh§n danh hi®u th¤t bÕi!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
		end
	end

	if (nNum == 250) then
		local HadTitleID = GetTitle(sceneId,selfId,x894100_g_TitleIndex)
		if HadTitleID == x894100_g_TitleID[5] then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 27221, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
			x894100_NotifyFailBox(sceneId, selfId, targetId, "Nh§n danh hi®u thành công!")	
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Nh§n danh hi®u th¤t bÕi!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
		end
	end
	if (nNum == 260) then
		local HadTitleID = GetTitle(sceneId,selfId,x894100_g_TitleIndex)
		if HadTitleID == x894100_g_TitleID[6] then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 27222, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
			x894100_NotifyFailBox(sceneId, selfId, targetId, "Nh§n danh hi®u thành công!")	
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Nh§n danh hi®u th¤t bÕi!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
		end
	end
	if (nNum == 270) then
		local HadTitleID = GetTitle(sceneId,selfId,x894100_g_TitleIndex)
		if HadTitleID == x894100_g_TitleID[7] then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 27223, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
			x894100_NotifyFailBox(sceneId, selfId, targetId, "Nh§n danh hi®u thành công!")	
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Nh§n danh hi®u th¤t bÕi!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
		end
	end
	if (nNum == 280) then
		local HadTitleID = GetTitle(sceneId,selfId,x894100_g_TitleIndex)
		if HadTitleID == x894100_g_TitleID[8] then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 27224, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
			x894100_NotifyFailBox(sceneId, selfId, targetId, "Nh§n danh hi®u thành công!")	
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Nh§n danh hi®u th¤t bÕi!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
		end
	end
	if (nNum == 290) then
		local HadTitleID = GetTitle(sceneId,selfId,x894100_g_TitleIndex)
		if HadTitleID == x894100_g_TitleID[9] then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 27225, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
			x894100_NotifyFailBox(sceneId, selfId, targetId, "Nh§n danh hi®u thành công!")	
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Nh§n danh hi®u th¤t bÕi!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
		end
	end
	if (nNum == 300) then
		local HadTitleID = GetTitle(sceneId,selfId,x894100_g_TitleIndex)
		if HadTitleID == x894100_g_TitleID[10] then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 27226, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
			x894100_NotifyFailBox(sceneId, selfId, targetId, "Nh§n danh hi®u thành công!")	
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Nh§n danh hi®u th¤t bÕi!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
		end
	end
	if (nNum == 310) then
		local HadTitleID = GetTitle(sceneId,selfId,x894100_g_TitleIndex)
		if HadTitleID == x894100_g_TitleID[11] then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 27227, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
			x894100_NotifyFailBox(sceneId, selfId, targetId, "Nh§n danh hi®u thành công!")	
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Nh§n danh hi®u th¤t bÕi!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
		end
	end
	if (nNum == 320) then
		local HadTitleID = GetTitle(sceneId,selfId,x894100_g_TitleIndex)
		if HadTitleID == x894100_g_TitleID[12] then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 27228, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
			x894100_NotifyFailBox(sceneId, selfId, targetId, "Nh§n danh hi®u thành công!")	
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Nh§n danh hi®u th¤t bÕi!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
		end
	end
	if (nNum == 330) then
		local HadTitleID = GetTitle(sceneId,selfId,x894100_g_TitleIndex)
		if HadTitleID == x894100_g_TitleID[13] then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 27229, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
			x894100_NotifyFailBox(sceneId, selfId, targetId, "Nh§n danh hi®u thành công!")	
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Nh§n danh hi®u th¤t bÕi!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
		end
	end
	if (nNum == 340) then
		local HadTitleID = GetTitle(sceneId,selfId,x894100_g_TitleIndex)
		if HadTitleID == x894100_g_TitleID[14] then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 27230, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
			x894100_NotifyFailBox(sceneId, selfId, targetId, "Nh§n danh hi®u thành công!")	
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Nh§n danh hi®u th¤t bÕi!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
		end
	end
	if (nNum == 350) then
		local HadTitleID = GetTitle(sceneId,selfId,x894100_g_TitleIndex)
		if HadTitleID == x894100_g_TitleID[15] then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 27231, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
			x894100_NotifyFailBox(sceneId, selfId, targetId, "Nh§n danh hi®u thành công!")	
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Nh§n danh hi®u th¤t bÕi!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId,x894100_g_scriptId,0)
		end
	end

	if (nNum == 100) then
		--¹Ø±Õ¶Ô»°¿ò
		x894100_CloseWindow(sceneId,selfId, targetId)
	end
	
	--È·ÈÏ¶Ò»»
	if nNum >= 1 and nNum <= x894100_g_TitleLvNum then
		x894100_ChangePiaoMiaoTitle(sceneId, selfId, targetId,nNum)
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x894100_OnEnumerate( sceneId, selfId, targetId )
	AddNumText( sceneId, x894100_g_scriptId, "#WÐ±i danh hi®u #GBinh Thánh KÏ Tr§n", 1, 10 )	
	AddNumText( sceneId, x894100_g_scriptId, "#WNh§n BUFF hi®u Ñng #ccc33ccBinh Thánh KÏ Tr§n", 3, 200 )	
	AddNumText( sceneId, x894100_g_scriptId, "--Nh§n thuµc tính danh hi®u--", 11, 11 )	
end




--**********************************
--¼ì²â½ÓÊÜÌõ¼þ
--**********************************
function x894100_CheckAccept( sceneId, selfId )
	return 1
end

--**********************************
--½ÓÊÜ
--**********************************
function x894100_OnAccept( sceneId, selfId )
end

--**********************************
--·ÅÆú
--**********************************
function x894100_OnAbandon( sceneId, selfId )
end

--**********************************
--¼ÌÐø
--**********************************
function x894100_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x894100_CheckSubmit( sceneId, selfId )
end

--**********************************
--ËÍ³ö³èÎïµ°µÄ¹«¸æ
--**********************************
function x894100_ShowSystemNotice( sceneId, selfId, strItemInfo,iIndex )
		
end

--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x894100_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÐÑÄ¿ÐÅÏ¢ÌáÊ¾
--**********************************
function x894100_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--Ìá½»
--**********************************
function x894100_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x894100_OnKillObject( sceneId, selfId, objdataId ,objId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x894100_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x894100_OnItemChanged( sceneId, selfId, itemdataId )
end

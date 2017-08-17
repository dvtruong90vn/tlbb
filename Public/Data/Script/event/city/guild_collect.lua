--°ïÅÉÊÕ¼¯
--Created by zchw

x600046_g_ScriptId							= 600046;
--»î¶¯Ê±¼ä
x600046_g_weekDay								= 0;
x600046_g_StartTime 						= 1900;
x600046_g_EndTime   						= 1959;

x600046_g_missionId_lishi 			= 1140;
x600046_g_missionId_yanling 		= 1141;
x600046_g_missionId_qiyelian	 	= 1142;

x600046_g_mapping = {
	[1140] = {name = "#YL¸ch ThÕch#W", product = "C±n ThÕch", place1 = "#GÐôn hoàng Minh Sa S½n#W", place2 = "#GTung S½n Ki S½n Pha Nam#W", itemId = 40004464},
	[1141] = {name = "#Y¿ng Linh#W", product = "Vû ti­n", place1 = "#GThái H° Ngoan Ð¥u Tñ#W", place2 = "#GKính H° Yên Chi Ðäo Dæ H÷a Mi Ðäo#W", itemId = 40004462},
	[1142] = {name = "#YTh¤t Di®p Liên#W", product = "Thß½ng Dßþc", place1 = "#GKiªm Các BÕch Mao Lînh#W", place2 = "#GVô Lßþng S½n Ðào Hoa Ðàm#W", itemId = 40004463},
	}
	
x600046_g_ExpPrizeSig = 
{
4968,5354 ,5709 ,6043 ,6395 ,6729 ,7225 ,7567 ,7922 ,8260,  						--10-->19
9918 ,10358 ,10751 ,11141 ,11564 ,11957 ,12554 ,12951 ,13344 ,13793, 
16031 ,16513 ,16961 ,17440 ,17871 ,18367 ,19052 ,19504 ,19986 ,20438, 
23299 ,23836 ,24339 ,24856 ,25393 ,25931 ,26717 ,27207 ,27748 ,28289, 
31752 ,32344 ,32919 ,33512 ,34087 ,34680 ,35546 ,36146 ,36742 ,37321, 
41317 ,41999 ,42633 ,43281 ,43911 ,44542 ,45564 ,46202 ,46836 ,47470, 
52106 ,52843 ,53532 ,54218 ,54938 ,55627 ,56732 ,57426 ,58115 ,58842, 
64076 ,64855 ,65582 ,66357 ,67101 ,67876 ,68785 ,69512 ,70290 ,71035, 
73334 ,74113 ,74891 ,75666 ,76445 ,77223 ,78097 ,78846 ,79624 ,80403, 
82309 ,83139 ,83921 ,84700 ,85479 ,86257 ,87123 ,87919 ,88698 ,89480, 
90895 ,91673 ,92452 ,93265 ,94095 ,94877 ,95656 ,96438 ,97217 ,98047, 
98829,
}
x600046_g_ExpPrizeUp10 = 
{
630,702,777,887,1004,1162,1332,1549,1821,2152,													--10-->19
2548,3015,3556,4179,4888,5742,6750,7867,9100,10454,
12362,14427,16653,19047,21614,24359,27288,30405,33717,37229,
40986,44995,49266,53805,58622,63724,69120,74817,80823,87147,
93798,100782,108108,115784,123818,132219,140994,150151,159699,169646,
180000,190768,201960,213582,225644,238153,251685,266782,283500,301891,
322011,343912,367650,393277,420849,451840,486360,524515,566415,612166,
673974,767677,909837,1117732,1409364,1803451,2319435,2977474,3798450,4803961,
6016329,7458592,9154512,11128567,13405959,16012606,18975150,22320949,26078085,30275356,
30756492,31250677,31758183,32279278,32814234,33363319,33926805,34504960,35098056,35706361,
36330147,36969682,37625238,38297083,38985489,39690724,40413060,41152765,41910111,42685366,
43478802,
}
x600046_g_ExpPrize = {};
x600046_g_ExpPrize[1] = --µÚ1Ãû½±Àø
{
39744 ,42832 ,45673 ,48347 ,51157 ,53832 ,57801 ,60537 ,63378 ,66083 ,
79341 ,82865 ,86010 ,89125 ,92513 ,95657 ,100435 ,103611 ,106755 ,110341 ,
128246 ,132105 ,135691 ,139519 ,142968 ,146933 ,152412 ,156028 ,159887 ,163503 ,
186389 ,190688 ,194715 ,198847 ,203146 ,207446 ,213732 ,217652 ,221982 ,226312 ,
254012 ,258752 ,263355 ,268096 ,272699 ,277439 ,284365 ,289166 ,293937 ,298570 ,
330538 ,335992 ,341066 ,346247 ,351291 ,356335 ,364509 ,369614 ,374688 ,379763 ,
416848 ,422742 ,428257 ,433742 ,439500 ,445015 ,453859 ,459405 ,464920 ,470738 ,
512607 ,518836 ,524655 ,530853 ,536809 ,543007 ,550276 ,556094 ,562323 ,568279 ,
586671 ,592900 ,599129 ,605328 ,611556 ,617785 ,624778 ,630765 ,636993 ,643223 ,
658471 ,665110 ,671370 ,677599 ,683828 ,690057 ,696987 ,703352 ,709581 ,715841 ,
727157 ,733386 ,739615 ,746117 ,752756 ,759015 ,765245 ,771504 ,777733 ,784372 ,
790631 ,
}
x600046_g_ExpPrize[2] = --µÚ2,3Ãû½±Àø
{
29808,32124,34254,36260,38368,40374,43351,45402,47533,49562,
59505,62149,64507,66843,69384,71743,75326,77708,80066,82756,
96184,99079,101768,104639,107226,110200,114309,117021,119915,122627,
139792,143016,146036,149135,152360,155584,160299,163239,166486,169734,
190509,194064,197516,201072,204524,208079,213273,216874,220452,223928,
247903,251994,255800,259685,263468,267251,273381,277210,281016,284822,
312636,317057,321193,325306,329625,333761,340394,344553,348690,353054,
384455,389127,393491,398140,402607,407255,412707,417070,421742,426209,
440003,444675,449347,453996,458667,463339,468583,473073,477745,482417,
493853,498833,503527,508199,512871,517543,522740,527514,532186,536881,
545368,550039,554711,559587,564567,569261,573933,578628,583300,588279,
592973,
}
x600046_g_ExpPrize[3] = x600046_g_ExpPrize[2];
x600046_g_ExpPrize[4] =
{
14904,16062,17127,18130,19184,20187,21675,22701,23766,24781,
29752,31074,32253,33421,34692,35871,37663,38854,40033,41378,
48092,49539,50884,52319,53613,55100,57154,58510,59957,61313,
69896,71508,73018,74567,76180,77792,80149,81619,83243,84867,
95254,97032,98758,100536,102262,104039,106636,108437,110226,
111964,123951,125997,127900,129842,131734,133625,136690,138605,
140508,142411,156318,158528,160596,162653,164812,166880,170197,
172276,174345,176527,192227,194563,196745,199070,201303,203627,
206353,208535,210871,213104,220001,222337,224673,226998,229333,
231669,234291,236536,238872,241208,246926,249416,251763,254099,
256435,258771,261370,263757,266093,268440,272684,275019,277355,
279793,282283,284630,286966,289314,291650,294139,296486,
}

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x600046_OnDefaultEvent( sceneId, selfId, targetId )
	local opt = GetNumText();
	if opt == 1 or opt == 2 or opt == 3 then					--¹ØÓÚÖ§Ô®:L¸ch ThÕch...
 		--x600046_OnClickSupportState(sceneId, selfId, targetId, opt)
	elseif opt == 4 then															-- ði¬m»÷Lînh ³¯Í¢ÉÍ´Í
		x600046_OnClickGetPrize(sceneId, selfId, targetId);
	elseif opt == 5 then															--¹ØÓÚÖ§Ô®³¯Í¢
		x600046_ReturnDlg(sceneId, selfId, targetId, "#{BHSJ_081014_14}")
	elseif opt == 41 then 														--Xác nh§n Áì½±
		x600046_ConfirmGetPrize(sceneId, selfId, targetId);
	elseif opt == 42 then 														--HuÖ bö Áì½±
		x600046_CloseDlg(sceneId, selfId, targetId);
	end
end

--**********************************
--¹Ø±Õ¶Ô»°¿ò
--**********************************
function x600046_CloseDlg(sceneId, selfId, targetId)
	BeginUICommand( sceneId )
	UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 1000 )	
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x600046_OnEnumerate( sceneId, selfId, targetId )
	local Humanguildid 	= GetHumanGuildID(sceneId,selfId)
	local cityguildid 	= GetCityGuildID(sceneId, selfId, sceneId)
	if Humanguildid == cityguildid then
		--AddNumText(sceneId, x600046_g_ScriptId, "#{BHSJ_081014_02}", 4, 1); 		--Ö§Ô®³¯Í¢: L¸ch ThÕch
		--AddNumText(sceneId, x600046_g_ScriptId, "#{BHSJ_081014_03}", 4, 2); 		--Ö§Ô®³¯Í¢: ¿ng Linh
		--AddNumText(sceneId, x600046_g_ScriptId, "#{BHSJ_081014_04}", 4, 3);			--Ö§Ô®³¯Í¢: Th¤t Di®p Liên
		AddNumText(sceneId, x600046_g_ScriptId, "#{BHSJ_081014_05}", 6, 4);			--Lînh ³¯Í¢ÉÍ´Í
		--AddNumText(sceneId, x600046_g_ScriptId, "#{BHSJ_081014_06}", 11, 5);		--¹ØÓÚÖ§Ô®³¯Í¢
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x600046_CheckAccept( sceneId, selfId, missionType )
	--»î¶¯ÆÚ¼ä?
	local curTime = GetHour() * 100 + GetMinute();
	if GetTodayWeek() ~= x600046_g_weekDay or curTime < x600046_g_StartTime or curTime > x600046_g_EndTime then
		return 0, "#{BHSJ_081014_11}";
	end
	--Nhi®m vø quá hÕn?
	if IsMissionFull(sceneId, selfId) == 1 then
		return 0, "#{LLFB_80816_6}";
	end
	return 1, "ok";	
end

--**********************************
--Get Min
--**********************************
function x600046_GetMin(value1, value2)
	if value1 < value2 then
		return value1;
	else 
		return value2;
	end	
end

--**********************************
--Tr· v«¶Ô»°
--**********************************
function x600046_ReturnDlg(sceneId, selfId, targetId, msg)
	BeginEvent(sceneId)
		AddText(sceneId, msg);
	EndEvent()
	DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--ReturnTips
--**********************************
function x600046_Tips(sceneId, selfId, msg)
	BeginEvent(sceneId)
		AddText(sceneId, msg);
	EndEvent()
	DispatchMissionTips(sceneId, selfId)
end

--**********************************
-- ði¬m»÷Áì½±
--**********************************
function x600046_OnClickGetPrize(sceneId, selfId, targetId)
	if GetTodayWeek() ~= 0 or GetHour()*100+GetMinute() < 2001 then
		x600046_ReturnDlg(sceneId, selfId, targetId, "#{BHSJ_081014_25}")
		return
	else
		BeginEvent(sceneId)
			AddText(sceneId, "#{BHSJ_081014_26}");
			AddNumText(sceneId, x600046_g_ScriptId, "#{INTERFACE_XML_557}", 0, 41);  --Xác nh§n Áì½±
			AddNumText(sceneId, x600046_g_ScriptId, "#{INTERFACE_XML_1059}", 0, 42); --HuÖ bö Áì½±
		EndEvent()
		DispatchEventList(sceneId, selfId, targetId)
	end
end

--**********************************
-- ði¬m»÷Áì½±
--**********************************
function x600046_ConfirmGetPrize(sceneId, selfId, targetId)
	local misData = GetMissionData(sceneId, selfId, MD_GUILD_COLLECT_DATA); --MD_GUILD_COLLECT_DATA (248) µÍËÄÎ»±£´æ±¾´Î»î¶¯toÕ ðµ ÖÜÊý,µÚ5Î»Îª1±íÊ¾ÒÑÁì½±	
	local weekTime = mod(misData, 10000);
	--ÅÐ¶ÏÍæ¼ÒÐúng·ñ½»¸¶ÁËÊÕ¼¯Ä¿±êµÀ¾ßtoÕ ðµ ÈÎÎñ
	if weekTime ~= GetWeekTime() then
		x600046_ReturnDlg(sceneId, selfId, targetId, "#{BHSJ_081014_27}") --¶Ô²»Æð,ÄãÃ»ÓÐLînh »î¶¯½±ÀøtoÕ ðµ ×Ê¸ñ.
		return
	end
	--ÅÐ¶ÏÍæ¼ÒÐúng·ñLînh ¹ý±¾´Î»î¶¯toÕ ðµ ½±Àø
	if floor(misData/10000) == 1 then
		x600046_ReturnDlg(sceneId, selfId, targetId, "#{BHSJ_081014_28}") --¶Ô²»Æð,ÄãÒÑ¾­Lînh ¹ý±¾´Î»î¶¯toÕ ðµ ½±Àø
		return			
	end
	--Thöa mãnÁì½±Ìõ¼þ	
	local order = CityGetAttr(sceneId, selfId, 17);		-- ði¬mµ½°ïÅÉÊÕ¼¯ÊýÄ¿ÅÅÃû
	if order == 0 then
		x600046_ReturnDlg(sceneId, selfId, targetId, "#{BHSJ_081014_31}");
		x600046_Tips(sceneId, selfId, "#{BHSJ_081014_32}");
		return
	end
	
	local myLevel = GetLevel(sceneId, selfId);
	if myLevel < 10 then 
		return
	end
	local prize = 0;
	if order > 3 then 																--Ç°3ÃûÌØÊâ½±Àø,ÆäËûÃû³Æ½±ÀøÏàÍ¬,=µÚËÄÃû
		prize = x600046_g_ExpPrize[4][myLevel-9]
	elseif order > 0 then
		prize = x600046_g_ExpPrize[order][myLevel-9]
	end
	--½±ÀøKinh nghi®m
	AddExp(sceneId, selfId, x600046_GetMin(prize, 2*x600046_g_ExpPrizeUp10[myLevel-9]));
	--½±Àø20 ði¬m°ï¹±
	CityChangeAttr( sceneId, selfId, GUILD_CONTRIB_POINT, 20 );
	--ÉèÖÃÁì½±±ê¼Ç
	SetMissionData(sceneId, selfId, MD_GUILD_COLLECT_DATA, 10000+misData);
	--ÈÕÖ¾
	AuditGuildCollect(sceneId, selfId, order, 3);
	--¹Ø±Õ¶Ô»°¿ò
	x600046_CloseDlg(sceneId, selfId, targetId)
end

--**********************************
-- ði¬m»÷Ö§Ô®³¯Í¢: L¸ch ThÕch...
--**********************************
function x600046_OnClickSupportState(sceneId, selfId, targetId, opt)
	local misId = x600046_g_missionId_lishi + opt - 1;
	local script_id = 600046+opt;
	if IsHaveMission(sceneId, selfId, misId) == 1 then 			 
		 local misIndex = GetMissionIndexByID(sceneId, selfId, misId);
		 local bFlag = GetMissionParam(sceneId, selfId, misIndex, 0);
		 local bCount = LuaFnGetAvailableItemCount(sceneId, selfId, x600046_g_mapping[misId].itemId);		 
		 if bFlag == 1 and bCount >= 1 then		 		
		 		BeginEvent(sceneId)
		 			AddText(sceneId, "#{BHSJ_081014_12}"..x600046_g_mapping[misId].name.."#{BHSJ_081014_13}")
		 		EndEvent()
		 		DispatchMissionContinueInfo(sceneId, selfId, targetId, script_id, misId);	
		 else
		 		x600046_ReturnDlg(sceneId, selfId, targetId, "#{BHSJ_081014_12}"..x600046_g_mapping[misId].name.."#{BHSJ_081014_13}");		 		
		 end
	else
		BeginEvent(sceneId)
			local itemName = x600046_g_mapping[misId].name;
			local productName = x600046_g_mapping[misId].product;
			local place1 = x600046_g_mapping[misId].place1;
			local place2 = x600046_g_mapping[misId].place2;
			local msg = format("#{BHSJ_081014_07}%s#{BHSJ_081014_08}%s#{BHSJ_081014_09}%s#{SMCJ_081014_13}%s#{BHSJ_081014_10}", itemName, productName, place1, place2);
			AddText(sceneId, msg);
		EndEvent()
		DispatchMissionInfo(sceneId, selfId, targetId, script_id, misId)
	end
end

--**********************************
-- ði¬m»÷Ö§Ô®³¯Í¢: L¸ch ThÕch...
--**********************************
function x600046_OnAcceptSupportState(sceneId, selfId, targetId, opt)
	local misId = x600046_g_missionId_lishi + opt;
	local ret, msg = x600046_CheckAccept(sceneId, selfId, misId);
	if ret == 0 then
		x600046_ReturnDlg(sceneId, selfId, targetId, msg);
		return
	end		
	local scriptId = 600047 + opt;
	if AddMission(sceneId, selfId, misId, scriptId, 0, 0, 0) < 1 then
		return
	end
	local misIndex = GetMissionIndexByID(sceneId, selfId, misId);
	--ÉèÖÃÈÎÎñLînh Ê±¼ä
	SetMissionByIndex(sceneId, selfId, misIndex, 2, GetWeekTime());
	--ÈÕÖ¾
	AuditGuildCollect(sceneId, selfId, 0, 1);
	--Tiªp thøÈÎÎñºó¹Ø±Õ¶Ô»°¿ò
	x600046_CloseDlg(sceneId, selfId, targetId);
end

--**********************************
--·ÅÆú
--**********************************
function x600046_OnAbandon( sceneId, selfId, type )
	local misId = x600046_g_missionId_lishi+type;
	local itemId = x600046_g_mapping[1140+type].itemId
	if IsHaveMission(sceneId, selfId, misId) == 1 then
		--É¾³ýÈÎÎñ
		DelMission(sceneId, selfId, misId);		
		local count = LuaFnGetAvailableItemCount(sceneId, selfId, itemId);	
		if count > 0 then
			--Çå³ýÈÎÎñÎïÆ·
			LuaFnDelAvailableItem(sceneId, selfId, itemId, count) 
		end		
	end
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x600046_CheckSubmit( sceneId, selfId, type )
	--»î¶¯ÆÚ¼ä?
	local hour = GetHour();
	local minute = GetMinute();
	local curTime = hour * 100 + minute;
	if GetTodayWeek() ~= x600046_g_weekDay or curTime < x600046_g_StartTime or curTime > x600046_g_EndTime then
		return 0, "#{BHSJ_081014_18}";
	end
	--Ê±¼ämµt ÖÂ?
	local misId = x600046_g_missionId_lishi+type;
	if IsHaveMission(sceneId, selfId, misId) == 1 then
		local misIndex = GetMissionIndexByID(sceneId, selfId, misId);
		if GetMissionParam(sceneId, selfId, misIndex, 2) ~= GetWeekTime() then
			return 0, "#{BHSJ_081014_18}"
		end
	else
		return 0,"Làm l²i !";
	end	
	return 1, "ok";
end

--**********************************
--Ìá½»
--**********************************
function x600046_OnSubmit( sceneId, selfId, targetId, type )
	--Ìá½»¼ì²â
	local ret, msg = x600046_CheckSubmit(sceneId, selfId, type);
	if ret == 0 then
		x600046_ReturnDlg(sceneId, selfId, targetId, msg);
		return 
	end
	--¿Û³ýµÀ¾ß
	local itemId = x600046_g_mapping[1140+type].itemId
	local	misId = 1140+type;
	local count = LuaFnGetAvailableItemCount(sceneId, selfId, itemId);	
	if count < 1 then
		return 
	end
	LuaFnDelAvailableItem(sceneId, selfId, itemId, count)
	--½±ÀøKinh nghi®m 
	local myLevel = GetLevel(sceneId, selfId);
	if myLevel < 10 then return end
	local PrizeExp = x600046_g_ExpPrizeSig[myLevel-9];
	--Kinh nghi®m½±ÀøÖµÐúngÉýc¤pKinh nghi®mtoÕ ðµ 10% Óëµ¥´ÎÈÎÎñ½»¸¶Kinh nghi®mÖÐtoÕ ðµ Ð¡Öµ
	LuaFnAddExp(sceneId, selfId, x600046_GetMin(x600046_g_ExpPrizeUp10[myLevel-9], PrizeExp*count));
	if count > 1 then
		x600046_Tips(sceneId, selfId, "#{BHSJ_081014_29}");
	end
	--½±Àø5 ði¬m°ï¹±
	CityChangeAttr( sceneId, selfId, GUILD_CONTRIB_POINT, 5 );
	--Ôö¼Ó°ïÅÉÊÕ¼¯ÊýÄ¿
	LuaFnAddGuildCollectNum(sceneId, selfId, count);
	--ÌáÊ¾Nhi®m vø hoàn thành
	x600046_ReturnDlg(sceneId, selfId, targetId, "#{BHSJ_081014_19}")
	--É¾³ýÈÎÎñ
	if IsHaveMission(sceneId, selfId, misId) > 0 then
		DelMission(sceneId, selfId, misId)
	end	
	--ÈÕÖ¾
	AuditGuildCollect(sceneId, selfId, count, 2);
	--ÉèÖÃÍæ¼Ò½»¸¶»î¶¯±êÖ¾
	SetMissionData(sceneId, selfId, MD_GUILD_COLLECT_DATA, GetWeekTime());--MD_GUILD_COLLECT_DATA 248		
end

--**********************************
--¼ÌÐø
--**********************************
function x600046_OnContinue( sceneId, selfId, targetId )

end

--**********************************
--Tiªp thø
--**********************************
function x600046_OnAccept( sceneId, selfId, targetId )

end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x600046_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x600046_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x600046_OnItemChanged( sceneId, selfId, itemdataId )
end


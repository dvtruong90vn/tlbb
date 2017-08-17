--KÛ nång h÷c t§p
--¾Å´óÃÅÅÉ¼¼ÄÜ´«ÊÚ

--MisDescBegin
--½Å±¾ºÅ
x210209_g_ScriptId = 210209

--ÈÎÎñºÅ
x210209_g_MissionId = 449

--ÈÎÎñ¹éÀà
x210209_g_MissionKind = 13

--ÈÎÎñµÀ¾ß±àºÅ
x210209_g_ItemId = 40002108

--ÈÎÎñµÈ¼¶
x210209_g_MissionLevel = 1

--ÊÇ·ñÊÇ¾«Ó¢ÈÎÎñ
x210209_g_IfMissionElite = 0

--ÈÎÎñÃû
x210209_g_MissionName="KÛ nång h÷c t§p"
x210209_g_MissionInfo="Hãy ği tìm ğ® tØ cØu ğÕi môn phái ğ¬ h÷c kÛ nång này"
x210209_g_MissionTarget="KÛ nång h÷c t§p¡£"
x210209_g_MissionComplete="Các hÕ ğã c¥m theo thß gi¾i thi®u t¾i, v§y ta s¨ dÕy cho các hÕ 1 kÛ nång tân thü, phäi h÷c cho t¯t, luy®n nhi«u m¾i ğßşc"
x210209_g_Name_0="Tri®u Thiên Sß"

--hzp 2009-2-18 begin<<
--x210209_g_Name_1="»ÛÒ×"
--x210209_g_Name_2="Ê¯±¦"
--x210209_g_Name_3="¼òÄş"
--x210209_g_Name_4="ÕÅ»ñ"
--x210209_g_Name_5="Â·ÈıÄï"
--x210209_g_Name_6="º£·ç×Ó"
--x210209_g_Name_7="ÆÆÌ°"
--x210209_g_Name_8="³ÌÇàËª"
--x210209_g_Name_9="å£Ì¨×ÓÓğ"

x210209_g_XinShouJiNeng = {
{name="Tu® D¸ch",			skill="H÷c NgoÕi Công Hµ Th¬"},
{name="ThÕch Bäo",			skill="H÷c Ph¤n Lñc Ğä Kích"},
{name="Giän Ninh",			skill="H÷c Yªu HÕi Công Kích"},
{name="Trß½ng HoÕch",			skill="H÷c Nµi Kình Công Kích"},
{name="Lµ Tam Nß½ng",		skill="H÷c S½ C¤p Tr¸ Li®u"},
{name="Häi Phong TØ",		skill="H÷c Nµi Công Hµ Th¬"},
{name="Phá Tham",			skill="H÷c Phá Trán Công Kích"},
{name="Trình Thanh Sß½ng",		skill="H÷c S½ C¤p Änh Ğµn"},
{name="Ğàm TØ Vû",	skill="H÷c Nhiên Thiêu Hãm Tinh"},
}
-->>end
--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x210209_OnDefaultEvent( sceneId, selfId, targetId )
	if GetName(sceneId,targetId) ~= x210209_g_Name_0 then
		x210209_OnContinue( sceneId, selfId, targetId )
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x210209_OnEnumerate( sceneId, selfId, targetId )
	
	if x210209_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) == x210209_g_XinShouJiNeng[1].name then
			if	HaveSkill(  sceneId, selfId, 241)<0	then
				AddNumText(sceneId, x210209_g_ScriptId,x210209_g_XinShouJiNeng[1].skill,6,-1);
			end
		elseif	GetName(sceneId,targetId) == x210209_g_XinShouJiNeng[2].name	 then
			if	HaveSkill(  sceneId, selfId, 242)<0	then
				AddNumText(sceneId, x210209_g_ScriptId,x210209_g_XinShouJiNeng[2].skill,6,-1);
			end
		elseif	GetName(sceneId,targetId) == x210209_g_XinShouJiNeng[3].name	 then
			if	HaveSkill(  sceneId, selfId, 243)<0	then
				AddNumText(sceneId, x210209_g_ScriptId,x210209_g_XinShouJiNeng[3].skill,6,-1);
			end
		elseif	GetName(sceneId,targetId) == x210209_g_XinShouJiNeng[4].name	then
			if	HaveSkill(  sceneId, selfId, 244)<0	then
				AddNumText(sceneId, x210209_g_ScriptId,x210209_g_XinShouJiNeng[4].skill,6,-1);
			end
		elseif	GetName(sceneId,targetId) == x210209_g_XinShouJiNeng[5].name then
			if	HaveSkill(  sceneId, selfId, 245)<0	then
				AddNumText(sceneId, x210209_g_ScriptId,x210209_g_XinShouJiNeng[5].skill,6,-1);
			end
		elseif	GetName(sceneId,targetId) == x210209_g_XinShouJiNeng[6].name then
			if	HaveSkill(  sceneId, selfId, 246)<0	then
				AddNumText(sceneId, x210209_g_ScriptId,x210209_g_XinShouJiNeng[6].skill,6,-1);
			end
		elseif	GetName(sceneId,targetId) == x210209_g_XinShouJiNeng[7].name then
			if	HaveSkill(  sceneId, selfId, 247)<0	then
				AddNumText(sceneId, x210209_g_ScriptId,x210209_g_XinShouJiNeng[7].skill,6,-1);
			end
		elseif	GetName(sceneId,targetId) == x210209_g_XinShouJiNeng[8].name then
			if	HaveSkill(  sceneId, selfId, 248)<0	then
				AddNumText(sceneId, x210209_g_ScriptId,x210209_g_XinShouJiNeng[8].skill,6,-1);
			end
		elseif	GetName(sceneId,targetId) == x210209_g_XinShouJiNeng[9].name then
			if	HaveSkill(  sceneId, selfId, 249)<0	then
				AddNumText(sceneId, x210209_g_ScriptId,x210209_g_XinShouJiNeng[9].skill,6,-1);
			end
		end
	end
	
	if GetName(sceneId,targetId) == x210209_g_XinShouJiNeng[1].name then
		--Ìí¼ÓÃÅÅÉ½éÉÜ
		AddNumText(sceneId, x210209_g_ScriptId,"Lai l¸ch Thiªu Lâm phái",11,10);
		AddNumText(sceneId, x210209_g_ScriptId,"Ğ£c trßng phái Thiªu Lâm",11,11);
		AddNumText(sceneId, x210209_g_ScriptId,"Ğ£c trßng cuµc s¯ng Thiªu Lâm",11,12);
		AddNumText(sceneId, x210209_g_ScriptId,"Chùa c± Thiªu Lâm",11,13);
	elseif	GetName(sceneId,targetId) == x210209_g_XinShouJiNeng[2].name	 then
		--Ìí¼ÓÃÅÅÉ½éÉÜ
		AddNumText(sceneId, x210209_g_ScriptId,"Lai l¸ch Minh Giáo phái",11,10);
		AddNumText(sceneId, x210209_g_ScriptId,"Ğ£c trßng chiªn ğ¤u Minh Giáo",11,11);
		AddNumText(sceneId, x210209_g_ScriptId,"Ğ£c trßng cuµc s¯ng Minh Giáo",11,12);
		AddNumText(sceneId, x210209_g_ScriptId,"ĞÕi Quang Minh Ğïnh",11,13);
	elseif	GetName(sceneId,targetId) == x210209_g_XinShouJiNeng[3].name	 then
		--Ìí¼ÓÃÅÅÉ½éÉÜ
		AddNumText(sceneId, x210209_g_ScriptId,"Lai l¸ch Cái Bang phái",11,10);
		AddNumText(sceneId, x210209_g_ScriptId,"Ğ£c trßng chiªn ğ¤u Cái Bang",11,11);
		AddNumText(sceneId, x210209_g_ScriptId,"Ğ£c trßng cuµc s¯ng Cái Bang",11,12);
		AddNumText(sceneId, x210209_g_ScriptId,"Cái Bang T±ng Ğà",11,13);
	elseif	GetName(sceneId,targetId) == x210209_g_XinShouJiNeng[4].name	then
		--Ìí¼ÓÃÅÅÉ½éÉÜ
		AddNumText(sceneId, x210209_g_ScriptId,"Lai l¸ch Võ Ğang phái",11,10);
		AddNumText(sceneId, x210209_g_ScriptId,"Ğ£c trßng phái Võ Ğang",11,11);
		AddNumText(sceneId, x210209_g_ScriptId,"Ğ£c trßng cuµc s¯ng Võ Ğang",11,12);
		AddNumText(sceneId, x210209_g_ScriptId,"Võ Ğang Tiên Phong",11,13);
	elseif	GetName(sceneId,targetId) == x210209_g_XinShouJiNeng[5].name then
		--Ìí¼ÓÃÅÅÉ½éÉÜ
		AddNumText(sceneId, x210209_g_ScriptId,"Lai l¸ch Nga My phái",11,10);
		AddNumText(sceneId, x210209_g_ScriptId,"Ğ£c trßng phái Nga My",11,11);
		AddNumText(sceneId, x210209_g_ScriptId,"Ğ£c trßng cuµc s¯ng Nga My",11,12);
		AddNumText(sceneId, x210209_g_ScriptId,"Nga My Thiên hÕ tú næ",11,13);
	elseif	GetName(sceneId,targetId) == x210209_g_XinShouJiNeng[6].name then
		--Ìí¼ÓÃÅÅÉ½éÉÜ
		AddNumText(sceneId, x210209_g_ScriptId,"Lai l¸ch Tinh Túc phái",11,10);
		AddNumText(sceneId, x210209_g_ScriptId,"Ğ£c trßng phái Tinh Túc",11,11);
		AddNumText(sceneId, x210209_g_ScriptId,"Ğ£c trßng cuµc s¯ng Tinh Túc",11,12);
		AddNumText(sceneId, x210209_g_ScriptId,"Tinh Túc Xuân Thu",11,13);
	elseif	GetName(sceneId,targetId) == x210209_g_XinShouJiNeng[7].name then
		--Ìí¼ÓÃÅÅÉ½éÉÜ
		AddNumText(sceneId, x210209_g_ScriptId,"Lai l¸ch Thiên Long phái",11,10);
		AddNumText(sceneId, x210209_g_ScriptId,"Ğ£c trßng phái Thiên Long",11,11);
		AddNumText(sceneId, x210209_g_ScriptId,"Ğ£c trßng cuµc s¯ng Thiên Long",11,12);
		AddNumText(sceneId, x210209_g_ScriptId,"Thiên Long Phong Tình",11,13);
	elseif	GetName(sceneId,targetId) == x210209_g_XinShouJiNeng[8].name then
		--Ìí¼ÓÃÅÅÉ½éÉÜ
		AddNumText(sceneId, x210209_g_ScriptId,"Ngu°n g¯c cüa phái Thiên S½n",11,10);
		AddNumText(sceneId, x210209_g_ScriptId,"Ğ£c trßng phái Thiên S½n",11,11);
		AddNumText(sceneId, x210209_g_ScriptId,"Ğ£c trßng cuµc s¯ng Thiên S½n",11,12);
		AddNumText(sceneId, x210209_g_ScriptId,"Phiêu Di­u Thiên S½n",11,13);
	elseif	GetName(sceneId,targetId) == x210209_g_XinShouJiNeng[9].name then
		--Ìí¼ÓÃÅÅÉ½éÉÜ
		AddNumText(sceneId, x210209_g_ScriptId,"Xu¤t xÑ cüa phái Tiêu Dao",11,10);
		AddNumText(sceneId, x210209_g_ScriptId,"Chiªn ğ¤u ğ£c s¡c cüa phái Tiêu Dao",11,11);
		AddNumText(sceneId, x210209_g_ScriptId,"Cuµc s¯ng ğ£c s¡c cüa phái Tiêu Dao",11,12);
		AddNumText(sceneId, x210209_g_ScriptId,"Lång Ba Tiêu Dao",11,13);
	end

end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x210209_CheckAccept( sceneId, selfId )
	--ĞèÒªÓĞµÀ¾ß²ÅÄÜ½Ó
	if	HaveItemInBag ( sceneId, selfId, x210209_g_ItemId)>0	then
		return 1
	else
		return 0
	end
end

--**********************************
--½ÓÊÜ
--**********************************
function x210209_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	AddMission( sceneId,selfId, x210209_g_MissionId, x210209_g_ScriptId, 0, 0, 0 )
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: KÛ nång h÷c t§p",MSG2PLAYER_PARA )
end

--**********************************
--·ÅÆú
--**********************************
function x210209_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦µÄÈÎÎñ
    DelMission( sceneId, selfId, x210209_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, g_SignPost.tip )
end

--**********************************
--¼ÌĞø
--**********************************
function x210209_OnContinue( sceneId, selfId, targetId )
    --Ìá½»ÈÎÎñÊ±µÄËµÃ÷ĞÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x210209_g_MissionName)
		AddText(sceneId,x210209_g_MissionComplete)
		AddText(sceneId,"Các hÕ s¨ ğßşc h÷c 1 kÛ nång m¾i")
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210209_g_ScriptId,x210209_g_MissionId)
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x210209_CheckSubmit( sceneId, selfId, selectRadioId )
	if	HaveItemInBag (  sceneId, selfId, x210209_g_ItemId)==1	then
		return 1
	else
		return 0
	end
end

--**********************************
--Ìá½»
--**********************************
function x210209_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x210209_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--Ìí¼ÓÈÎÎñ½±Àø
		DelMission( sceneId, selfId, x210209_g_MissionId )
		MissionCom( sceneId, selfId, x210209_g_MissionId )
		if  GetName(sceneId,targetId) == x210209_g_XinShouJiNeng[1].name	then
			--ÅĞ¶¨Íæ¼ÒÊÇ²»ÊÇÒÑ¾­Ñ§»áÁËÕâ¸ö¼¼ÄÜ£¬»áÁË¾Í²»ÈÃÔÚÑ§Ï°ÁË
			if  HaveSkill(sceneId, selfId, 241) > 0  then
				return
			end
			AddSkill(  sceneId, selfId, 241)
			BeginEvent(sceneId)
				strText = "Ngß½i ğã h÷c ğßşc kÛ nång m¾i: kÛ nång Tân thü Thiªu Lâm: NgoÕi công hµ th¬"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		elseif	GetName(sceneId,targetId) == x210209_g_XinShouJiNeng[2].name	then
			--ÅĞ¶¨Íæ¼ÒÊÇ²»ÊÇÒÑ¾­Ñ§»áÁËÕâ¸ö¼¼ÄÜ£¬»áÁË¾Í²»ÈÃÔÚÑ§Ï°ÁË
			if  HaveSkill(sceneId, selfId, 242) > 0  then
				return
			end
			AddSkill(  sceneId, selfId, 242)
			BeginEvent(sceneId)
				strText = "Ngß½i ğã h÷c ğßşc kÛ nång m¾i: kÛ nång Tân thü Minh Giáo: Ra sÑc công kích"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		elseif	GetName(sceneId,targetId) == x210209_g_XinShouJiNeng[3].name	then
			--ÅĞ¶¨Íæ¼ÒÊÇ²»ÊÇÒÑ¾­Ñ§»áÁËÕâ¸ö¼¼ÄÜ£¬»áÁË¾Í²»ÈÃÔÚÑ§Ï°ÁË
			if  HaveSkill(sceneId, selfId, 243) > 0  then
				return
			end
			AddSkill(  sceneId, selfId, 243)
			BeginEvent(sceneId)
				strText = "Ngß½i ğã h÷c ğßşc kÛ nång m¾i: kÛ nång Tân thü Cái Bang: Công kích Yªu Hi¬m"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		elseif	GetName(sceneId,targetId) == x210209_g_XinShouJiNeng[4].name	then
			--ÅĞ¶¨Íæ¼ÒÊÇ²»ÊÇÒÑ¾­Ñ§»áÁËÕâ¸ö¼¼ÄÜ£¬»áÁË¾Í²»ÈÃÔÚÑ§Ï°ÁË
			if  HaveSkill(sceneId, selfId, 244) > 0  then
				return
			end
			AddSkill(  sceneId, selfId, 244)
			BeginEvent(sceneId)
				strText = "Ngß½i ğã h÷c ğßşc kÛ nång m¾i: kÛ nång Tân thü Võ Ğang: Công kích Nµi Kình"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		elseif	GetName(sceneId,targetId) == x210209_g_XinShouJiNeng[5].name	then
			--ÅĞ¶¨Íæ¼ÒÊÇ²»ÊÇÒÑ¾­Ñ§»áÁËÕâ¸ö¼¼ÄÜ£¬»áÁË¾Í²»ÈÃÔÚÑ§Ï°ÁË
			if  HaveSkill(sceneId, selfId, 245) > 0  then
				return
			end
			AddSkill(  sceneId, selfId, 245)
			BeginEvent(sceneId)
				strText = "Ngß½i ğã h÷c ğßşc kÛ nång m¾i: kÛ nång Tân thü Nga My: Tr¸ li®u s½ c¤p"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		elseif	GetName(sceneId,targetId) == x210209_g_XinShouJiNeng[6].name	then
			--ÅĞ¶¨Íæ¼ÒÊÇ²»ÊÇÒÑ¾­Ñ§»áÁËÕâ¸ö¼¼ÄÜ£¬»áÁË¾Í²»ÈÃÔÚÑ§Ï°ÁË
			if  HaveSkill(sceneId, selfId, 246) > 0  then
				return
			end
			AddSkill(  sceneId, selfId, 246)
			BeginEvent(sceneId)
				strText = "Ngß½i ğã h÷c ğßşc kÛ nång m¾i: kÛ nång Tân thü Tinh Túc: Nµi công hµ th¬"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		elseif	GetName(sceneId,targetId) == x210209_g_XinShouJiNeng[7].name	then
			--ÅĞ¶¨Íæ¼ÒÊÇ²»ÊÇÒÑ¾­Ñ§»áÁËÕâ¸ö¼¼ÄÜ£¬»áÁË¾Í²»ÈÃÔÚÑ§Ï°ÁË
			if  HaveSkill(sceneId, selfId, 247) > 0  then
				return
			end
			AddSkill(  sceneId, selfId, 247)
			BeginEvent(sceneId)
				strText = "Ngß½i ğã h÷c ğßşc kÛ nång m¾i: kÛ nång Tân thü Thiên Long: Công kích yªu ği¬m"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		elseif	GetName(sceneId,targetId) == x210209_g_XinShouJiNeng[8].name	then
			--ÅĞ¶¨Íæ¼ÒÊÇ²»ÊÇÒÑ¾­Ñ§»áÁËÕâ¸ö¼¼ÄÜ£¬»áÁË¾Í²»ÈÃÔÚÑ§Ï°ÁË
			if  HaveSkill(sceneId, selfId, 248) > 0  then
				return
			end
			AddSkill(  sceneId, selfId, 248)
			BeginEvent(sceneId)
				strText = "Ngß½i ğã h÷c ğßşc kÛ nång m¾i: kÛ nång Tân thü Thiên S½n: Änh Ğµn s½ c¤p"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		elseif	GetName(sceneId,targetId) == x210209_g_XinShouJiNeng[9].name	then
			--ÅĞ¶¨Íæ¼ÒÊÇ²»ÊÇÒÑ¾­Ñ§»áÁËÕâ¸ö¼¼ÄÜ£¬»áÁË¾Í²»ÈÃÔÚÑ§Ï°ÁË
			if  HaveSkill(sceneId, selfId, 249) > 0  then
				return
			end
			AddSkill(  sceneId, selfId, 249)
			BeginEvent(sceneId)
				strText = "Ngß½i ğã h÷c ğßşc kÛ nång m¾i: kÛ nång Tân thü Thiªu Lâm: Bùng Cháy CÕm Bçy"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
		--¿Û³ıÈÎÎñÎïÆ·
		DelItem( sceneId, selfId, x210209_g_ItemId, 1 )
		--Ñ§Ï°³É¹¦²¥·ÅÌØĞ§
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
	end
	Msg2Player(  sceneId, selfId,"#YNhi®m vø hoàn thành#W: KÛ nång h÷c t§p",MSG2PLAYER_PARA )
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x210209_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x210209_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210209_OnItemChanged( sceneId, selfId, itemdataId )
end

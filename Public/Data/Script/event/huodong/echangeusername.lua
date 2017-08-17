--½ÇÉ«¸üÃû

--½Å±¾ºÅ
x808008_g_ScriptId	= 808008

--²Ù×÷¼¯
x808008_g_Key				=
{
	["ChgU"]					= 100,	--ÎÒÒª¸ÄÃû×Ö
	["ChgU_Y"]				= 101,	--ÎÒÒª¸ÄÃû×Ö£¬È·ÈÏ
	["TitP"]					= 110,	--ÎÒÒª¸üÐÂÊ¦Í½³ÆºÅ
	["TitP_Y"]				= 111,	--ÎÒÒª¸üÐÂÊ¦Í½³ÆºÅ£¬È·ÈÏ
	["TitS"]					= 120,	--ÎÒÒª¸üÐÂ·òÆÞ³ÆºÅ
	["TitS_Y"]				= 121,	--ÎÒÒª¸üÐÂ·òÆÞ³ÆºÅ£¬È·ÈÏ
	["TitG"]					= 130,	--ÎÒÒª¸üÐÂ°ï»á³ÆºÅ
	["TitG_Y"]				= 131,	--ÎÒÒª¸üÐÂ°ï»á³ÆºÅ£¬È·ÈÏ
}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x808008_OnDefaultEvent( sceneId, selfId, targetId )

	--ÊÇ·ñ´¦ÓÚÎÞ·¨Ö´ÐÐÂß¼­µÄ×´Ì¬
	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 then
		return 0
	end
	
	local	key	= GetNumText()
	if key == x808008_g_Key["ChgU"] then
		BeginEvent( sceneId )
			AddText( sceneId, "#{ChangeName_ChgU}" )
			AddNumText( sceneId, x808008_g_ScriptId, "Duy®t", 6, x808008_g_Key["ChgU_Y"] )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif key == x808008_g_Key["TitP"] then
		BeginEvent( sceneId )
			AddText( sceneId, "#{ChangeName_TitP}" )
			AddNumText( sceneId, x808008_g_ScriptId, "Duy®t", 6, x808008_g_Key["TitP_Y"] )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif key == x808008_g_Key["TitS"] then
		BeginEvent( sceneId )
			AddText( sceneId, "#{ChangeName_TitS}" )
			AddNumText( sceneId, x808008_g_ScriptId, "Duy®t", 6, x808008_g_Key["TitS_Y"] )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	--dengxx
	elseif key == x808008_g_Key["TitG"] then
		BeginEvent( sceneId )
			AddText( sceneId, "#{BHJW_090217_1}" )
			AddNumText( sceneId, x808008_g_ScriptId, "Duy®t", 6, x808008_g_Key["TitG_Y"] )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	------	
	elseif key == x808008_g_Key["ChgU_Y"] then
		if x808008_IsCanChangeUserName( sceneId, selfId ) == 1 then
			BeginUICommand( sceneId )
				UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 5423 )
		end
	elseif key == x808008_g_Key["TitP_Y"] then
		x808008_OnRefreshPrenticeTitle( sceneId, selfId, targetId )
	elseif key == x808008_g_Key["TitS_Y"] then
		x808008_OnRefreshSpouseTitle( sceneId, selfId, targetId )
 --dengxx
  elseif key == x808008_g_Key["TitG_Y"] then
		x808008_OnRefreshGuildContriTitle( sceneId, selfId, targetId )	
	------
	end
	
end

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x808008_OnEnumerate( sceneId, selfId, targetId )
	
	AddNumText( sceneId, x808008_g_ScriptId, "Ta mu¯n tên", 6, x808008_g_Key["ChgU"] )
	AddNumText( sceneId, x808008_g_ScriptId, "Ta mu¯n thay danh hi®u sß ð°", 6, x808008_g_Key["TitP"] )
	AddNumText( sceneId, x808008_g_ScriptId, "Ta mu¯n thay danh hi®u phu thê", 6, x808008_g_Key["TitS"] )
  AddNumText( sceneId, x808008_g_ScriptId, "#{CHANGENAME_JW}", 6, x808008_g_Key["TitG"] )
end

--**********************************
--¸üÐÂÅäÅ¼³ÆºÅ
--**********************************
function x808008_OnRefreshSpouseTitle( sceneId, selfId, targetId )

	if LuaFnIsMarried( sceneId, selfId ) == 0 then
		x808008_MsgBox( sceneId, selfId, "Các hÕ vçn chßa kªt hôn" )
		return
	end
	
--local	UserTitle	= LuaFnGetSpouseTitle( sceneId, selfId )
--local	i, _			= strfind( UserTitle, "*" )
--if i == nil then
--	x808008_MsgBox( sceneId, selfId, "Äú²»·ûºÏ³ÆºÅ¸üÐÂÌõ¼þ" )
--	return
--end
	
	if LuaFnHasTeam( sceneId, selfId ) == 0 then
		x808008_MsgBox( sceneId, selfId, "Các hÕ c¥n cùng tình nhân t± ðµi trß¾c hãy ðªn" )
		return
	end
	
	if LuaFnGetTeamSize( sceneId, selfId ) ~= 2 then
		x808008_MsgBox( sceneId, selfId, "Ðµi ngû nên do phu thê các hÕ l§p nên" )
		return
	end
	
	if GetNearTeamCount( sceneId, selfId ) ~= 2 then
		x808008_MsgBox( sceneId, selfId, "Tình nhân cüa các hÕ không · phø c§n" )
		return
	end

	local	ObjID0		= GetNearTeamMember( sceneId, selfId, 0 )
	local	ObjID1		= GetNearTeamMember( sceneId, selfId, 1 )
	local	SelfGUID	= LuaFnObjId2Guid( sceneId, ObjID0 )
	local	SpouGUID	= LuaFnGetSpouseGUID( sceneId, ObjID1 )
	if LuaFnIsMarried( sceneId, ObjID0 ) == 0 or
		LuaFnIsMarried( sceneId, ObjID1 ) == 0 or
		SelfGUID ~= SpouGUID then
		x808008_MsgBox( sceneId, selfId, "Tình nhân cüa các hÕ không có trong ðµi ngû" )
		return
	end

	local	Name0			= GetName( sceneId, ObjID0 )
	local	Name1			= GetName( sceneId, ObjID1 )
	if LuaFnGetSex( sceneId, ObjID0 ) == 0 then
		LuaFnAwardSpouseTitle( sceneId, ObjID1, Name0 .. " Phu quân" )
	else
		LuaFnAwardSpouseTitle( sceneId, ObjID1, Name0 .. " Nß½ng tØ" )
	end
	DispatchAllTitle( sceneId, ObjID1 )

	if LuaFnGetSex( sceneId, ObjID1 ) == 0 then
		LuaFnAwardSpouseTitle( sceneId, ObjID0, Name1 .. " Phu quân" )
	else
		LuaFnAwardSpouseTitle( sceneId, ObjID0, Name1 .. " Nß½ng tØ" )
	end
	DispatchAllTitle( sceneId, ObjID0 )
	
	BeginEvent( sceneId )
		AddText( sceneId, "  Xin chúc m×ng các hÕ, danh hi®u phu thê cüa các hÕ ðã thay m¾i!" )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--¸üÐÂÍ½µÜ³ÆºÅ
--**********************************
function x808008_OnRefreshPrenticeTitle( sceneId, selfId, targetId )

	if LuaFnHaveMaster( sceneId, selfId ) == 0 then
		x808008_MsgBox( sceneId, selfId, "Các hÕ không có sß phø" )
		return
	end
	
--local	UserTitle	= LuaFnGetShiTuTitle( sceneId, selfId )
--local	i, _			= strfind( UserTitle, "*" )
--if i == nil then
--	x808008_MsgBox( sceneId, selfId, "Äú²»·ûºÏ³ÆºÅ¸üÐÂÌõ¼þ" )
--	return
--end
	
	if LuaFnHasTeam( sceneId, selfId ) == 0 then
		x808008_MsgBox( sceneId, selfId, "Các hÕ c¥n cùng sß phø t± ðµi trß¾c hãy ðªn" )
		return
	end
	
	if LuaFnGetTeamSize( sceneId, selfId ) ~= 2 then
		x808008_MsgBox( sceneId, selfId, "Ðµi ngû nên do sß ð° các hÕ l§p nên" )
		return
	end
	
	if GetNearTeamCount( sceneId, selfId ) ~= 2 then
		x808008_MsgBox( sceneId, selfId, "Sß phø cüa các hÕ không · phø c§n" )
		return
	end

	local	ObjID0		= GetNearTeamMember( sceneId, selfId, 0 )
	local	ObjID1		= GetNearTeamMember( sceneId, selfId, 1 )
	local	ObjIDM
	if LuaFnIsMaster( sceneId, selfId, ObjID0 ) == 1 then
		ObjIDM				= ObjID0
	elseif LuaFnIsMaster( sceneId, selfId, ObjID1 ) == 1 then
		ObjIDM				= ObjID1
	else
		x808008_MsgBox( sceneId, selfId, "Sß phø cüa các hÕ không có trong ðµi ngû" )
		return
	end
	
	local	NameM			= GetName( sceneId, ObjIDM )
	AwardShiTuTitle( sceneId, selfId, NameM .. " ð® tØ" )
	DispatchAllTitle( sceneId, selfId )
	
	BeginEvent( sceneId )
		AddText( sceneId, "  Xin chúc m×ng các hÕ, danh hi®u sß ð° cüa các hÕ ðã thay m¾i!" )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--*********************************
--¸üÐÂ°ï»á¾ôÎ»³ÆºÅ dengxx
--*********************************
function x808008_OnRefreshGuildContriTitle( sceneId, selfId, targetId )
  
  --ÊÇ·ñ´¦ÓÚÎÞ·¨Ö´ÐÐÂß¼­µÄ×´Ì¬
	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 then
		return 0
	end
  
  --ÊÇ·ñ¼ÓÈëÁË°ï»á
  if GetGuildLevel( sceneId, selfId ) < 0 then
		x808008_MsgBox( sceneId, selfId, "#{BHJW_090217_2}" )
		return 0
	end
	
	--ÒÆÃñ°ï»áÃ»¸ÄÃû£¬²»ÄÜ¸üÐÂ¾ôÎ»³ÆºÅ
	local	GuildName	= LuaFnGetGuildName( sceneId, selfId )
	local	i, _ = strfind( GuildName, "*" )
	if i ~= nil then
		x808008_MsgBox( sceneId, selfId, "#{BHJW_090217_3}" )
		return 0
	end
	
	--ÊÇ·ñÓÐ°ï»á¾ôÎ»³ÆºÅ
	local currGuildContriTitle = GetGuildContriTitle(sceneId, selfId);
	if currGuildContriTitle == "" then
		x808008_MsgBox( sceneId, selfId, "#{BHJW_090217_4}" )
		return 0
	end
	
	local i,_ = strfind(currGuildContriTitle,GuildName)
	
	--¾ôÎ»³ÆºÅÊÇ·ñÕýÈ·£º²»ÓÃ¸Ä»òÕßÒÑ¾­¸Ä¹ýÁË
	if i ~= nil then 
	  x808008_MsgBox( sceneId, selfId, "#{BHJW_090217_5}" )
		return 0
	else
	--¸üÐÂ°ï»á¾ôÎ»³ÆºÅ
	  local i,_ = strfind(currGuildContriTitle,"*")
	  local str = strsub(currGuildContriTitle,i)
	  local newGuildContriTitle = GuildName..str
	  AwardGuildContriTitle( sceneId, selfId, newGuildContriTitle)
		DispatchAllTitle( sceneId, selfId )
		
		BeginEvent( sceneId )
		  AddText( sceneId, "#{BHJW_090217_6}" )
	  EndEvent( sceneId )
	  DispatchEventList( sceneId, selfId, targetId )		
	end
	
end

--**********************************
--ÊÇ·ñÓÐ×Ê¸ñÉêÇë½ÇÉ«¸üÃû
--**********************************
function x808008_IsCanChangeUserName( sceneId, selfId )

	--ÊÇ·ñ´¦ÓÚÎÞ·¨Ö´ÐÐÂß¼­µÄ×´Ì¬
	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 then
		return 0
	end
	
	--local	UserName	= GetName( sceneId, selfId )
	--local	i, _			= strfind( UserName, "*" )
  if LuaFnGetAvailableItemCount(sceneId, selfId, 30008105) >= 1 then
		--x808008_MsgBox( sceneId, selfId, "Äú²»ÊÇÒÆÃñÍæ¼Ò£¬»òÕßÄúÒÑ¾­ÐÞ¸Ä¹ýÃû×ÖÁË" )
		return 1
	end
		x808008_MsgBox( sceneId, selfId, "Các hÕ không phäi là ngß¶i di dân ho£c không mang theo Thë Ð±i Tên" )
	return 0

end

--**********************************
--½ÇÉ«ÉêÇë¸üÃûÇ°Ìõ¼þ¼ì²é
--**********************************
function x808008_CallBackChangeUserNameBefore( sceneId, selfId )

	if x808008_IsCanChangeUserName( sceneId, selfId ) == 0 then
		return 0
	end
	
	return 1

end

--**********************************
--½ÇÉ«ÉêÇë¸üÃûºó½á¹û·µ»Ø
--**********************************
function x808008_CallBackChangeUserNameAfter( sceneId, selfId, nRetType )

	--ÊÇ·ñ´¦ÓÚÎÞ·¨Ö´ÐÐÂß¼­µÄ×´Ì¬
	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 then
		return 0
	end

	--¸üÃûÏûÏ¢·µ»ØÀàÐÍ
	--enum	CHANGE_NAME_RESULT
	--{
	--	CHGNAME_RE_OK					= 0 ,	// ¸üÃû³É¹¦
	--	CHGNAME_RE_ERROR ,					// ¸üÃûÊ§°Ü
	--	CHGNAME_RE_DBBUSY ,					// DBÑ¹Á¦¹ý´ó£¬ÇëÖØÐÂ³¢ÊÔ
	--	CHGNAME_RE_NAMEERROR ,			// ²»¿É½ÓÊÜµÄÐÂÃû³Æ
	--	CHGNAME_RE_REPEATED ,				// Ãû³ÆÖØ¸´
	--};
	if nRetType == 1 then
		x808008_MsgBox( sceneId, selfId, "SØa ð±i th¤t bÕi" )
	elseif nRetType == 2 then
		x808008_MsgBox( sceneId, selfId, "DB áp lñc quá cao, xin hãy thØ lÕi t× ð¥u" )
	elseif nRetType == 3 then
		x808008_MsgBox( sceneId, selfId, "Không ch¤p nh§n tên m¾i" )
	elseif nRetType == 4 then
		x808008_MsgBox( sceneId, selfId, "Tr· v« tên cû" )
	else
		x808008_MsgBox( sceneId, selfId, "Xin chúc m×ng các hÕ, các hÕ ðã thay ð±i tên thành công!" )
		LuaFnDelAvailableItem(sceneId, selfId, 30008105, 1)
	end
	
	return 1

end

--**********************************
--ÐÑÄ¿ÌáÊ¾
--**********************************
function x808008_MsgBox( sceneId, selfId, str )

	if str == nil then
		return
	end

	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end

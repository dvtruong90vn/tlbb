--°ï»á¸üÃû

--½Å±¾ºÅ
x808009_g_ScriptId	= 808009

x808009_g_Key				=
{
	["ChgG"]					= 200,	--ÎÒÒª¸Ä°ï»áTên
	["ChgG_Y"]				= 201,	--ÎÒÒª¸Ä°ï»áTên,È·ÈÏ
}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x808009_OnDefaultEvent( sceneId, selfId, targetId )

	--Ðúng·ñ´¦ÓÚÎÞ·¨Ö´ÐÐÂß¼­toÕ ðµ ×´Ì¬
	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 then
		return 0
	end
	
	local	key	= GetNumText()
	if key == x808009_g_Key["ChgG"] then
		BeginEvent( sceneId )
			AddText( sceneId, "#{ChangeName_ChgG}" )
			AddNumText( sceneId, x808009_g_ScriptId, "Duy®t", 6, x808009_g_Key["ChgG_Y"] )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif key == x808009_g_Key["ChgG_Y"] then
		if x808009_IsCanChangeGuildName( sceneId, selfId ) == 1 then
			BeginUICommand( sceneId )
				UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 5424 )
		end
	end
	
end

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x808009_OnEnumerate( sceneId, selfId, targetId )
	
	AddNumText( sceneId, x808009_g_ScriptId, "Ta mu¯n ð±i tên bang hµi", 6, x808009_g_Key["ChgG"] )

end

--**********************************
--Ðúng·ñÓÐ×Ê¸ñÉÐúngë°ï»á¸üÃû
--**********************************
function x808009_IsCanChangeGuildName( sceneId, selfId )

	--Ðúng·ñ´¦ÓÚÎÞ·¨Ö´ÐÐÂß¼­toÕ ðµ ×´Ì¬
	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 then
		return 0
	end

	if GetGuildLevel( sceneId, selfId ) < 0 then
		x808009_MsgBox( sceneId, selfId, "Các hÕ vçn chßa m¶i bang hµi" )
		return 0
	end
	if GetGuildPos( sceneId, selfId ) ~= GUILD_POSITION_CHIEFTAIN then
		x808009_MsgBox( sceneId, selfId, "Chï có bang chü m¾i có th¬ ð±i tên bang hµi" )
		return 0
	end
	local	GuildName	= LuaFnGetGuildName( sceneId, selfId )
	local	i, _			= strfind( GuildName, "*" )
	if i == nil then
		x808009_MsgBox( sceneId, selfId, "Các hÕ không phäi là ngß¶i di dân, ho£c các hÕ ðã t×ng sØa ð±i tên" )
		return 0
	end
	
	return 1

end

--**********************************
--°ï»LinhÐúngë¸üÃûÇ°Ìõ¼þ¼ì²é
--**********************************
function x808009_CallBackChangeGuildNameBefore( sceneId, selfId )

	if x808009_IsCanChangeGuildName( sceneId, selfId ) == 0 then
		return 0
	end

	return 1

end

--**********************************
--°ï»LinhÐúngë¸üÃûºó½á¹ûTr· v«
--**********************************
function x808009_CallBackChangeGuildNameAfter( sceneId, selfId, nRetType )

	--Ðúng·ñ´¦ÓÚÎÞ·¨Ö´ÐÐÂß¼­toÕ ðµ ×´Ì¬
	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 then
		return 0
	end

	--¸üÃûÏûÏ¢Tr· v«ÀàÐÍ
	--enum	CHANGE_NAME_RESULT
	--{
	--	CHGNAME_RE_OK					= 0 ,	// ¸üÃû³É¹¦
	--	CHGNAME_RE_ERROR ,					// ¸üÃûth¤t bÕi
	--	CHGNAME_RE_DBBUSY ,					// DBÑ¹Á¦¹ý´ó,ÇëÖØÐÂ³¢ÊÔ
	--	CHGNAME_RE_NAMEERROR ,			// ²»¿ÉTiªp thøtoÕ ðµ ÐÂÃû³Æ
	--	CHGNAME_RE_REPEATED ,				// Ãû³ÆÖØ¸´
	--};
	if nRetType == 1 then
		x808009_MsgBox( sceneId, selfId, "SØa ð±i th¤t bÕi" )
	elseif nRetType == 2 then
		x808009_MsgBox( sceneId, selfId, "DB áp lñc quá cao, xin hãy thØ lÕi t× ð¥u" )
	elseif nRetType == 3 then
		x808009_MsgBox( sceneId, selfId, "Không ch¤p nh§n tên m¾i" )
	elseif nRetType == 4 then
		x808009_MsgBox( sceneId, selfId, "Tr· v« tên cû" )
	else
		x808009_MsgBox( sceneId, selfId, "Xin chúc m×ng, tên bang hµi cüa các hÕ sØa ð±i thành công!" )
	end
	return 1

end

--**********************************
--ÐÑÄ¿ÌáÊ¾
--**********************************
function x808009_MsgBox( sceneId, selfId, str )

	if str == nil then
		return
	end

	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end

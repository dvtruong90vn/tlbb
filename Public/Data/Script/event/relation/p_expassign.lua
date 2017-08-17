--¾­Ñé·ÖÅä

--½Å±¾ºÅ
x806018_g_ScriptId					= 806018

--Ã¿Ìì¿ÉÒÔÄÃ°ï¹±¶Ò»»µÄ¾­Ñé×î¶àÎª200*600=12Íòµã
x806018_g_AssignExpDateMax	= 120000

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x806018_OnDefaultEvent( sceneId, selfId, targetId )

	local	nMlevel	= LuaFnGetmasterLevel( sceneId, selfId )
	if nMlevel < 1 or nMlevel > 4 then
		x806018_MsgBox( sceneId, selfId, targetId, "ÐÆng c¤p sß ðÑc không ðü" )
		return
	end
	if LuaGetPrenticeSupplyExp( sceneId, selfId ) == 0 then
		x806018_MsgBox( sceneId, selfId, targetId, "Không có kinh nghi®m có th¬ lînh" )
		return
	end
	
	--ÁìÈ¡ÉÏÏÞ
	local	nOldTime		= GetMissionData( sceneId, selfId, MD_PEXP_GP_TIME )
	local	nOldValue		= GetMissionData( sceneId, selfId, MD_PEXP_GP_VALUE )
	local	nNewTime		= GetDayTime()
	if nOldTime == nNewTime and nOldValue >= x806018_g_AssignExpDateMax then
		x806018_MsgBox( sceneId, selfId, targetId, "Các hÕ hôm nay dùng ðµ c¯ng hiªn ð±i kinh nghi®m ðã mÑc cñc hÕn, ngày mai hãy ðªn nh§n lînh tiªp" )
		return
	end
	
	--´ò¿ª¿Í»§¶Ë°ïÅÉ¹±Ï×¶È¶Ò»»¾­Ñé´°¿Ú
	LuaFnExpAssign( sceneId, selfId, 2 )
	--¹Ø±Õ´°¿Ú
	BeginUICommand( sceneId )
	UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 1000 ) 

end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x806018_OnEnumerate( sceneId, selfId, targetId )

	AddNumText( sceneId, x806018_g_ScriptId, "Ta mu¯n dùng ðµ c¯ng hiªn bang hµi nh§n lînh kinh nghi®m", 6, -1 )

end

--**********************************
--C++»Øµ÷½Ó¿Ú£º
--°ï»á¹±Ï×¶ÈÁìÈ¡Ê¦¸µ¾­Ñé
--**********************************
function x806018_CallBackExpAssignByGuildPoint( sceneId, selfId, nExp )

	--ÊÇ·ñ´¦ÓÚÎÞ·¨Ö´ÐÐÂß¼­µÄ×´Ì¬
	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 then
		return 0
	end

	local	nAssignExp	= nExp
	local	nMlevel			= LuaFnGetmasterLevel( sceneId, selfId )
	if nMlevel < 1 or nMlevel > 4 then
		x806018_MsgTip( sceneId, selfId, "Không ðü ðÆng c¤p sß ðÑc" )
		return 0
	end
	if nAssignExp < 0 or nAssignExp > LuaGetPrenticeSupplyExp( sceneId, selfId ) then
		x806018_MsgTip( sceneId, selfId, "Không ðü giá tr¸ kinh nghi®m" )
		return 0
	end
	if IsLocked( sceneId, selfId, 0 ) == 1 then
		x806018_MsgTip( sceneId, selfId, "Ðµ c¯ng hiªn bang hµi b¸ khóa, xin thØ lÕi sau!" )
		return 0
	end
	
	--ÁìÈ¡ÉÏÏÞ
	local	nOldTime		= GetMissionData( sceneId, selfId, MD_PEXP_GP_TIME )
	local	nOldValue		= GetMissionData( sceneId, selfId, MD_PEXP_GP_VALUE )
	local	nNewTime		= GetDayTime()
	if nOldTime == nNewTime and nOldValue >= x806018_g_AssignExpDateMax then
		x806018_MsgTip( sceneId, selfId, "Hôm nay ðã ð±i ðªn mÑc t¯i ða" )
		return 0
	end
	if nOldTime ~= nNewTime then
		nOldValue				= 0
	end
	if nAssignExp + nOldValue > x806018_g_AssignExpDateMax then
		nAssignExp			= x806018_g_AssignExpDateMax - nOldValue
		x806018_MsgTip( sceneId, selfId, "M²i ngày ð±i t¯i ða "..x806018_g_AssignExpDateMax.." ði¬m kinh nghi®m, các hÕ chï còn s¯ dß "..nAssignExp.." Ði¬m" )
	end
	
	local	nBasePoint	= 0
	if nMlevel == 1 then
		nBasePoint			= 250
	elseif nMlevel == 2 then
		nBasePoint			= 300
	elseif nMlevel == 3 then
		nBasePoint			= 400
	elseif nMlevel == 4 then
		nBasePoint			= 600
	end
	local	nGPValue		= ceil( nAssignExp / nBasePoint )
	if nGPValue > CityGetAttr( sceneId, selfId, GUILD_CONTRIB_POINT ) then
		x806018_MsgTip( sceneId, selfId, "Ðµ c¯ng hiªn bang hµi không ðü" )
		return 0
	end
	--¼õÉÙ°ïÅÉ¹±Ï×¶È
	CityChangeAttr( sceneId, selfId, GUILD_CONTRIB_POINT, -nGPValue )
	--¼õÉÙÍ½µÜ¹±Ï×µÄ¾­Ñé
	LuaAddPrenticeProExp( sceneId, selfId, 0, -nAssignExp )
	--Ôö¼Ó¾­Ñé
	AddExp( sceneId, selfId, nAssignExp )
	--Êý¾ÝÍ³¼Æ
	LuaFnAuditMasterExp( sceneId, selfId, nGPValue, nAssignExp, 2 )

	--ÁìÈ¡¼ÇÂ¼
	if nOldTime ~= nNewTime then
		SetMissionData( sceneId, selfId, MD_PEXP_GP_TIME, nNewTime )
		SetMissionData( sceneId, selfId, MD_PEXP_GP_VALUE, nAssignExp )
	else
		SetMissionData( sceneId, selfId, MD_PEXP_GP_VALUE, nOldValue + nAssignExp )
	end

end

--**********************************
--¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x806018_MsgBox( sceneId, selfId, targetId, str )

	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--ÐÑÄ¿ÌáÊ¾
--**********************************
function x806018_MsgTip( sceneId, selfId, str )

	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end

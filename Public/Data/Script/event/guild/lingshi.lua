-- LinhÊ¯toÕ ðµ ÊÕ¼¯ºÍ²éÑ¯ÊýÁ¿

--************************************************************************
--MisDescBegin

-- ½Å±¾ºÅ
x600050_g_ScriptId = 600050

-- Møc tiêu nhi®m vø NPC
x600050_g_Name = "Thßþng Quan Bång"
x600050_g_Name2 = "Thßþng Quan Tuyªt"

--°ïÕ½Êý¾ÝË÷Òý,¶ÔÓ¦³ÌÐòÖÐtoÕ ðµ  enum GUILDWAR_INT_ARRAY
x600050_g_A_LingShiIndex = 2
x600050_g_B_LingShiIndex = 7

--cáiÈË»ý·ÖÊý¾ÝË÷Òý,¶ÔÓ¦³ÌÐòenum GUILDWAR_INT_INDEX
x600050_g_Human_ResourceNumIndex = 4					--cáiÈË½»ÄÉ×ÊÔ´cáiÊýË÷Òý


x600050_g_LingShi = {"Thanh Long thÕch","BÕch H± thÕch","Chu Tß¾c thÕch","Huy«n Vû thÕch","Bàn C± thÕch"}		--LinhÊ¯Tên
x600050_g_LingShiID = {30900051,30900052,30900053,30900054,30900055}	--LinhÊ¯ID

--°ïÕ½¸±±¾½Å±¾
x600050_g_BangzhanScriptId	= 402047

x600050_g_GuildPoint_LingShi = 1						--»ý·Ö¹æÔòË÷Òý,±íGuildWarPoint.txttoÕ ðµ ID

--MisDescEnd
--************************************************************************

--**********************************
-- ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x600050_OnDefaultEvent( sceneId, selfId, targetId )	--  ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
--	if GetName( sceneId, targetId ) ~= x600050_g_Name then		-- ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
--		return
--	end

	local numText = GetNumText()
	
	if numText == 1 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{BHXZ_081103_39}")
			AddNumText(sceneId, x600050_g_ScriptId, "Xác nh§n", 8, 3 )
			AddNumText(sceneId, x600050_g_ScriptId, "HuÖ bö", 8, 4 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif numText == 2 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{BHXZ_081103_63}")
			AddNumText(sceneId, x600050_g_ScriptId, "Xác nh§n", 8, 5 )
			AddNumText(sceneId, x600050_g_ScriptId, "HuÖ bö", 8, 6 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif numText == 3 then
		x600050_AcceptLingshi( sceneId, selfId, targetId )
	elseif numText == 4 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
	elseif numText == 5 then
		x600050_QueryLingshi( sceneId, selfId, targetId )
	elseif numText == 6 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
	end
end

--**********************************
-- ÁÐ¾ÙÊÂ¼þ
--**********************************
function x600050_OnEnumerate( sceneId, selfId, targetId )
--	if GetName( sceneId, targetId ) ~= x600050_g_Name then		--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
--		return
--	end
	
	AddNumText( sceneId, x600050_g_ScriptId, "#{BHXZ_081103_38}", 4, 1 ) --½»ÄÉLinhÊ¯
	AddNumText( sceneId, x600050_g_ScriptId, "#{BHXZ_081103_62}", 4, 2 )	--²é¿´LinhÊ¯cáiÊý
end

--**********************************
-- ²éÑ¯LinhÊ¯ÊýÁ¿
--**********************************
function x600050_QueryLingshi( sceneId, selfId, targetId )

	--Ðúng·ñÐúng¸±±¾
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		x600050_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_78}" )
		return
	end

	--Ðúng·ñÐúngËùC¥n toÕ ðµ ¸±±¾
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= FUBEN_BANGZHAN then
		x600050_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_78}" )
		return
	end
	
	--Ðúng·ñ¿ªÊ¼°ïÕ½»ý·Ö
	if LuaFnGetCopySceneData_Param( sceneId, 7 ) == 0 then
		x600050_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_157}" )
		return
	end
	
	local name = GetName( sceneId, targetId )
	local humanguildid = GetHumanGuildID(sceneId, selfId)
	
	if name == x600050_g_Name then
		local msg = "#{BHXZ_081103_140}"
		
		for i = 1, getn( x600050_g_LingShi ) do
			local num = GetGuildIntNum( sceneId, humanguildid, x600050_g_A_LingShiIndex+i-1 )
			msg = msg.."#r"..x600050_g_LingShi[i]..": "..num
		end
		
		x600050_NotifyFailBox( sceneId, selfId, targetId, msg )
	elseif name == x600050_g_Name2 then
		local msg = "#{BHXZ_081103_140}"
		
		for i = 1, getn( x600050_g_LingShi ) do
			local num = GetGuildIntNum( sceneId, humanguildid, x600050_g_B_LingShiIndex+i-1 )
			msg = msg.."#r"..x600050_g_LingShi[i]..": "..num
		end
		
		x600050_NotifyFailBox( sceneId, selfId, targetId, msg )
	end
	
end

--**********************************
-- ½ÓÊÕLinhÊ¯ÊýÁ¿
--**********************************
function x600050_AcceptLingshi( sceneId, selfId, targetId )

	--Ðúng·ñÐúng¸±±¾
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		x600050_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_78}" )
		return
	end

	--Ðúng·ñÐúngËùC¥n toÕ ðµ ¸±±¾
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= FUBEN_BANGZHAN then
		x600050_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_78}" )
		return
	end
	
	--Ðúng·ñ¿ªÊ¼°ïÕ½»ý·Ö
	if LuaFnGetCopySceneData_Param( sceneId, 7 ) == 0 then
		x600050_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_37}" )
		return
	end
	
	local name = GetName( sceneId, targetId )
	local humanguildid = GetHumanGuildID(sceneId, selfId)
	local LingShiPerPoint = GetGuildWarPoint(sceneId, x600050_g_GuildPoint_LingShi)
	
	if name == x600050_g_Name then --A°ï
		local msg = ""
		local point = 0
		local totalnum = 0
		local NumPerType = {0,0,0,0,0}
		
		for i = 1, getn( x600050_g_LingShiID ) do
			local num = LuaFnGetAvailableItemCount( sceneId, selfId, x600050_g_LingShiID[i] )
			local alreadynum = GetGuildIntNum( sceneId, humanguildid, x600050_g_A_LingShiIndex+i-1 ) --ÒÑÓÐÊýÁ¿
			if num > 0 and alreadynum ~= -1 then --²»µÈÓÚ-1toÕ ðµ ÅÐ¶Ï¿ÉÒÔÅÐ¶Ï³öÍæ¼ÒTÕi ÕýÈ·toÕ ðµ °ïÅÉÖÐ
				if LuaFnDelAvailableItem( sceneId, selfId, x600050_g_LingShiID[i], num ) > 0 then
					point = point + num*LingShiPerPoint
					totalnum = totalnum + num
					NumPerType[i] = num
					SetGuildIntNum( sceneId, humanguildid, x600050_g_A_LingShiIndex+i-1, num+alreadynum )
					msg = msg.."#r"..x600050_g_LingShi[i]..": "..num
				end
			end
		end
		
		if point > 0 then
			x600050_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_141}"..msg )
			
			--Ôö¼Ó»ý·Ö
			CallScriptFunction( x600050_g_BangzhanScriptId, "AddAGuildPoint", sceneId, selfId, humanguildid, point )
--			--Ôö¼Ó°ï¹±,Ã¿5cáiLinhÊ¯Ôö¼Ómµt  ði¬m°ï¹±
--			local alreadyResource = GetHumanGuildInt( sceneId, selfId, x600050_g_Human_ResourceNumIndex )
--			local alreadymod = mod(alreadyResource, 5)
--			local addbanggong = floor((alreadymod+totalnum) / 5)
--			if addbanggong > 0 then
--				CityChangeAttr( sceneId, selfId, GUILD_CONTRIB_POINT, addbanggong )
--			end
			Msg2Player(sceneId, selfId, "#{BHXZ_081103_142}"..totalnum.."#{BHXZ_081103_143}" , MSG2PLAYER_PARA)
			--Ôö¼ÓcáiÈË»ý·Ö
			CallScriptFunction( x600050_g_BangzhanScriptId, "AddHumanGuildArrayInt", sceneId, selfId, x600050_g_Human_ResourceNumIndex, totalnum )
			--Í³¼ÆÈÕÖ¾
			local guid = LuaFnObjId2Guid(sceneId, selfId)
			local log = format("qinglong=%d,baihu=%d,zhuque=%d,xuanwu=%d,pangu=%d,total=%d", NumPerType[1], NumPerType[2], NumPerType[3], NumPerType[4], NumPerType[5], totalnum)
			ScriptGlobal_AuditGeneralLog(LUAAUDIT_BANGZHAN_RESOURCE, guid, log)
		else
			x600050_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_144}" )
		end
	elseif name == x600050_g_Name2 then --B°ï
		local msg = ""
		local point = 0
		local totalnum = 0
		local NumPerType = {0,0,0,0,0}
		
		for i = 1, getn( x600050_g_LingShiID ) do
			local num = LuaFnGetAvailableItemCount( sceneId, selfId, x600050_g_LingShiID[i] )
			local alreadynum = GetGuildIntNum( sceneId, humanguildid, x600050_g_B_LingShiIndex+i-1 ) --ÒÑÓÐÊýÁ¿
			if num > 0 and alreadynum ~= -1 then --²»µÈÓÚ-1toÕ ðµ ÅÐ¶Ï¿ÉÒÔÅÐ¶Ï³öÍæ¼ÒTÕi ÕýÈ·toÕ ðµ °ïÅÉÖÐ
				if LuaFnDelAvailableItem( sceneId, selfId, x600050_g_LingShiID[i], num ) > 0 then
					point = point + num*LingShiPerPoint
					totalnum = totalnum + num
					NumPerType[i] = num
					SetGuildIntNum( sceneId, humanguildid, x600050_g_B_LingShiIndex+i-1, num+alreadynum )
					msg = msg.."#r"..x600050_g_LingShi[i]..": "..num
				end
			end
		end
		
		if point > 0 then
			x600050_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_141}"..msg )
			
			--Ôö¼Ó»ý·Ö
			CallScriptFunction( x600050_g_BangzhanScriptId, "AddBGuildPoint", sceneId, selfId, humanguildid, point )
--			--Ôö¼Ó°ï¹±,Ã¿5cáiLinhÊ¯Ôö¼Ómµt  ði¬m°ï¹±
--			local alreadyResource = GetHumanGuildInt( sceneId, selfId, x600050_g_Human_ResourceNumIndex )
--			local alreadymod = mod(alreadyResource, 5)
--			local addbanggong = floor((alreadymod+totalnum) / 5)
--			if addbanggong > 0 then
--				CityChangeAttr( sceneId, selfId, GUILD_CONTRIB_POINT, addbanggong )
--			end
			Msg2Player(sceneId, selfId, "#{BHXZ_081103_142}"..totalnum.."#{BHXZ_081103_143}" , MSG2PLAYER_PARA)
			--Ôö¼ÓcáiÈË»ý·Ö
			CallScriptFunction( x600050_g_BangzhanScriptId, "AddHumanGuildArrayInt", sceneId, selfId, x600050_g_Human_ResourceNumIndex, totalnum )
			--Í³¼ÆÈÕÖ¾
			local guid = LuaFnObjId2Guid(sceneId, selfId)
			local log = format("qinglong=%d,baihu=%d,zhuque=%d,xuanwu=%d,pangu=%d,total=%d", NumPerType[1], NumPerType[2], NumPerType[3], NumPerType[4], NumPerType[5], totalnum)
			ScriptGlobal_AuditGeneralLog(LUAAUDIT_BANGZHAN_RESOURCE, guid, log)
		else
			x600050_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_144}" )
		end
	end
	
end

--**********************************
-- ¼ì²âTiªp thøÌõ¼þ
--**********************************
function x600050_CheckAccept( sceneId, selfId, targetId )
	return 1
end

--**********************************
--Tiªp thø
--**********************************
function x600050_OnAccept( sceneId, selfId, targetId )
end

--**********************************
--¼ÌÐø
--**********************************
function x600050_OnContinue( sceneId, selfId, targetId )
--	BeginEvent( sceneId )
--		AddText( sceneId, x600050_g_MissionName )
--		AddText( sceneId, "good ¼ÌÐø" )
--	EndEvent( )
--	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600050_g_ScriptId, x600050_g_MissionId )
end

--**********************************
--·ÅÆú
--**********************************
function x600050_OnAbandon( sceneId, selfId )
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x600050_CheckSubmit( sceneId, selfId )
	return 1
end

--**********************************
--Ìá½»
--**********************************
function x600050_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end

--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x600050_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ÆÁÄ»ÖÐ¼äÐÅÏ¢ÌáÊ¾
--**********************************
function x600050_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

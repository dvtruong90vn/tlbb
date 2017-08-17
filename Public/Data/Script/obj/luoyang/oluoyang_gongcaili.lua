--ÂåÑôNPC
--¹¨²ÊÀö
--ÆÕÍ¨

x000132_g_ScriptId	= 000132

--²Ù×÷¼¯
x000132_g_Key				=
{
	["chg"]	=	1,			--ÎÒÏë¶Ò»»Ä«¾µÃ¨
	["in1"]	= 2,			--¹ØÓÚ¶Ò»»
	["in2"]	= 3,			--¹ØÓÚ°µ½ð±¦Ïä
	["bak"]	= 4,			--·µ»ØÉÏÒ»Ò³
}

--ÊÂ¼þ
x000132_g_eventList = { 808065 }

--¶Ò»»ÁÐ±í
x000132_g_ChangeLst	=
{
	--ÃèÊö£¬Íæ¼Ò¿ÉµÃµ½µÄÎïÆ·£¬GetNumText£¬¶Ò»»ËùÐèÎïÆ·£¬¶Ò»»ËùÐèÎïÆ·ÊýÁ¿
	[1]	= { des = "Ð±i M£c Kính Miêu ðÆng c¤p 5 có th¬ mang theo",  id = 30505109, key = 101, NeedItm = 30008026, NeedNum = 30 },
	[2]	= { des = "Ð±i Lßu Hành Miêu ðÆng c¤p 45 có th¬ mang theo", id = 30505110, key = 102, NeedItm = 30008026, NeedNum = 40 },
	[3]	= { des = "Ð±i Th¶i Thßþng Miêu ðÆng c¤p 55 có th¬ mang theo", id = 30505111, key = 103, NeedItm = 30008026, NeedNum = 43 },
	[4]	= { des = "Ð±i Ngçu Tßþng Miêu ðÆng c¤p 65 có th¬ mang theo", id = 30505112, key = 104, NeedItm = 30008026, NeedNum = 46 },
	[5]	= { des = "Ð±i Quán Quân Miêu ðÆng c¤p 75 có th¬ mang theo", id = 30505113, key = 105, NeedItm = 30008026, NeedNum = 50 },
	[6]	= { des = "Ð±i Quán Quân Miêu ðÆng c¤p 85 có th¬ mang theo", id = 30505154, key = 106, NeedItm = 30008026, NeedNum = 80 },
}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000132_OnDefaultEvent( sceneId, selfId, targetId )

	BeginEvent( sceneId )
		AddText( sceneId, "#{ANXIANG_DLG}" )
		AddNumText( sceneId, x000132_g_ScriptId, "Ta mu¯n ð±i Mèo", 6, x000132_g_Key["chg"] )
		AddNumText( sceneId, x000132_g_ScriptId, "Liên quan hoán ð±i", 11, x000132_g_Key["in1"] )
		AddNumText( sceneId, x000132_g_ScriptId, "Liên quan Âm Kim Bäo Sß½ng", 11, x000132_g_Key["in2"] )	
		
		local i, eventId
		for i, eventId in x000132_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
		end
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x000132_OnEventRequest( sceneId, selfId, targetId, eventId )

	local	key	= GetNumText()
	
	--³é½±»î¶¯
	local i, findId
	for i, findId in x000132_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
			return
		end
	end

	if key == x000132_g_Key["chg"] then
		BeginEvent( sceneId )
			AddText( sceneId, "Các hÕ mu¯n ð±i loÕi Trân thú nào?" )
			for i = 1, getn( x000132_g_ChangeLst ) do
				AddNumText( sceneId, x000132_g_ScriptId, x000132_g_ChangeLst[i].des, 6, x000132_g_ChangeLst[i].key )
			end
			AddNumText( sceneId, x000132_g_ScriptId, "Tr· v« trang trß¾c", -1, x000132_g_Key["bak"] )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
	elseif key == x000132_g_Key["in1"] then
		x000132_MsgBox( sceneId, selfId, targetId, "#{ANXIANG_CHG}" )

	elseif key == x000132_g_Key["in2"] then
		x000132_MsgBox( sceneId, selfId, targetId, "#{ANXIANG_INF}" )
	
	elseif key == x000132_g_Key["bak"] then
		x000132_OnDefaultEvent( sceneId, selfId, targetId )

	else
		for i = 1, getn( x000132_g_ChangeLst ) do
			if key == x000132_g_ChangeLst[i].key then
				x000132_OnMyChange( sceneId, selfId, targetId, x000132_g_ChangeLst[i] )
				break
			end
		end
	end

end

--**********************************
--¶Ò»»
--**********************************
function x000132_OnMyChange( sceneId, selfId, targetId, unt )

	if unt == nil then
		return
	end
	
	if LuaFnGetAvailableItemCount( sceneId, selfId, unt.NeedItm ) < unt.NeedNum then
		x000132_MsgBox( sceneId, selfId, targetId, "    "..unt.des..", trên ngß¶i các hÕ không ðü mänh vøn ð° sÑ c±"..unt.NeedNum.." cái. (Mänh vøn ð° sÑ c± có th¬ có thông qua m· Âm Kim Bäo Sß½ng)" )
		return
	end
	
	BeginAddItem( sceneId )
	AddItem( sceneId, unt.id, 1 )
	if EndAddItem( sceneId, selfId ) > 0 then
		if LuaFnDelAvailableItem( sceneId, selfId, unt.NeedItm, unt.NeedNum ) == 1 then
			AddItemListToHuman( sceneId, selfId )
		else
			x000132_MsgBox( sceneId, selfId, targetId, "Kh¤u tr× v§t ph¦m th¤t bÕi!" )
			return
		end
	else
		x000132_MsgBox( sceneId, selfId, targetId, "Xin l²i, tay näi cüa các hÕ ðã ð¥y, không th¬ hoán ð±i." )
		return
	end
	
	local	szTran	= GetItemTransfer( sceneId, selfId, 0 )
	local szUser	= "#{_INFOUSR"..GetName( sceneId, selfId ).."}"
	local szItem	= "#{_INFOMSG"..szTran.."}"
	local	szMsg		= format( "#W%s#cff99cc t§n tâm t§n lñc vì#G LÕc Dß½ng (111, 163) #YCung Thái L®#cff99cc tìm ðü #YC± t× toái phiªn#cff99cc, Cung Thái L® r¤t vui m×ng, l¤y %s ra làm quà t£ng.", szUser, szItem )
	x000132_MsgBox( sceneId, selfId, targetId, "Các hÕ hoán ð±i thành công r°i"..GetItemName( sceneId, unt.id ).."." )
	BroadMsgByChatPipe( sceneId, selfId, szMsg, 4 )

end

--**********************************
--Message Box
--**********************************
function x000132_MsgBox( sceneId, selfId, targetId, str )

	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	
end

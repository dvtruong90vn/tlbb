--È«²¿¼ÓËø

--½Å±¾ºÅ
x808007_g_ScriptId	= 808007

--²Ù×÷¼¯
x808007_g_Key	=
{
	["hlp"]			= 1,		--°ïÖú
	["lck_s"]		= 11,		--È«²¿¼ÓËø
	["lck_sY"]	= 111,	--È«²¿¼ÓËø,Xác nh§n
	["lck_1"]		= 10,		--µ¥cái¼ÓËø
	["unl_s"]		= 21,		--ÎÒÏëÁÙÊ±½âËø
	["unl_1"]		= 20,		--ÎÒÏëµ¥cái½âËø

	["lck_set"]	= 31,		--ÉèÖÃ¶şc¤pÃÜÂë
	["lck_res"]	= 30,		--ĞŞ¸Ä¶şc¤pÃÜÂë
}

x808007_g_Msg	=
{
	["lck"]		= "#{JSJS_090206_01}",
	["ask_l"]	= "    #{PBSD_20080103_01}",
	["unl"]		= "    Sau khi m· khóa tÕm th¶i các hÕ có th¬ tiªn hành thao tác tß½ng Ñng, sau khi r¶i mÕng s¨ tñ ğµng khóa lÕi; m· khóa t×ng món có th¬ m· v§t ph¦m ğã khóa, các hÕ có mu¯n m· khóa không?",
	["ask_2"]   = ""
}
--ÕÊºÅ  to  ÕËºÅ

--**********************************
--½Å±¾Èë¿Úº¯Êı
--**********************************
function x808007_OnDefaultEvent( sceneId, selfId, op )

	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) == 0 then
		return
	end
	if GetLevel( sceneId, selfId ) <= 15 then
		x808007_MyNotifyTip( sceneId, selfId, "Sau c¤p 15 chÑc nång này s¨ m·" )
		return
	end
	if LuaFnIsStalling( sceneId, selfId ) == 1 then
		x808007_MyNotifyTip( sceneId, selfId, "Trong trÕng thái buôn bán không th¬ thñc hi®n thao tác này" )
		return
	end

	--¿Í»§¶ËM· ra 
	if op == x808007_g_ScriptId then
		--Ğúng·ñÒÑÉèÖÃ¶şc¤pÃÜÂë
		if LuaFnIsPasswordSetup( sceneId, selfId, 0 ) ~= 1 then
			x808007_OnLockUI( sceneId, selfId )
		else
			--Ğúng·ñ½âËø¶şc¤pÃÜÂë
			if LuaFnIsPasswordUnlocked( sceneId, selfId, 0 ) == 1 then
				x808007_OnLockUI( sceneId, selfId )
			else
				x808007_OnUnlockUI( sceneId, selfId )
			end
		end
		return
	end
	
	local	key	= GetNumText()

	if key == x808007_g_Key["hlp"] then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_090}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, -1 )
		return
	elseif key == x808007_g_Key["lck_s"] then
		BeginEvent( sceneId )
			AddText( sceneId, x808007_g_Msg["ask_l"] )
			AddNumText( sceneId, x808007_g_ScriptId, "Duy®t", 2, x808007_g_Key["lck_sY"] )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, -1 )
		return
	elseif key == x808007_g_Key["lck_1"] then
		BeginUICommand( sceneId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 5421 )
	elseif key == x808007_g_Key["unl_s"] then
		LuaFnSendOpResult( sceneId, selfId, OR_NEED_UNLOCKMINORPASSWORD )
	elseif key == x808007_g_Key["unl_1"] then
		BeginUICommand( sceneId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 5421 )
	elseif key == x808007_g_Key["lck_sY"] then
		x808007_OnLockAllObj( sceneId, selfId )
		return
	elseif key == x808007_g_Key["lck_set"] then
		--ÉèÖÃ¶şc¤pÃÜÂë
		LuaFnSendOpResult( sceneId, selfId, OR_EXE_SETPASSWORD )
	elseif key == x808007_g_Key["lck_res"] then
		--ĞŞ¸Ä¶şc¤pÃÜÂë
		LuaFnSendOpResult( sceneId, selfId, OR_EXE_CHANGEPASSWORD )
	end
	
	BeginUICommand( sceneId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 1000 )

end

--**********************************
--¼ÓËø½çÃæ
--**********************************
function x808007_OnLockUI( sceneId, selfId )

	BeginEvent( sceneId )
		AddText( sceneId, x808007_g_Msg["lck"] )
		AddNumText( sceneId, x808007_g_ScriptId, "Khóa toàn bµ", 2, x808007_g_Key["lck_s"] )
		AddNumText( sceneId, x808007_g_ScriptId, "Khóa ğ½n lë", 2, x808007_g_Key["lck_1"] )
		if LuaFnIsPasswordSetup( sceneId, selfId, 0 ) ~= 1 then
			AddNumText( sceneId, x808007_g_ScriptId, "Thiªt l§p m§t mã c¤p 2", 2, x808007_g_Key["lck_set"] )
		else
			AddNumText( sceneId, x808007_g_ScriptId, "Thiªt l§p th¶i gian an toàn", 2, x808007_g_Key["lck_res"] )
		end
		AddNumText( sceneId, x808007_g_ScriptId, "Liên quan khóa toàn bµ", 11, x808007_g_Key["hlp"] )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, -1 )

end

--**********************************
--½âËø½çÃæ
--**********************************
function x808007_OnUnlockUI( sceneId, selfId )

	BeginEvent( sceneId )
		AddText( sceneId, x808007_g_Msg["unl"] )
		AddNumText( sceneId, x808007_g_ScriptId, "Ta mu¯n m· khóa trß¾c khi thao tác", 2, x808007_g_Key["unl_s"] )
		AddNumText( sceneId, x808007_g_ScriptId, "Ta mu¯n m· khóa 1 v§t ph¦m", 2, x808007_g_Key["unl_1"] )
		if LuaFnIsPasswordSetup( sceneId, selfId, 0 ) ~= 1 then
			AddNumText( sceneId, x808007_g_ScriptId, "Thay ğ±i m§t mã c¤p 2", 2, x808007_g_Key["lck_set"] )
		else
			AddNumText( sceneId, x808007_g_ScriptId, "Thiªt l§p th¶i gian an toàn", 2, x808007_g_Key["lck_res"] )
		end
		AddNumText( sceneId, x808007_g_ScriptId, "Liên quan khóa toàn bµ", 11, x808007_g_Key["hlp"] )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, -1 )

end

--**********************************
--¶şc¤pÃÜÂëËø¶¨ËùÓĞÎïÆ·¡¢³èÎï
--**********************************
function x808007_OnLockAllObj( sceneId, selfId )

	--Ğúng·ñÒÑÉèÖÃ¶şc¤pÃÜÂë
	if LuaFnIsPasswordSetup( sceneId, selfId, 0 ) ~= 1 then
		LuaFnSendOpResult( sceneId, selfId, OR_NEED_SETMINORPASSWORD )
	else
		SetAllItemPWLock( sceneId, selfId, 1 )
		SetAllPetPWLock( sceneId, selfId, 1 )
		x808007_MyNotifyTip( sceneId, selfId, "Khóa thành công" )
		BeginUICommand( sceneId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
	end

end

--**********************************
--ĞÑÄ¿ÌáÊ¾
--**********************************
function x808007_MyNotifyTip( sceneId, selfId, str )

	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end

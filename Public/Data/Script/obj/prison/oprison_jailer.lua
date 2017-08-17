--¼àÓüNPC
--Óü×ä
--ÆÕÍ¨

x077011_g_ScriptId	= 077011

--²Ù×÷¼¯
x077011_g_Key				=
{
	["dlg"]	= 10,	--ÕâÀïÊÇÄÄ¶ù£¿
	["out"]	= 11,	--ÎÒÒª³öÈ¥
	["sn0"]	= 0,	--È¥ÂåÑô
	["sn1"]	= 1,	--È¥ËÕÖÝ
	["sn2"]	= 2,	--È¥´óÀí
}

--»ñÊÍÌõ¼þ£¬×îÐ¡É±ÆøÖµ
x077011_g_PKMinVal	= 8--[tx43640]ÓÉ4¸ÄÎª8

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x077011_OnDefaultEvent( sceneId, selfId, targetId )

	BeginEvent( sceneId )
			AddText(sceneId, "#{PRISON_081120_01}")
			AddNumText( sceneId, x077011_g_ScriptId, "Ta mu¯n ði", 9, x077011_g_Key["out"] )
			AddNumText( sceneId, x077011_g_ScriptId, "Ðây là ðâu?", 11, x077011_g_Key["dlg"] )
			AddNumText( sceneId, x077011_g_ScriptId, "Ta mu¯n giäi oan", 9, 21 )
			AddNumText( sceneId, x077011_g_ScriptId, "Ta có ð£c xá l®nh.", 9, 15 )
			AddNumText( sceneId, x077011_g_ScriptId, "Cái gì là giäi oan?", 11, 22 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x077011_OnEventRequest( sceneId, selfId, targetId, eventId )

	local	key	= GetNumText()
	local	val	= LuaFnGetHumanPKValue( sceneId, selfId )	--É±ÆøÖµ
	
	if key == 15 then
		
				
		local nItemCount = GetItemCount(sceneId, selfId, 30008019);
		if nItemCount <= 0 then
			x077011_MsgBox( sceneId, selfId, targetId, "#{TeSheLing_00}" )
			return 0;
		end
		
		if IsWaiGuaUser( sceneId, selfId ) > 0 then
			x077011_MsgBox( sceneId, selfId, targetId, "Do các hÕ sØ døng chß½ng trình không cho phép b¸ b¡t vào Giám ngøc, nên không th¬ sØ døng ð£c xá l®nh." )
			return 0;
		end
		
		local bRet = 0;
		
		local	bagpos = GetItemBagPos( sceneId, selfId, 30008019, 0 )
	
		if LuaFnLockCheck( sceneId, selfId, bagpos, 0 ) < 0 then
			local nItemNum = LuaFnGetAvailableItemCount( sceneId, selfId, 30008019 );		
			if nItemNum <= 0 then
				x077011_MsgBox( sceneId, selfId, targetId, "V§t ph¦m này ðã b¸ khóa!" )
				return 0;
			end
		end

		bRet = 1;
		
		if bRet > 0 then
			BeginEvent( sceneId )
				AddText( sceneId, "Xin chúc m×ng, cu¯i cùng ngß½i cûng có th¬ ra ðßþc, nh¾ sau khi ra không ðßþc sát hÕi vô tµi, nªu không ta là s¨ không tha cho ngß½i, ngß½i mu¯n t¾i thành th¸ nào?" )
				AddNumText( sceneId, x077011_g_ScriptId, "LÕc Dß½ng", 9, 3 )
				AddNumText( sceneId, x077011_g_ScriptId, "Tô Châu", 9, 4 )
				AddNumText( sceneId, x077011_g_ScriptId, "ÐÕi Lý", 9, 5 )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			
			
			
		end
		
		return 0;
	end
	
	if key == 21 then
		x077011_ShenYuan( sceneId, selfId, targetId )
		return 0
	elseif key == 22 then
		x077011_MsgBox( sceneId, selfId, targetId, "#{PRISON_SHENYUAN_00}" )
		return 0
	end
	
	--ÕâÀïÊÇÄÄ¶ù£¿
	if key == x077011_g_Key["dlg"]	then
			x077011_MsgBox( sceneId, selfId, targetId, "#{function_help_087}" )
			return 0

	--ÎÒÒª³öÈ¥
	elseif key == x077011_g_Key["out"] then
		if val > x077011_g_PKMinVal then
			x077011_MsgBox( sceneId, selfId, targetId, "Sát khí cüa các hÕ hi®n là "..val..", chï có th¤p h½n ho£c b¢ng "..x077011_g_PKMinVal.." ði¬m thì m¾i có th¬ ra" )
			return 0
		end

		BeginEvent( sceneId )
			AddText( sceneId, "Xin chúc m×ng, cu¯i cùng ngß½i cûng có th¬ ra ðßþc, nh¾ sau khi ra không ðßþc sát hÕi vô tµi, nªu không ta là s¨ không tha cho ngß½i, ngß½i mu¯n t¾i thành th¸ nào?" )
			AddNumText( sceneId, x077011_g_ScriptId, "LÕc Dß½ng", 9, x077011_g_Key["sn0"] )
			AddNumText( sceneId, x077011_g_ScriptId, "Tô Châu", 9, x077011_g_Key["sn1"] )
			AddNumText( sceneId, x077011_g_ScriptId, "ÐÕi Lý", 9, x077011_g_Key["sn2"] )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	--È¥ÂåÑô
	elseif key == x077011_g_Key["sn0"] then
		--»ñÊÍ
		PrisonGoOut( sceneId, selfId )
		--»Ø³Ç
		NewWorld( sceneId, selfId, 0, 233, 321 )

	--È¥ËÕÖÝ
	elseif key == x077011_g_Key["sn1"] then
		--»ñÊÍ
		PrisonGoOut( sceneId, selfId )
		--»Ø³Ç
		NewWorld( sceneId, selfId, 1, 202,257 )

	--È¥´óÀí
	elseif key == x077011_g_Key["sn2"] then
		--»ñÊÍ
		PrisonGoOut( sceneId, selfId )
		--»Ø³Ç
		NewWorld( sceneId, selfId, 2, 376, 222 )
	
	elseif key == 3 then
			
		local	bagpos1 = GetItemBagPos( sceneId, selfId, 30008019, 0 )
		if LuaFnLockCheck( sceneId, selfId, bagpos1, 0 ) < 0 then
			local nItemNum = LuaFnGetAvailableItemCount( sceneId, selfId, 30008019 );		
			if nItemNum <= 0 then
				x077011_MsgBox( sceneId, selfId, targetId, "V§t ph¦m này ðã b¸ khóa!" )
				return 0;
			end
		end
	
		--»ñÊÍ
		PrisonGoOut( sceneId, selfId )
		--»Ø³Ç
		NewWorld( sceneId, selfId, 0, 233, 321 )
		
		LuaFnDelAvailableItem(sceneId, selfId, 30008019, 1);

	elseif key == 4 then
	
		local	bagpos2 = GetItemBagPos( sceneId, selfId, 30008019, 0 )
		if LuaFnLockCheck( sceneId, selfId, bagpos2, 0 ) < 0 then
			local nItemNum = LuaFnGetAvailableItemCount( sceneId, selfId, 30008019 );		
			if nItemNum <= 0 then
				x077011_MsgBox( sceneId, selfId, targetId, "´ËÎïÆ·ÒÑ±»Ëø¶¨£¡" )
				return 0;
			end
		end
	
		--»ñÊÍ
		PrisonGoOut( sceneId, selfId )
		--»Ø³Ç
		NewWorld( sceneId, selfId, 1, 202,257 )
		
		LuaFnDelAvailableItem(sceneId, selfId, 30008019, 1);

	elseif key == 5 then
	
		local	bagpos3 = GetItemBagPos( sceneId, selfId, 30008019, 0 )
		if LuaFnLockCheck( sceneId, selfId, bagpos3, 0 ) < 0 then
			local nItemNum = LuaFnGetAvailableItemCount( sceneId, selfId, 30008019 );		
			if nItemNum <= 0 then
				x077011_MsgBox( sceneId, selfId, targetId, "V§t ph¦m này ðã b¸ khóa!" )
				return 0;
			end
		end
	
		--»ñÊÍ
		PrisonGoOut( sceneId, selfId )
		--»Ø³Ç
		NewWorld( sceneId, selfId, 2, 376, 222 )
		
		LuaFnDelAvailableItem(sceneId, selfId, 30008019, 1);

	end
	
	if val > x077011_g_PKMinVal then --[tx43640]Ô­Îª>= 5£¬Ó¦¸ÄÎª>x077011_g_PKMinVal,ÆäÊµÓ¦¸ÃÊÇ[8,10]ÖÐµÄÒ»¸öÖµ 
		LuaFnSetHumanPKValue(sceneId, selfId, x077011_g_PKMinVal)--[tx43640]Ô­Îª4£¬Ó¦¸ÄÎªx077011_g_PKMinVal
		
		-- [ QUFEI 2007-11-09 15:36 UPDATE BugID 27611 ]		
		local LogInfo	= format( "[ChangePKValue]:Prison sceneId=%d, GUID=%0X, PKValueBgn=%d, PKValueEnd=%d",
				sceneId,
				LuaFnObjId2Guid( sceneId, selfId ),			
				val,
				LuaFnGetHumanPKValue(sceneId, selfId) )
		WriteCheckLog( sceneId, selfId, LogInfo )
		
	end
	
	return 1

end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x077011_MsgBox( sceneId, selfId, targetId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end


--**********************************
--ÉìÔ©
--**********************************
function x077011_ShenYuan( sceneId, selfId, targetId )

	--ÅÐ¶ÏÉ±Æø....
	if LuaFnGetHumanPKValue( sceneId, selfId ) > x077011_g_PKMinVal then
		x077011_MsgBox( sceneId, selfId, targetId, "#{PRISON_SHENYUAN_01}" )
		return
	end
	
	--ÅÐ¶Ïµ±Ç°ÊÇ·ñ½ûÖ¹ÉìÔ©....
	if GetMissionFlag( sceneId, selfId, MF_CannotPrisonShenyuan ) == 1 then
		x077011_MsgBox( sceneId, selfId, targetId, "#{PRISON_SHENYUAN_02}" )
		return
	end
	
	--ÅÐ¶Ï½ñÌìÊÇ·ñÒÑ¾­ÓÃ¹ýÉìÔ©ÁË....
	local lastDayTime = GetMissionData( sceneId, selfId, MD_PRISON_SHENYUAN_DAYTIME )
	local CurDayTime = GetDayTime()
	if CurDayTime <= lastDayTime then
		x077011_MsgBox( sceneId, selfId, targetId, "#{PRISON_SHENYUAN_03}" )
		return
	end
	
	--ÉèÖÃ½ñÌìÒÑ¾­ÓÃ¹ýÉìÔ©ÁË....
	SetMissionData( sceneId, selfId, MD_PRISON_SHENYUAN_DAYTIME, CurDayTime )
	
	--µ¯³öÍ¼ÐÎÑéÖ¤ÈÃÍæ¼Ò»Ø´ðÎÊÌâ....
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)

	LuaFnSendGuajiQuestion( sceneId, selfId )

end

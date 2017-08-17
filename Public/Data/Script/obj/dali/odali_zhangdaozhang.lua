--´óÀíNPC
--ÕÅµÀ³¤
--ÆÕÍ¨

x002075_g_ScriptId	= 002075

--åë³ßÌìÑÄ(¼¼ÄÜ±àºÅ¡¢¼¼ÄÜÃû³Æ¡¢ÏûºÄ½ðÇ®)
x002075_g_Ability				= {}
x002075_g_Ability["aid"]= 39
x002075_g_Ability["nam"]= "Chï Xích Thiên Nhai"
x002075_g_Ability["gld"]= 300000		--30G
x002075_g_LevMax				= 3					--¿ÉH÷c µÄ×î¸ßµÈ¼¶

--²Ù×÷¼¯
x002075_g_Key				= {}
x002075_g_Key["nul"]= 0		--É¶¶¼Ã»×ö
x002075_g_Key["stu"]= 1		--H÷c ¼¼ÄÜ
x002075_g_Key["sty"]= 101	--È·¶¨H÷c 
x002075_g_Key["stn"]= 100	--·ÅÆúH÷c 
x002075_g_Key["lup"]= 2		--Thång c¤p kÛ nång
x002075_g_Key["upy"]= 201	--È·¶¨Éý¼¶
x002075_g_Key["upn"]= 200	--·ÅÆúÉý¼¶
x002075_g_Key["des"]= 3		--Gi¾i thi®u Ð¸nh V¸ Phù


--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002075_OnDefaultEvent( sceneId, selfId, targetId )
	local	lev	= QueryHumanAbilityLevel( sceneId, selfId, x002075_g_Ability["aid"] )
	BeginEvent( sceneId )
		AddText( sceneId, "Ta có th¬ truy«n thø cho ngß½i mµt loÕi kÛ nång th¥n kÏ, có th¬ ghi lÕi v¸ trí, thông tin, r¤t thu§n ti®n khi ngß½i tr· lÕi n½i này." )
		AddText( sceneId, "Chú ý: Phù càng cao c¤p, ký hi®u sØ døng càng nhi«u." )
		if GetLevel( sceneId, selfId ) >= 30 then
			if lev <= 0 then
				AddNumText( sceneId, x002075_g_ScriptId, "H÷c "..x002075_g_Ability["nam"], 6, x002075_g_Key["stu"] )
			else
				AddNumText( sceneId, x002075_g_ScriptId, "Thång c¤p kÛ nång", 6, x002075_g_Key["lup"] )
			end			
			AddNumText( sceneId, x002075_g_ScriptId, "Cái gì cûng không làm...", -1, x002075_g_Key["nul"] )
		end
		AddNumText( sceneId, x002075_g_ScriptId, "Gi¾i thi®u Ð¸nh V¸ Phù", 11, x002075_g_Key["des"] )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x002075_OnEventRequest( sceneId, selfId, targetId, eventId )
	local	key	= GetNumText()
	local	lev	= QueryHumanAbilityLevel( sceneId, selfId, x002075_g_Ability["aid"] )
	local exp = GetAbilityExp( sceneId, selfId, x002075_g_Ability["aid"] )	--ÊìÁ·¶È
	local ret, demandMoney, _, limitAbilityExp, limitAbilityExpShow, _, limitLevel
		= LuaFnGetAbilityLevelUpConfig( x002075_g_Ability["aid"], lev + 1 )

	--Gi¾i thi®u Ð¸nh V¸ Phù
	if key == x002075_g_Key["des"]	then

		x002075_MsgBox( sceneId, selfId, targetId, "#{function_help_020}" )

	--H÷c ¼¼ÄÜ
	elseif key == x002075_g_Key["stu"]	then
	
		if GetLevel( sceneId, selfId ) < 30 then--·Ç·¨Çé¿ö×ßµ½ÕâÀï£¬Ò²²»ÐèÒªÌáÊ¾ÁË
			return 0
		end

		x002075_OnAsk( sceneId, selfId, targetId, x002075_g_Key["stu"], "H÷c t§p kÛ nång này c¥n tiêu hao #{_EXCHG" .. demandMoney .. "} tinh lñc, tiªp tøc?" )
	
	--È·¶¨H÷c 
	elseif key == x002075_g_Key["sty"] then
	
		if GetLevel( sceneId, selfId ) < 30 then--·Ç·¨Çé¿ö×ßµ½ÕâÀï£¬Ò²²»ÐèÒªÌáÊ¾ÁË
			return 0
		end

		if lev > 0 then
			x002075_MsgBox( sceneId, selfId, targetId, "Ngß½i ðã h÷c t§p kÛ nång này!" )
			return 0
		end

		if LuaFnGetMoney( sceneId, selfId )+GetMoneyJZ( sceneId, selfId ) < demandMoney then
			x002075_MsgBox( sceneId, selfId, targetId, "S¯ ti«n không ðü, không th¬ h÷c t§p!" )
			return 0
		end

		LuaFnCostMoneyWithPriority( sceneId, selfId, demandMoney )
		SetHumanAbilityLevel( sceneId, selfId, x002075_g_Ability["aid"], 1 )
		x002075_SetMyPrescription( sceneId, selfId, 1 )
		x002075_MsgBox( sceneId, selfId, targetId, "Chúc m×ng ngß½i ðã h÷c ðßþc "..x002075_g_Ability["nam"]..", hãy chª tÕo th§t nhi«u ð¬ thång c¤p kÛ nång!" )

	--Thång c¤p kÛ nång
	elseif key == x002075_g_Key["lup"] then
		if GetLevel( sceneId, selfId ) < 30 then--·Ç·¨Çé¿ö×ßµ½ÕâÀï£¬Ò²²»ÐèÒªÌáÊ¾ÁË
			return 0
		end
		
		if lev >= x002075_g_LevMax then
			x002075_MsgBox( sceneId, selfId, targetId, "Ðã ðü c¤p ðµ, không c¥n thång c¤p." )
			return 0
		end
		x002075_OnAsk( sceneId, selfId, targetId, x002075_g_Key["lup"], "Thång c¤p kÛ nång c¥n #{_EXCHG" .. demandMoney .. "}, tiªp tøc?" )

	--È·¶¨Éý¼¶
	elseif key == x002075_g_Key["upy"] then
		if ret ~= 1 then
			return 0
		end
		
		if GetLevel( sceneId, selfId ) < 30 then--·Ç·¨Çé¿ö×ßµ½ÕâÀï£¬Ò²²»ÐèÒªÌáÊ¾ÁË
			return 0
		end

		if lev < 1 then
			x002075_MsgBox( sceneId, selfId, targetId, "Ngß½i còn chßa h÷c "..x002075_g_Ability["nam"]..", trß¾c tiên hãy h÷c kÛ nång này r°i m¾i ðªn tìm ta thång c¤p." )
			return 0
		end

		if lev >= x002075_g_LevMax then
			x002075_MsgBox( sceneId, selfId, targetId, "Ðã ðü c¤p ðµ, không c¥n thång c¤p." )
			return 0
		end

		if exp < limitAbilityExp then
			x002075_MsgBox( sceneId, selfId, targetId, "C¥n" .. limitAbilityExpShow .. " ði¬m thu¥n thøc ð¬ tiªn hành thång c¤p." )
			return 0
		end

		if LuaFnGetMoney( sceneId, selfId )+GetMoneyJZ( sceneId, selfId ) < demandMoney then
			x002075_MsgBox( sceneId, selfId, targetId, "C¥n#{_EXCHG" .. demandMoney .. "} ð¬ thång c¤p." )
			return 0
		end

		--Éý¼¶´Ë¼¼ÄÜ
		LuaFnCostMoneyWithPriority( sceneId, selfId, demandMoney )
		SetHumanAbilityLevel( sceneId, selfId, x002075_g_Ability["aid"], lev+1 )
		x002075_SetMyPrescription( sceneId, selfId, lev+1 )
		x002075_MsgBox( sceneId, selfId, targetId, "Thång c¤p thành công, ngß½i có th¬ chª tÕo phù chï cao c¤p r°i!" )

	else
		
		--¹Ø±Õ½çÃæ		
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )

	end

	return 1
end

--**********************************
--ÉèÖÃÏàÓ¦µÈ¼¶µÄÅä·½
--**********************************
function x002075_SetMyPrescription( sceneId, selfId, lev )
	--Ã¿¸öµÈ¼¶¶ÔÓ¦6ÖÖÅä·½£ººìÉ«¡¢À¶É«¡¢°×É«¡¢ÂÌÉ«¡¢»ÆÉ«¡¢×ÏÉ«
	for i=0, 5 do
		SetPrescription( sceneId, selfId, 510+(lev-1)*6+i, 1 )
	end
end

--**********************************
--Ñ¯ÎÊÊÇ·ñÕâÑù×ö
--**********************************
function x002075_OnAsk( sceneId, selfId, targetId, key, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
		AddNumText( sceneId, x002075_g_ScriptId, "Th¸", -1, key*100+1 )
		AddNumText( sceneId, x002075_g_ScriptId, "Phù", -1, key*100 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x002075_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

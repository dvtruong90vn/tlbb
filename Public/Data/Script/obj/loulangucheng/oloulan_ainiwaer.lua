--Â¥À¼NPC
--æäÕ¾....

x001100_g_ScriptId	= 001100

--ÃÅÅÉÐÅÏ¢(ÃÅÅÉÃû³Æ£¬SceneID£¬PosX£¬PosY£¬ÃÅÅÉID)
x001100_g_mpInfo		= {}
x001100_g_mpInfo[0]	= { "Tinh Túc", 16,  96, 152, MP_XINGSU }
x001100_g_mpInfo[1]	= { "Tiêu Dao", 14,  67, 145, MP_XIAOYAO }
x001100_g_mpInfo[2]	= { "Thiªu Lâm",  9,  96, 127, MP_SHAOLIN }
x001100_g_mpInfo[3]	= { "Thiên S½n", 17,  95, 120, MP_TIANSHAN }
x001100_g_mpInfo[4]	= { "Thiên Long", 13,  96, 120, MP_DALI }
x001100_g_mpInfo[5]	= { "Nga My", 15,  89, 139, MP_EMEI }
x001100_g_mpInfo[6]	= { "Võ Ðang", 12, 103, 140, MP_WUDANG }
x001100_g_mpInfo[7]	= { "Minh Giáo", 11,  98, 167, MP_MINGJIAO }
x001100_g_mpInfo[8]	= { "Cái Bang", 10,  91, 116, MP_GAIBANG }
--x001100_g_mpInfo[9]	= { "Mµ Dung", 435,  91, 116, MP_MURONG }--Ô¤Áô

x001100_g_Yinpiao = 40002000 

x001100_g_Impact_NotTransportList = { 5929, 5944 } -- ½ûÖ¹´«ËÍµÄImpact
x001100_g_TalkInfo_NotTransportList = { "#{GodFire_Info_062}", "#{XSHCD_20080418_099}" } -- ½ûÖ¹´«ËÍµÄImpactÌáÊ¾ÐÅÏ¢

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001100_OnDefaultEvent( sceneId, selfId,targetId )
	
	-- ¼ì²âÍæ¼ÒÉíÉÏÊÇ²»ÊÇÓÐ¡°ÒøÆ±¡±Õâ¸ö¶«Î÷£¬ÓÐ¾Í²»ÄÜÊ¹ÓÃÕâÀïµÄ¹¦ÄÜ
	if GetItemCount(sceneId, selfId, x001100_g_Yinpiao)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "  Trên ngß¶i ngß½i ðang có ngân phiªu, ta không thë giúp ngß¶i" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	local	mp
	local	i		= 0
	BeginEvent( sceneId )

		AddText( sceneId, "#{loulan_yizhan_20080329}")
		 
		AddNumText( sceneId, x001100_g_ScriptId, "Quay v« môn phái", 9, 1000 )
		AddNumText( sceneId, x001100_g_ScriptId, "Thành Th¸ - LÕc Dß½ng", 9, 1001 )
		AddNumText( sceneId, x001100_g_ScriptId, "Thành Th¸ - LÕc Dß½ng - CØu Châu Thß½ng Hµi", 9, 1002 )
		AddNumText( sceneId, x001100_g_ScriptId, "Thành Th¸ - Tô Châu", 9, 1003 )
		AddNumText( sceneId, x001100_g_ScriptId, "Thành Th¸ - Tô Châu - Thiªt Tßþng Ph¯", 9, 1004 )
		AddNumText( sceneId, x001100_g_ScriptId, "Thành Th¸ - ÐÕi Lý", 9, 1005 )
		AddNumText( sceneId, x001100_g_ScriptId, "Thành Th¸ - Thúc Hà C± Tr¤n", 9, 1016 )
		AddNumText( sceneId, x001100_g_ScriptId, "Thành Th¸ - #GPhøng Minh Tr¤n", 9, 1017 )
		 
		AddNumText( sceneId, x001100_g_ScriptId, "Ðßa ta ðªn môn phái khác", 9, 1011 )
		
		--for i, mp in x001100_g_mpInfo do
			--AddNumText( sceneId, x001100_g_ScriptId, "ÃÅÅÉ - "..mp[1], 9, i )
		--end

	
	
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x001100_OnEventRequest( sceneId, selfId, targetId, eventId )

	--äîÔË½ûÖ¹´«ËÍ....
	if GetTeamId(sceneId,selfId)>=0 and 
		IsTeamFollow(sceneId, selfId)==1 and
		LuaFnIsTeamLeader(sceneId,selfId)==1 then
		num=LuaFnGetFollowedMembersCount( sceneId, selfId)
		local mems = {}
		for	i=0,num-1 do
			mems[i] = GetFollowedMember(sceneId, selfId, i)
			if mems[i] == -1 then
				return
			end
			if IsHaveMission(sceneId,mems[i],4021) > 0 then
				x001100_MsgBox( sceneId, selfId, targetId, "  Trong t± ðµi có ngß¶i ðang trong trÕng thái v§n chuy¬n, không th¬ tiªn hành thao tác" )
				return
			end
		end
	end

	if IsHaveMission(sceneId,selfId,4021) > 0 then
		x001100_MsgBox( sceneId, selfId, targetId, "  Ngß½i ðang trong trÕng thái v§n chuy¬n, ch¸u khó chÕy bµ ði" )
		return
	end

	--¼ì²âImpact×´Ì¬×¤ÁôÐ§¹û
	for i, ImpactId in x001100_g_Impact_NotTransportList do
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactId) ~= 0 then
			x001100_MsgBox( sceneId, selfId, targetId, x001100_g_TalkInfo_NotTransportList[i] )			
			return 0
		end
	end

	
	--Quay v?môn phái....
	local	arg	= GetNumText()
	local	mp
	local	i		= 0
	local	id	= LuaFnGetMenPai( sceneId, selfId )
	if arg == 1000 then		--Quay v?môn phái
		if id < 0 or id >= 9 then
			x001100_MsgBox( sceneId, selfId, targetId, "  Ngß½i chßa gia nh§p môn phái nào cä" )
		else
			mp	= x001100_GetMPInfo( id )
			if mp ~= nil then
				CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4] )
			end
		end
		return
	end

	--LÕc Dß½ng....
	if arg == 1001 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 233, 321 )
		return
	end

	--LÕc Dß½ng¾ÅÖÝ....
	if arg == 1002 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 325, 270 )
		return
	end

	--Tô Châu....
	if arg == 1003 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 202,257 )
		return
	end

	--Tô ChâuÌú½³....
	if arg == 1004 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 331, 226 )
		return
	end

	--ÐÕi L?...
	if arg == 1005 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 2, 252, 124 )
		return
	end

	--Phøng Minh Tr¤n....
	if arg == 1017 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 580, 158, 120 )
		return
	end

	if arg == 1011 then		
		BeginEvent( sceneId )
			for i, mp in x001100_g_mpInfo do
				AddNumText( sceneId, x001100_g_ScriptId, "Môn phái - "..mp[1], 9, i )
			end
			
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
		return
	end
	
	if arg == 1016 then		--Thúc H?C?Tr¤n
			-- add by zchw
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, x001100_g_ScriptId);
			-- zchw fix Transfer bug
			UICommand_AddInt(sceneId, targetId);
			UICommand_AddString(sceneId, "GotoShuHeGuZhen");
			UICommand_AddString(sceneId, "Thúc Hà C± Tr¤n là n½i không gia tång sát khí, ngß½i ch¡c ch¡n mu¯n tiªn vào không");
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 24)
		return
	end
	
	--ÃÅÅÉ....
	for i, mp in x001100_g_mpInfo do
		if arg == i then
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4] )
			return
		end
	end

end
--  add by zchw
function x001100_GotoShuHeGuZhen( sceneId, selfId, targetId )
	CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 200, 211, 20 );
	return
end
--**********************************
--¸ù¾ÝÃÅÅÉID»ñÈ¡ÃÅÅÉÐÅÏ¢
--**********************************
function x001100_GetMPInfo( mpID )
	local	mp
	local	i		= 0
	for i, mp in x001100_g_mpInfo do
		if mp[5] == mpID then
			return mp
		end
	end
	return nil
end

--**********************************
--¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x001100_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

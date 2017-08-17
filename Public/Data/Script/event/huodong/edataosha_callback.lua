--´óÌÓÉ±
--»Øµ÷½Å±¾

--½Å±¾ºÅ
x808003_g_ScriptId			= 808003

x808003_g_TickTime			= 60		--»Øµ÷½Å±¾toÕ ðµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x808003_g_NotifyTime		= 29		--¹«¸æÊ±¼ä³¤¶È(µ¥Î»: Ê±ÖÓ ði¬mÊý)
x808003_g_JoinTime			= 3			--±¨ÃûÊ±¼ä³¤¶È(µ¥Î»: Ê±ÖÓ ði¬mÊý)
x808003_g_AttackTime		= 10		--±ÈÎäÊ±¼ä³¤¶È(µ¥Î»: Ê±ÖÓ ði¬mÊý)
x808003_g_IdleTime			= 2			--Ã¿ÂÖÖ®¼ätoÕ ðµ  tr¯ng ÏÐÊ±¼ä³¤¶È(µ¥Î»: Ê±ÖÓ ði¬mÊý)
x808003_g_RoundMax			= 5			--×î´ó»ØºÏÊý,¼´ÂúÔ±64ÈËtoÕ ðµ ÇéÐÎÏÂ
x808003_g_TParamNum			= 8			--±íµ¥²ÎÊýÊýÁ¿
x808003_g_CareResultMax	= 5			--×´ÔªÅÅÃûÊ±Ëù¹ØÐÄtoÕ ðµ ×î´óÈËÊý

--»î¶¯Êý¾ÝÇøË÷Òý
x808003_g_ActParam	=
{
	["tim"]	= 0,	--Ê±ÖÓ×Ü ði¬mÊý
	["pha"]	= 1,	--»î¶¯½×¶Î,»ØºÏÊý*10(1-6»ØºÏ) + »ØºÏ±ê¼Ç(1,±¨Ãû£»2,¿ªÊ¼£»0, tr¯ng ÏÐ)
	["tab"]	= 2,	--±íµ¥ID
	["unt"]	= 3,	--µ¥ÂÖÖ´ÐÐÊ±¼ä ði¬mÊý
	["minl"]= 4,	--c¤p±ðÏÂÏÞ
	["maxl"]= 5,	--c¤p±ðÉÏÏÞ
}

--ÏûÏ¢ÌáÊ¾
x808003_g_Msg				=
{
	["n_pre"]	= "#cff99ccHoÕt ðµng báo danh ÐÕi hµi tï võ nhóm #YðÆng c¤p %d#cff99cc#Y l¥n thÑ %d#cff99cc s¨ b¡t ð¥u sau #Y%d phút#cff99cc næa, xin các v¸ chu¦n b¸.",
	["n_bgn"]	= "#cff99ccHoÕt ðµng báo danh ÐÕi hµi tÖ võ nhóm #YðÆng c¤p %d#cff99cc#Y l¥n thÑ %d#cff99cc ðã b¡t ð¥u, Xin các v¸ nhanh chóng báo danh.",
	["n_end"]	= "#cff99ccHoÕt ðµng ÐÕi hµi tÖ võ nhóm #YðÆng c¤p %d#cff99cc ðªn ðây kªt thúc!",
	["n_bny"]	= "#cff99ccQuán Quân ðÕi hµi tÖ võ nhóm #YðÆng c¤p %d#cff99cc ðã có , phân chia thành: #W",
}

--»î¶¯×é±ðÐÅÏ¢
--»î¶¯ID,¶¨ÒåTÕi ¡¶ActivityNotice¡·±íÖÐ
x808003_g_Act				=
{
	--C¥n ÅäÖÃ¹«¸æ
	[1]	= { id=22, minLev=40, maxLev=49 },	--ÖÜÁù40c¤p±ð×é
	[2]	= { id=23, minLev=40, maxLev=49 },	--ÖÜÈý40c¤p±ð×é
	--²»C¥n ÅäÖÃ¹«¸æ
	[3]	= { id=30, minLev=50, maxLev=59 },
	[4]	= { id=31, minLev=50, maxLev=59 },
	[5]	= { id=32, minLev=60, maxLev=69 },
	[6]	= { id=33, minLev=60, maxLev=69 },
	[7]	= { id=34, minLev=70, maxLev=79 },
	[8]	= { id=35, minLev=70, maxLev=79 },
	[9]	= { id=44, minLev=80, maxLev=89 },
	[10]= { id=45, minLev=80, maxLev=89 },
	[11]= { id=46, minLev=90, maxLev=99 },
	[12]= { id=47, minLev=90, maxLev=99 },
	[13]= { id=124, minLev=100, maxLev=109 },
	[14]= { id=125, minLev=100, maxLev=109 },
	[15]= { id=126, minLev=110, maxLev=119 },
	[16]= { id=127, minLev=110, maxLev=119 },
}

--**********************************
--½Å±¾Èë¿Úº¯Êý
--C++»Øµ÷º¯Êý
--**********************************
function x808003_OnDefaultEvent( sceneId, actId, iNoticeType, param2, param3, param4, param5 )

	--mµt cái»î¶¯¶ÔÓ¦mµt cái×é±ð
	local	ActInfo	= nil
	for i = 1, getn( x808003_g_Act ) do
		ActInfo			= x808003_g_Act[i]
		if ActInfo.id == actId then
			break
		else
			ActInfo		= nil
		end
	end
	if ActInfo == nil then	--Ã»ÓÐÕÒµ½Cái này ×é±ðtoÕ ðµ »î¶¯
		return
	end

	--²ÎÊýË ði¬m÷: ³¡¾°ID,»î¶¯ID,Ê±¼ä¼ä¸ô(ºÁ giây)
	StartOneActivity( sceneId, ActInfo.id, floor(x808003_g_TickTime*1000), iNoticeType )
	--×¢²áÅÅÐÐ°ñ±íµ¥,Çë×¢ÒâTÕi »î¶¯½áÊøÊ±ÊÍ·Å
	tabId	= HitParadeRegisterTab( sceneId )

	--»î¶¯Êý¾ÝÇø
	SetActivityParam( sceneId, ActInfo.id, x808003_g_ActParam["tim"], 0 )			--±£´æÊ±ÖÓ×Ü ði¬mÊý
	SetActivityParam( sceneId, ActInfo.id, x808003_g_ActParam["pha"], 0 )			--±£´æ»î¶¯½×¶Î
	SetActivityParam( sceneId, ActInfo.id, x808003_g_ActParam["tab"], tabId )	--±£´æ±íµ¥ID
	SetActivityParam( sceneId, ActInfo.id, x808003_g_ActParam["minl"], ActInfo.minLev )
	SetActivityParam( sceneId, ActInfo.id, x808003_g_ActParam["maxl"], ActInfo.maxLev )

	--Add Log
	LogInfo	= format( "[TAOSHA]: x808003_OnDefaultEvent( sceneId=%d, actId=%d, iNoticeType=%d ), tabId=%d, minLev=%d, maxLev=%d",
		sceneId, actId, iNoticeType, tabId, ActInfo.minLev, ActInfo.maxLev )
	MissionLog( sceneId, LogInfo )

end

--**********************************
--ÐÄÌøº¯Êý
--C++»Øµ÷º¯Êý
--**********************************
function x808003_OnTimer( sceneId, actId, uTime )

	--mµt cái»î¶¯¶ÔÓ¦mµt cái×é±ð
	local	ActInfo	= nil
	for i = 1, getn( x808003_g_Act ) do
		ActInfo			= x808003_g_Act[i]
		if ActInfo.id == actId then
			break
		else
			ActInfo		= nil
		end
	end
	if ActInfo == nil then	--Ã»ÓÐÕÒµ½Cái này ×é±ðtoÕ ðµ »î¶¯
		return
	end

	local	m_actId	= actId

	--±íµ¥ID
	tabId	= GetActivityParam( sceneId, m_actId, x808003_g_ActParam["tab"] )
	if tabId < 0 then
		return
	end

	--»î¶¯Êý¾ÝÇø
	tim		= GetActivityParam( sceneId, m_actId, x808003_g_ActParam["tim"] )
	SetActivityParam( sceneId, m_actId, x808003_g_ActParam["tim"], tim+1 )	--±£´æÊ±ÖÓ×Ü ði¬mÊý

	--±£´æ»î¶¯½×¶Î,ÓÉÊ±¼ä»®·Ö: 
	--7: 00¹«¸æ
	--µÚmµt ´Î»î¶¯±¨Ãû7: 30,»î¶¯¿ªÊ¼7: 35,»î¶¯½áÊø7: 45.
	--µÚ¶þ´Î¿ªÊ¼±¨Ãû7: 50,»î¶¯¿ªÊ¼7: 55,»î¶¯½áÊø8: 05.
	--ÒÔºóÃ¿´Î»î¶¯±¨Ãû tr¯ng ÏÐÊ±¼ä5 phút,±¨Ãû5 phút,»î¶¯Ê±¼ä10 phút.
	local	tim_0		= x808003_g_NotifyTime	--²ÎÕÕÊ±¼ä ði¬m,¼´µÚmµt »ØºÏtoÕ ðµ ±¨ÃûÊ±¼ä
	local	tim_pnt	=
	{
		["jon"]	= 0,									--±¾»ØºÏtoÕ ðµ µÚ0cáiÊ±¼ä ði¬m¿ªÊ¼±¨Ãû
		["bgn"]	= x808003_g_JoinTime,	--±¾»ØºÏtoÕ ðµ µÚ5cáiÊ±¼ä ði¬m¿ªÊ¼±ÈÎä
		["end"]	= x808003_g_JoinTime + x808003_g_AttackTime,											--±¾»ØºÏtoÕ ðµ µÚ15cáiÊ±¼ä ði¬m½áÊø
		["idl"]	= x808003_g_JoinTime + x808003_g_AttackTime + x808003_g_IdleTime,	-- tr¯ng ÏÐÖÁµÚ20cáiÊ±¼ä ði¬m¿ªÊ¼ÏÂmµt »ØºÏ
	}
	local	tim_all	= tim_pnt["idl"]
	pha			= GetActivityParam( sceneId, m_actId, x808003_g_ActParam["pha"] )
	tmp_mul	= floor( (tim-tim_0) / tim_all )
	tmp_mod	=	(tim-tim_0) - tmp_mul * tim_all
	local	str
	
	if tmp_mul > x808003_g_RoundMax then
		x808003_OnActivityEnd( sceneId, m_actId, tabId )
		--È«Çò¹«¸æ
		str		= format( x808003_g_Msg["n_end"], ActInfo.minLev )
		x808003_MyGlobalNews( sceneId, str )
		return
	end
	
	--µ¥ÂÖÖ´ÐÐÊ±¼ä ði¬mÊý
	if tmp_mod < 0 or tmp_mod >= tim_all then
		SetActivityParam( sceneId, m_actId, x808003_g_ActParam["unt"], 0 )
	else
		SetActivityParam( sceneId, m_actId, x808003_g_ActParam["unt"], tmp_mod )
	end

	--»î¶¯½ø¶È
	if pha == 0 then	--µÚmµt »ØºÏ
	
		--»î¶¯Ô¤±¨
		if tim == floor(tim_0-x808003_g_IdleTime) then
			str	= format( x808003_g_Msg["n_pre"], ActInfo.minLev, 1, x808003_g_IdleTime )
			--È«Çò¹«¸æ
			x808003_MyGlobalNews( sceneId, str )
		end

		--¿ªÊ¼±¨Ãû
		if tim >= tim_0 then
			SetActivityParam( sceneId, m_actId, x808003_g_ActParam["pha"], (tmp_mul+1)*10+1 )
			str	= format( x808003_g_Msg["n_bgn"], ActInfo.minLev, (tmp_mul+1) )
			--È«Çò¹«¸æ
			x808003_MyGlobalNews( sceneId, str )
			--±íµ¥³õÊ¼»¯
			for i = 0, x808003_g_TParamNum do
				HitParadeSetTabParam( sceneId, tabId, i, 0 )
			end
		end

	else
		if tmp_mod == tim_pnt["jon"] then					--±¨ÃûÖÐ
			SetActivityParam( sceneId, m_actId, x808003_g_ActParam["pha"], (tmp_mul+1)*10+1 )
			
			if tmp_mul >= 1 then
				--»î¶¯ÅÅÃû,Tr· v«Ê¤³öÈËÊý,µÈÓÚ1Ê±¹Ú¾ü²úÉú
				if x808003_OnActivitySort( sceneId, m_actId, tabId ) > 1 then
					--¼ÌÐøÏÂÂÖ±ÈÎä
					str	= format( x808003_g_Msg["n_bgn"], ActInfo.minLev, (tmp_mul+1) )
					--È«Çò¹«¸æ
					x808003_MyGlobalNews( sceneId, str )
					--±íµ¥³õÊ¼»¯
					for i = 0, x808003_g_TParamNum do
						HitParadeSetTabParam( sceneId, tabId, i, 0 )
					end
				end
			end

		elseif tmp_mod == tim_pnt["bgn"] then			--±ÈÎäÖÐ
			SetActivityParam( sceneId, m_actId, x808003_g_ActParam["pha"], (tmp_mul+1)*10+2 )
		elseif tmp_mod == tim_pnt["end"] then			-- tr¯ng ÏÐÖÐ
			SetActivityParam( sceneId, m_actId, x808003_g_ActParam["pha"], (tmp_mul+1)*10 )
		elseif tmp_mod == (tim_pnt["end"]+2) then	-- tr¯ng ÏÐÖÐ
			str		= format( x808003_g_Msg["n_pre"], ActInfo.minLev, (tmp_mul+2), (x808003_g_IdleTime-2) )
			--È«Çò¹«¸æ
			x808003_MyGlobalNews( sceneId, str )
		end

	end

end

--**********************************
--»î¶¯ÅÅÃû,Tr· v«Ê¤³öÈËÊý,µÈÓÚ1Ê±¹Ú¾ü²úÉú
--**********************************
function x808003_OnActivitySort( sceneId, actId, tabId )

	--mµt cái»î¶¯¶ÔÓ¦mµt cái×é±ð
	local	ActInfo	= nil
	for i = 1, getn( x808003_g_Act ) do
		ActInfo			= x808003_g_Act[i]
		if ActInfo.id == actId then
			break
		else
			ActInfo		= nil
		end
	end
	if ActInfo == nil then	--Ã»ÓÐÕÒµ½Cái này ×é±ðtoÕ ðµ »î¶¯
		return 0
	end

	local	m_actId	= actId

	--²ÎÕÕÅÅÐÐ¼üÖµ,½µÐòÅTiêu Dao¨¼üÖµÔ½´ó,ÅÅÃûÔ½¿¿Ç°)
	HitParadeSort( sceneId, tabId )
	--»ñÈ¡µ±Ç°±¨ÃûÈËÊý
	local	jon_num	= HitParadeGetTabInfo( sceneId, tabId )
	if jon_num == nil then
		return 0
	else
		--Add Log
		LogInfo	= format( "[TAOSHA]: HitParadeGetTabInfo( sceneId=%d, tabId=%d ), JoinNum=%d",
			sceneId, tabId, jon_num )
		MissionLog( sceneId, LogInfo )
		--×î¶à¼ì²éÇ°5Ãû¾Í×ã¹»
		if jon_num > x808003_g_CareResultMax then
			jon_num		= x808003_g_CareResultMax
		end
	end
	--»ñÈ¡²ÎÈü³É¼¨
	local	no1_num	= 0
	local	guid		= {}
	local	key			= {}
	for i = 0, jon_num do
		guid[i], key[i]	= HitParadeGetPlyInfo( sceneId, tabId, i )
		--Add Log
		if guid[i] ~= nil and key[i] ~= nil then
			LogInfo	= format( "[TAOSHA]: HitParadeGetPlyInfo( sceneId=%d, tabId=%d, i=%d ), GUID=%0X, key=%d",
				sceneId, tabId, i, guid[i], key[i] )
		else
			LogInfo	= format( "[TAOSHA]: HitParadeGetPlyInfo( sceneId=%d, tabId=%d, i=%d ), GUID=NIL, key=NIL",
				sceneId, tabId, i )
		end
		MissionLog( sceneId, LogInfo )
	end

	--»ñÈ¡¹Ú¾üÈËÊý,¾ö¶¨ËÄÇ¿Èü
	for i = 0, jon_num do
		if guid[i] == nil then
			break
		end
		if key[i] ~= nil and key[i] == key[0] and mod( key[i], 3 ) > 0 then
			no1_num		= no1_num + 1
		else
			break
		end
	end

	--ÔÝÊ±Î´ÄÜÑ¡³öËÄÇ¿,¼ÌÐø½øÐÐÏÂmµt ÂÖ
	if no1_num > 4 then
		return no1_num
	end

	--¹Ú¾üÊ¤³ö,»î¶¯½áÊø
	local	name1, name2
	if no1_num <= 1 then
		--½±ÀøÈý¼×
		if key[0] ~= nil and mod( key[0], 3 ) > 0 then
			x808003_OnPlyBounty( sceneId, guid[0], 1, tabId )
		else
			guid[0]	= nil
		end
		if key[1] ~= nil and mod( key[1], 3 ) > 0 then
			x808003_OnPlyBounty( sceneId, guid[1], 2, tabId )
		else
			guid[1]	= nil
		end
		if key[2] ~= nil and mod( key[2], 3 ) > 0 then
			x808003_OnPlyBounty( sceneId, guid[2], 3, tabId )
		else
			guid[2]	= nil
		end
		--»î¶¯½áÊø
		x808003_OnActivityEnd( sceneId, m_actId, tabId )
		--È«Çò¹«¸æ
		name1	= x808003_GetPlyName( sceneId, guid[0] )
		name2	= x808003_GetPlyName( sceneId, guid[1] )
		str		= format( x808003_g_Msg["n_bny"], ActInfo.minLev )
		x808003_MyGlobalNews( sceneId, str.." TrÕng Nguyên "..name1..", Bäng Nhãn "..name2.."." )

	--¼´½«¿ªÊ¼¾öÈü
	elseif no1_num == 2 then

	--¼´½«¿ªÊ¼ËÄÇ¿Èü,µ±È»Ò²ÐíÖ»ÓÐÈýÇ¿
	elseif no1_num <= 4 then

	end
	return no1_num

end

--**********************************
--»î¶¯½áÊø
--**********************************
function x808003_OnActivityEnd( sceneId, actId, tabId )

	local	m_actId	= actId

	SetActivityParam( sceneId, m_actId, x808003_g_ActParam["pha"], 0 )			--±£´æ»î¶¯½×¶Î
	SetActivityParam( sceneId, m_actId, x808003_g_ActParam["tab"], -1 )			--±£´æ±íµ¥ID
	StopOneActivity( sceneId, m_actId )
	HitParadeReleaseTab( sceneId, tabId )
	
	--Add Log
	LogInfo	= format( "[TAOSHA]: x808003_OnActivityEnd( sceneId=%d, actId=%d, tabId=%d )",
		sceneId, actId, tabId )
	MissionLog( sceneId, LogInfo )

end

--**********************************
--¸ù¾ÝÍæ¼ÒµÈc¤p»ñÈ¡×é±ðÐÅÏ¢
--**********************************
function x808003_GetGroupInfo( sceneId, selfId )

	if LuaFnIsObjValid( sceneId, selfId ) ~= 1 then
		return nil
	end

	local	lev			= GetLevel( sceneId, selfId )
	local	ActInfo	= nil
	local	minl		= 0
	local	maxl		= 0
	for i = 1, getn( x808003_g_Act ) do
		ActInfo			= x808003_g_Act[i]
		minl				= GetActivityParam( sceneId, ActInfo.id, x808003_g_ActParam["minl"] )
		maxl				= GetActivityParam( sceneId, ActInfo.id, x808003_g_ActParam["maxl"] )
		if lev >= ActInfo.minLev and	--ÊÊºÏµÈc¤p
			lev <= ActInfo.maxLev and
			minl > 0 and								--´Ë»î¶¯ÒÑM· ra 
			maxl > 0 then
			break
		else
			ActInfo		= nil
		end
	end
	if ActInfo == nil then	--Ã»ÓÐÕÒµ½Cái này ×é±ðtoÕ ðµ »î¶¯
		return nil
	end
	return ActInfo.id, ActInfo.minLev, ActInfo.maxLev

end

--**********************************
--Ðúng·ñ´¦TÕi ±¨Ãû½×¶Î
--**********************************
function x808003_IsJoinDoing( sceneId, selfId )

	local	ActID, _, _	= x808003_GetGroupInfo( sceneId, selfId )
	if ActID == nil then
		return 0
	end

	ret	= GetActivityParam( sceneId, ActID, x808003_g_ActParam["pha"] )
	ret	= ret - floor(ret/10) * 10
	if ret == 1 then
		return 1
	end
	return 0

end

--**********************************
--»ñÈ¡±íµ¥ID
--**********************************
function x808003_GetTableID( sceneId, selfId )

	local	ActID, _, _	= x808003_GetGroupInfo( sceneId, selfId )
	if ActID == nil then
		return 0
	end

  return GetActivityParam( sceneId, ActID, x808003_g_ActParam["tab"] )

end

--**********************************
--»ñÈ¡±ÈÎä»ØºÏÊý
--**********************************
function x808003_GetRound( sceneId, selfId )

	local	ActID, _, _	= x808003_GetGroupInfo( sceneId, selfId )
	if ActID == nil then
		return 0
	end

	ret	= GetActivityParam( sceneId, ActID, x808003_g_ActParam["pha"] )
	return floor(ret/10)

end

--**********************************
--»ñÈ¡µ¥ÂÖÖ´ÐÐÊ±¼ä
--**********************************
function x808003_GetCurrentUnitTime( sceneId, selfId, TickTime )

	local	ActID, _, _	= x808003_GetGroupInfo( sceneId, selfId )
	if ActID == nil then
		return 0
	end

	tim	= GetActivityParam( sceneId, ActID, x808003_g_ActParam["unt"] )
	ret	= floor( tim * x808003_g_TickTime / TickTime )
	return ret

end

--**********************************
--»ñÈ¡mµt cái»ØºÏÖÐtoÕ ðµ ±¨ÃûÊ±¼ä³¤¶È
--**********************************
function x808003_GetJoinTime( sceneId, TickTime )

	--¸Ãº¯ÊýÖ»ÄÜÊ¹ÓÃÈ«¾Ö±äÁ¿Óëº¯Êý´«²Î
	--Ô­Òò: ±¨Ãû³¡¾°(Tô Châu)¡¢±ÈÎä³¡¾°(¸±±¾)TÕi ²»Í¬Ïß³Ì,¸Ãº¯Êý»áTÕi ²»Í¬³¡¾°Ëù¹ÒÆðtoÕ ðµ ½Å±¾ÖÐµ÷ÓÃ
	ret	= floor( x808003_g_JoinTime * x808003_g_TickTime / TickTime )
	return ret

end

--**********************************
--»ñÈ¡mµt cái»ØºÏÖÐtoÕ ðµ ±ÈÎäÊ±¼ä³¤¶È
--**********************************
function x808003_GetAttackTime( sceneId, TickTime )

	--¸Ãº¯ÊýÖ»ÄÜÊ¹ÓÃÈ«¾Ö±äÁ¿Óëº¯Êý´«²Î
	--Ô­Òò: ±¨Ãû³¡¾°(Tô Châu)¡¢±ÈÎä³¡¾°(¸±±¾)TÕi ²»Í¬Ïß³Ì,¸Ãº¯Êý»áTÕi ²»Í¬³¡¾°Ëù¹ÒÆðtoÕ ðµ ½Å±¾ÖÐµ÷ÓÃ
	ret	= floor( x808003_g_AttackTime * x808003_g_TickTime / TickTime )
	return ret

end

--**********************************
--¸ù¾ÝGUID»ñÈ¡Íæ¼ÒÃû³Æ
--**********************************
function x808003_GetPlyName( sceneId, guid )

	--Íæ¼ÒÐúng·ñTÕi ¸Ã³¡¾°
	if guid == nil then
		return "[ tr¯ng ]"
	end
	ObjId		= LuaFnGuid2ObjId( sceneId, guid )
	if LuaFnIsObjValid( sceneId, ObjId ) ~= 1 then
		str		= format( "[%0X]", guid )
		return str
	end

	objNam	= GetName( sceneId, ObjId )
	if objNam ~= nil then
		str		= "#{_INFOUSR"..objNam.."}"
	else
		str		= "[ tr¯ng ]"
	end
	return str

end

--**********************************
--Èý¼×½±Àø
--**********************************
function x808003_OnPlyBounty( sceneId, guid, place, tabId )

	--Ö»¹ØÐÄÇ°Èý¼×
	if place < 1 or place > 3 then
		return
	end
	--Íæ¼ÒÐúng·ñTÕi ¸Ã³¡¾°
	if guid == nil then
		return
	end

	--¼ì²é²ÎÈü³É¼¨
	local	guid_tmp
	local	key_tmp
	local	isFind				= 0
	for i = 0, x808003_g_CareResultMax do
		guid_tmp, key_tmp	= HitParadeGetPlyInfo( sceneId, tabId, i )
		if guid_tmp ~= nil and key_tmp ~= nil and guid_tmp == guid then
			isFind					= 1
		end
	end
	if isFind == 0 then
		--Add Log
		LogInfo	= format( "[TAOSHA]: x808003_OnPlyBounty( sceneId=%d, GUID=%0X ), Not Find",
			sceneId,
			guid )
		MissionLog( sceneId, LogInfo )
		return
	end

	ObjId		= LuaFnGuid2ObjId( sceneId, guid )
	if LuaFnIsObjValid( sceneId, ObjId ) ~= 1 then
		--Add Log
		LogInfo	= format( "[TAOSHA]: x808003_OnPlyBounty( sceneId=%d, GUID=%0X ), Not OnScene",
			sceneId,
			guid )
		MissionLog( sceneId, LogInfo )
		return
	end

	local	lev		= GetLevel( sceneId, ObjId )
	local	gold	= 0
	--×´Ôª
	if place == 1 then
		gold	= lev * 1000
	
	--°ñÑÛ
	elseif place == 2 then
		gold	= lev * 500
	
	--Ì½»¨
	elseif place == 3 then
		gold	= lev * 200

	end

	--½ðÇ®½±Àø
	AddMoney( sceneId, ObjId, gold )

	--ÎïÆ·½±Àø
	local	item_lst	=
	{
		--×´Ôª,¶þc¤p±¦Ê¯
		{ 50201001, 50201002, 50211001, 50211002 },
		--°ñÑÛ,¶þc¤p±¦Ê¯
		{ 50201001, 50201002, 50211001, 50211002 },
		--Ì½»¨,mµt c¤p±¦Ê¯
		{ 50101001, 50101002, 50111001, 50111002 },
	}
	local	item_unt	= item_lst[place]
	local	item_rnd	= random( getn( item_unt ) )
	local	item_nam	= GetItemName( sceneId, item_unt[item_rnd] )
	if item_nam ~= nil then
		x808003_MsgBox( sceneId, ObjId, "ÐÕt ðßþc "..item_nam )
	end

	local nBagIndex	= LuaFnTryRecieveItem( sceneId, ObjId, item_unt[item_rnd], 1 )
	local	szTranEqp	= nil
	if  nBagIndex == -1 then
		x808003_MsgBox( sceneId, ObjId, "R¤t tiªc, không gian tay näi không ðü" )
	else
		szTranEqp			= GetBagItemTransfer( sceneId, ObjId, nBagIndex )
	end

	-- Danh hi®u½±Àø
	local	title_lst	=
	{
		{ 136,	"#PTÖ Võ TrÕng Nguyên" },		--×´Ôª
		{ 137,	"#PTÖ Võ Bäng Nhãn" },		--°ñÑÛ
		{ 138,	"#PTÖ Võ Thám Hoa" },		--Ì½»¨
	}
	local	title			= title_lst[place]
	x808003_MsgBox( sceneId, ObjId, "ÐÕt ðßþc "..title[2].." Danh hi®u" )
	LuaFnAwardTitle( sceneId, ObjId, 7, title[1], 7*24 )	-- Danh hi®utoÕ ðµ ÓÐÐ§ÆÚmµt ÖÜ,UsefulLifeµ¥Î»Ð¡Ê±
	LuaFnDispatchAllTitle( sceneId, ObjId )								--¸üÐÂËùÓÐ Danh hi®uµ½CLIENT
	
	local	strMsg
	local	rndMsg		= random( 3 )
	if szTranEqp ~= nil then
		if rndMsg == 1 then	
		  strMsg	= format( "#W#{_INFOUSR%s}#cff99cc trong ðÕi hµi tÖ võ ðã áp ðäo qu¥n hùng, khiªn thiên hÕ anh hùng khen ngþi không ng¾t, ðÕt t¾i danh hi®u #Y%s#cff99cc trong thÑc trao giäi các ngß¶i üng hµ nhi®t tình ðã gØi lên #W#{_INFOMSG%s}#cff99cc và #W#{_MONEY%d}#cff99cc tö lòng yêu thích. ",
		  	LuaFnGetName( sceneId, ObjId ),
		  	title[2],
		  	szTranEqp, gold )
		elseif rndMsg == 2 then
			strMsg	= format( "#W#{_INFOUSR%s}#cff99cc · ðÕi hµi tÖ võ l¥n này ðã bi¬u hi®n xu¤t chúng, kinh ngÕc ðªn tri«u ðình, ban thß·ng riêng Danh hi®u #W%s#cff99cc cùng #W#{_INFOMSG%s}#cff99cc và #W#{_MONEY%d}#cff99cc ð¬ th¬ hi®n hoàng ân.",
				LuaFnGetName( sceneId, ObjId ),
				title[2],
				szTranEqp, gold )
		else
			strMsg	= format( "#W#{_INFOUSR%s}#cff99cc do ðoÕt ðßþc danh hi®u #W%s#cff99cc trong ðÕi hµi tÖ võ này ðã làm cho các môn phái ðßþc dß½ng danh giang h°, chß·ng môn môn phái này r¤t là hài lòng, lÕi t£ng thêm #W#{_INFOMSG%s}#cff99cc và #W#{_MONEY%d}#cff99cc l¤y công ðó làm gß½ng sáng. ",
				LuaFnGetName( sceneId, ObjId ),
				title[2],
				szTranEqp, gold )
		end
		x808003_MyGlobalNews( sceneId, strMsg )
	end

end

--**********************************
--ÐÑÄ¿ÌáÊ¾
--**********************************
function x808003_MsgBox( sceneId, selfId, Msg )

	if Msg == nil then
		return
	end
	--Ðúng·ñ´¦ÓÚÎÞ·¨Ö´ÐÐÂß¼­toÕ ðµ ×´Ì¬
	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 then
		return
	end

	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
	--Add Log
	LogInfo	= format( "[TAOSHA]: x808003_MsgBox( sceneId=%d, GUID=%0X ), %s",
		sceneId,
		LuaFnObjId2Guid( sceneId, selfId ),
		Msg )
	MissionLog( sceneId, LogInfo )

end

--**********************************
--È«Çò¹«¸æ
--**********************************
function x808003_MyGlobalNews( sceneId, Msg )

	if Msg == nil then
		return
	end

	AddGlobalCountNews( sceneId, Msg )
	--Add Log
	MissionLog( sceneId, "[TAOSHA]: "..Msg )

end

--Ë®ÀÎÈÎÎñÖ÷ÊÂ¼ş½Å±¾
--ÈÎÎñ
--½Å±¾ºÅ
x232000_g_ScriptId	= 232000

--ËùÓµÓĞtoÕ ğµ ÊÂ¼şIDÁĞ±í
x232000_g_EventList	= { 232001 }

--ÈÎÎñºÅ
x232000_g_MissionId			= 1212
--ÏÂmµt cáiÈÎÎñtoÕ ğµ ID
x232000_g_MissionIdNext	= 1213
--Møc tiêu nhi®m vønpc
x232000_g_Name			= "H° Diên Báo"
--ÈÎÎñÎÄ±¾ÃèÊö
x232000_g_MissionName			= "Bình ğ¸nh ThuÖ lao phän loÕn"
x232000_g_MissionInfo			= "  D©p yên phän loÕn thüy lao."	--ÈÎÎñÃèÊö
x232000_g_MissionTarget		= "  H° Diên Báo · Tô Châu #{_INFOAIM244,215,1, H° Diên Báo} yêu c¥u giúp h¡n hoàn thành nhi®m vø thüy lao."	--Møc tiêu nhi®m vø
x232000_g_ContinueInfo		= "  Nhi®m vø hoàn thành chßa?"		--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x232000_g_MissionComplete	= "  Cám ½n các hÕ r¤t nhi«u!"		--Hoàn t¤t nhi®m vønpcËµtoÕ ğµ »°
--»·ÊıÉÏÏŞ
--x232000_g_MaxRound	= 20

--»·ÊıĞŞ¸Ä 20-29  1´Î 30-49  2´Î 50-69  4´Î 70-89  7´Î 90ÒÔÉÏ 10´Î 120ÒÔÉÏ 20´Î
x232000_g_MaxRoundList = {{lev=20,rnd=1},{lev=30,rnd=2},{lev=50,rnd=4},{lev=70,rnd=7},{lev=90,rnd=10},{lev=120,rnd=20}}

--½ÓÈ¡ÈÎÎñtoÕ ğµ ×îµÍµÈc¤p
x232000_g_minLevel	= 20


--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
-- ği¬m»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾
function x232000_OnDefaultEvent( sceneId, selfId, targetId )

	--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
	if LuaFnGetName( sceneId, targetId ) ~= x232000_g_Name then
		return
	end

	--Èç¹ûÍæ¼ÒÒÑ¾­½ÓÁËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x232000_g_MissionId ) > 0 then

		local misIndex			= GetMissionIndexByID( sceneId, selfId, x232000_g_MissionId )
		local misRealScript	= GetMissionParam( sceneId, selfId, misIndex, 1 )
		CallScriptFunction( misRealScript, "OnDefaultEvent", sceneId, selfId, targetId )

	--Èç¹ûÎ´½ÓÈÎÎñ
	else

		--¼ì²âµÈc¤p
		if LuaFnGetLevel( sceneId, selfId ) < x232000_g_minLevel then
			x232000_NotifyTip( sceneId, selfId, "ĞÆng c¤p cüa các hÕ quá th¤p, phÕm nhân khá lşi hÕi" )
			x232000_NotifyTip( sceneId, selfId, "Vçn ğşi ngß½i ğªn"..x232000_g_minLevel.."Sau khi thång c¤p t¾i tìm ta" )
			return 0
		end

		--È¡ ği¬mÍæ¼Ò¸½½ütoÕ ğµ ¶ÓÓÑÊıÁ¿(°üÀ¨×Ô¼º)
		local i				= 0
		--Ğµi viên ÁĞ±í
		local lstMem	= { selfId }
		--¸½½üĞµi viên toÕ ğµ cáiÊı
		local numMem	= 1
		if LuaFnHasTeam( sceneId, selfId ) ~= 0 then
			--Èç¹ûĞúng¶Ó³¤
			if LuaFnIsTeamLeader( sceneId, selfId ) ~= 0 then
				numMem		= GetNearTeamCount( sceneId, selfId )
				for	i=0, numMem-1 do
					lstMem[i+1] = GetNearTeamMember( sceneId, selfId, i )
				end
			end
		end

		--Ëæ»úÑ¡mµt cáiÈÎÎñ
--	local rand	= random( 230011, 230012 )
		local	rand	= x232000_g_EventList[1]
		for	i=1, numMem do
			CallScriptFunction( rand, "OnDefaultEvent", sceneId, lstMem[i], targetId )
		end

	end

end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x232000_OnEnumerate( sceneId, selfId, targetId )

	--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
	if LuaFnGetName( sceneId, targetId ) ~= x232000_g_Name then
		return
	end

	--Èç¹ûÒÑ½ÓÈÎÎñ»òThöa mãnÈÎÎñ½ÓÊÕÌõ¼ş,ÔòÁĞ³öÈÎÎñ
	if IsHaveMission( sceneId, selfId, x232000_g_MissionId ) > 0 or x232000_CheckAccept( sceneId, selfId ) > 0 then
		AddNumText( sceneId, x232000_g_ScriptId, x232000_g_MissionName,4,-1 )
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼ş,Ò²¹©×ÓÈÎÎñµ÷ÓÃ
--**********************************
function x232000_CheckAccept( sceneId, selfId )

	--ÒÑ¾­½Ó¹ıÔò²»·ûºÏÌõ¼ş
	if IsHaveMission( sceneId, selfId, x232000_g_MissionId ) > 0 then
		return 0
	end

	-- [ QUFEI 2007-08-27 19:13 UPDATE BugID 23910 ]
	local iDayCount = GetMissionData( sceneId, selfId, MD_SHUILAO_ACCEPT_TIME )	
	local nMonth = LuaFnGetThisMonth()
	local nDay   = LuaFnGetDayOfThisMonth()
	local nData  = (nMonth+1)*100+nDay							
	

	if iDayCount ~= nData then								--²»Ğúng½ñÌìtoÕ ğµ »°ÔòTiªp thø´ÎÊıÇå 0

		SetMissionData( sceneId, selfId, MD_SHUILAO_ACCEPT_COUNT, 0 )
	end

	--¼ì²âÍæ¼ÒĞúng·ñ·ûºÏTiªp thøÈÎÎñtoÕ ğµ Ìõ¼ş

	local	iDayCount	= GetMissionData( sceneId, selfId, MD_BAIMASI_DAYCOUNT )

	local	iTime	= GetMissionData( sceneId, selfId, MD_BAIMASI_DAYTIME )
	local iDayTime	= floor( iTime/100 )				--ÉÏmµt ´Î½»»ò·ÅÆúÈÎÎñtoÕ ğµ Ê±¼ä(ÌìÊı)
	local iQuarterTime	= mod( iTime, 100 )			--ÉÏmµt ´Î½»»ò·ÅÆúÈÎÎñtoÕ ğµ Ê±¼ä(mµt ¿ÌÖÖ)
	local iDayHuan	= iDayCount	--µ±ÌìÄÚÍê³ÉtoÕ ğµ S¯ l¥n nhi®m vø 

	--------------------------------------------------------
	--local CurTime		= GetHourTime()								--µ±Ç°Ê±¼ä
	local CurTime		= GetQuarterTime()								--µ±Ç°Ê±¼ä
	local CurDaytime= floor(CurTime/100)					--µ±Ç°Ê±¼ä(Ìì)
	

	if iDayTime ~= CurDaytime then	
		iDayHuan	= 0
		iDayCount		= iDayHuan;
		--ÉèÖÃÑ­»·ÈÎÎñtoÕ ğµ Ê±¼ä
		SetMissionData( sceneId, selfId, MD_BAIMASI_DAYTIME, CurTime )
		SetMissionData( sceneId, selfId, MD_BAIMASI_DAYCOUNT, iDayCount )

	end
	--------------------------------------------------------
	

	if iDayHuan >= x232000_GetMaxRound(sceneId,selfId) then

	--¼ì²âĞúng·ñS¯ l¥n nhi®m vø ÒÑ´ïÉÏÏŞ
	--if iDayHuan >= x232000_g_MaxRound then
		x232000_NotifyTip( sceneId, selfId, "Nhi®m vø hôm nay ğã vßşt quá s¯ l¥n quy ğ¸nh" )
		return 0
	end

	--ÕâÀïÃ²ËÆĞúngÃ»ÓÃtoÕ ğµ  ×¢ÊÍ by zhangguoxin 090208
	--local CurTime				= GetHourTime()					--µ±Ç°Ê±¼ä
	--local CurDaytime		= floor( CurTime/100 )	--µ±Ç°Ê±¼ä(Ìì)
	--local CurQuarterTime= mod( CurTime, 100 ) 	--µ±Ç°Ê±¼ä(mµt ¿ÌÖÓ)
	--end modified by zhangguoxin 090208
	--------------------------------------------------------
--	if iDayTime == CurDaytime then
--		if CurQuarterTime == iQuarterTime then
--			x232000_NotifyTip( sceneId, selfId, "ÄãÏÖTÕi ²»ÄÜLînh Cái này ÈÎÎñ" )
--			return 0
--		end
--	end
	--------------------------------------------------------
	return 1
end

--**********************************
--Tiªp thø,½ö¹©×ÓÈÎÎñµ÷ÓÃÉèÖÃ¹«¹²²ÎÊı
--**********************************
function x232000_OnAccept( sceneId, selfId, targetId, scriptId )

	--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
 	if LuaFnGetName( sceneId, targetId ) ~= x232000_g_Name then
		return
	end

	-- [ QUFEI 2007-08-27 19:13 UPDATE BugID 23910 ]
	local nMonth = LuaFnGetThisMonth()
	local nDay   = LuaFnGetDayOfThisMonth()
	local nData  = (nMonth+1)*100+nDay							
	SetMissionData( sceneId, selfId, MD_SHUILAO_ACCEPT_TIME, nData )
	-- PrintNum(nData)

	local	iDayCount	= GetMissionData( sceneId, selfId, MD_SHUILAO_ACCEPT_COUNT )	--µ±ÌìÄÚTiªp thøÈÎÎñtoÕ ğµ ´ÎÊı
		
	--¼ì²âĞúng·ñS¯ l¥n nhi®m vø ÒÑ´ïÉÏÏŞ


	if iDayCount >= x232000_GetMaxRound(sceneId,selfId) then
	--if iDayCount >= x232000_g_MaxRound then
		x232000_NotifyTip( sceneId, selfId, "Nhi®m vø hôm nay ğã vßşt quá s¯ l¥n quy ğ¸nh" )
		return
	else
		-- PrintStr("Succesy")
		iDayCount = iDayCount + 1
		-- PrintNum(iDayCount)
		SetMissionData( sceneId, selfId, MD_SHUILAO_ACCEPT_COUNT, iDayCount )
	end

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	AddMission( sceneId, selfId, x232000_g_MissionId, scriptId, 0, 0, 1 )
	-- ği¬mµ½ÈÎÎñtoÕ ğµ ĞòÁĞºÅ
	local	misIndex		= GetMissionIndexByID( sceneId, selfId, x232000_g_MissionId )
	--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿toÕ ğµ µÚ0Î»ÖÃ0 (ÈÎÎñÍê³ÉÇé¿ö)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 0 )
	--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿toÕ ğµ µÚ1Î»ÖÃÎªÈÎÎñ½Å±¾ºÅ
	SetMissionByIndex( sceneId, selfId, misIndex, 1, scriptId )

	-- ği¬mµ½»·Êı
	local	MissionRound= GetMissionData( sceneId, selfId, MD_BAIMASI_HUAN )
	--»·ÊıÔö¼Ó1
	MissionRound			= MissionRound + 1
	
	--if	MissionRound > x232000_g_MaxRound then
	if	MissionRound > x232000_GetMaxRound(sceneId,selfId) then
		SetMissionData( sceneId, selfId, MD_BAIMASI_HUAN, 1 )
	else
		SetMissionData( sceneId, selfId, MD_BAIMASI_HUAN, MissionRound )
	end

end

--**********************************
--·ÅÆú,½ö¹©×ÓÈÎÎñµ÷ÓÃ
--**********************************
function x232000_OnAbandon( sceneId, selfId )

  DelMission( sceneId, selfId, x232000_g_MissionId )
  --»·Êı²»Çå0,ÔÊĞí×ÔÓÉ·ÅÆú
	--SetMissionData( sceneId, selfId, MD_BAIMASI_HUAN, 0 )
	--begin modified by zhangguoxin 090208
	local	iDayCount	= GetMissionData( sceneId, selfId, MD_BAIMASI_DAYCOUNT )
	--local iDayHuan	= floor( iDayCount/100000 )		--µ±ÌìÄÚÍê³ÉtoÕ ğµ S¯ l¥n nhi®m vø 
	local iDayHuan	= iDayCount		--µ±ÌìÄÚÍê³ÉtoÕ ğµ S¯ l¥n nhi®m vø 
	--local iTime			= mod(iDayCount,100000)
	local iTime			= GetMissionData( sceneId, selfId, MD_BAIMASI_DAYTIME )
	local iDayTime	= floor(iTime/100)						--ÉÏmµt ´Î½»»ò·ÅÆúÈÎÎñtoÕ ğµ Ê±¼ä(ÌìÊı)
	
	--local CurTime		= GetHourTime()								--µ±Ç°Ê±¼ä
	local CurTime		= GetQuarterTime()								--µ±Ç°Ê±¼ä
	local CurDaytime= floor(CurTime/100)					--µ±Ç°Ê±¼ä(Ìì)

	if iDayTime ~= CurDaytime then								--²»Ğúng½ñÌìtoÕ ğµ »°Ômµt ·ÊıÇå0
		SetMissionData( sceneId, selfId, MD_SHUILAO_ACCEPT_COUNT, 0 )
		iDayHuan	= 0
	end

	--iDayCount		= iDayHuan * 100000 + CurTime
	iDayCount		= iDayHuan;
	SetMissionData( sceneId, selfId, MD_BAIMASI_DAYTIME, CurTime )
	--ÉèÖÃÑ­»·ÈÎÎñtoÕ ğµ Ê±¼ä
	SetMissionData( sceneId, selfId, MD_BAIMASI_DAYCOUNT, iDayCount )
	--end modified by zhangguoxin 090208
end

--**********************************
--¼ÌĞø
--**********************************
function x232000_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x232000_CheckSubmit( sceneId, selfId )

	if IsHaveMission( sceneId, selfId, x232000_g_MissionId ) <= 0 then
		return 0
	end

	-- ği¬mµ½ÈÎÎñtoÕ ğµ ĞòÁĞºÅ
	local	misIndex	= GetMissionIndexByID( sceneId, selfId, x232000_g_MissionId )
	if GetMissionParam( sceneId, selfId, misIndex, 0 ) == 1 then
		return 1
	end

	return  0
end

--**********************************
--Ìá½»,½ö¹©×ÓÈÎÎñµ÷ÓÃ
--**********************************
function x232000_OnSubmit( sceneId, selfId, targetId, selectRadioId )

	if x232000_CheckSubmit( sceneId, selfId ) ~= 1 then
		return
	end

	if DelMission( sceneId, selfId, x232000_g_MissionId ) <= 0 then
		return
	end
	--Èç¹ûÓĞºóĞøÈÎÎñ,ÔòÉ¾³ı
	if IsHaveMission( sceneId, selfId, x232000_g_MissionIdNext ) > 0 then
		DelMission( sceneId, selfId, x232000_g_MissionIdNext )
	end

	local	Level			= GetLevel( sceneId, selfId )
	--begin modified by zhangguoxin 090208
	local iDayCount	= GetMissionData( sceneId, selfId, MD_BAIMASI_DAYCOUNT )
	--local iTime			= mod( iDayCount, 100000 )
	local iTime			= GetMissionData( sceneId, selfId, MD_BAIMASI_DAYTIME )
	local iDayTime	= floor( iTime/100 )				--ÉÏmµt ´Î½»»ò·ÅÆúÈÎÎñtoÕ ğµ Ê±¼ä(ÌìÊı)
	local iQuarterTime	= mod( iTime, 100 )			--ÉÏmµt ´Î½»»ò·ÅÆúÈÎÎñtoÕ ğµ Ê±¼ä(¿Ì)
	--local iDayHuan	= floor( iDayCount/100000 )	--µ±ÌìÄÚÍê³ÉtoÕ ğµ S¯ l¥n nhi®m vø 
	local iDayHuan	= iDayCount	--µ±ÌìÄÚÍê³ÉtoÕ ğµ S¯ l¥n nhi®m vø 

	--local CurTime				= GetHourTime()					--µ±Ç°Ê±¼ä
	local CurTime				= GetQuarterTime()					--µ±Ç°Ê±¼ä
	local CurDaytime		= floor( CurTime/100 )	--µ±Ç°Ê±¼ä(Ìì)
	local CurQuarterTime= mod( CurTime, 100 )		--µ±Ç°Ê±¼ä(¿Ì)

	--ÉÏ´ÎHoàn t¤t nhi®m vøĞúngÍ¬mµt ÌìÄÚ
	if CurDaytime == iDayTime then
		iDayHuan			= iDayHuan + 1
	--ÉÏ´ÎHoàn t¤t nhi®m vø²»TÕi Í¬mµt Ìì,ÖØÖÃ
	else
		iDayTime			= CurDaytime
		iQuarterTime	= 0
		iDayHuan			= 1
	end

	local	Reward_Append	= 1
	
	if iDayHuan <= x232000_GetMaxRound(sceneId,selfId) then
	--if iDayHuan <= x232000_g_MaxRound then
		Reward_Append	= 2
	end
	
	--iDayCount	= iDayHuan * 100000 + iDayTime * 100 + iQuarterTime
	iDayCount	= iDayHuan;
	local newTime = iDayTime * 100 + iQuarterTime;
	--ÉèÖÃÑ­»·ÈÎÎñtoÕ ğµ »·Êı
	SetMissionData( sceneId, selfId, MD_BAIMASI_DAYTIME, newTime )
	SetMissionData( sceneId, selfId, MD_BAIMASI_DAYCOUNT, iDayCount )
	--begin modified by zhangguoxin 090208
	local	MissionRound	= GetMissionData( sceneId, selfId, MD_BAIMASI_HUAN )

	--Ë¥¼õÏµÊı
	local l_Exp		= 0.75
	local l_Money	= (49+Level) / (160+40*Level)
	--¼ÆËã½±ÀøKinh nghi®mtoÕ ğµ ÊıÁ¿
	local Round		= mod( MissionRound, 10 )
	if Round == 0 then
		Round = 10
	end

	--µÈc¤p+»·Êıº¯Êı,ÊÜKinh nghi®mµ÷½Ú³£ÊıtoÕ ğµ Ó°Ïì
	local Exp		= 2400 * (Level+4) * Round * l_Exp / 120
	--µÈc¤p+»·Êıº¯Êı,ÊÜKinh nghi®mµ÷½Ú³£ÊıtoÕ ğµ Ó°Ïì
	local Money	= 2400 * (Level+4) * Round * l_Money /120

	if MissionRound > 10 then
		--10»·ÒÔÉÏ,Ã¿»·¶îÍâÔö¼Ómµt ¶¨Kinh nghi®mÔöÁ¿,½ğÇ®Ã»ÓĞÔöÁ¿
		Exp	= 2400 * (Level+4) * l_Exp / 120 + Exp
	end

	Exp		= Exp * Reward_Append
	Exp		= floor(Exp)
	Money	= floor(Money)

	--Ôö¼ÓKinh nghi®mÖµºÍÇ®
	--Ìí¼ÓÈÎÎñ½±Àø
--AddExp( sceneId, selfId, Exp )
	AddMoney( sceneId, selfId, Money )
	--ÏÔÊ¾¶Ô»°¿ò
	BeginEvent( sceneId )
--	AddText( sceneId, "  ×ö ği¬m²»´í,ÕâÀïÓĞ" .. Exp .. " ği¬mKinh nghi®mÖµºÍ#{_MONEY"..Money.."},ËãĞúng¸øCüa ngß½i ½±Àø." )
		AddText( sceneId, "  Làm khá l¡m, · ğây có #{_MONEY"..Money.."}, coi nhß t£ng thß·ng cho ngß½i" )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	--¼ÇÂ¼Í³¼ÆĞÅÏ¢
	LuaFnAuditShuiLao(sceneId, selfId)
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x232000_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x232000_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x232000_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--½ÓÈÎÎñºóÏÔÊ¾toÕ ğµ ½çÃæ
--**********************************
function x232000_AcceptDialog(sceneId, selfId, rand, g_Dialog, targetId )

	BeginEvent( sceneId )
		AddText( sceneId, g_Dialog )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--½»ÈÎÎñºóÏÔÊ¾toÕ ğµ ½çÃæ
--**********************************
function x232000_SubmitDialog( sceneId, selfId, rand )
end

--**********************************
--°ÑĞÅËÍµ½ºóÏÔÊ¾toÕ ğµ ½çÃæ
--**********************************
function x232000_SubmitDialog( sceneId, selfId, rand )
end

--**********************************
--ĞÑÄ¿ÌáÊ¾
--**********************************
function x232000_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end

--**********************************
--È¡ ği¬m±¾ÊÂ¼ştoÕ ğµ MissionId,ÓÃÓÚobjÎÄ¼şÖĞ¶Ô»°Çé¾°toÕ ğµ ÅĞ¶Ï
--**********************************
function x232000_GetEventMissionId( sceneId, selfId )
	return x232000_g_MissionId
end

------------------------------
--È¡ ği¬m×î¶àÍê³É´ÎÊı
------------------------------
function x232000_GetMaxRound(sceneId,selfId)
	
	local	level	= GetLevel( sceneId, selfId )
	local index = 5
	while level < x232000_g_MaxRoundList[index].lev do
		index = index - 1
		if index == 1 then
			break
		end
	end

	return x232000_g_MaxRoundList[index].rnd
  
end

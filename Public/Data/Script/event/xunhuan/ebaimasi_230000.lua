--°×ÂíËÂÈÎÎñÖ÷ÊÂ¼ş½Å±¾
--ÈÎÎñ
--½Å±¾ºÅ
x230000_g_ScriptId = 230000

--ÈÎÎñºÅ
x230000_g_MissionId = 4011

--Møc tiêu nhi®m vønpc
x230000_g_Name ="Trí Thanh ĞÕi Sß"

--ÈÎÎñÎÄ±¾ÃèÊö
x230000_g_MissionName="Tu hành BÕch Mã Tñ"
x230000_g_MissionInfo="A Di Ğà Ph§t"  --ÈÎÎñÃèÊö
x230000_g_MissionTarget="Hoàn thành nhi®m vø trí thanh"		--Møc tiêu nhi®m vø
x230000_g_ContinueInfo="Nhi®m vø làm xong chßa?"		--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x230000_g_MissionComplete="Cám ½n các hÕ nhi«u"					--Hoàn t¤t nhi®m vønpcËµtoÕ ğµ »°

--Í¨ÓÃ¼ì²é½Å±¾
x230000_g_CheckScript=500502

--»·ÊıÉÏÏŞ
x230000_g_MaxRound=20

--ÈÎÎñ½±Àø


--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x230000_OnDefaultEvent( sceneId, selfId, targetId )	-- ği¬m»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾

	if GetName( sceneId, targetId ) ~= x230000_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	--Èç¹ûÍæ¼ÒÒÑ¾­½ÓÁË°×ÂíËÂÈÎÎñ
	if IsHaveMission( sceneId, selfId, x230000_g_MissionId ) > 0 then
		local misIndex = GetMissionIndexByID( sceneId, selfId, x230000_g_MissionId )
		local realMissionScript = GetMissionParam( sceneId, selfId, misIndex, 1 )

		CallScriptFunction( realMissionScript, "OnDefaultEvent", sceneId, selfId, targetId )
	else
		--Èç¹ûÎ´½Ó°×ÂíËÂÈÎÎñ
		--È¡ ği¬mÍæ¼Ò¸½½ütoÕ ğµ ¶ÓÓÑÊıÁ¿(°üÀ¨×Ô¼º)
		local i = 0
		local mems = { selfId }
		local nearteammembercount = 1

		if LuaFnHasTeam( sceneId, selfId ) ~= 0 then
			if LuaFnIsTeamLeader( sceneId, selfId ) ~= 0 then		-- Ğúng¶Ó³¤
				nearteammembercount = GetNearTeamCount( sceneId, selfId )
				for	i=0, nearteammembercount-1 do
					mems[i+1] = GetNearTeamMember(sceneId, selfId, i)
				end
			end
		end

		local rand = random( 230011, 230012 )
		for	i=1, nearteammembercount do
			CallScriptFunction( rand, "OnDefaultEvent", sceneId, mems[i], targetId )
		end
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x230000_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x230000_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	--Èç¹ûÒÑ½ÓÈÎÎñ»òThöa mãnÈÎÎñ½ÓÊÕÌõ¼ş,ÔòÁĞ³öÈÎÎñ
	if IsHaveMission( sceneId, selfId, x230000_g_MissionId ) > 0 or x230000_CheckAccept( sceneId, selfId ) > 0 then
		AddNumText( sceneId, x230000_g_ScriptId, x230000_g_MissionName,4,-1 )
    end
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş,Ò²¹©×ÓÈÎÎñµ÷ÓÃ
--**********************************
function x230000_CheckAccept( sceneId, selfId )
	--ÒÑ¾­½Ó¹ıÔò²»·ûºÏÌõ¼ş
	if IsHaveMission( sceneId, selfId, x230000_g_MissionId ) > 0 then
		return 0
	end

	--¼ì²âĞúng·ñÈÎÎñÒÑ¾­´ïµ½20cái,Èç¹ûµ½ÁË,Ôò²»ÄÜ½Ó
	if GetMissionCount( sceneId, selfId ) == 20 then
		x230000_NotifyFailTips( sceneId, selfId, "Không th¬ tiªp nh§n nhi«u nhi®m vø" )
		return 0
	end

	--C¥n 15c¤p²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) >= 15 then
		--¼ì²âÍæ¼ÒĞúng·ñ·ûºÏTiªp thøÈÎÎñtoÕ ğµ Ìõ¼ş
		--begin modified by zhangguoxin 090207
		--local iDayCount = GetMissionData( sceneId, selfId, MD_BAIMASI_DAYCOUNT )
		--local iTime = mod( iDayCount, 100000 )
		local iTime = GetMissionData( sceneId, selfId, MD_BAIMASI_DAYTIME )
		local iDayTime = floor( iTime/100 )			--ÉÏmµt ´Î½»»ò·ÅÆúÈÎÎñtoÕ ğµ Ê±¼ä(ÌìÊı)
		local iQuarterTime = mod( iTime, 100 )		--ÉÏmµt ´Î½»»ò·ÅÆúÈÎÎñtoÕ ğµ Ê±¼ä(mµt ¿ÌÖÖ)
		--local iDayHuan = floor( iDayCount/100000 )	--µ±ÌìÄÚÍê³ÉtoÕ ğµ S¯ l¥n nhi®m vø 

		--local CurTime = GetHourTime()				--µ±Ç°Ê±¼ä
		local CurTime = GetQuarterTime()				--µ±Ç°Ê±¼ä
		local CurDaytime = floor( CurTime/100 )		--µ±Ç°Ê±¼ä(Ìì)
		local CurQuarterTime = mod( CurTime, 100 ) 	--µ±Ç°Ê±¼ä(mµt ¿ÌÖÓ)

		if iDayTime == CurDaytime then
			if CurQuarterTime == iQuarterTime then
				x230000_NotifyFailTips( sceneId, selfId, "Ngß½i hi®n không th¬ nh§n nhi®m vø này" )
				return 0
			end
		end
		--end modified by zhangguoxin 090207
		return 1
	else
		return 0
	end
end

--**********************************
--Tiªp thø,½ö¹©×ÓÈÎÎñµ÷ÓÃÉèÖÃ¹«¹²²ÎÊı
--**********************************
function x230000_OnAccept( sceneId, selfId, targetId, scriptId )
 	if GetName( sceneId, targetId ) ~= x230000_g_Name then								--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	AddMission( sceneId, selfId, x230000_g_MissionId, scriptId, 0, 0, 1 )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x230000_g_MissionId )		-- ği¬mµ½ÈÎÎñtoÕ ğµ ĞòÁĞºÅ
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 0 )						--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿toÕ ğµ µÚ0Î»ÖÃ0 (ÈÎÎñÍê³ÉÇé¿ö)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, scriptId )					--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿toÕ ğµ µÚ1Î»ÖÃÎªÈÎÎñ½Å±¾ºÅ

	-- ği¬mµ½»·Êı
	local MissionRound = GetMissionData( sceneId, selfId, MD_BAIMASI_HUAN )
	--»·ÊıÔö¼Ó1
	MissionRound = MissionRound + 1
	if	MissionRound > x230000_g_MaxRound then
		SetMissionData( sceneId, selfId, MD_BAIMASI_HUAN, 1 )
	else
		SetMissionData( sceneId, selfId, MD_BAIMASI_HUAN, MissionRound )
	end

end

--**********************************
--·ÅÆú,½ö¹©×ÓÈÎÎñµ÷ÓÃ
--**********************************
function x230000_OnAbandon( sceneId, selfId )
    DelMission( sceneId, selfId, x230000_g_MissionId )
	-- SetMissionData( sceneId, selfId, MD_BAIMASI_HUAN, 0 )	--»·Êı²»Çå0,ÔÊĞí×ÔÓÉ·ÅÆú

	--begin modified by zhangguoxin 090207
	--local iDayCount = GetMissionData( sceneId, selfId, MD_BAIMASI_DAYCOUNT )
	--local iDayHuan = floor( iDayCount/100000 )					--µ±ÌìÄÚÍê³ÉtoÕ ğµ S¯ l¥n nhi®m vø 
	--local iTime = mod(iDayCount,100000)
	--local iDayTime = floor(iTime/100)							--ÉÏmµt ´Î½»»ò·ÅÆúÈÎÎñtoÕ ğµ Ê±¼ä(ÌìÊı)
	--local CurTime = GetHourTime()								--µ±Ç°Ê±¼ä
	--local CurDaytime = floor(CurTime/100)						--µ±Ç°Ê±¼ä(Ìì)
  --
	--if iDayTime ~= CurDaytime then								--²»Ğúng½ñÌìtoÕ ğµ »°Ômµt ·ÊıÇå 0
	--	iDayHuan = 0
	--end
  --
	--iDayCount = iDayHuan * 100000 + CurTime
	----ÉèÖÃÑ­»·ÈÎÎñtoÕ ğµ Ê±¼ä
	--SetMissionData( sceneId, selfId, MD_BAIMASI_DAYCOUNT, iDayCount )
	local iTime = GetMissionData( sceneId, selfId, MD_BAIMASI_DAYTIME )
	local iDayTime = floor(iTime/100)																			--ÉÏmµt ´Î½»»ò·ÅÆúÈÎÎñtoÕ ğµ Ê±¼ä(ÌìÊı) 
	local CurTime = GetQuarterTime()																			--µ±Ç°Ê±¼ä
	local CurDaytime = floor(CurTime/100)																	--µ±Ç°Ê±¼ä(Ìì)
	if iDayTime ~= CurDaytime then
		SetMissionData( sceneId, selfId, MD_BAIMASI_DAYCOUNT, 0 )						--²»Ğúng½ñÌìtoÕ ğµ »°Ômµt ·ÊıÇå 0
	end
	SetMissionData( sceneId, selfId, MD_BAIMASI_DAYTIME, CurTime )
	
	--end modified by zhangguoxin 090207
end

--**********************************
--¼ÌĞø
--**********************************
function x230000_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x230000_CheckSubmit( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x230000_g_MissionId ) <= 0 then
		return 0
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x230000_g_MissionId )			-- ği¬mµ½ÈÎÎñtoÕ ğµ ĞòÁĞºÅ
	if GetMissionParam( sceneId, selfId, misIndex, 0 ) >= 1 then
		return 1
	end

	return  0
end

--**********************************
--Ìá½»,½ö¹©×ÓÈÎÎñµ÷ÓÃ
--**********************************
function x230000_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x230000_CheckSubmit( sceneId, selfId ) == 1 then
		if DelMission( sceneId, selfId, x230000_g_MissionId ) > 0 then
			local Level = GetLevel( sceneId, selfId )
			
			--begin modified by zhangguoxin 090207
			local iDayCount = GetMissionData( sceneId, selfId, MD_BAIMASI_DAYCOUNT )
			--local iTime = mod( iDayCount, 100000 )
			local iTime = GetMissionData( sceneId, selfId, MD_BAIMASI_DAYTIME )
			local iDayTime = floor( iTime/100 )				--ÉÏmµt ´Î½»»ò·ÅÆúÈÎÎñtoÕ ğµ Ê±¼ä(ÌìÊı)
			local iQuarterTime = mod( iTime, 100 )			--ÉÏmµt ´Î½»»ò·ÅÆúÈÎÎñtoÕ ğµ Ê±¼ä(¿Ì)
			--local iDayHuan = floor( iDayCount/100000 )		--µ±ÌìÄÚÍê³ÉtoÕ ğµ S¯ l¥n nhi®m vø 
			local iDayHuan = iDayCount		--µ±ÌìÄÚÍê³ÉtoÕ ğµ S¯ l¥n nhi®m vø 

			--local CurTime = GetHourTime()					--µ±Ç°Ê±¼ä
			local CurTime = GetQuarterTime()					--µ±Ç°Ê±¼ä
			local CurDaytime = floor( CurTime/100 )			--µ±Ç°Ê±¼ä(Ìì)
			local CurQuarterTime = mod( CurTime, 100 )		--µ±Ç°Ê±¼ä(¿Ì)

			if CurDaytime == iDayTime then				 	--ÉÏ´ÎHoàn t¤t nhi®m vøĞúngÍ¬mµt ÌìÄÚ
				iDayHuan = iDayHuan + 1
			else											--ÉÏ´ÎHoàn t¤t nhi®m vø²»TÕi Í¬mµt Ìì,ÖØÖÃ
				iDayTime			= CurDaytime
				iQuarterTime	= 0
				iDayHuan			= 1
			end

			--iDayCount = iDayHuan * 100000 + iDayTime * 100 + iQuarterTime
			iDayCount = iDayHuan
			local newTime = iDayTime * 100 + iQuarterTime

			local Reward_Append = 1
			if iDayHuan <= 20 then
				Reward_Append = 2
			end

			--ÉèÖÃÑ­»·ÈÎÎñtoÕ ğµ »·Êı
			SetMissionData( sceneId, selfId, MD_BAIMASI_DAYCOUNT, iDayCount )
			SetMissionData( sceneId, selfId, MD_BAIMASI_DAYTIME, newTime )
			--end modified by zhangguoxin 090207
			
			local MissionRound = GetMissionData( sceneId, selfId, MD_BAIMASI_HUAN )

			--Ë¥¼õÏµÊı
			local l_Exp = 0.75
			local l_Money = (49 + Level) / (160 + 40 * Level )
			--¼ÆËã½±ÀøKinh nghi®mtoÕ ğµ ÊıÁ¿
			local Round = mod( MissionRound, 10 )
			if Round == 0 then
				Round = 10
			end

			local Exp = 2400 * (Level+4) * Round * l_Exp / 120					--µÈc¤p+»·Êıº¯Êı,ÊÜKinh nghi®mµ÷½Ú³£ÊıtoÕ ğµ Ó°Ïì
			local Money = 2400 * (Level+4) * Round * l_Money /120				--µÈc¤p+»·Êıº¯Êı,ÊÜKinh nghi®mµ÷½Ú³£ÊıtoÕ ğµ Ó°Ïì

			if MissionRound > 10 then
				Exp = 2400 * (Level+4) * l_Exp / 120 + Exp						--11~20»·ÈÎÎñ,Ã¿»·¶îÍâÔö¼Ómµt ¶¨Kinh nghi®mÔöÁ¿,½ğÇ®Ã»ÓĞÔöÁ¿
			end

			Exp = Exp * Reward_Append

			Exp = floor(Exp)
			Money = floor(Money)

			--Ôö¼ÓKinh nghi®mÖµºÍÇ®
			--Ìí¼ÓÈÎÎñ½±Àø
			AddExp( sceneId, selfId, Exp )
			AddMoney( sceneId, selfId, Money )
			--ÏÔÊ¾¶Ô»°¿ò
			BeginEvent( sceneId )
				AddText( sceneId, "  Làm r¤t khá, · ğây có " .. Exp .. " ği¬m tr¸ giá kinh nghi®m và #{_MONEY"..Money.."}, coi nhß t£ng thß·ng cho ngß½i" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		end
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x230000_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x230000_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x230000_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--½ÓÈÎÎñºóÏÔÊ¾toÕ ğµ ½çÃæ
--**********************************
function x230000_AcceptDialog(sceneId, selfId,rand,g_Dialog,targetId)
	BeginEvent(sceneId)
		AddText(sceneId,g_Dialog)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--½»ÈÎÎñºóÏÔÊ¾toÕ ğµ ½çÃæ
--**********************************
function x230000_SubmitDialog(sceneId, selfId,rand)

end

--**********************************
--°ÑĞÅËÍµ½ºóÏÔÊ¾toÕ ğµ ½çÃæ
--**********************************
function x230000_SubmitDialog(sceneId, selfId,rand)

end

function x230000_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent(sceneId)
		AddText(sceneId, Tip)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end

--**********************************
--È¡ ği¬m±¾ÊÂ¼ştoÕ ğµ MissionId,ÓÃÓÚobjÎÄ¼şÖĞ¶Ô»°Çé¾°toÕ ğµ ÅĞ¶Ï
--**********************************
function x230000_GetEventMissionId(sceneId, selfId)
	return x230000_g_MissionId
end

-- Á¬»·¸±±¾ÈÎÎñ
-- ÈÛÑÒÖ®µØ

--************************************************************************
--MisDescBegin

-- ½Å±¾ºÅ
x050222_g_ScriptId = 050222

-- ÈÎÎñºÅ
x050222_g_MissionId = 1258					--1256 »Æ½ðÖ®Á´--1257 Ðþ·ðÖé--1258 ÈÛÑÒÖ®µØ

-- Møc tiêu nhi®m vø NPC
x050222_g_Name = "Hà Duy®t"

--ÈÎÎñ¹éÀà
x050222_g_MissionKind = 8

--ÐÆng c¤p nhi®m vø 
x050222_g_MissionLevel = 10000

-- ÈÎÎñÎÄ±¾ÃèÊö
x050222_g_MissionName = "Dung Nham Chi Ð¸a"
x050222_g_MissionInfo = "    "														-- ÈÎÎñÃèÊö
x050222_g_MissionTarget = "    #{LLFBM_80918_3}"						-- Møc tiêu nhi®m vø
--x050222_g_ContinueInfo = "    "					-- Î´Hoàn t¤t nhi®m vøtoÕ ðµ npc¶Ô»°
x050222_g_SubmitInfo = "#{LLFB_80816_53}"										-- Ìá½»Ê±toÕ ðµ ´ð¸´
--x050222_g_MissionComplete = "   #{LLFB_80816_53}"	--Hoàn t¤t nhi®m vønpcËµtoÕ ðµ »°

x050222_g_IsMissionOkFail = 0														-- 0 ºÅÎ»ÖÃ: µ±Ç°ÈÎÎñÐúng·ñÍê³É(0Î´Íê³É£»1Íê³É£»2th¤t bÕi)
x050222_g_IsKillBossFire = 1														-- 1 ºÅÎ»ÖÃ: É±ËÀHöa Di­m Yêu MaÊýÁ¿(0ºÍ1)
x050222_g_Param_sceneid = 3															-- 3 ºÅÎ»ÖÃ: µ±Ç°ÈÎÎñÊý¾ÝtoÕ ðµ 3Î»ÖÃÉèÖÃÎª³¡¾°ID

-- ÈÎÎñÍê³ÉÇé¿ö,ÄÚÈÝ¶¯Ì¬Ë¢ÐÂ,´ÓÈÎÎñ²ÎÊýtoÕ ðµ µÚ1Î»¿ªÊ¼
x050222_g_Custom	= { {id="Ðã giªt chªt #RHöa Di­m Yêu Ma",num=1} }

--MisDescEnd
--************************************************************************

--x050222_g_huangjinzhilian = 40004453	--»Æ½ðÖ®Á´
--x050222_g_heyuanxin = 40004460	--ºÎÔÃtoÕ ðµ ÐÅ
x050222_g_xuanfouzhu = 40004454	--Ðþ·ðÖé

x050222_g_MonsterSuiCong = "Yêu Ma Tùy Tùng"			--Ð¡¹ÖÑýÄ§Ëæ´Ó
x050222_g_BossHuoYanYao = "Höa Di­m Yêu Ma"			-- bossHöa Di­m Yêu Ma

MonsterSuiCongIDTbl = {13240,13241,13242,13243,13244,13245,13246,13247,13248,13249}			--Ð¡¹ÖÑýÄ§Ëæ´Ó
BossHuoYanYaoIDTbl = {13260,13261,13262,13263,13264,13265,13266,13267,13268,13269}		-- bossHöa Di­m Yêu Ma

x050222_g_BossHuoYanYaoPos ={67,48}

x050222_g_MonsterSuiCongPos = {{187,	176},{172,	187},{187,	165},{164,	174},{148,	185},{152,	193},{144,	160},{208,	154},{151,	174},{134,	155},
{181,	168},{177,	146},{143,	128},{153,	124},{151,	113},{171,	117},{187,	94},{191,	80},{204,	97},{212,	102},
{207,	60},{191,	54},{184,	61},{162,	49},{152,	53},{143,	77},{149,	72},{147,	77},{106,	214},{97,	218},
{89,	202},{78,	208},{74,	204},{65,	212},{45,	203},{70,	174},{84,	164},{75,	151},{62,	150},{68,	142},
{58,	118},{69,	115},{89,	113},{98,	110},{91,	98},{54,	114},{43,	105},{52,	99},{69,	105}, --¼õÉÙ1cái
{80,	84},{85,	81},{97,	89},{105,	76},{51,	80},{45,	73},{80,	74},{97,	62},{50,	60},{69,	55},
{73,	51},{44,	49},{56,	42},{48,	32},{43,	34},{67,	28},{77,	35},{85,	38},{102,	31},--¼õÉÙ1cái
{106,	40},{108,	49},{72,	39},{186,	156},{147,	199},{137,	211},{130,	190},{139,	163},{211,	175},{216,	177},
{220,	167},{67,	88},{64,	91},{91,	130},{85,	133},{179,	101},--¼õÉÙ4cái
{186,	104},{139,	91},{215,	88},{176,	53},{135,	96},{139,	52},{135,	56},{133,	206},--¼õÉÙ2cái
{221,	198},{215,	192},{206,	199},{194,	205},{191,	213},{196,	193},{185,	198},{205,	182},{220,	184},{177,	207},
{188,	184},{172,	210},{172,	196},{226,	173},{175,	177},{177,	185},{197,	200},{205,	188},{224,	194},{182,	194},
{201,	170},{212,	171},{160,	196},{159,	210},{205,	160},{220,	159},{165,	182},{149,	215},{174,	165},{157,	179},
{143,	205},{137,	198},{144,	191},{155,	167},{178,	154},{195,	151},{213,	151},{135,	171},{142,	166},{157,	151},
{158,	60},{173,	64},{201,	45},{190,	34},{199,	66},{161,	77},{141,	83},{156,	107},{162,	119},{203,	89},
{177,	91},{195,	115},{134,	74},{144,	119},{162,	98},{190,	71},{141,	57},{211,	62},{159,	42},{196,	85},
{71,	45},{49,	50},{65,	58},{80,	54},{82,	46},{74,	60},{56,	60},{62,	42},{52,	40},{80,	33},
{84,	57},{43,	56},{46,	38},{63,	51},{68,	65},{58,	68},{85,	66},{94,	51},{71,	75},{53,	88},
{102,	210},{91,	215},{71,	195},{62,	214},{51,	203},{66,	184},{84,	157},{52,	211},{77,	169},{76,	134},
{214,	189},{221,	187},{207,	197},{217,	197},{201,	202},{221,	204},{208,	209},{215,	210}--¼Ó8cái
}

x050222_g_NumText_Main = 1					-- ½ÓÈÎÎñtoÕ ðµ Ñ¡Ïî
x050222_g_NumText_EnterCopyScene = 2		-- ÒªÇó½øÈë¸±±¾toÕ ðµ Ñ¡Ïî

x050222_g_CopySceneMap = "huomuchang.nav"
x050222_g_CopySceneArea = "huomuchang_area.ini"
x050222_g_CopySceneMonsterIni = "huomuchang_monster.ini"

x050222_g_CopySceneType = FUBEN_RONGYANZHIDI		-- ¸±±¾ÀàÐÍ,¶¨ÒåTÕi ScriptGlobal.luaÀïÃæ
x050222_g_LimitMembers = 1					-- ¿ÉÒÔ½ø¸±±¾toÕ ðµ ×îÐ¡¶ÓÎéÈËÊý
x050222_g_TickTime = 5						-- »Øµ÷½Å±¾toÕ ðµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x050222_g_LimitTotalHoldTime = 360			-- ¸±±¾¿ÉÒÔ´æ»îtoÕ ðµ Ê±¼ä(µ¥Î»: ´ÎÊý),Èç¹û´ËÊ±¼äµ½ÁË,ÔòÈÎÎñ½«»áth¤t bÕi
x050222_g_CloseTick = 6						-- ¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±(µ¥Î»: ´ÎÊý)
x050222_g_NoUserTime = 30					-- ¸±±¾ÖÐÃ»ÓÐÈËºó¿ÉÒÔ¼ÌÐø±£´ætoÕ ðµ Ê±¼ä(µ¥Î»:  giây)

x050222_g_Fuben_X = 217
x050222_g_Fuben_Z = 221
x050222_g_Back_X = 295
x050222_g_Back_Z = 68

x050222_g_TakeTimes = 10											-- Ã¿Ìì×î¶àLînh ´ÎÊý
--**********************************
-- ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x050222_OnDefaultEvent( sceneId, selfId, targetId )	--  ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	if GetName( sceneId, targetId ) ~= x050222_g_Name then		-- ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
		return
	end

	local numText = GetNumText()

	if IsHaveMission( sceneId, selfId, x050222_g_MissionId ) == 0 then
		if numText == x050222_g_NumText_Main then
			if LuaFnGetAvailableItemCount( sceneId, selfId, x050222_g_xuanfouzhu ) < 1 then
				BeginEvent( sceneId )
				AddText( sceneId, "#{LLFB_80816_44}" )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
			elseif x050222_CheckAccept( sceneId, selfId, targetId ) > 0 then
				--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
				BeginEvent( sceneId )
					AddText( sceneId, "#{LLFB_80816_45}" )
				EndEvent( )
				DispatchMissionInfo( sceneId, selfId, targetId, x050222_g_ScriptId, x050222_g_MissionId )
			end
		end
	else
		if numText == x050222_g_NumText_Main then
			local bDone = x050222_CheckSubmit( sceneId, selfId )

			BeginEvent( sceneId )
				--AddText( sceneId, x050222_g_MissionName )
	
				if bDone == 1 then
					AddText( sceneId, x050222_g_SubmitInfo )
				else
						AddText( sceneId, "#{LLFB_80816_47}" )
						AddNumText( sceneId, x050222_g_ScriptId, "Dung Nham Chi Ð¸a", 10, x050222_g_NumText_EnterCopyScene )
						EndEvent( sceneId )
					DispatchEventList( sceneId, selfId, targetId )
					return
				end
			EndEvent( )
			--DispatchMissionDemandInfo( sceneId, selfId, targetId, x050222_g_ScriptId, x050222_g_MissionId, bDone )
			DispatchMissionContinueInfo( sceneId, selfId, targetId, x050222_g_ScriptId, x050222_g_MissionId )
		elseif numText == x050222_g_NumText_EnterCopyScene then
			x050222_AcceptEnterCopyScene( sceneId, selfId, targetId )
		end
	end
end

--**********************************
-- ²»ÄÜÓÐÆäËûtoÕ ðµ ÈÎÎñ,Ã»ÓÐTr· v« 0,ÓÐTr· v« 1
--**********************************
function x050222_CheckConflictMission( sceneId, selfId )
	local missionId = 0

	if IsHaveMission( sceneId, selfId, 1256 ) > 0 then
		return 1
	end
	
	if IsHaveMission( sceneId, selfId, 1257 ) > 0 then
		return 1
	end

	return 0
end

--**********************************
-- ÁÐ¾ÙÊÂ¼þ
--**********************************
function x050222_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x050222_g_Name then		--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
		return
	end

	-- ²»ÄÜÓÐÆäËûtoÕ ðµ ÈÎÎñ
	if x050222_CheckConflictMission( sceneId, selfId ) == 1 then
		return
	end

	AddNumText( sceneId, x050222_g_ScriptId, x050222_g_MissionName, 4, x050222_g_NumText_Main )
end

--**********************************
-- ¼ì²âTiªp thøÌõ¼þ
--**********************************
function x050222_CheckAccept( sceneId, selfId, targetId )
	-- ÒÑ¾­½Ó¹ýÔò²»·ûºÏÌõ¼þ
	if IsHaveMission( sceneId, selfId, x050222_g_MissionId ) > 0 then
		return 0
	end

	-- ²»ÄÜÓÐÆäËûtoÕ ðµ ÈÎÎñ
	if x050222_CheckConflictMission( sceneId, selfId ) == 1 then
		return 0
	end
	
	-- mµt ÌìÖ»ÄÜÁì x050222_g_TakeTimes ´Î
	local DayTimes, oldDate, nowDate, takenTimes

	DayTimes = GetMissionData( sceneId, selfId, MD_XINSANHUAN_3_DAYTIME )
	oldDate = mod( DayTimes, 100000 )
	takenTimes = floor( DayTimes/100000 )

	nowDate = GetDayTime()
	if nowDate ~= oldDate then
		takenTimes = 0
		SetMissionData( sceneId, selfId, MD_XINSANHUAN_3_DAYTIME, nowDate )
	end

	--5´Î
	if takenTimes >= x050222_g_TakeTimes then
		x050222_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_3}" )
		return 0
	end

	-- ¼ì²âÍæ¼ÒÐúng·ñ·ûºÏ¸Õ·ÅÆúÈÎÎñ
	local iTime = GetMissionData( sceneId, selfId, MD_XINSANHUAN_3_LAST )			-- ÉÏmµt ´Î·ÅÆúÈÎÎñtoÕ ðµ Ê±¼ä(µ¥Î»: mµt ¿ÌÖÓ)
	--begin modified by zhangguoxin 090208
	--local CurTime = GetHourTime()												-- µ±Ç°Ê±¼ä(µ¥Î»: mµt ¿ÌÖÓ)
	local CurTime = GetQuarterTime()												-- µ±Ç°Ê±¼ä(µ¥Î»: mµt ¿ÌÖÓ)
	--end modified by zhangguoxin 090208

	if iTime+1  >= CurTime then
		x050222_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_4}" )
		return 0
	end

	-- µÈc¤p´ïµ½75
	if GetLevel(sceneId, selfId) < 75 then
		x050222_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_5}" )
		return 0
	end

	-- ËùÓÐÐÄ·¨´ïµ½45
	if x050222_CheckAllXinfaLevel(sceneId, selfId, 45) == 0  then
		x050222_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_5}" )
		return 0
	end

	-- ÉíÉÏÈÎÎñÊýÁ¿Ðúng·ñ´ïµ½ÉÏÏÞ20cái
	if GetMissionCount( sceneId, selfId ) >= 20 then						
		x050222_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_6}" )
		return 0
	end
	
	if LuaFnGetAvailableItemCount( sceneId, selfId, x050222_g_xuanfouzhu ) < 1 then
		x050222_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_44}" )
		return 0
	end

	return 1
end

--**********************************
--Tiªp thø
--**********************************
function x050222_OnAccept( sceneId, selfId, targetId )
	-- ¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	AddMission( sceneId, selfId, x050222_g_MissionId, x050222_g_ScriptId, 1, 0, 0 )			-- kill¡¢area¡¢item
	if IsHaveMission( sceneId, selfId, x050222_g_MissionId ) <= 0 then
		return
	end

	-- mµt ÌìÖ»ÄÜÁì x050222_g_TakeTimes ´Î
	local DayTimes = GetMissionData( sceneId, selfId, MD_XINSANHUAN_3_DAYTIME )
	local takenTimes = floor( DayTimes/100000 )
	DayTimes = (takenTimes+1)*100000 + GetDayTime()
	SetMissionData( sceneId, selfId, MD_XINSANHUAN_3_DAYTIME, DayTimes )

--	SetMissionEvent( sceneId, selfId, x050222_g_MissionId, 4 ) -- ×¢²á OnLockedTarget ÊÂ¼þ

	local misIndex = GetMissionIndexByID( sceneId, selfId, x050222_g_MissionId )

	SetMissionByIndex( sceneId, selfId, misIndex, x050222_g_IsMissionOkFail, 0 )	-- ÈÎÎñÍê³ÉÇé¿öÖÃÎªÎ´Íê³É
	SetMissionByIndex( sceneId, selfId, misIndex, x050222_g_IsKillBossFire, 0 )
	SetMissionByIndex( sceneId, selfId, misIndex, x050222_g_Param_sceneid, -1 )		-- ¸±±¾ºÅÖÃÎª -1

	--ÏÔÊ¾ÄÚÈÝ¸æËßÍæ¼ÒÒÑ¾­Tiªp thøÁËÈÎÎñ
	BeginEvent( sceneId )
			AddText( sceneId, "#{LLFB_80816_47}" )
			AddNumText( sceneId, x050222_g_ScriptId, "Dung Nham Chi Ð¸a", 10, x050222_g_NumText_EnterCopyScene )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ÇëÇó½øÈë¸±±¾³¡¾°
--**********************************
function x050222_AcceptEnterCopyScene( sceneId, selfId, targetId )
	if IsHaveMission( sceneId, selfId, x050222_g_MissionId ) > 0 then					-- ÓÐÈÎÎñ²Å¿ÉÒÔ×ßÕâÀï
		local misIndex = GetMissionIndexByID( sceneId, selfId, x050222_g_MissionId )
		local copysceneid = GetMissionParam( sceneId, selfId, misIndex, x050222_g_Param_sceneid )
		if copysceneid >= 0 then												-- ½ø¹ý¸±±¾
		-- ½«×Ô¼º´«ËÍµ½¸±±¾³¡¾°
			if GetMissionParam( sceneId, selfId, misIndex, x050222_g_IsMissionOkFail ) == 2 then
				x050222_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_46}" )--ÌáÊ¾ÈÎÎñth¤t bÕi
			elseif IsCanEnterCopyScene( copysceneid, GetHumanGUID( sceneId, selfId ) ) == 1 then
				NewWorld( sceneId, selfId, copysceneid, x050222_g_Fuben_X, x050222_g_Fuben_Z )
			else
				x050222_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_46}" )--ÌáÊ¾ÈÎÎñth¤t bÕi
			end
			return
		end

		if LuaFnHasTeam( sceneId, selfId ) == 0 then
			x050222_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_48}" )
			return
		end

		if LuaFnIsTeamLeader( sceneId, selfId ) == 0 then
			x050222_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_10}" )
			return
		end
		
		local teamMemberCount = GetTeamMemberCount(sceneId, selfId);
		local nearMemberCount = GetNearTeamCount(sceneId, selfId);
		if not nearMemberCount or nearMemberCount < x050222_g_LimitMembers then
			x050222_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_49}" )
			return
		end

		if not teamMemberCount or teamMemberCount ~= nearMemberCount then
			x050222_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_12}" )
			return
		end
		
		local outmessage = "#{FB0}"
		local issatisfy = 1 --Ðúng·ñThöa mãnÌõ¼þ
		local memberID = 0
		local isAccept = 0 --Ðúng·ñÓÐÈËÒÑ¾­½ÓÁËÈÎÎñ
		local Acceptmessage = "" --ÒÑ¾­½ÓÁËÈÎÎñtoÕ ðµ ÌáÊ¾ÓëÆäËû¹«¹²ÌáÊ¾²»Í¬
		for	i = 0, nearMemberCount - 1 do
			memberID = GetNearTeamMember( sceneId, selfId, i )
			outmessage = outmessage.."#r#BThành viên  "..GetName(sceneId, memberID)
			if GetLevel(sceneId, memberID) >= 75 then
				outmessage = outmessage.."#{FB1}"
			else
				outmessage = outmessage.."#{FB2}"
				issatisfy = 0
			end
			
			if x050222_CheckAllXinfaLevel(sceneId, memberID, 45) == 1 then
				outmessage = outmessage.."#{FB3}"
			else
				outmessage = outmessage.."#{FB4}"
				issatisfy = 0
			end
			
			if IsHaveMission( sceneId, memberID, x050222_g_MissionId ) > 0 then
				local misIndex = GetMissionIndexByID( sceneId, memberID, x050222_g_MissionId )

			 	if GetMissionParam( sceneId, memberID, misIndex, x050222_g_IsMissionOkFail ) == 0 then
			 		if GetMissionParam( sceneId, memberID, misIndex, x050222_g_Param_sceneid ) == -1 then
						outmessage = outmessage.."#{FB5}"
					else
						outmessage = outmessage.."#{FB6}"
						issatisfy = 0
						
						if isAccept == 0 then
							Acceptmessage = "#G"..GetName(sceneId, memberID)
						else
							Acceptmessage = Acceptmessage.."#W, #G"..GetName(sceneId, memberID)
						end
						isAccept = 1
					end
				else
					outmessage = outmessage.."#{FB6}"
					issatisfy = 0
				end
			else
				outmessage = outmessage.."#{FB6}"
				issatisfy = 0
			end
		end
		
		if isAccept == 1 then
			Acceptmessage = "#{FB7}"..Acceptmessage.."#{FB8}"
			x050222_NotifyFailBox( sceneId, selfId, targetId, Acceptmessage)
			return
		end
		
		if issatisfy == 0 then
			x050222_NotifyFailBox( sceneId, selfId, targetId, outmessage)
			return
		end
		
		--¼ÆËã¸±±¾ÖÐ¹ÖtoÕ ðµ µÈc¤p....
		local mylevel = 0
		local memId
		local tempMemlevel = 0
		local level0 = 0
		local level1 = 0
	
		for	i = 0, nearMemberCount - 1 do
			memId = GetNearTeamMember(sceneId, selfId, i)
			tempMemlevel = GetLevel(sceneId, memId)
			level0 = level0 + (tempMemlevel ^ 4 )
			level1 = level1 + (tempMemlevel ^ 3 )
		end
	
		if level1 == 0 then
			mylevel = 0
		else
			mylevel = level0/level1
		end
	
		if nearMemberCount == -1 then
			mylevel = GetLevel(sceneId, selfId)
		end
	
		--¼ÆËãµÈc¤p¶Î....
		local PlayerMaxLevel = GetHumanMaxLevelLimit()
		local iniLevel
		if mylevel < 10 then
			iniLevel = 1
		elseif mylevel < PlayerMaxLevel then
			iniLevel = floor((mylevel-75)/5) + 1
			if iniLevel < 0 then
				iniLevel = 1
			elseif iniLevel > 10 then
				iniLevel = 10
			end
		else
			iniLevel = 10
		end

		local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
		LuaFnSetSceneLoad_Map( sceneId, x050222_g_CopySceneMap )						-- µØÍ¼Ðúng±ØÐëÑ¡È¡toÕ ðµ ,¶øÇÒ±ØÐëTÕi Config/SceneInfo.iniÀïÅäÖÃºÃ
		LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
		LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x050222_g_NoUserTime * 1000 )
		LuaFnSetCopySceneData_Timer( sceneId, x050222_g_TickTime * 1000 )
		LuaFnSetCopySceneData_Param( sceneId, 0, x050222_g_CopySceneType )				-- ÉèÖÃ¸±±¾Êý¾Ý,ÕâÀï½«0ºÅË÷ÒýtoÕ ðµ Êý¾ÝÉèÖÃÎª999,ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êý×Ö×Ô¶¨Òå)
		LuaFnSetCopySceneData_Param( sceneId, 1, x050222_g_ScriptId )					-- ½«1ºÅÊý¾ÝÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼þ½Å±¾ºÅ
		LuaFnSetCopySceneData_Param( sceneId, 2, 0 )							-- ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊý
		LuaFnSetCopySceneData_Param( sceneId, 3, -1 )							-- ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
		LuaFnSetCopySceneData_Param( sceneId, 4, 0 )							-- ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å,1¹Ø±Õ
		LuaFnSetCopySceneData_Param( sceneId, 5, 0 )							-- ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊý
		LuaFnSetCopySceneData_Param( sceneId, 6, GetTeamId( sceneId, selfId ) )	-- ±£´æ¶ÓÎéºÅ
		LuaFnSetCopySceneData_Param( sceneId, 7, mylevel )				-- ¶ÓÎétoÕ ðµ »ù´¡µÈc¤p
		LuaFnSetCopySceneData_Param( sceneId, 8, iniLevel )				-- 
		LuaFnSetCopySceneData_Param( sceneId, 9, 0 )							-- 
		LuaFnSetCopySceneData_Param( sceneId, 10, 0 )							-- 
		LuaFnSetCopySceneData_Param( sceneId, 11, 0 )							-- 
		LuaFnSetCopySceneData_Param( sceneId, 12, 0 )							-- 
		LuaFnSetCopySceneData_Param( sceneId, 13, 0 )							-- 

		LuaFnSetSceneLoad_Area( sceneId, x050222_g_CopySceneArea )

		LuaFnSetSceneLoad_Monster( sceneId, x050222_g_CopySceneMonsterIni )

		local bRetSceneID = LuaFnCreateCopyScene( sceneId )						-- ³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êý
		if bRetSceneID > 0 then
			x050222_NotifyFailTips( sceneId, selfId, "D¸ch chuy¬n thành công, vui lòng ðþi giây lát!" )
			AuditXinSanHuanCreateFuben( sceneId, selfId, 3 )
		else
			x050222_NotifyFailTips( sceneId, selfId, "S¯ lßþng bän sao ðã ðªn gi¾i hÕn, ð« ngh¸ lát næa thØ lÕi!" )
		end
	end
end

--**********************************
--¸±±¾ÊÂ¼þ
--**********************************
function x050222_OnCopySceneReady( sceneId, destsceneId )
	LuaFnSetCopySceneData_Param( destsceneId, 3, sceneId )				-- ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	local leaderguid = LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local leaderObjId = LuaFnGuid2ObjId( sceneId, leaderguid )

	if leaderObjId == -1 then											-- ÕÒ²»µ½¸ÃÍæ¼Ò
		return
	end

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then		-- ´¦ÓÚÎÞ·¨Ö´ÐÐÂß¼­toÕ ðµ ×´Ì¬
		return
	end

	--È¡ ði¬mÍæ¼Ò¸½½ütoÕ ðµ ¶ÓÓÑÊýÁ¿(°üÀ¨×Ô¼º)
	local i, nearMemberCount, member
	local members = {}
	local validmembercount = 0

	nearMemberCount = GetNearTeamCount( sceneId, leaderObjId )
	for i = 0, nearMemberCount - 1 do
		member = GetNearTeamMember( sceneId, leaderObjId, i )
		if IsHaveMission( sceneId, member, x050222_g_MissionId ) > 0 then		-- ÓÐÈÎÎñ
			validmembercount = validmembercount + 1
			members[validmembercount] = member
		end
	end

	local misIndex  
	for i = 1, validmembercount do 
		if IsHaveMission( sceneId, members[i], x050222_g_MissionId ) > 0 then
			misIndex = GetMissionIndexByID( sceneId, members[i], x050222_g_MissionId )
			if LuaFnIsCanDoScriptLogic( sceneId, members[i] ) == 1 then			-- ´¦ÓÚ¿ÉÒÔÖ´ÐÐÂß¼­toÕ ðµ ×´Ì¬
				--½«ÈÎÎñtoÕ ðµ µÚ1ºÅÊý¾ÝÉèÖÃÎª¸±±¾toÕ ðµ ³¡¾°ºÅ  
				SetMissionByIndex( sceneId, members[i], misIndex, x050222_g_Param_sceneid, destsceneId )
		--		SetMissionEvent( sceneId, members[i], x050222_g_MissionId, 0 )			-- ¹ØÐÄÉ±¹ÖÊÂ¼þ
				NewWorld( sceneId, members[i], destsceneId, x050222_g_Fuben_X, x050222_g_Fuben_Z )
			end  
		end
	end  
end  

--**********************************  
--ÓÐÍæ¼Ò½øÈë¸±±¾ÊÂ¼þ  
--**********************************  
function x050222_OnPlayerEnter( sceneId, selfId )  
end

--**********************************
--objËÀÍö
--**********************************
function x050222_OnDie( sceneId, objId, selfId )--Cái này selfId¿ÉÄÜÐúng³èÎï
	local objType = GetCharacterType( sceneId, selfId )
	if objType == 3 then --Èç¹ûÐúng³èÎïtoÕ ðµ »°,°ÑCái này IDÉèÖÃ³ÉÖ÷ÈËID
		selfId = GetPetCreator( sceneId, selfId )
	end
	
	if selfId == -1 then
		return
	end
	
	--Ðúng·ñÐúng¸±±¾
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	--Ðúng·ñÐúngËùC¥n toÕ ðµ ¸±±¾
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x050222_g_CopySceneType then
		return
	end

	--¸±±¾¹Ø±Õ±êÖ¾
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	if leaveFlag == 1 then														-- Èç¹û¸±±¾ÒÑ¾­±»ÖÃ³É¹Ø±Õ×´Ì¬,ÔòÉ±¹ÖÎÞÐ§
		return
	end

	--È¡ ði¬mµ±Ç°³¡¾°ÀïtoÕ ðµ ÈËÊý
	local num = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	
	for i = 0, num - 1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	--È¡ ði¬mÉ±ËÀ¹ÖÎïtoÕ ðµ name
	local szName = GetName( sceneId, objId )

	if szName == x050222_g_BossHuoYanYao then
		local misIndex = 0
		for i = 0, num - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then						-- ²»TÕi ³¡¾°toÕ ðµ ²»×ö´Ë²Ù×÷
				x050222_NotifyFailTips( sceneId, mems[i], "Møc ti®u nhi®m vø" )
				x050222_NotifyFailTips( sceneId, mems[i], "Giªt chªt "..x050222_g_BossHuoYanYao..": 1/1" )
				if IsHaveMission( sceneId, mems[i], x050222_g_MissionId ) > 0 then
					misIndex = GetMissionIndexByID( sceneId, mems[i], x050222_g_MissionId )
					SetMissionByIndex( sceneId, mems[i], misIndex, x050222_g_IsKillBossFire, 1 )
					SetMissionByIndex( sceneId, mems[i], misIndex, x050222_g_IsMissionOkFail, 1 )	-- ÈÎÎñÍê³É
				end
			end
		end

		local BroadcastMsg = "#W#{_INFOUSR$N}#{LLFB_80816_51}#{LLFB_80816_52}"
		BroadcastMsg = gsub( BroadcastMsg, "%$N", GetName( sceneId, selfId ) )
		BroadMsgByChatPipe( sceneId, selfId, BroadcastMsg, 4 )
		
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )--ÉèÖÃÀë¿ª³¡¾°
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x050222_OnKillObject( sceneId, selfId, objdataId, objId )						-- ²ÎÊýÒâË¼: ³¡¾°ºÅ¡¢Íæ¼ÒobjId¡¢¹ÖÎï±íÎ»ÖÃºÅ¡¢¹ÖÎïobjId
end

--**********************************
--ÓÐÍæ¼ÒTÕi ¸±±¾ÖÐËÀÍöÊÂ¼þ
--**********************************
function x050222_OnHumanDie( sceneId, selfId, killerId )
end

--**********************************
--Àë¿ª¸±±¾
--**********************************
function x050222_Exit( sceneId, selfId )
	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )				-- È¡ ði¬m¸±±¾Èë¿Ú³¡¾°ºÅ
	NewWorld( sceneId, selfId, oldsceneId, x050222_g_Back_X, x050222_g_Back_Z )
end

--**********************************
--¼ÌÐø
--**********************************
function x050222_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x050222_g_MissionName )
		AddText( sceneId, "T¯t tiªp tøc" )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x050222_g_ScriptId, x050222_g_MissionId )
end

--**********************************
--·ÅÆú
--**********************************
function x050222_OnAbandon( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x050222_g_MissionId ) == 0 then
		return
	end
	
	--C¥n ¿Û³ýÐþ·ðÖé,Ö»¿Ûmµt cái
	if LuaFnDelAvailableItem( sceneId, selfId, x050222_g_xuanfouzhu, 1 ) > 0 then
		local misIndex = GetMissionIndexByID( sceneId, selfId, x050222_g_MissionId )
		local copyscene = GetMissionParam( sceneId, selfId, misIndex, x050222_g_Param_sceneid )
	
		-- ÉèÖÃ·ÅÆúÁ¬»·ÈÎÎñtoÕ ðµ Ê±¼ä
		--begin modified by zhangguoxin 090208
		--local CurTime = GetHourTime()											-- µ±Ç°Ê±¼ä
		local CurTime = GetQuarterTime()											-- µ±Ç°Ê±¼ä
		--end modified by zhangguoxin 090208
		SetMissionData( sceneId, selfId, MD_XINSANHUAN_3_LAST, CurTime )
	
		--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
		DelMission( sceneId, selfId, x050222_g_MissionId )
		
		--Ðúng·ñÐúngËùC¥n toÕ ðµ ¸±±¾
		local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	
		if sceneId == copyscene and fubentype == x050222_g_CopySceneType then											-- Èç¹ûTÕi ¸±±¾ÀïÉ¾³ýÈÎÎñ,ÔòÖ±½Ó´«ËÍ»Ø
			x050222_NotifyFailTips( sceneId, selfId, "Nhi®m vø th¤t bÕi!" )
			local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		-- È¡ ði¬m¸±±¾Èë¿Ú³¡¾°ºÅ
			NewWorld( sceneId, selfId, oldsceneId, x050222_g_Back_X, x050222_g_Back_Z )
		end
	end
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼þ
--**********************************
function x050222_OnCopySceneTimer( sceneId, nowTime )
	--¸±±¾Ê±ÖÓ¶ÁÈ¡¼°ÉèÖÃ
	local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )						-- È¡ ði¬mÒÑ¾­Ö´ÐÐtoÕ ðµ ¶¨Ê±´ÎÊý
	TickCount = TickCount + 1
	LuaFnSetCopySceneData_Param( sceneId, 2, TickCount )							-- ÉèÖÃÐÂtoÕ ðµ ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊý

	--¸±±¾¹Ø±Õ±êÖ¾
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )

	local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	local i

	for i = 0, membercount - 1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

--	local LevelGap = LuaFnGetCopySceneData_Param( sceneId, CopyScene_LevelGap )

	if leaveFlag == 1 then															-- C¥n Àë¿ª
		--Àë¿ªµ¹¼ÆÊ±¼ätoÕ ðµ ¶ÁÈ¡ºÍÉèÖÃ
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, 5 )
		leaveTickCount = leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, 5, leaveTickCount )

		if leaveTickCount >= x050222_g_CloseTick then										-- µ¹¼ÆÊ±¼äµ½,´ó¼Ò¶¼³öÈ¥°É
			--½«µ±Ç°¸±±¾³¡¾°ÀïtoÕ ðµ ËùÓÐÈË´«ËÍ»ØÔ­À´½øÈëÊ±ºòtoÕ ðµ ³¡¾°
			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
					x050222_Exit( sceneId, mems[i] )
				end
			end
		else
			--Í¨Öªµ±Ç°¸±±¾³¡¾°ÀïtoÕ ðµ ËùÓÐÈË,³¡¾°¹Ø±Õµ¹¼ÆÊ±¼ä
			local strText = format( "BÕn s¨ r¶i khöi hi®n trß¶ng sau %d giây!", ( x050222_g_CloseTick - leaveTickCount ) * x050222_g_TickTime )

			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
					x050222_NotifyFailTips( sceneId, mems[i], strText )
				end
			end
		end
	elseif TickCount == x050222_g_LimitTotalHoldTime then									-- ¸±±¾×ÜÊ±¼äÏÞÖÆµ½ÁË
		--´Ë´¦ÉèÖÃ¸±±¾ÈÎÎñÓÐÊ±¼äÏÞÖÆtoÕ ðµ Çé¿ö,µ±Ê±¼äµ½ºó´¦Àí...
		local misIndex = 0
		for	i = 0, membercount - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
				x050222_NotifyFailTips( sceneId, mems[i], "Ðã hªt th¶i gian, r¶i cänh..." )
				if IsHaveMission( sceneId, mems[i], x050222_g_MissionId ) > 0 then
					misIndex = GetMissionIndexByID( sceneId, mems[i], x050222_g_MissionId )
					if GetMissionParam( sceneId, mems[i], misIndex, x050222_g_IsMissionOkFail ) ~= 1 then
						SetMissionByIndex( sceneId, mems[i], misIndex, x050222_g_IsMissionOkFail, 2 )	-- Èç¹ûÃ»ÓÐÍê³É¾ÍÉèÖÃÎªth¤t bÕi
					end
				end
				x050222_Exit( sceneId, mems[i] )
			end
		end
		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )
	elseif TickCount == 1 then									-- Ë¢¹Ö
		local mylevel = LuaFnGetCopySceneData_Param( sceneId, 7 )
		local iniLevel = LuaFnGetCopySceneData_Param( sceneId, 8 )

		local HuoYanYaoID = BossHuoYanYaoIDTbl[1]
		if BossHuoYanYaoIDTbl[iniLevel] then
			HuoYanYaoID = BossHuoYanYaoIDTbl[iniLevel]
		end
		
		local SuiCongID = MonsterSuiCongIDTbl[1]
		if MonsterSuiCongIDTbl[iniLevel] then
			SuiCongID = MonsterSuiCongIDTbl[iniLevel]
		end

		local monsterID = LuaFnCreateMonster( sceneId, HuoYanYaoID, x050222_g_BossHuoYanYaoPos[1], x050222_g_BossHuoYanYaoPos[2], 14, 269, 050222 )
		SetLevel( sceneId, monsterID, mylevel+3 )--µÈc¤p±Èmµt °ãÐ¡¹Ö¸ß3c¤p
		SetCharacterName( sceneId, monsterID, x050222_g_BossHuoYanYao )
		MonsterTalk(sceneId,monsterID,"Dung Nham Chi Ð¸a", "Ngß½i dám xông vào n½i này, các ngß½i s¨ b¸ thiêu thành tro bøi! Ha! Ha! Ha..")
		
		for i = 1, getn( x050222_g_MonsterSuiCongPos ) do
			monsterID = LuaFnCreateMonster( sceneId, SuiCongID, x050222_g_MonsterSuiCongPos[i][1], x050222_g_MonsterSuiCongPos[i][2], 14, -1, 050222 )
			SetLevel( sceneId, monsterID, mylevel )
			SetCharacterName( sceneId, monsterID, x050222_g_MonsterSuiCong )
		end

	else
		--¶¨Ê±¼ì²é¶ÓÎé³ÉÔ±toÕ ðµ ¶ÓÎéºÅ,Èç¹û²»·ûºÏ,ÔòÌß³ö¸±±¾
		local oldteamid = LuaFnGetCopySceneData_Param( sceneId, 6 )					-- È¡ ði¬m±£´ætoÕ ðµ ¶ÓÎéºÅ

		for	i = 0, membercount - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 and oldteamid ~= GetTeamId( sceneId, mems[i] ) then
				x050222_NotifyFailTips( sceneId, mems[i], "BÕn không còn trong ðµi ngû, r¶i cänh..." )
				x050222_Exit( sceneId, mems[i] )
			end
		end
		
		--Ã¿2 phútÌáÊ¾mµt ´Î,µ¥Êý¼ÆÊ±
		if mod( TickCount*x050222_g_TickTime, 60 ) == 0 and mod( TickCount*x050222_g_TickTime+60, 120 ) == 0 then
			for	i = 0, membercount - 1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
					local Minute = floor( (360 - TickCount)*x050222_g_TickTime/60 )
					x050222_NotifyFailTips( sceneId, mems[i], "Th¶i gian còn lÕi "..Minute.." phút" )
				end
			end	
		end
		
	end
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x050222_CheckSubmit( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x050222_g_MissionId ) <= 0 then
		return 0
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x050222_g_MissionId )				--  ði¬mµ½ÈÎÎñtoÕ ðµ ÐòÁÐºÅ
	if GetMissionParam( sceneId, selfId, misIndex, x050222_g_IsMissionOkFail ) ~= 1 then
		return 0
	end

	if LuaFnGetAvailableItemCount( sceneId, selfId, x050222_g_xuanfouzhu ) < 1 then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x050222_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x050222_g_Name then		--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
		return
	end
	
	if x050222_CheckSubmit( sceneId, selfId ) == 1 then
		--x050222_NotifyFailBox( sceneId, selfId, targetId, x050222_g_MissionComplete )
		if LuaFnDelAvailableItem( sceneId, selfId, x050222_g_xuanfouzhu, 1 ) > 0 then--C¥n ¿Û³ýÐþ·ðÖé,Ö»¿Ûmµt cái
			DelMission( sceneId, selfId, x050222_g_MissionId )
		
			local exp = GetLevel( sceneId, selfId ) * 3323 - 45613 --²Î¿¼ÁËÀÏÈý»·¸±±¾toÕ ðµ Kinh nghi®m¼ÆËã
			-- ðÕt ðßþcKinh nghi®m
			if exp < 1 then
				exp = 1
			end
			AddExp(sceneId, selfId, exp)

			-- ÈÎÎñ»mµt î¶¯Í³¼Æ
			LuaFnAuditQuest(sceneId, selfId, "Lâu Lan liên hoàn nhi®m vø: Dung Nham Chi Ð¸a")
		end
	end
end

--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x050222_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ÆÁÄ»ÖÐ¼äÐÅÏ¢ÌáÊ¾
--**********************************
function x050222_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--¼ì²âÐÄ·¨Ðúng²»¹»½ÓÈÎÎñ
--**********************************
function x050222_CheckAllXinfaLevel(sceneId, selfId, level)
	local nMenpai = GetMenPai(sceneId, selfId)
	if nMenpai<0 or nMenpai>8   then
		return 0
	end
	
	for i=1, 6 do
		local nXinfaLevel = LuaFnGetXinFaLevel(sceneId, selfId, nMenpai*6 + i)
		if nXinfaLevel < level    then
			return 0
		end
	end
	return 1
end

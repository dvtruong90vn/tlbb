
--√≈≈…“˝µº»ŒŒÒ

--MisDescBegin
--Ω≈±æ∫≈
x210239_g_ScriptId = 210239

--Ω” ‹»ŒŒÒNPC Ù–‘
x210239_g_Position_X=160.0895
x210239_g_Position_Z=156.9309
x210239_g_SceneID=2
x210239_g_AccomplishNPC_Name="TriÆu ThiÍn Sﬂ"

--»ŒŒÒ∫≈
x210239_g_MissionId = 719
--«∞÷√»ŒŒÒID
x210239_g_MissionIdPer = 718

--ƒø±ÍNPC
x210239_g_Name	="TriÆu ThiÍn Sﬂ"

--»ŒŒÒπÈ¿‡
x210239_g_MissionKind = 13

--»ŒŒÒµ»º∂
x210239_g_MissionLevel = 10

-- «∑Ò «æ´”¢»ŒŒÒ
x210239_g_IfMissionElite = 0

--»ŒŒÒ√˚
x210239_g_MissionName="Danh mÙn chÌnh ph·i"
--»ŒŒÒ√Ë ˆ
x210239_g_MissionInfo  = ""
x210239_g_MissionInfo1 = "$N, cuØi c˘ng c·c h’ „ ™n. #rTuyÆt l°m tuyÆt l°m, gi∂ ‚y cÂn cΩ c¸a c·c h’ „ luyÆn tﬂΩng Øi vÊng ch°c. Vßy tæi cÿu ’i mÙn ph·i h˜c vı cÙng cao th‚m hΩn c˚ng l‡ chuyÆn ﬂΩng nhiÍn thÙi."
x210239_g_MissionInfo2 = "–˙ng, c·c h’ nghe khÙng sai, trong truy´n thuy™t c¸a cÿu ’i mÙn ph·i. Ph·i Tinh T˙c l‡ t‚y vÒc ’i tÙng, ph·i ThiÍn SΩn l‡ t‚y b°c kœ ba, ph·i ThiÍn Long l‡ thiÍn nam chi tr¯, ph·i TiÍu Dao l‡ xu§t th•n nhßp qu÷, ph·i Nga My l‡ v’n phßt tri´u tÙng, ph·i Vı –ang l‡ ’o cØt tiÍn phong, Minh Gi·o l‡ thiÍn h’ Æ nh§t gi·o, C·i Bang l‡ thiÍn h’ Æ nh§t bang, ph·i Thi™u L‚m l‡ th·i sΩn b°c ¶u c¸a vı l‚m thiÍn h’."
x210239_g_MissionInfo3 = "D˘ c·c h’ b·i nhßp mÙn ph·i n‡o, cØt l‡ bﬂæc trÍn con ﬂ∂ng ’i ’o quang minh chÌnh ’i thÏ m§y l„o gi‡ ch˙ng ta c˚ng ﬂ˛c thΩm l‚y."
x210239_g_MissionInfo4 = "Th™ n‡y nhÈ, c·c h’ i tÏm ngﬂ∂i thu nhßn c¸a cÿu ’i mÙn ph·i, nghe h˜ k¨ £c trﬂng c¸a c·c ’i mÙn ph·i, sau Û ch˜n l§y 1 mÙn ph·i ¨ gia nhßp. –˛i ™n khi c·c h’ tr∑ th‡nh Æ tÿ c¸a cÿu ’i mÙn ph·i, h„y tæi tÏm ta, ta s® m∑ tiÆc m◊ng th‡nh cÙng."

--»ŒŒÒƒø±Í
x210239_g_MissionTarget="#{MIS_dali_ZTS_001}"
--Œ¥ÕÍ≥…»ŒŒÒµƒnpc∂‘ª∞
x210239_g_ContinueInfo="–„ th‡nh Æ tÿ c¸a mµt trong cÿu ’i mÙn ph·i chﬂa?"
--Ã·Ωª ±npcµƒª∞
x210239_g_MissionComplete="Xem ra c·c h’ „ ch˜n con ﬂ∂ng ˙ng, h„y hﬂæng th∆ng tæi tﬂΩng lai!"


x210239_g_ItemBonus={}


x210239_g_IsMissionOkFail = 0		--±‰¡øµƒµ⁄0Œª
x210239_g_Custom	= { {id="–„ gia nhßp mÙn ph·i",num=1} }--±‰¡øµƒµ⁄1Œª

--x210239_g_MenpaiArray = {}


--MisDescEnd


--»°µ√¥À√≈≈…≈≈–Ú”¶µ√µƒæ≠—È÷µ°£
function x210239_GetExpByMenpaiIndex( MenPaiIndex )
    --∏˘æ›√≈≈…µƒ≈≈√˚£¨ªÒµ√”¶µ√µƒæ≠—È÷µ°£

    local ReturnVal = 0

    if( 0 == MenPaiIndex ) then
        ReturnVal = 3000
    end
    if( 1 == MenPaiIndex ) then
        ReturnVal = 2900
    end
    if( 2 == MenPaiIndex ) then
        ReturnVal = 2600
    end
    if( 3 == MenPaiIndex ) then
        ReturnVal = 2500
    end
    if( 4 == MenPaiIndex ) then
        ReturnVal = 2200
    end
    if( 5 == MenPaiIndex ) then
        ReturnVal = 2000
    end
    if( 6 == MenPaiIndex ) then
        ReturnVal = 1200
    end
    if( 7 == MenPaiIndex ) then
        ReturnVal = 1000
    end
    if( 8 == MenPaiIndex ) then
        ReturnVal = 900
    end

    return ReturnVal

end


--0…Ÿ¡÷ 1√˜ΩÃ 2ÿ§∞Ô 3Œ‰µ± 4∂Î·“ 5–«Àﬁ 6ÃÏ¡˙ 7ÃÏ…Ω 8œ˚“£
--∏˘æ›√≈≈…ID»°µ√√≈≈…√˚≥∆£®∫∫◊÷£©
function x210239_GetMenpaiName( Menpai)
    local Name = "KhÙng CÛ"

    if( 0 == Menpai ) then
         Name = "Thi™u L‚m"
    elseif( 1 == Menpai ) then
         Name = "Minh Gi·o"
     elseif( 2 == Menpai ) then
         Name = "C·i Bang"
    elseif( 3 == Menpai ) then
         Name = "Vı –ang"
    elseif( 4 == Menpai ) then
         Name = "Nga My"
    elseif( 5 == Menpai ) then
         Name = "Tinh T˙c"
    elseif( 6 == Menpai ) then
         Name = "ThiÍn Long"
    elseif( 7 == Menpai ) then
         Name = "ThiÍn SΩn"
    elseif( 8 == Menpai ) then
         Name = "TiÍu Dao"
    end

    return Name

end

function x210239_MenpaiSort()
    local MenpaiArray = {}
    local Max0 = 3
    local ZeroCount =0

    for i=1, 9 do
        MenpaiArray[ i ] = LuaFnGetWorldGlobalData( Max0 - 1 + i )
        if( 0 == MenpaiArray[ i ] ) then
            ZeroCount = ZeroCount + 1
        end
    end

    if( 9 == ZeroCount ) then
        MenpaiArray[ 1 ] = 6
        MenpaiArray[ 2 ] = 2
        MenpaiArray[ 3 ] = 7
        MenpaiArray[ 4 ] = 5
        MenpaiArray[ 5 ] = 8
        MenpaiArray[ 6 ] = 0
        MenpaiArray[ 7 ] = 3
        MenpaiArray[ 8 ] = 4
        MenpaiArray[ 9 ] = 1
    end

    return MenpaiArray

end

--±£¥Ê√≈≈…≈≈¡–£¨ π”√»ŒŒÒ ˝æ›µ⁄3,4,5,6,7
function x210239_SaveMenpaiArray( sceneId, selfId, MenpaiArray )
    --0…Ÿ¡÷ 1√˜ΩÃ 2ÿ§∞Ô 3Œ‰µ± 4∂Î·“ 5–«Àﬁ 6ÃÏ¡˙ 7ÃÏ…Ω 8Â–“£
		-- π”√»ŒŒÒ ˝æ›3,4,5,6,7”√¿¥¥Ê∑≈√≈≈…≈≈√˚°£

    local MixDWORD = 0
    local CurMenpai
    local misIndex = GetMissionIndexByID(sceneId,selfId,x210239_g_MissionId)

    MixDWORD = SetHighWord( MixDWORD, MenpaiArray[ 1 ] )
    MixDWORD = SetLowWord ( MixDWORD, MenpaiArray[ 2 ] )
    SetMissionByIndex( sceneId, selfId, misIndex, 3, MixDWORD)   --»À ˝◊Ó∂‡√≈≈…£¨∑≈‘⁄»ŒŒÒ ˝æ›µ⁄3∏ˆ ˝æ›µƒ∏ﬂ16Œª£¨µ⁄∂˛∑≈‘⁄µ⁄3∏ˆ ˝æ›µƒµÕ16Œª

    MixDWORD = SetHighWord( MixDWORD, MenpaiArray[ 3 ] )
    MixDWORD = SetLowWord ( MixDWORD, MenpaiArray[ 4 ] )
    SetMissionByIndex( sceneId, selfId, misIndex, 4, MixDWORD)   --»À ˝µ⁄»˝√≈≈…£¨∑≈‘⁄»ŒŒÒ ˝æ›µ⁄4∏ˆ ˝æ›µƒ∏ﬂ16Œª£¨µ⁄Àƒ∑≈‘⁄µ⁄4∏ˆ ˝æ›µƒµÕ16Œª

    MixDWORD = SetHighWord( MixDWORD, MenpaiArray[ 5 ] )
    MixDWORD = SetLowWord ( MixDWORD, MenpaiArray[ 6 ] )
    SetMissionByIndex( sceneId, selfId, misIndex, 5, MixDWORD)   --»À ˝µ⁄ŒÂ√≈≈…£¨∑≈‘⁄»ŒŒÒ ˝æ›µ⁄5∏ˆ ˝æ›µƒ∏ﬂ16Œª£¨µ⁄¡˘∑≈‘⁄µ⁄5∏ˆ ˝æ›µƒµÕ16Œª

    MixDWORD = SetHighWord( MixDWORD, MenpaiArray[ 7 ] )
    MixDWORD = SetLowWord ( MixDWORD, MenpaiArray[ 8 ] )
    SetMissionByIndex( sceneId, selfId, misIndex, 6, MixDWORD)   --»À ˝µ⁄∆ﬂ√≈≈…£¨∑≈‘⁄»ŒŒÒ ˝æ›µ⁄6∏ˆ ˝æ›µƒ∏ﬂ16Œª£¨µ⁄∞À∑≈‘⁄µ⁄6∏ˆ ˝æ›µƒµÕ16Œª

    MixDWORD = SetHighWord( MixDWORD, MenpaiArray[ 9 ] )
    MixDWORD = SetLowWord ( MixDWORD, 0 )
    SetMissionByIndex( sceneId, selfId, misIndex, 7, MixDWORD)   --»À ˝µ⁄æ≈√≈≈…£¨∑≈‘⁄»ŒŒÒ ˝æ›µ⁄7∏ˆ ˝æ›µƒ∏ﬂ16Œª£¨µÕ16Œª÷√0

end


--**********************************
--»ŒŒÒ»Îø⁄∫Ø ˝
--**********************************
function x210239_OnDefaultEvent( sceneId, selfId, targetId )

   --x210239_GetMenpaiIndex( 9 )
  --»Áπ˚ÕÊº“ÕÍ≥…π˝’‚∏ˆ»ŒŒÒ
  if (IsMissionHaveDone(sceneId,selfId,x210239_g_MissionId) > 0 ) then
    return

	elseif( IsHaveMission(sceneId,selfId,x210239_g_MissionId) > 0)  then
		--∑¢ÀÕ»ŒŒÒ–Ë«Ûµƒ–≈œ¢
		BeginEvent(sceneId)
			AddText(sceneId, x210239_g_MissionName)
			AddText(sceneId, x210239_g_ContinueInfo)
		EndEvent( )
		local bDone = x210239_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x210239_g_ScriptId,x210239_g_MissionId,bDone)

	--¬˙◊„»ŒŒÒΩ” ’Ãıº˛
  elseif x210239_CheckAccept(sceneId,selfId) > 0 then
		--∑¢ÀÕ»ŒŒÒΩ” ‹ ±œ‘ æµƒ–≈œ¢
		local MenpaiArray = x210239_MenpaiSort()

		BeginEvent(sceneId)
			AddText(sceneId,x210239_g_MissionName)
			AddText(sceneId,x210239_g_MissionInfo1)
			AddText(sceneId,x210239_g_MissionInfo2)
			AddText(sceneId,x210239_g_MissionInfo3)
			AddText(sceneId,x210239_g_MissionInfo4)


			local MixStr1 = ""
			local MixStr2 = ""
			for i=1, 9 do
			    if( i <= 5 ) then
			        local MenpaiName = x210239_GetMenpaiName( MenpaiArray[ i ] )
			        local MenpaiExp  = x210239_GetExpByMenpaiIndex( i - 1 )
			        local Str = "N™u c·c h’ gia nhßp " ..MenpaiName.. ", c·c h’ s® ’t ﬂ˛c "..MenpaiExp.." i¨m thﬂ∑ng kinh nghiÆm."
			        MixStr1 = MixStr1..Str.."#r"
			    end

			    if( i>5 and i<=9 ) then
			        local MenpaiName = x210239_GetMenpaiName( MenpaiArray[ i ] )
			        local MenpaiExp  = x210239_GetExpByMenpaiIndex( i - 1 )
			        local Str = "N™u c·c h’ gia nhßp " ..MenpaiName.. ", c·c h’ s® ’t ﬂ˛c "..MenpaiExp.." i¨m thﬂ∑ng kinh nghiÆm."
			        MixStr2 = MixStr2..Str.."#r"
			    end

			end
			AddText( sceneId, MixStr1 )
      AddText( sceneId, MixStr2 )

			--AddText(sceneId,"#{M_MUBIAO}")
			AddText(sceneId,"#{M_MUBIAO}#r"..x210239_g_MissionTarget)

			--AddText(sceneId,"#{M_SHOUHUO}")
			--AddMoneyBonus( sceneId, x210239_g_MoneyBonus )
			--for i, item in x210239_g_ItemBonus do
			--	AddItemBonus( sceneId, item.id, item.num )
			--end
		EndEvent( )
		--    DispatchMissionInfo(sceneId,selfId,targetId,x210239_g_ScriptId,x210239_g_MissionId)
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x210239_g_ScriptId,x210239_g_MissionId, 0 )

		--x210239_OnAccept( sceneId, selfId )
		x210239_DirectAccept( sceneId, selfId, MenpaiArray )

	end
end


--÷±Ω”Ω” ‹»ŒŒÒ£¨√ª”–æ≠π˝ΩÁ√Êµ„ª˜
function x210239_DirectAccept( sceneId, selfId, MenpaiArray )
	--»Áπ˚ÕÊº“ÕÍ≥…π˝’‚∏ˆ»ŒŒÒ
	if IsMissionHaveDone(sceneId,selfId,x210239_g_MissionId) > 0 then
		return
	end

	-- º”»Î»ŒŒÒµΩÕÊº“¡–±Ì
	local ret = AddMission( sceneId,selfId, x210239_g_MissionId, x210239_g_ScriptId, 1, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNhßt k˝ nhiÆm v¯ c¸a c·c h’ „ •y" , MSG2PLAYER_PARA )
		return
	end

	Msg2Player(  sceneId, selfId,"Nhßn nhiÆm v¯: #Y" .. x210239_g_MissionName, MSG2PLAYER_PARA )


	local misIndex = GetMissionIndexByID(sceneId,selfId,719)
	local Menpai = LuaFnGetMenPai( sceneId, selfId )

  if( Menpai >= 0 and Menpai < 9 ) then
		  SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)    --»ŒŒÒ◊∑◊Ÿ«Èøˆ±Í÷æ 1/1
	    SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)    --»ŒŒÒÕÍ≥…«Èøˆ
  end

  x210239_SaveMenpaiArray( sceneId, selfId, MenpaiArray )

end



--**********************************
--¡–æŸ ¬º˛
--**********************************
function x210239_OnEnumerate( sceneId, selfId, targetId )

	--»Áπ˚ÕÊº“ÕÍ≥…π˝’‚∏ˆ»ŒŒÒ
	if IsMissionHaveDone(sceneId,selfId,x210239_g_MissionId) > 0 then
		return
	--»Áπ˚“—Ω”¥À»ŒŒÒ
	elseif IsHaveMission(sceneId,selfId,x210239_g_MissionId) > 0 then

	    local bDone = x210239_CheckSubmit( sceneId, selfId )
	    if( 1 == bDone ) then
	        AddNumText(sceneId, x210239_g_ScriptId, x210239_g_MissionName, 2, -1);
	    else
	        AddNumText(sceneId, x210239_g_ScriptId, x210239_g_MissionName, 1, -1);
	    end

	--¬˙◊„»ŒŒÒΩ” ’Ãıº˛
	elseif x210239_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId, x210239_g_ScriptId, x210239_g_MissionName, 1, -1);
	end
end

--**********************************
--ºÏ≤‚Ω” ‹Ãıº˛
--**********************************
function x210239_CheckAccept( sceneId, selfId )

	--“™«ÛÕÍ≥…µƒ«∞–¯»ŒŒÒ
	if IsMissionHaveDone(sceneId,selfId,x210239_g_MissionIdPer) <= 0 then
		return 0
	end

    return 1
end

--**********************************
--Ω” ‹
--**********************************
function x210239_OnAccept( sceneId, selfId )
	--»Áπ˚ÕÊº“ÕÍ≥…π˝’‚∏ˆ»ŒŒÒ
	if IsMissionHaveDone(sceneId,selfId,x210239_g_MissionId) > 0 then
		return
	end

	-- º”»Î»ŒŒÒµΩÕÊº“¡–±Ì
	local ret = AddMission( sceneId,selfId, x210239_g_MissionId, x210239_g_ScriptId, 1, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNhßt k˝ nhiÆm v¯ c¸a c·c h’ „ •y" , MSG2PLAYER_PARA )
		return
	end

	--…Ë÷√»ŒŒÒ±‰¡ø±¶ŒÔµƒ≥°æ∞±‡∫≈∫Õ◊¯±ÍŒª÷√
	--local misIndex = GetMissionIndexByID(sceneId, selfId, x210239_g_MissionId)--µ√µΩ»ŒŒÒ‘⁄20∏ˆ»ŒŒÒ÷–µƒ–Ú¡–∫≈
	--SetMissionByIndex(sceneId,selfId,misIndex,0,0)					--∏˘æ›–Ú¡–∫≈∞—»ŒŒÒ±‰¡øµƒµ⁄“ªŒª÷√0	µ⁄“ªŒª «ÕÍ≥…/ ß∞‹«Èøˆ

	Msg2Player(  sceneId, selfId,"Nhßn nhiÆm v¯: #Y" .. x210239_g_MissionName, MSG2PLAYER_PARA )


	misIndex = GetMissionIndexByID(sceneId,selfId,719)
	local Menpai = LuaFnGetMenPai( sceneId, selfId )
  if( Menpai >= 0 and Menpai < 9 ) then
		  SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)    --»ŒŒÒ◊∑◊Ÿ«Èøˆ±Í÷æ 1/1
	    SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)    --»ŒŒÒÕÍ≥…«Èøˆ
  end

end

--**********************************
--∑≈∆˙
--**********************************
function x210239_OnAbandon( sceneId, selfId )
	--…æ≥˝ÕÊº“»ŒŒÒ¡–±Ì÷–∂‘”¶µƒ»ŒŒÒ
	DelMission( sceneId, selfId, x210239_g_MissionId )
end

--**********************************
--ºÃ–¯
--**********************************
function x210239_OnContinue( sceneId, selfId, targetId )
	--Ã·Ωª»ŒŒÒ ±µƒÀµ√˜–≈œ¢
	BeginEvent(sceneId)
		AddText(sceneId,x210239_g_MissionName)
		AddText(sceneId,x210239_g_MissionComplete)

		for i, item in x210239_g_ItemBonus do
			AddItemBonus( sceneId, item.id, item.num )
		end
	EndEvent( )
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x210239_g_ScriptId,x210239_g_MissionId)
end

--**********************************
--ºÏ≤‚ «∑Òø…“‘Ã·Ωª
--**********************************
function x210239_CheckSubmit( sceneId, selfId )

    local MenPai = GetMenPai( sceneId, selfId )

    if( MenPai > 8 ) then
        return 0
    end

    if( MenPai < 0 ) then
        return 0
    end

	return 1

end


--***********************************************
--∞¥’’ÕÊº“√≈≈…∫Õ¥Ê‘⁄»ŒŒÒ ˝æ›÷–µƒ√≈≈…≈≈–Úº∆À„æ≠—È
--***********************************************
function x210239_CalculatePlayerExp( sceneId, selfId )
    local Exp = 0
    local MenpaiArray ={}
    for i=1, 9 do
        MenpaiArray[ i ] = 0
    end

    if IsHaveMission(sceneId,selfId,x210239_g_MissionId) > 0 then
        local misIndex = GetMissionIndexByID(sceneId, selfId, x210239_g_MissionId)

        local MixDWORD
        local High
        local Low
        MixDWORD = GetMissionParam(sceneId, selfId, misIndex, 3)
        High = GetHighWord( MixDWORD )
        Low = GetLowWord( MixDWORD )
        MenpaiArray[ 1 ] = High
        MenpaiArray[ 2 ] = Low

        MixDWORD = GetMissionParam(sceneId, selfId, misIndex, 4)
        High = GetHighWord( MixDWORD )
        Low = GetLowWord( MixDWORD )
        MenpaiArray[ 3 ] = High
        MenpaiArray[ 4 ] = Low

        MixDWORD = GetMissionParam(sceneId, selfId, misIndex, 5)
        High = GetHighWord( MixDWORD )
        Low = GetLowWord( MixDWORD )
        MenpaiArray[ 5 ] = High
        MenpaiArray[ 6 ] = Low

        MixDWORD = GetMissionParam(sceneId, selfId, misIndex, 6)
        High = GetHighWord( MixDWORD )
        Low = GetLowWord( MixDWORD )
        MenpaiArray[ 7 ] = High
        MenpaiArray[ 8 ] = Low

        MixDWORD = GetMissionParam(sceneId, selfId, misIndex, 7)
        High = GetHighWord( MixDWORD )
        Low = GetLowWord( MixDWORD )
        MenpaiArray[ 9 ] = High

    end

    local MenpaiID = LuaFnGetMenPai( sceneId, selfId )

    for i=1, 9 do
        if( MenpaiArray[ i ] == MenpaiID ) then
            Exp = x210239_GetExpByMenpaiIndex( i - 1 )
        end
    end

    return Exp
end
--**********************************
--Ã·Ωª
--**********************************
function x210239_OnSubmit( sceneId, selfId, targetId, selectRadioId )
		-- ∞≤»´–‘ºÏ≤‚
		-- 1°¢ºÏ≤‚ÕÊº“ «≤ª «”–’‚∏ˆ»ŒŒÒ
		if IsHaveMission(sceneId,selfId,x210239_g_MissionId) <= 0 then
			return
		end

		-- 2°¢ÕÍ≥…»ŒŒÒµƒ«ÈøˆºÏ≤‚
		if x210239_CheckSubmit(sceneId, selfId) <= 0    then
			return
		end

		local nPlayerExp = x210239_CalculatePlayerExp( sceneId, selfId )


		-- Ω«Æ∫Õæ≠—È
		LuaFnAddExp( sceneId, selfId, nPlayerExp)

		DelMission( sceneId,selfId, x210239_g_MissionId )
		--…Ë÷√»ŒŒÒ“—æ≠±ªÕÍ≥…π˝
		MissionCom( sceneId,selfId, x210239_g_MissionId )

		local MenpaiID = LuaFnGetMenPai( sceneId, selfId )
    local MenpaiName = x210239_GetMenpaiName( MenpaiID )

    local PlayerName = GetName( sceneId, selfId )
    local PlayerSex=GetSex(sceneId,selfId)

    local strSex = ""
    if PlayerSex == 0 then
        strSex = "muµi §y"
    else
        strSex = "Æ §y"
    end

    local SysStr = "#YTriÆu ThiÍn Sﬂ hÈt to#W: bæ b¢ng hÊu c¸a T— –’i ThiÆn Nh‚n, #{_INFOUSR"..PlayerName .."} „ tr∑ th‡nh Æ tÿ ph·i "..MenpaiName..", ch˙ng ta c˘ng ch˙c m◊ng "..strSex.." n‡o#W!"

    --local SysStr = "#YTriÆu ThiÍn Sﬂ¥Û∫∞£∫Àƒ¥Û…∆»Àµƒ≈Û”—$N“—æ≠≥…Œ™¡À"..MenpaiName.."µƒµ‹◊”£¨¿œ∏Á∂˘º∏∏ˆ£¨“ª∆¿¥◊£∫ÿÀ˚∞…£°#W"
    
    if IsPermitAreetAddMenpai()==1 then --modi:lby20071107–¬ ÷º”»Î√≈≈… «∑ÒÕ®÷™ÕÊº“
    	BroadMsgByChatPipe( sceneId, selfId, SysStr, 4 )
		end


end

--**********************************
--…±À¿π÷ŒÔªÚÕÊº“
--**********************************
function x210239_OnKillObject( sceneId, selfId, objdataId ,objId )

end

--**********************************
--Ω¯»Î«¯”Ú ¬º˛
--**********************************
function x210239_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µ¿æﬂ∏ƒ±‰
--**********************************
function x210239_OnItemChanged( sceneId, selfId, itemdataId )
end








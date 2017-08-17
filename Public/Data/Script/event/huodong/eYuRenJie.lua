--------------------------------------------
--ÓÞÈË½Ú»î¶¯½Å±¾
--Created By ÐÅµÂ·å
--Ì¨Íå°æ/Ïã¸Û°æ 50 ÐÞ¸Ä by Ð»ãp 2009-02-17
--------------------------------------------

--½Å±¾ºÅ
x808079_g_ScriptId = 808079

x808079_g_StartDayTime	= 20090325				--»î¶¯¿ªÊ¼Ê±¼ä 2009-03-25
x808079_g_EndDayTime	= 20090405				--»î¶¯½áÊøÊ±¼ä 2009-04-05

--Th¢ng B¶m Bäo ChâuID
x808079_g_YuRenBaoZhuID = 30501161
--Ã¿´ÎLînh Th¢ng B¶m Bäo ChâucáiÊý
x808079_g_YuRenBaoZhuCount = 1

--ÓÞÈË±äÉíÍè
x808079_g_YuRenBianShenWanID = {38000006, 38000007, 38000008}
--Ã¿´ÎLînh ÓÞÈË±äÉíÍècáiÊý
x808079_g_YuRenBianShenWanCount = 1

--ÓÞÈËÀÖÍ¸¿¨
x808079_g_YuRenLeTouKaID = 30504052
--Ã¿´ÎLînh ÓÞÈËÀÖÍ¸¿¨cáiÊý
x808079_g_YuRenLeTouKaCount = 1

--BUFF ID
x808079_g_ImpactID = 20002		--²âÊÔBUFF: 8040

--µÍµÈc¤pÏÞÖÆ
x808079_g_LowLevel = 10

--Kinh nghi®m½±Àø
x808079_g_AwardExp = {
					5458,		--10
					6082,
					6737,
					7688,
					8701,
					10074,
					11540,
					13426,
					15781,
					18650,
					22081,
					26120,
					30814,
					36209,
					42353,
					49745,
					58478,
					68162,
					78844,
					90570,
					107100,
					110250,
					113400,
					116550,
					119700,
					122850,
					126000,
					129150,
					132300,
					135450,
					138600,
					141750,
					144900,
					148050,
					151200,
					154350,
					157500,
					160650,
					163800,
					166950,
					170100,
					173250,
					176400,
					179550,
					182700,
					185850,
					189000,
					192150,
					195300,
					198450,
					201600,
					204750,
					207900,
					211050,
					214200,
					217350,
					220500,
					223650,
					226800,
					229950,
					233100,
					236250,
					239400,
					242550,
					245700,
					248850,
					252000,
					255150,
					258300,
					261450,
					264600,
					267750,
					270900,
					274050,
					277200,
					280350,
					283500,
					286650,
					289800,
					292950,
					296100,
					299250,
					302400,
					305550,
					308700,
					311850,
					315000,
					318150,
					321300,
					324450,
					327600,
					330750,
					333900,
					337050,
					340200,
					343350,
					346500,
					349650,
					352800,
					355950,
					359100,
					362250,
					365400,
					368550,
					371700,
					374850,
					378000,
					381150,
					384300,
					387450					
						}
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x808079_OnDefaultEvent( sceneId, selfId, targetId )

	local ItemID = GetNumText()
	
	if(ItemID == 0) then		-- ði¬m»÷¡°²Î¼ÓÓÞÈË½Ú»î¶¯¡±
		BeginEvent(sceneId)
			AddText(sceneId,"#{TWYRJ_090217_8}")
			AddNumText( sceneId, x808079_g_ScriptId, "#{TWYRJ_090217_2}",  6, 1 )
			AddNumText( sceneId, x808079_g_ScriptId, "#{TWYRJ_090217_3}",  6, 2 )
			AddNumText( sceneId, x808079_g_ScriptId, "#{TWYRJ_090217_4}", 13, 3 )	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	elseif(ItemID == 1) then	-- ði¬m»÷"Lînh ÓÞÈË½ÚµÀ¾ß"
		x808079_GiveItems( sceneId, selfId, targetId )
		
	elseif(ItemID == 2) then	-- ði¬m»÷"²Î¼ÓÓÞÈË½Ú³é½±"
		x808079_GiveExp( sceneId, selfId, targetId )
		
	elseif(ItemID == 3) then	-- ði¬m»÷¡°ÓÞÈË½Ú»î¶¯°ïÖú¡±
		x808079_ReturnMsg( sceneId, selfId, targetId, "#{TWYRJ_090217_9}" )
	end
	
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x808079_OnEnumerate( sceneId, selfId, targetId )
	
	--TÕi Ö¸¶¨Ê±¼äÄÚ,ÏÔÊ¾¡°²Î¼ÓÓÞÈË½Ú»î¶¯¡±°´Å¥
	if x808079_CheckRightTime( ) ~= 0 then
		AddNumText(sceneId, x808079_g_ScriptId, "#{TWYRJ_090217_5}", 1, 0 )
	end
	
end

--**********************************
--¼ì²âµ±Ç°Ðúng·ñÐúng»î¶¯Ê±¼ä
--**********************************
function x808079_CheckRightTime()

	local curDayTime = GetTime2Day()
	if curDayTime >= x808079_g_StartDayTime and curDayTime <= x808079_g_EndDayTime then
		return curDayTime
	else
		return 0
	end
	
end

function x808079_GiveItemsPrecheck( sceneId, selfId, targetId )
	
	--Ðúng·ñ´ïµ½10c¤p
	if GetLevel( sceneId, selfId ) < x808079_g_LowLevel then
		x808079_ReturnMsg( sceneId, selfId, targetId, "#{TWYRJ_090217_10}" )
		return 0
	end
	
	--¼ì²âµ±ÌìÐúng·ñLînh ¹ýÎïÆ·,Ã¿Ììmµt ´Î
	local lastDate = GetMissionData( sceneId, selfId, MD_YURENJIE_LASTTIME )
	local curDate = GetTime2Day( )
	if curDate <= lastDate then	--Áì¹ýmµt ´ÎÁË
		x808079_ReturnMsg( sceneId, selfId, targetId, "#{TWYRJ_090217_11}" )
		return 0
	end
	
	--¼ì²éÐúng·ñÓÐBUFF
	if LuaFnHaveImpactOfSpecificDataIndex( sceneId, selfId, x808079_g_ImpactID ) == 1 then
		x808079_ReturnMsg( sceneId, selfId, targetId, "#{TWYRJ_090217_12}" );
		return 0
	end
	
	--¼ì²éÔ ðÕo cø ðã ð¥y¸Ðúng·ñÓÐ¿ÕÎ»
	local needBagSpace = x808079_g_YuRenBaoZhuCount + x808079_g_YuRenBianShenWanCount + x808079_g_YuRenLeTouKaCount
	if ( LuaFnGetPropertyBagSpace( sceneId, selfId ) < needBagSpace ) then
		x808079_ReturnMsg( sceneId, selfId, targetId, "#{TWYRJ_090217_15}" )
		x808079_ShowMsg( sceneId, selfId, "#{TWYRJ_090217_16}" )
		return 0
	end
	
	return 1
end

--**********************************
--·¢·ÅTh¢ng B¶m Bäo Châu
--**********************************
function x808079_GiveItems(sceneId, selfId, targetId)
	
	--Ìõ¼þÅÐ¶Ï
	if x808079_GiveItemsPrecheck( sceneId, selfId, targetId ) ~= 1 then
		return
	end
	
	--Ìõ¼þÅÐ¶ÏÍ¨¹ý
	
	
	--¼ÇÂ¼Lînh toÕ ðµ Ê±¼ä,±£Ö¤mµt Ììmµt ´Î
	local curDate = GetTime2Day( )
	SetMissionData( sceneId, selfId, MD_YURENJIE_LASTTIME, curDate )
	
	--·¢·ÅÎïÆ·	
	--¼ÓTh¢ng B¶m Bäo Châu	
	TryRecieveItem( sceneId, selfId, x808079_g_YuRenBaoZhuID, QUALITY_MUST_BE_CHANGE )
	
	--¼ÓÓÞÈËÀÖÍ¸¿¨
	TryRecieveItem( sceneId, selfId, x808079_g_YuRenLeTouKaID, QUALITY_MUST_BE_CHANGE )
	
	--¼ÓÓÞÈË±äÉíÍè(Ëæ»ú ðÕt ðßþcmµt cái)
	local roll = random( 1, getn( x808079_g_YuRenBianShenWanID ) )
	local yuRenBianShenWanID = x808079_g_YuRenBianShenWanID[roll]
	if yuRenBianShenWanID ~= nil then
		bagIndex = TryRecieveItem( sceneId, selfId, yuRenBianShenWanID, QUALITY_MUST_BE_CHANGE )
		if bagIndex ~= -1 then
			--ÉèÖÃÎïÆ·ËùÓÐÕß
			local guid = LuaFnGetGUID( sceneId, selfId )
			SetBagItemParam( sceneId, selfId, bagIndex, 4, 2, guid - 2147483648 )
			--ÉèÖÃÎïÆ·´´½¨Õß: ÓÃÓÚÀñÆ·ÀàÎïÆ·TÕi tooltipsÉÏÏÔÊ¾"xxxtoÕ ðµ ÀñÆ·"
			LuaFnSetItemCreator( sceneId, selfId, bagIndex, GetName( sceneId, selfId ) )
			LuaFnRefreshItemInfo( sceneId, selfId, bagIndex )
		end
	end
	
	--¼ÓBUFF
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x808079_g_ImpactID, 0 )
	
	--ÌáÊ¾	
	x808079_ReturnMsg( sceneId, selfId, targetId, "#{TWYRJ_090217_17}" )
	
	--Í³¼ÆÎïÆ·Lînh ÈË´Î
	AuditYuRenJie(sceneId, selfId)
end

function x808079_GiveExpPrechek(sceneId, selfId, targetId)

	--¼ì²éÐúng·ñÓÐÎïÆ·
	if GetItemCount( sceneId, selfId, x808079_g_YuRenLeTouKaID ) == 0 then
		x808079_ReturnMsg(sceneId, selfId, targetId, "#{TWYRJ_090217_18}");
		return 0
	end
	
	--¼ì²éÐúng·ñÓÐ¿ÉÓÃÎïÆ·
	if LuaFnGetAvailableItemCount(sceneId, selfId, x808079_g_YuRenLeTouKaID) < x808079_g_YuRenLeTouKaCount then
		x808079_ReturnMsg(sceneId, selfId, targetId, "#{ResultText_158}");
		return 0
	end
	
	--ÅÐ¶Ï½ñÌìÐúng·ñÁì¹ýKinh nghi®m
	local lastDate = GetMissionData( sceneId, selfId, MD_TW_YURENJIE_LAST_GET_EXP_DATE )
	local curDate = GetTime2Day( )
	
	if curDate <= lastDate then	--Áì¹ýmµt ´ÎÁË
		x808079_ReturnMsg( sceneId, selfId, targetId, "#{TWYRJ_090217_19}" )
		return 0
	end
	
	--¼ì²éÐúng·ñÓÐBUFF
	if LuaFnHaveImpactOfSpecificDataIndex( sceneId, selfId, x808079_g_ImpactID ) == 1 then
		x808079_ReturnMsg( sceneId, selfId, targetId, "#{TWYRJ_090217_20}" );
		return 0
	end
	
	return 1

end

function x808079_GiveExp(sceneId, selfId, targetId)
	
	--Ìõ¼þ¼ì²é
	if x808079_GiveExpPrechek( sceneId, selfId, targetId ) ~= 1 then
		return
	end
	
	--Ìõ¼þ¼ì²éÍ¨¹ý
	
	--¼ÇÂ¼Kinh nghi®mLînh toÕ ðµ Ê±¼ä,±£Ö¤mµt Ììmµt ´Î
	local curDate = GetTime2Day( )
	SetMissionData( sceneId, selfId, MD_TW_YURENJIE_LAST_GET_EXP_DATE, curDate )
	
	--¿ÛÎïÆ·
	if LuaFnDelAvailableItem( sceneId, selfId, x808079_g_YuRenLeTouKaID, x808079_g_YuRenLeTouKaCount ) == 0 then
		x808079_ShowMsg( sceneId, selfId, "del fail")
		return
	end
	
	--¼ÓKinh nghi®m
	local level = GetLevel( sceneId, selfId )
	local index = level - 9
	local AddExp = 0
	if ( index > 0 ) and ( index <= getn( x808079_g_AwardExp ) ) then
		AddExp = x808079_g_AwardExp[index]
		LuaFnAddExp( sceneId, selfId, AddExp )
	end
	
	x808079_ReturnMsg( sceneId, selfId, targetId, "#{TWYRJ_090217_21}#G"..AddExp )
	
	--Í³¼ÆÎïÆ·Lînh ÈË´Î
	AuditYuRenJieExp( sceneId, selfId, AddExp )
end

--**********************************
--¸øÍæ¼Ò·¢ÓÊ¼þ
--**********************************
function x808079_OnPlayerLogin( sceneId, selfId )
	
	local curDate = x808079_CheckRightTime( )
	if curDate ~= 0 then
		local lastDate = GetMissionData(sceneId, selfId, MD_TW_YURENJIE_LAST_LOGIN_DATE)
		if lastDate < curDate then
			LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{TWYRJ_090217_6}" )
			SetMissionData(sceneId, selfId, MD_TW_YURENJIE_LAST_LOGIN_DATE, curDate)
		end
	end
	
end

--**********************************
--¹Ø±Õ¶Ô»°¿ò
--**********************************
function x808079_CloseDlg(sceneId, selfId, targetId)

	BeginUICommand( sceneId )
	UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 1000 )
	
end

--**********************************
--ÐÅÏ¢ÌáÊ¾
--**********************************
function x808079_ShowMsg( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent()
	DispatchMissionTips( sceneId, selfId )
	
end

--**********************************
--NPCTr· v«ÏûÏ¢
--**********************************
function x808079_ReturnMsg( sceneId, selfId, targetId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent()
	DispatchEventList( sceneId, selfId, targetId )
	
end

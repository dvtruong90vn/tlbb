--Ç©µ½(Thiên LongÏòÇ°³å»î¶¯)
--xiehong

x889053_g_ScriptId	= 889053;

--»î¶¯BUFFid
x889053_g_Buff_Id	= 20003

--¿ªÊ¼½áÊøÈÕÆÚ
--×¢Òâ: Èç¹ûÒªÐÂ¿ª»î¶¯,mµt ¶¨Òª¸Ä¿ªÊ¼ÈÕÆÚ´óÓÚÉÏmµt ´ÎtoÕ ðµ ½áÊøÈÕÆÚ,·ñÔò¼ÇÂ¼Íæ¼Ò²Î¼Ó¼ÆÊýtoÕ ðµ MD²»»áÖØÖÃ
x889053_g_BeginTime	= 20090709
x889053_g_EndTime	= 20090816


--µÈc¤pÏÞÖÆ
x889053_g_MinLevel	= 10

--¿ÉÒÔ ðÕt ðßþc½±ÀøtoÕ ðµ ´ÎÊý
x889053_g_AwardInfo	= {

{Cycle = 7,	AwardItemId1 = 30008002, AwardCount1 = 1, NeedBagSpace1 = 1, AwardItemId2 = 10124141, AwardCount2 = 1, NeedBagSpace2 = 1}, 

{Cycle = 14, AwardItemId1 = 30008002, AwardCount1 = 1, NeedBagSpace1 = 1, AwardItemId2 = 50313004, AwardCount2 = 1, NeedBagSpace2 = 1},--²ÄÁÏÀ¸

{Cycle = 28, AwardItemId1 = 30008002, AwardCount1 = 1, NeedBagSpace1 = 1, AwardItemId2 = 30900045, AwardCount2 = 1, NeedBagSpace2 = 1},

{Cycle = 35, AwardItemId1 = 30008002, AwardCount1 = 1, NeedBagSpace1 = 1, AwardItemId2 = 50313004, AwardCount2 = 2, NeedBagSpace2 = 2},--²ÄÁÏÀ¸
							
  }


--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x889053_OnEnumerate( sceneId, selfId, targetId )

	if x889053_IsInActTime() > 0 then
		AddNumText( sceneId, x889053_g_ScriptId, "#{TLXQC_090306_2}", 6, 1 );
	end
	
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x889053_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷Thiên LongÏòÇ°³å

	local opt = GetNumText();
	if opt == 1 then
		
		BeginEvent(sceneId)
			local playerName = GetName( sceneId,selfId )
			local msg = format( "    #{_INFOUSR%s}#{TLXQC_090306_3}", playerName )
			
			local insertMsg = x889053_InsertMsg( sceneId, selfId, 1 )

			AddText( sceneId, msg.."#r #r    "..insertMsg );							--¶Ô»°
			
			AddNumText( sceneId, x889053_g_ScriptId, "#{TLXQC_090306_4}", 6, 11 );		--°´Å¥: Ta mu¯n tham gia¡¶Thiên LongÏòÇ°³å¡·
			AddNumText( sceneId, x889053_g_ScriptId, "#{TLXQC_090306_5}", 6, 12 );		--°´Å¥: ²éÑ¯²Î¼Ó´ÎÊý
			AddNumText( sceneId, x889053_g_ScriptId, "#{TLXQC_090306_6}", 6, 13 );		--°´Å¥: Thiên LongÏòÇ°³åË ði¬m÷
		EndEvent()
		DispatchEventList( sceneId, selfId, targetId )
		
	elseif opt == 11 then																-- ði¬m»÷°´Å¥: Ta mu¯n tham gia¡¶Thiên LongÏòÇ°³å¡·
		
		if x889053_CheckCanJoinAndNotice( sceneId, selfId, targetId ) == 1 then
			x889053_Join( sceneId, selfId, targetId )
		end
		
	elseif opt == 12 then																-- ði¬m»÷°´Å¥: ²éÑ¯²Î¼Ó´ÎÊý
			
		insertMsg = x889053_InsertMsg( sceneId, selfId, 1 )
		
		BeginEvent(sceneId)
			AddText( sceneId, "    "..insertMsg );
		EndEvent()
		DispatchEventList( sceneId, selfId, targetId )
		
	elseif opt == 13 then																-- ði¬m»÷°´Å¥: Thiên LongÏòÇ°³åË ði¬m÷
		
		BeginEvent(sceneId)
			AddText( sceneId,  "    #{TLXQC_090306_7}");
		EndEvent()
		DispatchEventList( sceneId, selfId, targetId )
		
	end
end


--Éú³É²åÈë¶Ô»°
function x889053_InsertMsg( sceneId, selfId, query )
	
	local insertMsg = ""
	local joinCount = x889053_GetJoinCount( sceneId, selfId )
	if joinCount == 0 then
		insertMsg = "#{TLXQC_090306_8}"
	else
	
		local awardLeftCount = x889053_AwardLeftCount( sceneId, selfId, joinCount )
		
		if awardLeftCount == 1 then
			if query == 1 then 
				insertMsg = "#{TLXQC_090306_9}"..joinCount.."#{TLXQC_090306_10}"..awardLeftCount.."#{TLXQC_090306_11}"
			else
				insertMsg = "#{TLXQC_090306_9}"..joinCount.."#{TLXQC_090306_10}"..awardLeftCount.."#{TLXQC_090306_22}"
			end
		elseif awardLeftCount ~= 0 then
			if query == 1 then 
				insertMsg = "#{TLXQC_090306_9}"..joinCount.."#{TLXQC_090306_10}"..awardLeftCount.."#{TLXQC_090306_12}"
			else
				insertMsg = "#{TLXQC_090306_9}"..joinCount.."#{TLXQC_090306_10}"..awardLeftCount.."#{TLXQC_090306_22}"
			end
		elseif awardLeftCount == 0 then
			if query == 1 then
				insertMsg = "#{TLXQC_090306_9}"..joinCount.."#{TLXQC_090306_23}"
			else
				insertMsg = "#{TLXQC_090306_13}"
			end
		end
	end
	
	return insertMsg
	
end


--Ðúng·ñ»î¶¯Ê±¼ä
function x889053_IsInActTime( )	

	local curDate = GetTime2Day( )
	
	--Èç¹ûÐúng»î¶¯Ê±¼äÔòTr· v«½ñÌìÈÕÆÚ
	if curDate >= x889053_g_BeginTime and curDate <= x889053_g_EndTime then
		return curDate
	end
	
	--·ñÔòTr· v«0
	return 0
	
end

--È¡ ði¬mµ±Ç°²Î¼Ó»î¶¯´ÎÊý
function x889053_GetJoinCount( sceneId, selfId )
	
	local lastJoinDate = GetMissionData( sceneId, selfId, MD_TW_QIANDAO_LAST_JOIN_TIME )
	if lastJoinDate < x889053_g_BeginTime or lastJoinDate > x889053_g_EndTime then
		return 0
	end
	
	local joinCount = GetMissionData( sceneId, selfId, MD_TW_QIANDAO_JOIN_COUNT )
	
	return joinCount
	
end

--È¡ ði¬m»¹C¥n ¶àÉÙ´Î¿ÉÒÔÁì½±,¶¼ÁìÍêÁË¾ÍTr· v«0
function x889053_AwardLeftCount( sceneId, selfId, joinCount )
	
	local awardLeftCount = 0
	for i, awrad in x889053_g_AwardInfo do
		if awrad.Cycle > joinCount then
			awardLeftCount = awrad.Cycle - joinCount
			break
		end
	end
	
	return awardLeftCount
end

function x889053_CheckCanJoinAndNotice( sceneId, selfId, targetId )
	
	--Ðúng·ñTÕi »î¶¯Ê±¼äÄÚ(Õý³£Ó¦¸ÃÍ¨¹ý)
	local curDate = x889053_IsInActTime( )
	if curDate == 0 then
		x889053_ReturnDlg( sceneId, selfId, targetId, "#{TLXQC_090306_25}" )
		return 0
	end
	
	--ÅÐ¶ÏµÈc¤p
	if GetLevel( sceneId, selfId ) < x889053_g_MinLevel then
		x889053_ReturnDlg( sceneId, selfId, targetId, "    #{TLXQC_090306_14}" )
		return 0
	end
	
	--ÅÐ¶Ï½ñÈÕÐúng·ñ²Î¼Ó¹ý
	local lastJoinDate = GetMissionData( sceneId, selfId, MD_TW_QIANDAO_LAST_JOIN_TIME )
	if curDate <= lastJoinDate then
		x889053_ReturnDlg( sceneId, selfId, targetId, "    #{TLXQC_090306_15}" )
		return 0
	end
	
	--ÅÐ¶ÏBUFFÐúng·ñTÕi 
	if LuaFnHaveImpactOfSpecificDataIndex( sceneId, selfId, x889053_g_Buff_Id ) == 1 then
		x889053_ReturnDlg( sceneId, selfId, targetId, "    #{TLXQC_090306_16}" )
		return 0
	end
	
	return 1
end

function x889053_Join( sceneId, selfId, targetId )
	
	local joinCount = x889053_GetJoinCount( sceneId, selfId )
	--joinCount = joinCount + 1
	
	local getAward = 0
	for i, awrad in x889053_g_AwardInfo do
		if awrad.Cycle == joinCount+1 then
			
			--ÅÐ¶Ï±³°üÐúng·ñ¹»
			local error = 0
			if awrad.Cycle == 7 or awrad.Cycle == 28 then
				if LuaFnGetPropertyBagSpace( sceneId, selfId ) < awrad.NeedBagSpace1 + awrad.NeedBagSpace2 then
					x889053_Tips( sceneId, selfId, "#{TLXQC_090306_19}"..(awrad.NeedBagSpace1+awrad.NeedBagSpace2).. "#{TLXQC_090306_20}" )
					error = 1
				end
			end
			if awrad.Cycle == 14 or awrad.Cycle == 35 then
				if LuaFnGetPropertyBagSpace( sceneId, selfId ) < awrad.NeedBagSpace1 then
					x889053_Tips( sceneId, selfId, "#{TLXQC_090306_19}"..awrad.NeedBagSpace1.. "#{TLXQC_090306_20}" )
					error = 1
				end
				if LuaFnGetMaterialBagSpace( sceneId, selfId ) < awrad.NeedBagSpace2 then
					x889053_Tips( sceneId, selfId, "#{TLXQC_090703_1}"..awrad.NeedBagSpace2.. "#{TLXQC_090306_20}" )
					error = 1
				end
			end
			if error == 1 then
				--Èô±³°ü¿Õ¸ñ²»×ãÊ±,Ö»Tr· v«ÐÑÄ¿ÌáÊ¾,²»Tr· v«npc¶Ô»°,Ö±½Ó¹Ø±Õ¶Ô»°¿ò.
				x889053_CloseDlg( sceneId, selfId, targetId )
				return
			end
			
			--¸øÓè
			local bIsSuccess = 1
	
			for i = 1, awrad.AwardCount1 do
				local ret1 = TryRecieveItem( sceneId, selfId, awrad.AwardItemId1, QUALITY_CREATE_DEFAULT)
				if ret1 == -1 then
					bIsSuccess = 0
				else
					LuaFnItemBind(sceneId, selfId,ret1)
				end
			end
			for j = 1, awrad.AwardCount2 do
				local ret2= TryRecieveItem( sceneId, selfId, awrad.AwardItemId2, QUALITY_CREATE_DEFAULT)
				if ret2 == -1 then
					bIsSuccess = 0
				else
					LuaFnItemBind(sceneId, selfId,ret2)
				end
			end
			
			if bIsSuccess == 1 then 
				--Í³¼ÆLînh ½±Àø
				AuditQianDao( sceneId, selfId, 1, awrad.AwardCount1 )
				AuditQianDao( sceneId, selfId, 1, awrad.AwardCount2 )
				x889053_Tips( sceneId, selfId, "#{TLXQC_090306_17}"..awrad.AwardCount1.."#{TLXQC_090306_24}#{_ITEM"..awrad.AwardItemId1.."}#{TLXQC_090306_18}" )
				x889053_Tips( sceneId, selfId, "#{TLXQC_090306_17}"..awrad.AwardCount2.."#{TLXQC_090306_24}#{_ITEM"..awrad.AwardItemId2.."}#{TLXQC_090306_18}" )
				--Lînh ½±Àøºó¹Ø±Õ¶Ô»°¿ò
				x889053_CloseDlg( sceneId, selfId, targetId )
				getAward = 1
			end
			break
		end
	end
	joinCount = joinCount + 1
	--¼ÓBUFF
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x889053_g_Buff_Id, 0 )
	
	local curDate = GetTime2Day( )
	SetMissionData( sceneId, selfId, MD_TW_QIANDAO_LAST_JOIN_TIME, curDate )
	SetMissionData( sceneId, selfId, MD_TW_QIANDAO_JOIN_COUNT, joinCount )
	
	--Í³¼Æ²Î¼Ó»î¶¯
	AuditQianDao( sceneId, selfId, 0, 0 )
	
	--Èç¹û²»ÐúngLînh ½±ÀøtoÕ ðµ ´ÎÊý¾ÍÈÃNPC¸æËßËû»¹Ê£¶àÉÙ´Î¿ÉÒÔÁì
	if getAward ~= 1 then
		local msg = x889053_InsertMsg( sceneId, selfId, 0 )
		x889053_ReturnDlg( sceneId, selfId, targetId, "    "..msg )
	end
end

--**********************************
--Tr· v«¶Ô»°
--**********************************
function x889053_ReturnDlg(sceneId, selfId, targetId, msg)
	BeginEvent(sceneId)
		AddText(sceneId, msg);
	EndEvent()
	DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--ReturnTips
--**********************************
function x889053_Tips(sceneId, selfId, msg)
	BeginEvent(sceneId)
		AddText(sceneId, msg);
	EndEvent()
	DispatchMissionTips(sceneId, selfId)
end

--**********************************
--¹Ø±Õ¶Ô»°¿ò
--**********************************
function x889053_CloseDlg(sceneId, selfId, targetId)
	BeginUICommand( sceneId )
	UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 1000 )	
end

--**********************************
--Tiªp thø
--**********************************
function x889053_OnAccept( sceneId, selfId )


end

--**********************************
--·ÅÆú
--**********************************
function x889053_OnAbandon( sceneId, selfId )

end

--**********************************
--¼ÌÐø
--**********************************
function x889053_OnContinue( sceneId, selfId, targetId )

end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x889053_CheckSubmit( sceneId, selfId )

end

--**********************************
--Ìá½»
--**********************************
function x889053_OnSubmit( sceneId, selfId, targetId,selectRadioId )

end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x889053_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x889053_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x889053_OnItemChanged( sceneId, selfId, itemdataId )
end


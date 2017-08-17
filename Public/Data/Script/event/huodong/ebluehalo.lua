--»î¶¯¡ª¡ª
--ÐÂÀ¶¹â»·

--½Å±¾ºÅ
x808063_g_ScriptId = 808063
x808063_g_BlueHalo_EndDayTime = 7262   --»î¶¯½áÊøÊ±¼ä 2007-9-20

x808063_g_Impact = {

		8000,
		8001,
		8002,
		8003,
		8004,
		8005,
		8006,
		8007,
		8008,
		8009,
		30141,
		30142,
		30143,
		30144,
		30145,
		30146,
		30147,
		30148,
		30149,
		30150,
}


--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x808063_OnDefaultEvent( sceneId, selfId, targetId )

	local isTime = x808063_CheckRightTime()
	if 1 ~= isTime then
		return
	end


	local lastDayTime = GetMissionData( sceneId, selfId, MD_BLUEHALO_DAYTIME )
	local CurDayTime = GetDayTime()

	if CurDayTime > lastDayTime then
	
		x808063_AddBlueHalo( sceneId, selfId )
		SetMissionData( sceneId, selfId, MD_BLUEHALO_DAYTIME, CurDayTime )

		BeginEvent(sceneId)
			AddText(sceneId,"    Ð¬ chúc m×ng#c00ff00 <<Thiên Long Bát Bµ>>#Wra m¡t #c00ff00 <<Tiên nhân chï lµ>>#W, Thiên Long Bát Bµ ðã chu¦n b¸ cho ngß¶i ch½i #c00ff00Tân lam quang hoàn#W, b¡t ð¥u t× bây gi¶ ðªn ngày 20 tháng 9 kªt thúc, nên ngß¶i ch½i m²i ngày có th¬ nh§n lînh 1 quang hoàn.");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	else

		BeginEvent(sceneId)
			AddText(sceneId,"    Th§t ngÕi, các hÕ hôm nay ðã t×ng lînh nh§n #c00ff00Tân lam quang hoàn#W r°i.");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	end

end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x808063_OnEnumerate( sceneId, selfId, targetId )

    local isTime = x808063_CheckRightTime()

    if 1 == isTime then
			AddNumText(sceneId, x808063_g_ScriptId, "Tân lam quang hoàn", 1, 101 )
    end

end

--**********************************
--¼ì²â»î¶¯Ðúng·ñÒÑ½áÊø
--**********************************
function x808063_CheckRightTime()

    local curDayTime = GetDayTime()

    if curDayTime > x808063_g_BlueHalo_EndDayTime then
       return 0
    else
    	return 1
    end

end

--**********************************
--¸øÍæ¼Ò¼ÓÉÏÐÂÀ¶¹â»·buff
--**********************************
function x808063_AddBlueHalo( sceneId, selfId )

	local myLevel = GetLevel(sceneId, selfId)
	local impactID = x808063_g_Impact[1]

	if myLevel > 190 then
		impactID = x808063_g_Impact[20]
	elseif myLevel > 180 then
		impactID = x808063_g_Impact[19]
	elseif myLevel > 170 then
		impactID = x808063_g_Impact[18]
	elseif myLevel > 160 then
		impactID = x808063_g_Impact[17]
	elseif myLevel > 150 then
		impactID = x808063_g_Impact[16]
	elseif myLevel > 140 then
		impactID = x808063_g_Impact[15]
	elseif myLevel > 130 then
		impactID = x808063_g_Impact[14]
	elseif myLevel > 120 then
		impactID = x808063_g_Impact[13]
	elseif myLevel > 110 then
		impactID = x808063_g_Impact[12]
	elseif myLevel > 100 then
		impactID = x808063_g_Impact[11]
	elseif myLevel > 90 then
		impactID = x808063_g_Impact[10]
	elseif myLevel > 80 then
		impactID = x808063_g_Impact[9]
	elseif myLevel > 70 then
		impactID = x808063_g_Impact[8]
	elseif myLevel > 60 then
		impactID = x808063_g_Impact[7]
	elseif myLevel > 50 then
		impactID = x808063_g_Impact[6]
	elseif myLevel > 40 then
		impactID = x808063_g_Impact[5]
	elseif myLevel > 30 then
		impactID = x808063_g_Impact[4]
	elseif myLevel > 20 then
		impactID = x808063_g_Impact[3]
	elseif myLevel > 10 then
		impactID = x808063_g_Impact[2]
	else
		impactID = x808063_g_Impact[1]
	end

	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, impactID, 0);

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x808063_CheckAccept( sceneId, selfId )
end

--**********************************
--Tiªp thø
--**********************************
function x808063_OnAccept( sceneId, selfId )
end

--**********************************
--·ÅÆú
--**********************************
function x808063_OnAbandon( sceneId, selfId )
end

--**********************************
--¼ÌÐø
--**********************************
function x808063_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x808063_CheckSubmit( sceneId, selfId )
end

--**********************************
--Ìá½»
--**********************************
function x808063_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x808063_OnKillObject( sceneId, selfId, objdataId ,objId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x808063_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x808063_OnItemChanged( sceneId, selfId, itemdataId )
end

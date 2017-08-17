--»î¶¯¡ª¡ª
--ºÍÐ³¹â»·(²Î¿¼À¶ÐÂ¹â»·)

--½Å±¾ºÅ
x808124_g_ScriptId = 808124

--ºÍÐ³¹â»·ÖØ¿ª,2009Äê8ÔÂ12ÈÕ00: 00~2009Äê9ÔÂ16ÈÕ24: 00M· ra »î¶¯,czf,2009.07.31
--»î¶¯¿ªÊ¼Ê±¼ä 2009-8-12
x808124_g_HeXieGuangHuan_BeginDayTime = 20090812

--»î¶¯½áÊøÊ±¼ä 2009-9-16
x808124_g_HeXieGuangHuan_EndDayTime = 20090916   

--level±íÊ¾ÆðÊ¼µÈc¤p,´óÓÚCái này µÈc¤p¾Í¿ÉÒÔ ðÕt ðßþcºóÃætoÕ ðµ BUFF
x808124_g_Impact = {
		{level = 0,	buffId = 186},			--1-10	
		{level = 10,	buffId = 187},		--11-20
		{level = 20,	buffId = 188},		--21-30
		{level = 30,	buffId = 189},		--31-40
		{level = 40,	buffId = 190},		--41-50
		{level = 50,	buffId = 191},		--51-60
		{level = 60,	buffId = 192},		--61-70
		{level = 70,	buffId = 193},		--71-80
		{level = 80,	buffId = 194},		--81-90
		{level = 90,	buffId = 195},		--91-100
		{level = 100,	buffId = 196},		--101-110
		{level = 110,	buffId = 197}		--111-119
}


--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x808124_OnDefaultEvent( sceneId, selfId, targetId )

	local isTime = x808124_CheckRightTime()
	if 1 ~= isTime then
		return
	end

	local opt = GetNumText();
	
	if( 1 == opt ) then				-- ði¬m»÷¡°ºÍÐ³¹â»·¡±
		BeginEvent(sceneId)
			AddText(sceneId, "#{HXGH_90105_3}");
			AddNumText(sceneId, x808124_g_ScriptId, "#{HXGH_90105_4}", 8, 11 )
		EndEvent()
		DispatchEventList(sceneId, selfId, targetId)
	elseif( 11 == opt ) then	-- ði¬m»÷¡°Ðúng¡±
		local lastDate = GetMissionData( sceneId, selfId, MD_HEXIE_GUANGHUAN_DATE )	--ÉÏmµt ´ÎLînh ÈÕÆÚ
		local curDate = GetTime2Day()

		if curDate > lastDate then
			if IsPilferLockFlag( sceneId, selfId ) <= 0 then
				return	--°²È«Ê±¼äÄÚ²»ÈÃ²Ù×÷
			else
				--¿ÉÒÔÁìÈ.¬ÏÈÉèÖÃLînh ±ê¼ÇÔÙ¼ÓBUFF
				SetMissionData( sceneId, selfId, MD_HEXIE_GUANGHUAN_DATE, curDate )
				x808124_AddHeXieGuangHuan( sceneId, selfId )
		
				BeginEvent(sceneId)
					AddText(sceneId,"#{HXGH_90105_7}");
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			end
		else
			--±¾ÈÕÒÑ¾­Lînh ¹ýÁË
			BeginEvent(sceneId)
				AddText(sceneId,"#{HXGH_90105_6}");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	elseif( 111 == opt ) then	-- ði¬m»÷¡°¹ØÓÚºÍÐ³¹â»·¡±,czf,2009.07.31
		BeginEvent(sceneId)
			AddText(sceneId,"#{HXGH_90105_3}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x808124_OnEnumerate( sceneId, selfId, targetId )

    local isTime = x808124_CheckRightTime()

    if 1 == isTime then
			AddNumText(sceneId, x808124_g_ScriptId, "#{HXGH_90105_1}", 1, 1 )
			AddNumText(sceneId, x808124_g_ScriptId, "#{HXGH_90105_2}", 11, 111 )
    end
end

--**********************************
--¼ì²â»î¶¯Ðúng·ñÒÑ½áÊø
--**********************************
function x808124_CheckRightTime()

    local curDayTime = GetTime2Day()

    if curDayTime > x808124_g_HeXieGuangHuan_EndDayTime then
       return 0
    elseif curDayTime < x808124_g_HeXieGuangHuan_BeginDayTime then
       return 0
    else
    	return 1
    end

end

--**********************************
--¸øÍæ¼Ò¼ÓÉÏºÍÐ³¹â»·buff
--**********************************
function x808124_AddHeXieGuangHuan( sceneId, selfId )

	local myLevel = GetLevel(sceneId, selfId)
	local buffId = -1

	for index = 1 , getn(x808124_g_Impact) do
		if( myLevel > x808124_g_Impact[index].level ) then
			buffId = x808124_g_Impact[index].buffId
		end
	end
	
	if( buffId ~= -1 ) then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, buffId, 0);
	end
	
end

--**********************************
--ÉÏÏß
--**********************************
function x808124_OnPlayerLogin( sceneId, selfId )
	--¼ì²é»î¶¯Ê±¼ä
	local isTime = x808124_CheckRightTime()
	if 1 ~= isTime then
		return
	end

	local lastMailDate = GetMissionData( sceneId, selfId, MD_HEXIE_GUANGHUAN_MAIL_DATE )	--ÉÏmµt ´ÎLînh ÈÕÆÚ
	local curMailDate = GetTime2Day()

	if curMailDate > lastMailDate then
		--½ñÈÕ»¹Î´·¢¹ýH® th¯ngÓÊ¼þ
		--ÏÈ±ê¼Ç×î½ü·¢ÓÊ¼þÈÕÆÚÎª½ñÈÕ
		SetMissionData( sceneId, selfId, MD_HEXIE_GUANGHUAN_MAIL_DATE, curMailDate )
		
		LuaFnSendSystemMail( sceneId, GetName( sceneId, selfId ), "#{HXGH_90105_8}" )
	end
	
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x808124_CheckAccept( sceneId, selfId )
end

--**********************************
--Tiªp thø
--**********************************
function x808124_OnAccept( sceneId, selfId )
end

--**********************************
--·ÅÆú
--**********************************
function x808124_OnAbandon( sceneId, selfId )
end

--**********************************
--¼ÌÐø
--**********************************
function x808124_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x808124_CheckSubmit( sceneId, selfId )
end

--**********************************
--Ìá½»
--**********************************
function x808124_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x808124_OnKillObject( sceneId, selfId, objdataId ,objId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x808124_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x808124_OnItemChanged( sceneId, selfId, itemdataId )
end

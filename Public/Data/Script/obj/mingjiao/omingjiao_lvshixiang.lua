--Ã÷½ÌNPC
--ÂÀÊ¦Ïå
--ÆÕÍ¨

x011006_g_scriptId = 009002
x011006_g_eventList={222900,808004}
--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x011006_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"TØu gia là Minh Giáo Hæu sÑ Lã Sß Tß½ng, nªu mu¯n gia nh§p Minh Giáo, hãy t¾i TØu gia! mu¯n u¯ng rßþu, cûng t¾i tìm tØu gia!")
		local mp = GetMenPai(sceneId, selfId)
		if mp == 9 then 
			AddNumText(sceneId, x011006_g_scriptId, "Gia nh§p môn phái",6,0)
		end
		AddNumText(sceneId, x011006_g_scriptId, "Gi¾i thi®u môn phái",8,1)
		AddNumText(sceneId, x011006_g_scriptId, "H÷c KÛ nång cüa môn phái?",8,6)		--Ö¸Â·µ½¼¼ÄÜÑ§Ï°ÈË
		for i, eventId in x011006_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x011006_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText()== 0 then

		x011006_g_MenPai = GetMenPai(sceneId, selfId)
		if x011006_g_MenPai == 1 then
			BeginEvent(sceneId)
				AddText(sceneId, "Trò này cûng ðùa ðßþc sao? Nªu làm tØu gia bñc tÑc, tr× cüa ngß½i 1000 ði¬m c¯ng hiªn hãy còn ít")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		if x011006_g_MenPai ~= 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"Gã này hay g¾m nhï! ngß½i ðã là ngß¶i cüa môn phái khác, còn t¾i tìm Minh Giáo ta làm gì?")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end

		BeginEvent(sceneId)
			AddText(sceneId, "#{MenpaiInfo_001}")
			AddNumText(sceneId, x011006_g_scriptId, "Ta mu¯n gia nh§p Minh Giáo",6,3)
			AddNumText(sceneId, x011006_g_scriptId, "TÕi hÕ chßa mu¯n bái sß",8,4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		 
		return
	end
	
	if GetNumText()==4	then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
		return
	end
	
	if GetNumText()==3	then
		if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 2 then
			BeginEvent(sceneId)
				AddText(sceneId,"Hãy s¡p xªp lÕi tay näi, c¥n 2 v¸ trí tr¯ng, ta s¨ thß·ng cho ngß½i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		elseif GetLevel( sceneId, selfId ) < 10 then
			BeginEvent(sceneId)
				AddText(sceneId,"Giáo hµi Minh Giáo ta, chï thu nh§n ngß¶i t× c¤p 10 tr· lên")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			x011006_g_MenPai = GetMenPai(sceneId, selfId)
			if x011006_g_MenPai == 1 then
				BeginEvent(sceneId)
					AddText(sceneId, "Trò này cûng ðùa ðßþc sao? Nªu làm tØu gia bñc tÑc, tr× cüa ngß½i 1000 ði¬m c¯ng hiªn hãy còn ít")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			--·µ»ØÖµÎª9±íÊ¾ÎÞÃÅÅÉ
			elseif x011006_g_MenPai==9	then
				LuaFnJoinMenpai(sceneId, selfId, targetId, 1)

				-- ÉèÖÃ³õÊ¼µÄNpc¹ØÏµÖµ
				CallScriptFunction( 200099, "InitRelation", sceneId, selfId )

				-- °ÑÏà¹ØµÄÐÄ·¨ÉèÖÃÎª10¼¶±ð  7,10,11
				LuaFnSetXinFaLevel(sceneId,selfId,7,10)
				LuaFnSetXinFaLevel(sceneId,selfId,10,10)
				LuaFnSetXinFaLevel(sceneId,selfId,11,10)

				BeginEvent(sceneId)
	  				AddText(sceneId,"Các hÕ ðã gia nh§p Minh Giáo!");
	  			EndEvent(sceneId)
	  			DispatchMissionTips(sceneId,selfId)
	  			
	  			if TryRecieveItem( sceneId, selfId, 10124001, 1 ) >= 0 then
					str		= "#YCác hÕ ðã nh§n ðßþc"..GetItemName( sceneId, 10124001 ).."."
					x011006_MsgBox( sceneId, selfId, str )				
				end
				
				
				--¸øÍæ¼Ò·¢ÐÅ,¸æËßËûµ½ÄÄÀï´ò¹Ö,ÔõÑù×¬Ç®
				LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{LevelMail_menpai_2}" )
				--LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{OBJ_mingjiao_0001}" )
				
				--ÃÅÅÉ½±ÀøÕÙ¼¯Áî
				for i=1, 20 do
					TryRecieveItem( sceneId, selfId, 30501001, 1 )
				end
				x011006_MsgBox( sceneId, selfId, "Nh§n ðßþc 20 cái Môn Phái Tri®u T§p L®nh" )

				if	LuaFnGetSex( sceneId, selfId)==0	then
					LuaFnMsg2Player( sceneId, selfId,"Các hÕ ðã gia nh§p Minh Giáo!",MSG2PLAYER_PARA)
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 161, 0)
					CallScriptFunction( 222900, "OnDefaultEvent",sceneId, selfId, targetId )
				else
					LuaFnMsg2Player( sceneId, selfId,"Các hÕ ðã gia nh§p Minh Giáo!",MSG2PLAYER_PARA)
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 161, 0)
					CallScriptFunction( 222900, "OnDefaultEvent",sceneId, selfId, targetId )
				end
			else
				BeginEvent(sceneId)
					AddText(sceneId,"Gã này hay g¾m nhï! ngß½i ðã là ngß¶i cüa môn phái khác, còn t¾i tìm Minh Giáo ta làm gì?")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			end
		end
	elseif	GetNumText()==1	then
		BeginEvent(sceneId)
			AddText(sceneId, "#{OBJ_mingjiao_0002}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	else
		for i, findId in x011006_g_eventList do
			if eventId == findId then
				CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, MP_MINGJIAO )
				return
			end
		end
	end
	--Ö¸Â·
	if GetNumText()==6 then
		BeginEvent(sceneId)
			AddText(sceneId, "Bàng VÕn Xuân [108,59] có th¬ dÕy ngß½i kÛ nång chiªn ð¤u cüa phái ta, ông · ngay bên cÕnh ta")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, 108, 59, "Bàng VÕn Xuân" )
		return
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x011006_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x011006_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			end
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x011006_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
--for i, findId in x011006_g_eventList do
--	if missionScriptId == findId then
--		UpdateEventList( sceneId, selfId, targetId )
--		return
--	end
--end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x011006_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x011006_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x011006_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x011006_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x011006_OnDie( sceneId, selfId, killerId )
end

--**********************************
--ÏûÏ¢ÌáÊ¾
--**********************************
function x011006_MsgBox( sceneId, selfId, str )
	Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

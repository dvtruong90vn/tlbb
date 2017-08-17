--ÉÙÁÖNPC
--Ðþ¼Å
--ÆÕÍ¨

x009003_g_scriptId = 009003
x009003_g_eventList={220900, 808004}
--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x009003_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Lão nÕp Huy«n T¸ch, thí chü tìm lão nÕp có chuy®n gì?")
		local mp = GetMenPai(sceneId, selfId)
		if mp == 9 then 
			AddNumText(sceneId, x009003_g_scriptId, "Gia nh§p môn phái",6,0)
		end
		AddNumText(sceneId, x009003_g_scriptId, "Gi¾i thi®u môn phái",8,1)
		AddNumText(sceneId, x009003_g_scriptId, "H÷c KÛ nång cüa môn phái?",8,6)		--Ö¸Â·µ½¼¼ÄÜÑ§Ï°ÈË
		for i, eventId in x009003_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x009003_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	if GetNumText()== 0 then
		x009003_g_MenPai = GetMenPai(sceneId, selfId)
		if x009003_g_MenPai == 0 then
			BeginEvent(sceneId)
				AddText(sceneId, "Ngß½i lÕi t¾i ðòi bái làm sß phø, ngß½i ðã là ð® tØ Thiªu Lâm, còn mu¯n bái sß gì næa")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		if x009003_g_MenPai ~= 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ngß½i ðã là cao ð° cüa môn phái khác, lßþng thÑ Thiªu Lâm chúng tôi chùa bé, không chÑa ðßþc bÑc tßþng l¾n nhß các hÕ")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		BeginEvent(sceneId)
			AddText(sceneId, "#{MenpaiInfo_000}")
			AddNumText(sceneId, x009003_g_scriptId, "Ta mu¯n gia nh§p phái Thiªu Lâm",6,3)
			AddNumText(sceneId, x009003_g_scriptId, "TÕi hÕ chßa mu¯n bái sß",8,4)
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
				AddText(sceneId,"Thí chü ðþi t¾i ðßþc c¤p 10 hÇng t¾i bái sß h÷c ngh®!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			x009003_g_MenPai = GetMenPai(sceneId, selfId)
			if x009003_g_MenPai == 0 then
				BeginEvent(sceneId)
					AddText(sceneId, "Ngß½i lÕi t¾i ðòi bái làm sß phø, ngß½i ðã là ð® tØ Thiªu Lâm, còn mu¯n bái sß gì næa")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			--·µ»ØÖµÎª9±íÊ¾ÎÞÃÅÅÉ
			elseif x009003_g_MenPai==9	then
				
				LuaFnJoinMenpai(sceneId, selfId, targetId, 0)

				-- ÉèÖÃ³õÊ¼µÄNpc¹ØÏµÖµ
				CallScriptFunction( 200099, "InitRelation", sceneId, selfId )

				-- °ÑÏà¹ØµÄÐÄ·¨ÉèÖÃÎª10¼¶±ð  1,4,5
				LuaFnSetXinFaLevel(sceneId,selfId,1,10)
				LuaFnSetXinFaLevel(sceneId,selfId,4,10)
				LuaFnSetXinFaLevel(sceneId,selfId,5,10)
				
				BeginEvent(sceneId)
	  				AddText(sceneId,"Các hÕ ðã gia nh§p phái Thiªu Lâm!");
	  			EndEvent(sceneId)
	  			DispatchMissionTips(sceneId,selfId)
	  			
	  			if TryRecieveItem( sceneId, selfId, 10124000, 1 ) >= 0 then
					str		= "#YCác hÕ ðã nh§n ðßþc "..GetItemName( sceneId, 10124000).."."
					x009003_MsgBox( sceneId, selfId, str )
				end
				
				--¸øÍæ¼Ò·¢ÐÅ,¸æËßËûµ½ÄÄÀï´ò¹Ö,ÔõÑù×¬Ç®
				LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{LevelMail_menpai_3}" )
				--LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{OBJ_shaolin_0001}" )
				
				--ÃÅÅÉ½±ÀøÕÙ¼¯Áî
				for i=1, 20 do
					TryRecieveItem( sceneId, selfId, 30501001, 1 )
				end
				x009003_MsgBox( sceneId, selfId, "Nh§n ðßþc 20 cái Môn Phái Tri®u T§p L®nh" )

				if	LuaFnGetSex( sceneId, selfId)==0	then
					LuaFnMsg2Player( sceneId, selfId,"Các hÕ ðã gia nh§p phái Thiªu Lâm!",MSG2PLAYER_PARA)
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 160, 0)
					CallScriptFunction( 220900, "OnDefaultEvent",sceneId, selfId, targetId )
				else
					LuaFnMsg2Player( sceneId, selfId,"Các hÕ ðã gia nh§p phái Thiªu Lâm!",MSG2PLAYER_PARA)
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 160, 0)
					CallScriptFunction( 220900, "OnDefaultEvent",sceneId, selfId, targetId )
				end
			else
				BeginEvent(sceneId)
					AddText(sceneId,"Ngß½i ðã là cao ð° cüa môn phái khác, lßþng thÑ Thiªu Lâm chúng tôi chùa bé, không chÑa ðßþc bÑc tßþng l¾n nhß các hÕ")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			end
		end
	elseif	GetNumText()==1	then
		BeginEvent(sceneId)
			AddText(sceneId, "#{OBJ_shaolin_0003}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	else
		for i, findId in x009003_g_eventList do
			if eventId == findId then
				CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, MP_SHAOLIN )
				return
			end
		end
	end
	--Ö¸Â·
	if GetNumText()==6 then
		BeginEvent(sceneId)
			AddText(sceneId, "ÐÕi sß Huy«n NÕn [91,71] có th¬ dÕy ngß½i kÛ nång chiªn ð¤u cüa phái ta, ông ngay · bên cÕnh ta.")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, 91, 71, "Huy«n NÕn" )
		return
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x009003_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x009003_g_eventList do
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
function x009003_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x009003_g_eventList do
		if missionScriptId == findId then
			--UpdateEventList( sceneId, selfId, targetId ) --¸ù±¾¾ÍÃ»ÓÐÕâ¸öº¯Êý£¬who do µÄ£¿£¿£¿
			x009003_OnDefaultEvent( sceneId, selfId,targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x009003_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x009003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x009003_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x009003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x009003_OnDie( sceneId, selfId, killerId )
end

--**********************************
--ÏûÏ¢ÌáÊ¾
--**********************************
function x009003_MsgBox( sceneId, selfId, str )
	Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

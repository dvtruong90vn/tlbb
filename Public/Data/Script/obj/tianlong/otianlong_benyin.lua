--ÕÆÃÅÈË
--±¾Òò

--½Å±¾ºÅ
x013001_g_scriptId = 013001
x013001_g_eventList={224900,229009,808004,229012,808092}
--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x013001_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Lão nÕp Bän Nhân, thí chü tìm lão nÕp có chuy®n gì?")
		local mp = GetMenPai(sceneId, selfId)
		if mp == 9 then 
			AddNumText(sceneId, x013001_g_scriptId, "Gia nh§p môn phái",6,0)
		end
		AddNumText(sceneId, x013001_g_scriptId, "Gi¾i thi®u môn phái",8,1)
		AddNumText(sceneId, x013001_g_scriptId, "H÷c KÛ nång cüa môn phái?",8,6)		--Ö¸Â·µ½¼¼ÄÜÑ§Ï°ÈË
		for i, eventId in x013001_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x013001_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x013001_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, MP_DALI )
			return
		end
	end
	if GetNumText()==0	then

		x013001_g_MenPai = GetMenPai(sceneId, selfId)
		if x013001_g_MenPai == 6  then
			BeginEvent(sceneId)
				AddText(sceneId, "Ngß½i lÕi ðªn ðùa cþt v¾i ta r°i, ngß½i ðã là ð® tØ Thiên Long Tñ, còn bái sß gì næa")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		if x013001_g_MenPai ~= 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ngß½i ðã là cao ð® cüa môn phái khác r°i, Thiên Long Tñ cüa chúng ta nhö, làm sao chÑ ðßþc ðÕi Ph§t nhß ngß½i")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end

		BeginEvent(sceneId)
			AddText(sceneId, "#{MenpaiInfo_006}")
			AddNumText(sceneId, x013001_g_scriptId, "Ta mu¯n gia nh§p Thiên Long",6,3)
			AddNumText(sceneId, x013001_g_scriptId, "TÕi hÕ chßa mu¯n bái sß",8,4)
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
	
	if	GetNumText()==3	then
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
				x013001_g_MenPai = GetMenPai(sceneId, selfId)
				if x013001_g_MenPai == 6 then
					BeginEvent(sceneId)
						AddText(sceneId, "Ngß½i lÕi ðªn ðùa cþt v¾i ta r°i, ngß½i ðã là ð® tØ Thiên Long Tñ, còn bái sß gì næa")
					EndEvent(sceneId)
					DispatchEventList(sceneId,selfId,targetId)
					--·µ»ØÖµÎª9±íÊ¾ÎÞÃÅÅÉ
				elseif x013001_g_MenPai==9	then
					AddText(sceneId,"V§y b¡t ð¥u t× ðây, ngß½i chính là ð® tØ cüa Thiên Long Tñ")
					LuaFnJoinMenpai(sceneId, selfId, targetId, 6)

					-- ÉèÖÃ³õÊ¼µÄNpc¹ØÏµÖµ
					CallScriptFunction( 200099, "InitRelation", sceneId, selfId )

					-- °ÑÏà¹ØµÄÐÄ·¨ÉèÖÃÎª10¼¶±ð  37,40,41
					LuaFnSetXinFaLevel(sceneId,selfId,37,10)
					LuaFnSetXinFaLevel(sceneId,selfId,40,10)
					LuaFnSetXinFaLevel(sceneId,selfId,41,10)

					BeginEvent(sceneId)
						AddText(sceneId,"Các hÕ ðã gia nh§p Thiên Long!");
					EndEvent(sceneId)
					DispatchMissionTips(sceneId,selfId)
					--¸øÍæ¼Ò·¢ÐÅ,¸æËßËûµ½ÄÄÀï´ò¹Ö,ÔõÑù×¬Ç®
					LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{LevelMail_menpai_5}" )
					--LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{OBJ_tianlong_0001}" )
					
					--ÃÅÅÉ½±ÀøÕÙ¼¯Áî
					for i=1, 20 do
						TryRecieveItem( sceneId, selfId, 30501001, 1 )
					end
					x013001_MsgBox( sceneId, selfId, "Nh§n ðßþc 20 cái Môn Phái Tri®u T§p L®nh" )


					if TryRecieveItem( sceneId, selfId, 10124008, 1 ) >= 0 then
						str		= "#YCác hÕ ðã nh§n ðßþc "..GetItemName( sceneId, 10124008 ).."."
						x013001_MsgBox( sceneId, selfId, str )
					end
				
					if	LuaFnGetSex( sceneId, selfId)==0	then
						LuaFnMsg2Player( sceneId, selfId,"Các hÕ ðã gia nh§p Thiên Long!",MSG2PLAYER_PARA)
						LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 166, 0)
						CallScriptFunction( 224900, "OnDefaultEvent",sceneId, selfId, targetId )
					else
						LuaFnMsg2Player( sceneId, selfId,"Các hÕ ðã gia nh§p Thiên Long!",MSG2PLAYER_PARA)
						LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 166, 0)
						CallScriptFunction( 224900, "OnDefaultEvent",sceneId, selfId, targetId )
					end
				else
					BeginEvent(sceneId)
						AddText(sceneId,"Ngß½i ðã là cao ð® cüa môn phái khác r°i, Thiên Long Tñ cüa chúng ta nhö, làm sao chÑ ðßþc ðÕi Ph§t nhß ngß½i")
					EndEvent(sceneId)
					DispatchEventList(sceneId,selfId,targetId)
				end
			end
	elseif	GetNumText()==1	then
		BeginEvent(sceneId)
			AddText(sceneId, "#{OBJ_tianlong_0003}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--Ö¸Â·
	if GetNumText()==6 then
		BeginEvent(sceneId)
			AddText(sceneId, "Bän Quán (97, 67) có th¬ dÕy ngß½i kÛ nång chiªn ð¤u cüa môn phái ta. Ông · ngay bên cÕnh ta")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, 97, 67, "Bän Quán" )
		return
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x013001_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x013001_g_eventList do
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
function x013001_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x013001_g_eventList do
		if missionScriptId == findId then
			x013001_OnDefaultEvent( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x013001_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x013001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x013001_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x013001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x013001_OnDie( sceneId, selfId, killerId )
end

--**********************************
--ÏûÏ¢ÌáÊ¾
--**********************************
function x013001_MsgBox( sceneId, selfId, str )
	Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

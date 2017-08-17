--ÂåÑôNPC ²ÄÁÏ¼Ó¹¤¼¼ÄÜNPC   °üº¬¹¦ÄÜ£º1²ÄÁÏ¼Ó¹¤¼¼ÄÜµÄÑ§Ï° 2½²½â²ÄÁÏ¼Ó¹¤¼¼ÄÜ
--·ëÖıÌú
--ÆÕÍ¨

--½Å±¾ºÅ
x000141_g_ScriptId = 000141

--ÉÌµê±àºÅ
x000141_g_shoptableindex = 167

--ËùÓµÓĞµÄÊÂ¼şIdÁĞ±í
--estudy_cailiaojiagong = 713538


--ËùÓµÓĞµÄÊÂ¼şIDÁĞ±í
x000141_g_eventList={713538}
--**********************************
--ÊÂ¼şÁĞ±í
--**********************************
function x000141_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"Mu¯n h÷c kÛ nång gia công nguyên li®u không ? Hãy ch÷n ¤n vào dòng \"H÷c gia công nguyên li®u\"dß¾i ğây, là có th¬ h÷c kÛ nång gia công nguyên li®u.")
	AddText(sceneId,"Gia công nguyên li®u c¥n phäi có tính kiên nhçn, m¾i có th¬ chª tÕo ra lßşng l¾n thành ph¦m hşp thành, các loÕi thành ph¦m này r¤t c¥n thiªt ğ¬ h÷c công ngh®, chª tÕo, may m£c 3 loÕi kÛ nång s¯ng, nªu các hÕ mu¯n thång c¤p công ngh®, chª tÕo và may m£c 3 loÕi kÛ nång này thª thì phäi h÷c gia công nguyên li®u r°i!")
	AddText(sceneId,"Chú ı: H÷c \"Gia công nguyên li®u\" c¥n t¯n #{_MONEY10000}, ğ×ng quen mang theo nhé!")
	for i, eventId in x000141_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	--ÉÌµêÑ¡Ïî
	AddNumText(sceneId,x000141_g_ScriptId,"Mua ph¯i phß½ng gia công nguyên li®u",7, 99 )
	AddNumText( sceneId, x000141_g_ScriptId, "Gi¾i thi®u gia công nguyên li®u", 11, 100 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x000141_OnDefaultEvent( sceneId, selfId,targetId )
	x000141_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞÒ»Ïî
--**********************************
function x000141_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{HELP_CLJG}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	if	GetNumText() == 99	then
		DispatchShopItem( sceneId, selfId,targetId, x000141_g_shoptableindex )
	end
	for i, findId in x000141_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x000141_g_ScriptId )
		return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x000141_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x000141_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--¼ÌĞø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x000141_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x000141_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
end

--**********************************
--ËÀÍöÊÂ¼ş
--**********************************
function x000141_OnDie( sceneId, selfId, killerId )
end

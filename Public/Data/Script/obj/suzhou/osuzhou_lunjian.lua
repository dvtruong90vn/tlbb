-- 1062

--ËÕÖÝNPC
--»ªÉ½ÂÛ½£±¨ÃûÈË
--ÆÕÍ¨

--½Å±¾ºÅ
x001064_g_scriptId = 001064

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x001064_g_eventList={001230} --{001230}


--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001064_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Tøc ngæ nói r¤t ðúng, vån vô ð® nh¤t, võ vô ð® nh¸, nhân sî võ lâm ð«u ðang trong Lu§n Kiªm Hoa S½n tranh nhau danh hi®u thiên hÕ ð® nh¤t . Nªu các hÕ mu¯n tham gia Lu§n Kiªm Hoa S½n, ta có th¬ báo dành giúp các hÕ và ðßa các hÕ ðªn Hoa S½n. Nªu ngß¶i ch½i tham gia Lu§n Kiªm Hoa S½n ðßþc li®t vào 3 thÑ hàng ð¥u cüa môn phái, có th¬ ðªn ch± ta nh§n lînh 1 ph¥n thß·ng cüa tri«u ðình, các v¸ hãy c¯ g¡ng lên!")
		
		AddNumText( sceneId, x001064_g_scriptId, "Gi¾i thi®u Hoa S½n lu§n kiªm", 11, 10 )	
		
		for i, eventId in x001064_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
-- Ñ¡ÖÐÒ»Ïî
--**********************************
function x001064_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 10 then
			BeginEvent(sceneId)	
				AddText( sceneId, "#{function_help_064}" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	end
	
	for i, findId in x001064_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end

end

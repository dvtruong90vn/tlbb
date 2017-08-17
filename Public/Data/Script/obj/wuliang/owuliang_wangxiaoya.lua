--ÍõÐ¡Ñ¾

--½Å±¾ºÅ
x006011_g_scriptId = 006011
x006011_g_NianShouJieShao = "  #{NSBS_20071228_13}"

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x006011_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Cha, con không c¥n qu¥n áo m¾i, con mu¯n m©, m© ði ðâu r°i Õ, tÕi sao vçn chßa v« v§y?")
		--CallScriptFunction( 050054, "OnEnumerate",sceneId, selfId, targetId )
		--AddNumText( sceneId, x006011_g_scriptId, "ÄêÊÞ»î¶¯°ïÖú", 11, 102 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x006011_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 101 then
		CallScriptFunction( 050054, "OnDefaultEvent",sceneId, selfId, targetId )
		return
	end
	
	if GetNumText() == 102 then
		BeginEvent(sceneId)
			AddText( sceneId, x006011_g_NianShouJieShao )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
end





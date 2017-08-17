--Ø¤°ïNPC
--½¯¹âÍ¤
--ÆÕÍ¨

 x010010_g_ScriptId=010010
--447	ÆïÊõ£º»¢
--448	ÆïÊõ£º»ÆæôÂí
--449	ÆïÊõ£ºÂæÍÕ
--450	ÆïÊõ£ºº×
--451	ÆïÊõ£ºÇà·ï
--452	ÆïÊõ£ºêóÅ£
--453	ÆïÊõ£ºÂ¹
--454	ÆïÊõ£ºµñ
--455	ÆïÊõ£º»ÒÀÇ
--456	ÆïÊõ£º°×»¢
--457	ÆïÊõ£ºÇà°×æõÂí
--458	ÆïÊõ£º°×ÂæÍÕ
--459	ÆïÊõ£º½ğÒíº×
--460	ÆïÊõ£ººì°×·ï
--461	ÆïÊõ£º°×êóÅ£
--462	ÆïÊõ£º°×Â¹
--463	ÆïÊõ£º°×µñ
--464	ÆïÊõ£º°×ÀÇ
--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function  x010010_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta có th¬ dÕy ğ® tØ Cái Bang nång lñc cßŞi Sói.")
		if	GetMenPai( sceneId, selfId) == 2 then
			if	(0==LuaFnHaveSpecificEquitation(  sceneId, selfId, 455))	then
				AddNumText(sceneId, x010010_g_ScriptId,"H÷c kÜ thu§t: Khôi Lang",12,40)
			end
			if	(0==LuaFnHaveSpecificEquitation(  sceneId, selfId, 464))	then
				AddNumText(sceneId, x010010_g_ScriptId,"H÷c kÜ thu§t: BÕch Lang",12,60)
			end
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞÒ»Ïî
--**********************************
function  x010010_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 40 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{XXQS_05}" )
			AddNumText(sceneId, x010010_g_ScriptId,"Xác nh§n",-1,0)
      AddNumText(sceneId, x010010_g_ScriptId,"Hüy bö",-1,999)			
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	
	if GetNumText() == 60 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{XXQS_06}" )
			AddNumText(sceneId, x010010_g_ScriptId,"Xác nh§n",-1,1)
      AddNumText(sceneId, x010010_g_ScriptId,"Hüy bö",-1,999)			
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	
	if GetNumText() == 999 then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		return
	end
	
	local level = GetLevel( sceneId, selfId)
	local skill = GetNumText()
	if skill == 0 or skill == 1 then
	  CallScriptFunction((210299), "OnDefaultEvent",sceneId, selfId,targetId, level, skill)
	end
end


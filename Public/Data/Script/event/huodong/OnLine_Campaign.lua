--»î¶¯¡ª¡ª
--Ê¥µ®½ÚÔªµ©»î¶¯-ÊÕ¼¯ÃÅÅÉµÀ¾ß»»½±Àø

--½Å±¾ºÅ
x889050_g_ScriptId = 889050

x889050_g_BufferId = 20001
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x889050_OnDefaultEvent( sceneId, selfId, targetId )

	local isTime = x889050_CheckRightTime()
	if 1 ~= isTime then
		return
	end

	local NumText = GetNumText()
	if NumText == 111 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{SHXQZH_081118_05}")
			AddNumText( sceneId, x889050_g_ScriptId, "#{INTERFACE_XML_557}", 8, 113 )
			AddNumText( sceneId, x889050_g_ScriptId, "#{INTERFACE_XML_542}", 8, 114 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	  
	elseif NumText == 112 then
		BeginEvent(sceneId)
			AddText(sceneId, "#{SHXQZH_081118_08}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 113	then
		--Xác nh§n
		x889050_GiveBuff( sceneId, selfId, targetId )
	elseif NumText == 114	then
		--HuÖ bö
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x889050_OnEnumerate( sceneId, selfId, targetId )
  
  --¼ì²âÊ±¼äÐúng·ñÕýÈ·
	local isTime = x889050_CheckRightTime()
	if 1 ~= isTime then
		return
	end

	AddNumText(sceneId, x889050_g_ScriptId, "#{SHXQZH_081118_03}", 6, 111 )
	AddNumText(sceneId, x889050_g_ScriptId, "#{SHXQZH_081118_04}", 11, 112 )													
end

--**********************************
--¼ì²â»î¶¯Ê±¼äÐúng·ñÕýÈ·
--**********************************
function x889050_CheckRightTime()

--mµt Ö±M· ra ¸Ã»î¶¯
	return 1

end

--**********************************
--¸øÍæ¼Ò½ÚÈÕºØÌû
--**********************************
function x889050_GiveBuff( sceneId, selfId, targetId )

	--¹Ø±Õ¶Ô»°´°¿Ú....
	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 1000 )
	
	--Èç¹ûÍæ¼ÒµÈc¤pÐ¡ÓÚ30²»Óè»»È¡ºØ¿¨
	if	GetLevel( sceneId, selfId) < 30 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{SHXQZH_081118_09}" )
		EndEvent(sceneId)
		DispatchMissionTips( sceneId, selfId )
		return
	end
	
	--Èç¹ûÍæ¼ÒÓÐ»î¶¯toÕ ðµ BUFF
	if LuaFnHaveImpactOfSpecificDataIndex( sceneId, selfId, x889050_g_BufferId ) == 1 then
	   BeginEvent(sceneId)
			 AddText( sceneId, "#{SHXQZH_081118_06}" )
		 EndEvent(sceneId)
		 DispatchEventList(sceneId,selfId,targetId)
		 return
	end	
	
	 --¸øÓèÍæ¼mµt î¶¯BUFF
   LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x889050_g_BufferId, 0)	
   
   BeginEvent(sceneId)
			AddText( sceneId, "#{SHXQZH_081118_07}" )
	 EndEvent(sceneId)
	 DispatchMissionTips( sceneId, selfId )

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x889050_CheckAccept( sceneId, selfId )
end

--**********************************
--Tiªp thø
--**********************************
function x889050_OnAccept( sceneId, selfId )
end

--**********************************
--·ÅÆú
--**********************************
function x889050_OnAbandon( sceneId, selfId )
end

--**********************************
--¼ÌÐø
--**********************************
function x889050_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x889050_CheckSubmit( sceneId, selfId )
end

--**********************************
--Ìá½»
--**********************************
function x889050_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x889050_OnKillObject( sceneId, selfId, objdataId ,objId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x889050_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x889050_OnItemChanged( sceneId, selfId, itemdataId )
end

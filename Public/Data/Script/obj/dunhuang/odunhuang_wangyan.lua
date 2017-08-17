--ÍôÑÓ
--¶Ø»Í´«ËÍ»ğÑæÉ½

--½Å±¾ºÅ
x008112_g_ScriptId	= 008112

--ËùÓµÓĞµÄÊÂ¼şIDÁĞ±í
x008112_g_Transport = 400900

x008112_g_Impact_Transport_Mission = 113 -- ÔËÊä×´Ì¬ÌØĞ§--[tx45130]
--Ä¿±ê³¡¾°
--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x008112_OnDefaultEvent( sceneId, selfId, targetId )
	local	nam	= GetName( sceneId, selfId )

	BeginEvent( sceneId )
	AddText( sceneId, nam..", tiªn vào Sa MÕc Phi Sa ği theo hß¾ng tây chính là Höa Di®m S½n! T× Höa Di®m S½n có th¬ ğªn ğßşc Cao Xß½ng C± Qu¯c. ĞoÕn ğß¶ng này r¤t nguy hi¬m, chï có nhæng anh hùng #Gtrên c¤p 90 #Wm¾i có ğü tß cách bß¾c vào." )
	AddNumText( sceneId, x008112_g_ScriptId, "Ğªn Höa Di®m S½n", 9, 0 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞÒ»Ïî
--**********************************
function x008112_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetLevel( sceneId, selfId ) < 90 then 
		BeginEvent( sceneId )
			AddText( sceneId, "N½i này vô cùng nguy hi¬m mà hình nhß các hÕ chßa ğü ğÆng c¤p 90. Hãy nghî cho sñ an toàn cüa các hÕ à hãy rèn luy®n tiªp. Sau này hãy ğªn tìm ta." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	else 
		--[tx45130]	
		local haveImpact = LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x008112_g_Impact_Transport_Mission)
		if haveImpact == 1 then
				BeginEvent(sceneId)
					AddText(sceneId,"#{Transfer_090304_1}");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
		end
		--[/tx45130]
		CallScriptFunction((x008112_g_Transport), "TransferFunc",sceneId, selfId, 423, 223, 29, 90, 1000)
	end
end

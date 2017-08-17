--´ò¿ª³ðÉ±

--½Å±¾ºÅ £¨¸Ä³ÉÕýÈ·½Å±¾ºÅ£©



x800113_g_scriptId = 800113





function x800113_OnDefaultEvent( sceneId, selfId, targetId )

	LuaFnCallOpenRevengeUI(sceneId, selfId, targetId, 29)

end



function x800113_OnEnumerate( sceneId, selfId,targetId )

	AddNumText(sceneId,x800113_g_scriptId,"Ta mu¯n báo thù...",10,x800113_g_scriptId)

end


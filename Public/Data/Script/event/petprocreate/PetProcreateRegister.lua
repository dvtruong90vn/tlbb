--ÕäÊÞ·±Ö³
--½Å±¾ºÅ £¨¸Ä³ÉÕýÈ·½Å±¾ºÅ£©

x800101_g_scriptId = 800101


function x800101_OnDefaultEvent( sceneId, selfId,targetId )
	checkRet = LuaFnCheckCallPetProcreateRegisterUI(sceneId, selfId,targetId);
	if checkRet == 1 then
		ret = LuaFnCallPetProcreateRegisterUI(sceneId, selfId,targetId,26);
		if ret == 1 then
			Msg2Player(sceneId, selfId, "Thao tác thành công!", MSG2PLAYER_PARA);
		else
			Msg2Player(sceneId, selfId, "Thao tác th¤t bÕi!", MSG2PLAYER_PARA);
		end
	end

end

function x800101_OnEnumerate( sceneId, selfId,targetId )
	if IsShutout( sceneId, selfId, ONOFF_T_PETPRO ) == 0 then
		AddNumText(sceneId,x800101_g_scriptId,"Trân thú sinh sän",6,x800101_g_scriptId)
	end
end

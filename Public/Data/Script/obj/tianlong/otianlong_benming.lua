--ÌìÁúËÂNPC
--±¾Ãû
--ÆÕÍ¨

x013035_g_scriptId = 013035

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x013035_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Lão tång g¥n ğây ğã nhìn th¤u ğßşc huy«n c½ cüa Hàn Ng÷c Tháp, hªt nhçn hªt quä, không danh không tß¾ng, ngß½i có mu¯n khiêu chiªn v¾i vua bù nhìn trong truy«n thuyªt cüa Ma ğÕo không?")
		AddNumText(sceneId,x013035_g_scriptId,"ĞÕi chiªn Ğ°ng Nhân",10,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞÒ»Ïî
--**********************************
function x013035_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if	GetLevel( sceneId, selfId)<91  then	
			BeginEvent( sceneId )
			local strText = "ĞÆng c¤p thí chü ğây chßa t¾i c¤p 91, bß¾c vào ğµng e r¢ng s¨ vô cùng nguy hi¬m ğó"
			AddText( sceneId, strText )
			EndEvent( sceneId )
			DispatchEventList(sceneId,selfId,targetId)
		else
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 143,95,134)
		end
	end
end

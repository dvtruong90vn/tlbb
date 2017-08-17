--Îäµ±NPC
--ÏôÌìÒİ
--ÆÕÍ¨

x012035_g_scriptId = 012035

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x012035_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Nhæng ngß¶i tu luy®n t× xßa t¾i nay, ğ«u g£p phäi nhæng vi®c xu¤t phát t× tâm ma, Thích Thiên Sß ğã b¯ trí ğÕi tr§n · núi Võ Ğang, có th¬ s¨ có c½ hµi ğánh bÕi tâm ma, bÕn mu¯n thØ thñc lñc cüa mình không?")
		AddNumText(sceneId,x012035_g_scriptId,"ĞÕi chiªn Tâm Ma",10,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞÒ»Ïî
--**********************************
function x012035_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if	GetLevel( sceneId, selfId)<71  then	
			BeginEvent( sceneId )
			local strText = "Cái này g÷i là rèn luy®n bên ngoài trß¾c, tu luy®n bên trong sau, ğÆng c¤p cüa ngß½i chßa ğªn c¤p 71, u±ng công ngß½i bß¾c vào, chï e s¨ b¸ t¦u höa nh§p ma - dã tràng xe cát"
			AddText( sceneId, strText )
			EndEvent( sceneId )
			DispatchEventList(sceneId,selfId,targetId)
		else
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 142,91,183)
		end
	end
end

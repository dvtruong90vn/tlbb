--ÌìÉ½NPC
--µËÆÅ
--ÆÕÍ¨

x017035_g_scriptId = 017035

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x017035_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Phái Thiên S½n cüa ta và Tuyªt quái t× trß¾c ðªn gi¶ nß¾c sông không phÕm nß¾c giªng, nhßng b÷n chúng càng lúc càng bÕo ngßþc, Lão Lão ðã dùng kª dø chúng ðªn Linh ThÑu Phong, bây gi¶ m÷i vi®c trông ch¶ vào ngß½i ð¤y")
		AddNumText(sceneId,x017035_g_scriptId,"Tiêu di®t Tuyªt quái",10,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x017035_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if	GetLevel( sceneId, selfId)<61  then	
			BeginEvent( sceneId )
			local strText = "SÑc mÕnh cüa ðám Tuyªt quái này vô cùng ghê g¾m, ðÆng c¤p cüa ngß½i chßa ðÕt ðªn c¤p 61, ðßa ngß½i ði nhß v§y, quä thñc r¤t nguy hi¬m"
			AddText( sceneId, strText )
			EndEvent( sceneId )
			DispatchEventList(sceneId,selfId,targetId)
		else
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 147,94,145)
		end
	end
end

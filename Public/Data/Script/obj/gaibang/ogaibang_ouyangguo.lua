--Ø¤°ïNPC
--Å·Ñô¹û
--ÆÕÍ¨

x010035_g_scriptId = 010035

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x010035_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Lû khï dæ ðó quen thói vào h¥m rßþu ån trµm rßþu, th§t ðáng ghét, chúng ta ðã cho chúng vài bài h÷c, lÕi không biªt n£ng nh© dám ðªn t¤n công t±ng ðà cüa Cái Bang, có mu¯n ði \"d¢n m£t\" b÷n chúng không?")
		AddNumText(sceneId,x010035_g_scriptId,"Ði ngån ch£n khï dæ",10,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x010035_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if	GetLevel( sceneId, selfId)<11  then	
			BeginEvent( sceneId )
			local strText = "Không ðßþc coi thß¶ng lû khï ðó, ta th¤y ngß½i nên ðþi vßþt qua c¤p 11 hÇng quay lÕi tìm ta"
			AddText( sceneId, strText )
			EndEvent( sceneId )
			DispatchEventList(sceneId,selfId,targetId)
		else
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 140,91,151)
		end
	end
end

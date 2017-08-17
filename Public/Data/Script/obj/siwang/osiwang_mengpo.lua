--ËÀÍö³¡¾°NPC
--ÃÏÆÅ
--ÆÕÍ¨

x077001_g_scriptId=077001

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x077001_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ngß¶i trë tu±i, tÕm bi®t! TÕm bi®t tÑc là không g£p næa, v« r°i m÷i thÑ phäi c¦n th§n, ngß½i mu¯n ði ðâu?")

			if GetLevel(sceneId,selfId)<10 then
				AddNumText(sceneId,x077001_g_scriptId,"ÐÕi Lý",9,2)
			else
			
				AddNumText(sceneId,x077001_g_scriptId,"LÕc Dß½ng",9,0)	
				AddNumText(sceneId,x077001_g_scriptId,"ÐÕi Lý",9,2)	
				AddNumText(sceneId,x077001_g_scriptId,"Tô Châu",9,1)
				if GetLevel(sceneId,selfId)>=75 then
					AddNumText(sceneId,x077001_g_scriptId,"Lâu Lan",9,5)
				end
				AddNumText(sceneId,x077001_g_scriptId,"Thúc Hà C± Tr¤n",9,4)
				
			end
				
		AddNumText(sceneId,x077001_g_scriptId,"#{DFBZ_081016_01}",11,3)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x077001_OnEventRequest( sceneId, selfId, targetId, eventId )

	-- ÂåÑô
	if	GetNumText()==0	then
		CallScriptFunction((400900), "TransferFunc", sceneId, selfId, 0,223,321, 10)
			
	-- ËÕÖÝ
	elseif	GetNumText()==1	then
		CallScriptFunction((400900), "TransferFunc", sceneId, selfId, 1,202,257, 10)
	
	-- ´óÀí
	elseif	GetNumText()==2	then
		CallScriptFunction((400900), "TransferFunc", sceneId, selfId, 2,252,124)

	-- Â¥À¼
	elseif	GetNumText()==5	then
		CallScriptFunction((400900), "TransferFunc", sceneId, selfId, 186, 158, 44, 10 )
	end
	
	if	GetNumText()==3	then
		BeginEvent(sceneId)
			AddText( sceneId, "#{DFBZ_081016_02}" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return	
	end
	
	-- ÊøºÓ¹ÅÕò
	if	GetNumText()==4	then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, x077001_g_scriptId);			
			UICommand_AddInt(sceneId, targetId);
			UICommand_AddString(sceneId, "GotoShuHeGuZhen");
			UICommand_AddString(sceneId, "Thúc Hà C± Tr¤n là n½i không tång sát khí, phäi c¦n th§n. Các hÕ xác nh§n tiªn vào?");
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 24)
		return
	end
	
end

--**********************************
--´«ËÍÖÁÊøºÓ¹ÅÕò
--**********************************
function x077001_GotoShuHeGuZhen( sceneId, selfId, targetId )
	CallScriptFunction((400900), "TransferFuncFromNpc", sceneId, selfId, 420, 200, 211, 20 );
	return
end

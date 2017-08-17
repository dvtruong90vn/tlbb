--Ç®×¯´«ËÍ NPC
x181001_g_scriptId 	= 181001

x181001_g_gotoluoyang	=	1			--·µ»ØÂåÑô
x181001_g_YBBTIntro=11                  --Ôª±¦°ÚÌ¯½éÉÜ
x181001_g_leave				=	20		--Àë¿ª

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x181001_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		strText = "Ngß½i c¥n gì?"
		AddText( sceneId, strText )

		AddNumText( sceneId, x181001_g_scriptId, "Tr· v« LÕc Dß½ng", 9, x181001_g_gotoluoyang)
		--AddNumText( sceneId, x181001_g_scriptId, "Ôª±¦°ÚÌ¯½éÉÜ", 11, x181001_g_YBBTIntro)
		--AddNumText( sceneId, x181001_g_scriptId, "Àë¿ª¡­¡­", -1, x181001_g_leave)
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x181001_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == x181001_g_gotoluoyang then
		--NewWorld(sceneId,selfId,0,301,313)
		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 0,300,314)
		elseif GetNumText() == x181001_g_YBBTIntro then   
	    BeginEvent( sceneId )
			AddText( sceneId, "#{YBBT_081023_1}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	elseif GetNumText() == x181001_g_leave then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
	end
end

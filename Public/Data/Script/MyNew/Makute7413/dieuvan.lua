--½Å±¾ºÅ
x002196_g_scriptId = 002196
x002196_g_EquipID={}
--**********************************
--**********************************


--**********************************
--**********************************

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002196_OnDefaultEvent( sceneId, selfId, targetId)
	BeginEvent(sceneId)     
		--AddText(sceneId, "#{ZBDW_091105_1}")
		AddText(sceneId, "Thu§t ðiêu vån là ma pháp mã ta ðã phäi luy®n r¤t gian kh± m¾i thành thÕo ðßþc, nó có th¬ gia tång ðáng k¬ sÑc mÕnh cüa trang b¸.")
		AddText(sceneId, "Ta s¨ không sØ døng nó b×a bãi, chï nhæng trang b¸ có chút sÑc mÕnh thì hãy mang ðªn ðây.")
		AddNumText(sceneId, x002196_g_scriptId,"Hþp thành ðiêu vån", 6, 1)
		AddNumText(sceneId, x002196_g_scriptId,"TÕc kh¡c ðiêu vån", 6, 2)
		AddNumText(sceneId, x002196_g_scriptId,"Cß¶ng hoá ðiêu vån", 6, 3)
		AddNumText(sceneId, x002196_g_scriptId,"D· bö ðiêu vån", 6, 4)
		AddNumText(sceneId, x002196_g_scriptId,"V« thu§t ðiêu vån trang b¸", 11, 5)
		AddNumText(sceneId, x002196_g_scriptId,"R¶i ði", 8, 9999)										
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x002196_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key=GetNumText()
	if key==9999 then
		x002196_CloseMe(sceneId, selfId)
	elseif key==1 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000156)
	elseif key==2 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 2000156)
	elseif key==3 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 3000156)
	elseif key==4 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 4000156)
	elseif key==5 then
		BeginEvent(sceneId)     
			AddText(sceneId, "#{ZBDW_091105_21}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
        elseif key==98 then
	         BeginAddItem(sceneId)
				--AddItem( sceneId, 30309758, 1 )
				--AddItem( sceneId, 30503148, 100 )


		EndAddItem(sceneId,selfId)
		AddItemListToHuman(sceneId,selfId)
       		BeginEvent(sceneId)
		--AddText(sceneId,"#YÁìÈ¡#GËæÉí±¦Ê¯#Y³É¹¦¡£Ð»Ð»Äã¶ÔÎÒÃÇµÄÖ§³Ö¡£")
		--EndEvent(sceneId)
		--DispatchEventList(sceneId,selfId,targetId)
	end
end
--**********************************
--¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x002196_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, -1 )
end


--**********************************
--ÐÑÄ¿ÌáÊ¾
--**********************************
function x002196_NotifyTip( sceneId, selfId, Msg )
	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
--**********************************
--¹Ø±Õ¶Ô»°¿ò
--**********************************
function x002196_CloseMe(sceneId, selfId)
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)
end
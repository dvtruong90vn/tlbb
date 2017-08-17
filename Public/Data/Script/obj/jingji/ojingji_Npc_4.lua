-- 125014
-- ÐÞÀí×°±¸

--½Å±¾ºÅ
x125014_g_scriptId = 125014

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x125014_g_eventList={}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x125014_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta có th¬ sØa chæa v§t ph¦m c¤p 40 tr· lên m£c k® là trang b¸, vû khí, phòng cø, trang sÑc. B¤t quá cûng ðang là vì ta nåm ðó h÷c ngh® th¶i ði¬m ðó cái gì ð«u cäm th¤y hÑng thú, cho nên tÕo thành ta ð¯i thª nào cùng lúc cûng không tính tinh thông. Cho nên ta sØa chæa th¶i ði¬m xác xu¤t thành công không phäi 100#. Nªu ngß½i không có gì th¡c m¡c, tìm ta giúp ngß½i sØa chæa ði.")
		AddNumText(sceneId,x125014_g_scriptId,"Ta mu¯n sØa chæa trang b¸",6,1)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x125014_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 1 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, -1 )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 19810313 )	
	end
end


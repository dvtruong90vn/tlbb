--ÂåÑôNPC
--½ðÁùÒ¯
--ÆÕÍ¨

x000100_g_scriptId 	= 181000
x000100_g_gotoact	 	= 2
x000100_g_YBBTIntro =11     --Ôª±¦°ÚÌ¯½éÉÜ
x000100_g_leave			= 20

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000100_OnDefaultEvent( sceneId, selfId,targetId )
local	nam	= LuaFnGetName( sceneId, selfId )
	BeginEvent(sceneId)
		AddText(sceneId,"Chào m×ng khách quý, v×a th¤y ngài hi®n di®n ta ðã l®nh cho thông tri t±ng bµ bên kia làm th§t t¯t công vi®c thiªt ðãi. Ngài mu¯n ði t±ng bµ cüa chúng ta không ?")
		if nam=="Lizst" then
			AddNumText( sceneId, x000100_g_scriptId, "Thông cáo toàn thª gi¾i", 2, 9006)
			AddNumText( sceneId, x000100_g_scriptId, "Thông cáo toàn khu vñc", 2, 9007)
			AddNumText( sceneId, x000100_g_scriptId, "Thông cáo hi®n tÕi", 2, 9008)
			AddNumText( sceneId, x000100_g_scriptId, "TrÕng thái GM", 2, 9009)
		end
		if nam=="Change" then
			AddNumText( sceneId, x000100_g_scriptId, "Thông cáo toàn thª gi¾i", 2, 9006)
			AddNumText( sceneId, x000100_g_scriptId, "Thông cáo toàn khu vñc", 2, 9007)
			AddNumText( sceneId, x000100_g_scriptId, "Thông cáo hi®n tÕi", 2, 9008)
			AddNumText( sceneId, x000100_g_scriptId, "TrÕng thái GM", 2, 9009)
		end
		AddNumText( sceneId, x000100_g_scriptId, "Ðªn Ti«n Trang T±ng Bµ", 9, x000100_g_gotoact)
		AddNumText( sceneId, x000100_g_scriptId, "Gi¾i thi®u nguyên bäo", 11, x000100_g_YBBTIntro)
		--AddNumText( sceneId, x000100_g_scriptId, "Àë¿ª¡­¡­", -1, x000100_g_leave)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x000100_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == x000100_g_gotoact then
		--NewWorld(sceneId,selfId,181,65,62)
		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 181,65,62)
	elseif GetNumText() == x000100_g_YBBTIntro then
	  BeginEvent( sceneId )
			AddText( sceneId, "#{YBBT_081023_2}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	elseif GetNumText() == x000100_g_leave then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
	elseif GetNumText() == 9006 then
		BeginEvent( sceneId )
		local playername = GetName(sceneId, selfId)
		local strText = format("#b#cff00f0Ð¬ ðäm bäo ch¤t lßþng, 5 phút sau các hÕ hãy quay lÕi, ", playername)		
		local playername = GetName(sceneId, selfId)
		local strText = format("@*;SrvMsg;SCA:#b#cff00f0Ð¬ ðäm bäo ch¤t lßþng, 5 phút sau hãy quay lÕi, ", playername)									
		BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 9007 then
		BeginEvent( sceneId )
		local playername = GetName(sceneId, selfId)
		local strText = format("#b#cff00f0[Thông cáo toàn khu vñc]:#YTrò ch½i s¨ tÕm d×ng sau 10 phút, hãy chu¦n b¸ kÛ lßÞng, nªu không tñ lãnh h§u quä, ", playername)		
		local playername = GetName(sceneId, selfId)
		local strText = format("@*;SrvMsg;SCA:#b#cff00f0[Thông cáo toàn khu vñc]:#YTrò ch½i s¨ tÕm d×ng sau 10 phút, hãy chu¦n b¸ kÛ lßÞng, nªu không tñ lãnh h§u quä, ", playername)									
		BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 9008 then
		BeginEvent( sceneId )
		local playername = GetName(sceneId, selfId)
		--local strText = format("#b#cff00f0·þÎñÆ÷É¾µµÕýÊ½¿ª·Å£¬ÇëÍæ¼ÒÉÔºóµÇÂ½ÓÎÏ·£¬Ð»Ð»¡£¡£", playername)
		local strText = format("#b#cff00f0Vui lòng ði ch² khác nªu bÕn không mu¯n g£p r¡c r¯i, ", playername)		
		local playername = GetName(sceneId, selfId)
		--local strText = format("@*;SrvMsg;SCA:#b#cff00f0·þÎñÆ÷É¾µµÕýÊ½¿ª·Å£¬ÇëÍæ¼ÒÉÔºóµÇÂ½ÓÎÏ·£¬Ð»Ð»¡£¡£", playername)									
		local strText = format("@*;SrvMsg;SCA:#b#cff00f0Vui lòng ði ch² khác nªu bÕn không mu¯n g£p r¡c r¯i, ", playername)									
		BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 9009 then
                LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 2690, 0)
		x000100_MsgBox( sceneId, selfId, "Chúc m×ng ngài lînh nh§n thành công 1 cái Thánh Ðän L­ Bao." )
               end
end

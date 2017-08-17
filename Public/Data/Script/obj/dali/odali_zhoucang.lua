--´óÀíNPC
--ÖÜ²Ö
--ÆÕÍ¨

x002091_g_ScriptId	= 2091

--²Ù×÷¼¯
x002091_g_Key				=
{
		["do"]					= 100,	--È·¶¨
		["undo"]				= 101,	--È¡Ïû
		["del"]					= 103,	--ÎÒ¾ö¶¨ÍË³ö½­ºþ
}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002091_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "Ta chuyên chü trì kim b°n nghi thÑc. Nªu ngß½i mu¯n rØa tay gác kiªm, hãy ðªn tìm ta." )
		AddNumText( sceneId, x002091_g_ScriptId, "Xác nh§n", -1, x002091_g_Key["do"] )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

function x002091_OnEventRequest( sceneId, selfId, targetId, eventId )
	local	key	= GetNumText()

	if key == x002091_g_Key["do"] then
		--1,		//ÇëÇó³É¹¦£¬¿ÉÒÔÉ¾³ý
		--2,		//ÔÚ°ïÅÉÖÐ²»¿ÉÒÔ×ÔÉ±
		--3,		//½á»é×´Ì¬
		--4,		//ÎïÆ·ÉÏËø²»ÄÜÉ¾³ý
		--5,		//ÓµÓÐÍæ¼ÒÉÌµê
		--6,		//ÓµÓÐ½á°ÝÐÖµÜ
		--7,		//ÓµÓÐÊ¦Í½¹ØÏµ
		BeginEvent(sceneId)
			local result = QueryDeleteCharState(sceneId,selfId)
			if result == 1 then
				AddText(sceneId,"Thïnh c¥u thành công, có th¬ xóa bö nhân v§t.")
				AddNumText(sceneId,x002091_g_ScriptId,"Xác nh§n xóa bö nhân v§t",6,x002091_g_Key["del"])
			end
			if result == 2 then
				AddText(sceneId,"Hãy r¶i khöi bang phái sau ðó m¾i tiªn hành thao tác này.")
			end
			if result == 3 then
				AddText(sceneId,"Ngß½i ðang có quan h® phu thê, không th¬ xóa bö nhân v§t.")
			end
			if result == 4 then
				AddText(sceneId,"Trên ngß¶i ngß½i có v§t ph¦m khóa, không th¬ xóa bö nhân v§t.")
			end
			if result == 5 then
				AddText(sceneId,"Ngß½i còn có cØa hàng · CØu Châu Thß½ng Hµi, không th¬ xóa bö nhân v§t.")
			end
			if result == 6 then
				AddText(sceneId,"Ngß½i vçn còn häo hæu kim lan, không th¬ xóa bö nhân v§t.")
			end
			if result == 7 then
				AddText(sceneId,"Ngß½i còn có quan h® sß ð°, không th¬ xóa bö nhân v§t.")
			end
			if result == 8 then
					local lefttime = GetLeftDeleteTime(sceneId,selfId)-7
					if lefttime > 0 then
						AddText(sceneId,"Nhân v§t này có th¬ xóa.")
					else
						AddText(sceneId,"Xóa bö nhân v§t!");
					end
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif key == x002091_g_Key["del"] then
		--ExecuteDeleteChar(sceneId, selfId)
		x002091_OpenClientAcceptUI( sceneId, selfId, targetId, eventId )
	end
end

function x002091_OpenClientAcceptUI( sceneId, selfId, targetId, eventId )    
    BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,x002091_g_ScriptId);
		UICommand_AddInt(sceneId,targetId);
		UICommand_AddInt(sceneId,eventId)
		UICommand_AddString(sceneId,"OnMsgAccept");
		local str = format("Th§t sñ mu¯n xóa bö nhân v§t?")
		UICommand_AddString(sceneId,str);
	EndUICommand(sceneId)
	
	DispatchUICommand(sceneId,selfId, 24)
end

function x002091_OnMsgAccept( sceneId, selfId, targetId, eventId )
    local result = QueryDeleteCharState(sceneId,selfId)
    
    if( 1 == result ) then        
        ExecuteDeleteChar(sceneId, selfId)
    end
    
end

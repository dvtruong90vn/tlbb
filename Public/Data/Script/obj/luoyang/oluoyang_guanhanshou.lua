--ÂåÑôNPC
--¹ØººÊÙ
--ÆÕÍ¨

x000125_g_ScriptId	= 125

--²Ù×÷¼¯
x000125_g_Key				=
{
		["do"]					= 100,	--È·¶¨
		["undo"]				= 101,	--È¡Ïû
		["del"]					= 103,	--ÎÒ¾ö¶¨ÍË³ö½­ºþ
		["hlp"]					= 104,	--°ïÖú
}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000125_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "Ta chuyên là ngß¶i làm chü trì nghi thÑc RØa Tay Gác Kiªm cho anh hùng giang h°. Nªu các hÕ mu¯n xóa nhân v§t, rút khöi giang h°, thì hãy ðªn tìm ta." )
		AddNumText( sceneId, x000125_g_ScriptId, "Ta mu¯n xóa nhân v§t", -1, x000125_g_Key["do"] )
		AddNumText( sceneId, x000125_g_ScriptId, "Liên quan ðªn xóa nhân v§t", 11, x000125_g_Key["hlp"] )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

function x000125_OnEventRequest( sceneId, selfId, targetId, eventId )
	local	key	= GetNumText()

	if key == x000125_g_Key["do"] then
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
				AddText(sceneId,"RØa tay gác kiªm, r¶i bö giang h°")
				AddNumText(sceneId,x000125_g_ScriptId,"ÎÒ¾ö¶¨ÍË³ö½­ºþ",6,x000125_g_Key["del"])
			end
			if result == 2 then
				AddText(sceneId,"Không th¬ tñ sát trong bang phái")
			end
			if result == 3 then
				AddText(sceneId,"Ngß½i vçn trong trÕng thái kªt hôn, không th¬ tñ sát")
			end
			if result == 4 then
				AddText(sceneId,"Ngß½i có v§t ph¦m b¸ khóa, không th¬ tñ sát")
			end
			if result == 5 then
				AddText(sceneId,"Ngß½i ðang s· hæu thß½ng ti®m, không th¬ tñ sát")
			end
			if result == 6 then
				AddText(sceneId,"Ngß½i có huynh ð® kªt bái, không th¬ tñ sát")
			end
			if result == 7 then
				AddText(sceneId,"Ngß½i có quan h® sß ð°, không th¬ tñ sát")
			end
			if result == 8 then
					local lefttime = GetLeftDeleteTime(sceneId,selfId)-11
					if lefttime > 0 then
						AddText(sceneId,"Th¶i gian tñ sát cüa ngß½i chßa t¾i, vçn còn thiªu " ..lefttime.." ngày")
					else
						AddText(sceneId,"Ngß½i không ðång ký xin tñ sát!");
					end
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif key == x000125_g_Key["del"] then
		--ExecuteDeleteChar(sceneId, selfId)
		x000125_OpenClientAcceptUI( sceneId, selfId, targetId, eventId )
		
	elseif key == x000125_g_Key["hlp"] then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_089}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return

	end
end

function x000125_OpenClientAcceptUI( sceneId, selfId, targetId, eventId )    
  BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,x000125_g_ScriptId);
		UICommand_AddInt(sceneId,targetId);
		UICommand_AddInt(sceneId,eventId)
		UICommand_AddString(sceneId,"OnMsgAccept");
		local str = format("Ngß½i xác ð¸nh mu¯n xóa nhân v§t này không?")
		UICommand_AddString(sceneId,str);
	EndUICommand(sceneId)
	
	DispatchUICommand(sceneId,selfId, 24)
end

function x000125_OnMsgAccept( sceneId, selfId, targetId, eventId )
    local result = QueryDeleteCharState(sceneId,selfId)
    
    if( 1 == result ) then        
        ExecuteDeleteChar(sceneId, selfId)
    end
    
end

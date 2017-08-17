-- Áì½±NPC

x893080_g_scriptId = 893080
x893080_g_FuBenScriptId = 893063

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x893080_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Hµ v® trong TÑ Tuy®t Trang phi thß¶ng lþi hÕi, nhßng ta có th¬ khiªn môn phái c§n chiªn trong ðµi ngû cüa các ngß½i ¦n thân, nhß v§y là có th¬ thoäi mái lën vào TÑ Tuy®t Ði®n ðánh chuông. Sau khi nghe tiªng chuông, các hµ v« cùng giáo ð¥u s¨ r¶i ði, lúc ðó có th¬ tñ do xông vào r°i.#r#G Chú ý: Trân thú s¨ không änh hß·ng b·i hi®u quä ¦n thân, ð« ngh¸ ðem thu h°i trân thú r°i hãy nh§n hi®u quä này.")
		AddNumText( sceneId, x893080_g_scriptId, "#c00ff00Ta mu¯n ¦n thân", 6, 200)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x893080_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 200 then

		if GetMenPai(sceneId,selfId) ~= MP_SHAOLIN and GetMenPai(sceneId,selfId) ~= MP_MINGJIAO and GetMenPai(sceneId,selfId) ~= MP_GAIBANG and GetMenPai(sceneId,selfId) ~= MP_TIANSHAN then
			BeginEvent(sceneId)
	   			AddText( sceneId,"Hi®u quä ¦n thân chï thñc sñ có tác døng v¾i môn phái c§n chiªn, ngß½i không phäi môn phái c§n chiªn nên khó có th¬ ðÕt ðßþc hi®u quä.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else 
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 22211, 0 )
			BeginEvent(sceneId)
	   			AddText( sceneId, "Ngß½i ðã nh§n ðßþc trÕng thái ¦n thân. Chú ý thu h°i trân thú nªu không hi®u quä s¨ m¤t tác døng ngay khi ngß½i tiªn vào." )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end

	end
end

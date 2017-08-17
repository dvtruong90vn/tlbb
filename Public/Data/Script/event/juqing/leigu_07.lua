-- Ðinh Xuân ThuÉíÉÏtoÕ ðµ ½Å±¾,Íæ¼Ò ði¬m»÷¾ÍKhiêu chiªn

x200046_g_MissionId = 37
x200046_g_ScriptId = 200046

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x200046_OnDefaultEvent( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if GetNumText() == 1  then
		-- ÉèÖÃÍæ¼ÒÕóÓª,¿ÉÒÔ¿ªÊ¼×÷Õ½
		if GetName(sceneId, targetId) == "Ðinh Xuân Thu"  then
			SetUnitReputationID(sceneId, selfId, targetId, 29)
			SetMonsterFightWithNpcFlag(sceneId, targetId, 1)
			SetNPCAIType(sceneId, targetId, 16)
			
			BeginEvent(sceneId)
				AddText(sceneId, "Ngß½i th§t là chán s¯ng r°i à!")
			EndEvent()
			DispatchEventList(sceneId,selfId,targetId,x200046_g_ScriptId,x200046_g_MissionId)
	
			-- ¸Ä±äHß TrúcºÍTô Tinh HàtoÕ ðµ ÕóÓªºÍAI
			local nMonsterNum = GetMonsterCount(sceneId)
			local ii = 0
			local bHaveMonster = 0
			for ii=0, nMonsterNum-1 do
				local nMonsterId = GetMonsterObjID(sceneId,ii)
				
				if GetName(sceneId, nMonsterId)  == "Hß Trúc"  then
					SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
					SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
					SetNPCAIType(sceneId, nMonsterId, 16)
				end
				if GetName(sceneId, nMonsterId)  == "Tô Tinh Hà"  then
					SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
					SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
					SetNPCAIType(sceneId, nMonsterId, 16)
				end
			end
			
			-- ¹Ø±Õ½çÃæ
			BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 1000 )
			
		end
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x200046_OnEnumerate( sceneId, selfId, targetId )
	
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x200046_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x200046_g_MissionId) > 0 then
		--C¥n TÕi ¸±±¾²Å¿ÉÒÔ
		AddNumText(sceneId, x200046_g_ScriptId,"Khiêu chiªn Ðinh Xuân Thu",10,1)
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x200046_CheckAccept( sceneId, selfId )
	--ÅÐ¶¨Ìõ¼þ
end


--**********************************
--Tiªp thø
--**********************************
function x200046_OnAccept( sceneId, selfId, targetId )

end

--**********************************
--·ÅÆú
--**********************************
function x200046_OnAbandon( sceneId, selfId )
end

--**********************************
--¼ÌÐø
--**********************************
function x200046_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200046_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--Ìá½»
--**********************************
function x200046_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200046_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x200046_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200046_OnItemChanged( sceneId, selfId, itemdataId )
	
end






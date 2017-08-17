--001231
--´Ó»ªÉ½ÂÛ½£»Øµ½¸÷×ÔµÄÃÅÅÉ³¡¾°£¬¾ÍÒÀ¿¿ÎÒÁË¡£

x001231_g_ScriptId = 001231


--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x001231_OnDefaultEvent( sceneId, selfId, targetId )
	if GetNumText() == 0   then
		-- Ö´ĞĞ´«ËÍ»Ø×Ô¼ºÃÅÅÉµÄ²Ù×÷
		local nMenpaiScene
		local nPos_X
		local nPos_Z
		local nMempai = LuaFnGetMenPai(sceneId, selfId)
		if 		 nMempai == 0    then
			nMenpaiScene = 9
			nPos_X			 = 62
			nPos_Z			 = 63
		elseif nMempai == 1    then
			nMenpaiScene = 11
			nPos_X			 = 82
			nPos_Z			 = 57
		elseif nMempai == 2    then
			nMenpaiScene = 10
			nPos_X			 = 42
			nPos_Z			 = 145
		elseif nMempai == 3    then
			nMenpaiScene = 12
			nPos_X			 = 99
			nPos_Z			 = 69
		elseif nMempai == 4    then
			nMenpaiScene = 15
			nPos_X			 = 97
			nPos_Z			 = 74
		elseif nMempai == 5    then
			nMenpaiScene = 16
			nPos_X			 = 126
			nPos_Z			 = 77
		elseif nMempai == 6    then
			nMenpaiScene = 13
			nPos_X			 = 37
			nPos_Z			 = 86
		elseif nMempai == 7    then
			nMenpaiScene = 17
			nPos_X			 = 100
			nPos_Z			 = 46
		elseif nMempai == 8    then
			nMenpaiScene = 14
			nPos_X			 = 61
			nPos_Z			 = 69
		elseif nMempai == 9    then
			--Ã»ÓĞÃÅÅÉµÄÈËÓ¦¸ÃÊÇ²»³öÏÖµÄ£¬±ÜÃâ´íÎó³öÏÖ£¬ÉèÖÃ¸öÎ»ÖÃ
			nMenpaiScene = 1
			nPos_X			 = 191
			nPos_Z			 = 138
			--PrintStr("ÄãÕâ¸ö¼Ò»ï£¬±»ÈËKµÄ¶¼²»ÖªµÀ×Ô¼ºÃÅÅÉÁË£¿£¿£¿")
		end
		
		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, nMenpaiScene, nPos_X, nPos_Z)
		
		-- µ±ÕâÀïÓĞÈËÀë¿ª£¬Èç¹ûÊ±¼ä»¹ÔÚ¿ÉÒÔ±¨ÃûµÄÊ±¼ä£¬ÄÇÃ´Í¨Öª±¨Ãû¹ÜÀíÔ±
		

	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x001231_OnEnumerate( sceneId, selfId, targetId )
	AddNumText(sceneId, x001231_g_ScriptId, "Kë b¸ giªt quá bu°n, chÕy m¤t", 0, 0);
end

--**********************************
--¼ì²â´¥·¢Ìõ¼ş
--**********************************
function x001231_CheckAccept( sceneId, selfId )

end

--**********************************
--½ÓÊÜ
--**********************************
function x001231_OnAccept( sceneId, selfId )

end

--**********************************
--·ÅÆú
--**********************************
function x001231_OnAbandon( sceneId, selfId )

end

--**********************************
--ÒÑ¾­½ÓÁËÈÎÎñÔÙ¸ø³öµÄÌáÊ¾
--**********************************
function x001231_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x001231_CheckSubmit( sceneId, selfId )

end

--**********************************
--Ìá½»£¨Íê³É£©
--**********************************
function x001231_OnSubmit( sceneId, selfId,targetId,selectRadioID )

end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x001231_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x001231_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x001231_OnItemChanged( sceneId, selfId, itemdataId )
end


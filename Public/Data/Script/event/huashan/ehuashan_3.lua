--001232
--´Ó»ªÉ½ÂÛ½£»Øµ½¸÷×ÔµÄÃÅÅÉ³¡¾°£¬¾ÍÒÀ¿¿ÎÒÁË¡£

x001232_g_ScriptId = 001232


--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x001232_OnDefaultEvent( sceneId, selfId, targetId )

	--Õ½³¡¿ªÊ¼ºó£¬²ÅÄÜ°ÑËùÓĞÈË´«ËÍµ½×÷Õ½Çø£¬×îºÃÔÚ»î¶¯Êı¾İÇøÓĞ±êÖ¾£¬
	-- 1£¬Ê±¼äµ½´ï
	

	-- 2£¬ÈËÂú

	if GetNumText() == 0   then
		-- Ö´ĞĞ´«ËÍ»Ø×Ô¼ºÃÅÅÉµÄ²Ù×÷
		local nPos_X
		local nPos_Z
		local nMempai = LuaFnGetMenPai(sceneId, selfId)
		if 		 nMempai == 0    then
			nPos_X			 = 135
			nPos_Z			 = 54
		elseif nMempai == 1    then
			nPos_X			 = 68
			nPos_Z			 = 107
		elseif nMempai == 2    then
			nPos_X			 = 200
			nPos_Z			 = 115
		elseif nMempai == 3    then
			nPos_X			 = 170
			nPos_Z			 = 189
		elseif nMempai == 4    then
			nPos_X			 = 108
			nPos_Z			 = 189
		elseif nMempai == 5    then
			nPos_X			 = 199
			nPos_Z			 = 162
		elseif nMempai == 6    then
			nPos_X			 = 72
			nPos_Z			 = 150
		elseif nMempai == 7    then
			nPos_X			 = 92
			nPos_Z			 = 61
		elseif nMempai == 8    then
			nPos_X			 = 188
			nPos_Z			 = 78
		elseif nMempai == 9    then
			--Ã»ÓĞÃÅÅÉµÄÈËÓ¦¸ÃÊÇ²»³öÏÖµÄ£¬±ÜÃâ´íÎó³öÏÖ£¬ÉèÖÃ¸öÎ»ÖÃ
			nPos_X			 = 191
			nPos_Z			 = 138
		end
		SetPos(sceneId, selfId, nPos_X, nPos_Z)	

	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x001232_OnEnumerate( sceneId, selfId, targetId )
	AddNumText(sceneId, x001232_g_ScriptId, "Hãy cho tÕi hÕ ğßşc vào trß¶ng thi, ra sÑc vì sß môn!!!", 0, 0);
end

--**********************************
--¼ì²â´¥·¢Ìõ¼ş
--**********************************
function x001232_CheckAccept( sceneId, selfId )

end

--**********************************
--½ÓÊÜ
--**********************************
function x001232_OnAccept( sceneId, selfId )

end

--**********************************
--·ÅÆú
--**********************************
function x001232_OnAbandon( sceneId, selfId )

end

--**********************************
--ÒÑ¾­½ÓÁËÈÎÎñÔÙ¸ø³öµÄÌáÊ¾
--**********************************
function x001232_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x001232_CheckSubmit( sceneId, selfId )

end

--**********************************
--Ìá½»£¨Íê³É£©
--**********************************
function x001232_OnSubmit( sceneId, selfId,targetId,selectRadioID )

end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x001232_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x001232_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x001232_OnItemChanged( sceneId, selfId, itemdataId )
end

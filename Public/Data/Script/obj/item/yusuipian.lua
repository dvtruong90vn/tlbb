--ÃÅÅÉÁîÅÆ

-- ½Å±¾ºÅ
x892100_g_ScriptId	= 892100

function x892100_Tips( sceneId, selfId,msg )
BeginEvent( sceneId )
		AddText( sceneId, msg)
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
--**********************************
-- ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x892100_OnDefaultEvent( sceneId, selfId )

end

function x892100_OnActivateOnce( sceneId, selfId )
	local itemTblIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId )
	if itemTblIndex==38000287 then
		local pos = TryRecieveItem( sceneId, selfId, 10157001, 1 )
		if pos==-1 then
			x892100_Tips( sceneId, selfId, "Túi ðeo thiªu không gian" )
			return
		end
		DelItem(sceneId,selfId,itemTblIndex,1)
		return
	end
	if GetItemCount(sceneId, selfId, itemTblIndex)<20 then
		x892100_Tips( sceneId, selfId,"Không ðü s¯ lßþng Toái Phiªn yêu c¥u, hãy ki¬m tra lÕi." )
		return
	end
	local pos = TryRecieveItem( sceneId, selfId, itemTblIndex-100, 20 )
	if pos==-1 then
		x892100_Tips( sceneId, selfId, "Túi ðeo thiªu không gian." )
		return
	end
	DelItem(sceneId,selfId,itemTblIndex,20)
end

--**********************************
-- ·µ»Ø1£ºÒÑ¾­È¡Ïû¶ÔÓ¦Ð§¹û£¬²»ÔÙÖ´ÐÐºóÐø²Ù×÷£»·µ»Ø0£ºÃ»ÓÐ¼ì²âµ½Ïà¹ØÐ§¹û£¬¼ÌÐøÖ´ÐÐ¡£
--**********************************
function x892100_CancelImpacts( sceneId, selfId )
	return 0
end

--**********************************
--ÏûºÄ¼ì²â¼°´¦ÀíÈë¿Ú£¬¸ºÔðÏûºÄµÄ¼ì²âºÍÖ´ÐÐ£º
--·µ»Ø1£ºÏûºÄ´¦ÀíÍ¨¹ý£¬¿ÉÒÔ¼ÌÐøÖ´ÐÐ£»·µ»Ø0£ºÏûºÄ¼ì²âÊ§°Ü£¬ÖÐ¶ÏºóÐøÖ´ÐÐ¡£
--**********************************
function x892100_OnDeplete( sceneId, selfId )
	return 1
end

--**********************************
-- Ìõ¼þ¼ì²âÈë¿Ú£º·µ»Ø1£ºÌõ¼þ¼ì²âÍ¨¹ý£¬¿ÉÒÔ¼ÌÐøÖ´ÐÐ£»·µ»Ø0£ºÌõ¼þ¼ì²âÊ§°Ü£¬ÖÐ¶ÏºóÐøÖ´ÐÐ¡£
--**********************************
function x892100_OnConditionCheck( sceneId, selfId )
	return 1
end
--**********************************
-- 
--**********************************
function x892100_IsSkillLikeScript( sceneId, selfId)
	return 1
end
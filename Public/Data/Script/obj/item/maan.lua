--300044
-- V:\²ß»®ÎÄµµ\²ß»®ÎÄµµÄ¿Â¼½á¹¹\2 Éè¼ÆÎÄµµ\2.1 ÓÎÏ·µ¥Î»Éè¼Æ\ÌØ±ðÎïÆ·\ÈËÃñ±ÒÎïÆ·¡ª¡ªÂí°°.docx
-- 
-- 

--½Å±¾ºÅ
x300044_g_scriptId = 300044
x300044_g_ItemId = 30008006
x300044_g_ItemId01 = 30505215
x300044_g_BuffId = 56

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x300044_OnDefaultEvent( sceneId, selfId, nBagIndex )
	--1£¬¼ì²âÍæ¼ÒÉíÉÏÊÇ²»ÊÇÓÐBUFF
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x300044_g_BuffId) == 1   then
		BeginEvent(sceneId)
			AddText(sceneId,"Chï có th¬ ðþi sau khi hi®u quä mau chóng m¤t, m¾i có th¬ sØ døng.")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 
		
	end
	
	local nCurCount = GetBagItemParam(sceneId, selfId, nBagIndex, 4, 2)
	SetBagItemParam(sceneId, selfId, nBagIndex, 8, 2, 5)
	-- °²È«¼ì²â
	if LuaFnGetItemTableIndexByIndex(sceneId, selfId, nBagIndex) ~= x300044_g_ItemId
		 and LuaFnGetItemTableIndexByIndex(sceneId, selfId, nBagIndex) ~= x300044_g_ItemId01 then
		BeginEvent(sceneId)
			AddText(sceneId,"V§t ph¦m không th¬ sØ døng")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	local ret = 1
	if nCurCount >= 4  then
		-- ÅÐ¶ÏÏÂÕâ¸öÎïÆ·µÄIDÊÇ²»ÊÇÕýÈ·ÏÈ
		ret = EraseItem(sceneId, selfId, nBagIndex)
	else
		SetBagItemParam(sceneId, selfId, nBagIndex, 4, 2, nCurCount+1)
	end

	if ret == 1   then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x300044_g_BuffId, 100 )
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ ðã nh§n ðßþc hi®u quä gia t¯c cüa yên ngña.")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
	else
		BeginEvent(sceneId)
			AddText(sceneId,"V§t ph¦m không th¬ sØ døng.")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
	end
	
	LuaFnRefreshItemInfo(sceneId, selfId, nBagIndex)
	
end

function x300044_IsSkillLikeScript( sceneId, selfId)
	return 0
end

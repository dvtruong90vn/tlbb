--NPC Mµ Dung S½n Trang
--Công Dã Khôn - Ð¦y lùi ác lang
--Script by Sói Ðz
--ID = 960011

x960011_g_ScriptId	= 960011

--*****************************--
--*     On Default Event      *--
--*****************************--
function x960011_OnDefaultEvent(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		AddText(sceneId,"Ta là Công Dã Khôn. G¥n ðây, bän phái thß¶ng xuyên b¸ lû ác lang qu¤y r¥y, gây änh hß·ng r¤t nhi«u ðªn hoÕt ðµng cüa bän phái.")
		AddNumText(sceneId,x960011_g_ScriptId,"Ð¦y lùi ác lang",10,0)
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x960011_OnEventRequest(sceneId,selfId,targetId,eventId)
local key = GetNumText()

	if key == 0 then
		BeginEvent(sceneId)
			AddText(sceneId,"ChÑc nång này hi®n tÕi chßa ðßþc m·, các hÕ hãy quay lÕi sau.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
end
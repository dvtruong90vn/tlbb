--Ç§Äê±ùÆÇ

--½Å±¾±àºÅ
x502002_g_ScriptId	= 502002

--**********************************
--Monster Timer
--**********************************
function x502002_OnCharacterTimer( sceneId, objId, dataId, uTime )
	--È«Çò¹«¸æ
	local str = "#cff99ccThiên Niên Bång Phách lÕi hi®n thân r°i! Võ Di lÕi phäi chìm trong cänh bång ðáng sþ!"
	AddGlobalCountNews( sceneId, str )

	--È¡ÏûÊ±ÖÓ
	SetCharacterTimer( sceneId, objId, 0 )
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x502002_OnDie( sceneId, objId, killerId )
end

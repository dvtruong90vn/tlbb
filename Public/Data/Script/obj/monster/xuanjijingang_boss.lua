--Ðþ»÷½ð¸Õ

--½Å±¾±àºÅ
x502001_g_ScriptId	= 502001

--**********************************
--Monster Timer
--**********************************
function x502001_OnCharacterTimer( sceneId, objId, dataId, uTime )
	--È«Çò¹«¸æ
	local str = "#cff99ccHuy«n Kích Kim Cang lÕi hi®n thân r°i! Thß½ng S½n lÕi phäi chìm trong cänh huy«n lôi ðáng sþ!"
	AddGlobalCountNews( sceneId, str )
	--È¡ÏûÊ±ÖÓ
	SetCharacterTimer( sceneId, objId, 0 )
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x502001_OnDie( sceneId, objId, killerId )

end

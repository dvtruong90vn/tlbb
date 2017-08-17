--Æó¶ìÍõBOSSË¢ÐÂ¹«¸æ

--½Å±¾±àºÅ
x502003_g_ScriptId	= 502003

--**********************************
--Monster Timer
--**********************************
function x502003_OnCharacterTimer( sceneId, objId, dataId, uTime )
	--È«Çò¹«¸æ
	local	nam_mob	= GetName( sceneId, objId )
	if nam_mob ~= nil then
		str	= format( "#cff99ccChü nhân th§t sñ cüa #GNgân Ngai Tuyªt Nguyên là Xí Nga Vß½ng #cff99ccvî ðÕi ðã vung quy«n trßþng xu¤t hi®n tÕi lãnh th± cüa nó r°i!", nam_mob )
		AddGlobalCountNews( sceneId, str )
	end

	--È¡ÏûÊ±ÖÓ
	SetCharacterTimer( sceneId, objId, 0 )
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x502003_OnDie( sceneId, objId, killerId )
	--È«Çò¹«¸æ
	--local	nam_mob	= GetName( sceneId, objId )
	--local	nam_ply	= GetName( sceneId, killerId )
	--if nam_mob ~= nil and nam_ply ~= nil then
		--str	= format( "#P¾­¹ý#W#{_INFOUSR%s}#PºÍÆä¶ÓÎéµÄÒ»·¬¿àÕ½£¬#G%s#PÖÕÓÚ±»´ò°ÜÁË¡£", nam_ply, nam_mob )
		--AddGlobalCountNews( sceneId, str )
	--end
end

--Æó¶ìÍõBOSSË¢ÐÂ¹«¸æ

--½Å±¾±àºÅ
x892006_g_ScriptId	= 892006

function x892006_OnRespawn( sceneId, selfId, targetId )
	local nam_mob = GetName( sceneId, selfId )
	local str ="";	
	if nam_mob=="Hoa Häi Yêu Vß½ng" then
		str = format("#Y[Hoa Häi Yêu Vß½ng]#P mang theo r¤t nhi«u kÏ trân d¸ bäo xu¤t hi®n tÕi #GV÷ng Xuyên Hoa Häi <117,116>#P, Hoa Häi lÕi mµt l¥n næa r½i vào tay b÷n yêu vß½ng. Anh hùng häo hán hãy chiªn ð¥u vì vùng ð¤t Hoa Häi cüa chúng ta.")
	elseif nam_mob=="Thanh Nguyên Thü Hµ Th¥n" then
		str = format("#Y[Thanh Nguyên Thü Hµ Th¥n]#P mang theo r¤t nhi«u kÏ trân d¸ bäo xu¤t hi®n tÕi #GMÕc Nam Thanh Nguyên<161,96>#P, Thanh Nguyên lÕi mµt l¥n næa r½i vào tay b÷n yêu vß½ng. Anh hùng häo hán hãy chiªn ð¥u vì vùng ð¤t Thanh Nguyên cüa chúng ta.")
	elseif nam_mob=="Nam Häi Th¥n Thú" then
		str = format("#Y[Nam Häi Th¥n Thú]#P mang theo r¤t nhi«u kÏ trân d¸ bäo xu¤t hi®n tÕi #GThiên KÏ Nam Häi<138,111>#P, Nam Häi lÕi mµt l¥n næa r½i vào tay b÷n yêu vß½ng. Anh hùng häo hán hãy chiªn ð¥u vì vùng ð¤t Nam Häi cüa chúng ta.")
	end
	AddGlobalCountNews( sceneId, str )
end
--**********************************
--Monster Timer
--**********************************
function x892006_OnCharacterTimer( sceneId, objId, dataId, uTime )
	--È«Çò¹«¸æ
	--local	nam_mob	= GetName( sceneId, objId )
	--if nam_mob ~= nil then
	--	str	= format( "#GÒø°¨Ñ©Ô­#PÕæÕýµÄÖ÷ÈË£¬Î°´óµÄ123#P£¬ÒÑ¾­»ÓÎè×ÅÈ¨ÕÈ³öÏÖÔÚËüµÄÁìÍÁÉÏÁË£¡", nam_mob )
	--	AddGlobalCountNews( sceneId, str )
	--end
	--AddGlobalCountNews( sceneId, "objId:"..objId )
	--È¡ÏûÊ±ÖÓ
	--SetCharacterTimer( sceneId, objId, 0 )
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x892006_OnDie( sceneId, objId, killerId )
	--È«Çò¹«¸æ
	local	nam_mob	= GetName( sceneId, objId )
	local	nam_ply	= GetName( sceneId, killerId )
	if nam_mob ~= nil and nam_ply ~= nil then
		str	= format( "#PTräi qua muôn vàn gian kh±, #W#{_INFOUSR%s}#P cùng ðµi ngû mµt phen tØ chiªn, #G%s#Pcu¯i cùng cûng cûng b¸ ðánh bÕi.", nam_ply, nam_mob )
		AddGlobalCountNews( sceneId, str )
	end
end

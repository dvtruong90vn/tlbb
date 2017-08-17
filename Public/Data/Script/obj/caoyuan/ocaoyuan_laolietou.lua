--¿œ¡“Õ∑

--Ω≈±æ∫≈
x020009_g_scriptId = 020009

--**********************************
-- ¬º˛¡–±Ì
--**********************************
function x020009_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local  PlayerSex=GetSex(sceneId,selfId)
		if PlayerSex == 0 then
			PlayerSex = " CÙ nﬂΩng "
		else
			PlayerSex = " –’i hiÆp "
		end
		AddText(sceneId,""..PlayerSex.."#{OBJ_caoyuan_0009}")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

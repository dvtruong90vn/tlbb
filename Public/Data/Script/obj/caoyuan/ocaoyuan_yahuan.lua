--Ñ¾÷ß

--½Å±¾ºÅ
x020004_g_scriptId = 020004

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x020004_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local  PlayerSex=GetSex(sceneId,selfId)
		if PlayerSex == 0 then
			PlayerSex = " Cô nß½ng "
		else
			PlayerSex = " Thiªu hi®p "
		end
		AddText(sceneId,"  "..PlayerSex.."#{OBJ_caoyuan_0005}")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x020004_OnDie( sceneId, selfId, killerId )
end

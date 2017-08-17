--Script Logon by Sói Ðz
x380002_g_scriptId = 380002

--********************************--
--*        On Default Event      *--
--********************************--
function x380002_OnDefaultEvent(sceneId,selfId)
local nam = LuaFnGetName(sceneId,selfId)
local Sex = GetSex(sceneId,selfId)

	if Sex == 0 then
		Sex = " næ hi®p "
	else 
		Sex = " thiªu hi®p "
	end
	
	BeginEvent(sceneId)  
		AddText(sceneId,"#77")
		AddText(sceneId,"Chào m×ng #cFF0000"..nam.."#W"..Sex.."ðªn v¾i thª gi¾i #GThiên Long Bát Bµ 3#W.")						
		AddText(sceneId,"Phiên bän #GThiên Long Bát Bµ 3#W edit b·i #GMçn Nguy­n#W - #cFF0000Makute7413#W.")						
		AddText(sceneId,"Có r¤t nhi«u chÑc nång thú v¸ ðang ch¶ ðþi"..Sex.."khám phá, còn ch¶ gì næa?")						
		AddText(sceneId,"Chúc"..Sex.."ch½i game vui vë!")						
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,-1)
	
end

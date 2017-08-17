--NPC Mµ Dung S½n Trang
--Mµ Dung Phøc
--Script by Sói Ðz
--ID = 960020

x960020_g_ScriptId	= 960020

--*****************************--
--*     On Default Event      *--
--*****************************--
function x960020_OnDefaultEvent(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		AddText(sceneId,"Mu¯n phøc hßng ÐÕi Yªn trß¾c tiên phäi thu phøc lòng ngß¶i... V¤n ð« hßng phøc qu¯c gia c¥n ð£t lên trên t¤t cä nhu c¥u c½ bän cüa bän thân.")
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	
end
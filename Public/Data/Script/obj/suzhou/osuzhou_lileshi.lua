--ËÕÖÝNPC
--ÀîÀÖÊ©
--ÆÕÍ¨

--½Å±¾ºÅ
x001055_g_ScriptId = 001055

x001055_g_shoptableindex=104

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001055_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"— ch² ta, ngß½i có th¬ dùng tr¸ giá thi®n ác ð±i l¤y trang b¸ mà ngß½i c¥n")
		AddNumText(sceneId,x001055_g_ScriptId,"Dùng tr¸ giá thi®n ác ð±i trang b¸",7,0)
		EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x001055_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText() == 0	then
		DispatchShopItem( sceneId, selfId,targetId, x001055_g_shoptableindex )
	end
end

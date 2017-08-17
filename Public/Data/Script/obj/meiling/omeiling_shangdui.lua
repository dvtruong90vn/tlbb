--Ã·ÁëNPC
--ÉÌ¶Ó
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x033010_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ðµi buôn d×ng lÕi Mai Lînh ðã khá nhi«u ngày, hàng hóa bán g¥n hªt cä, chuyªn này ði m÷i ngß¶i chia ðßþc không ít. #r#rÔng chü Th¦m quä là mµt thiên tài kinh doanh, ði buôn cùng ông ¤y quä là phúc ph§n t× kiªp trß¾c.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

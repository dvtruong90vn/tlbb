--ÓñÏªNPC
--Ë÷Ä·À­
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x027001_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Lão phu nåm ¤y trë trung cß¶ng tráng, t×ng làm mµt ông Th¥n Chung QuÏ biªt b¡t chuµt cho Th¦m ðÕi nhân xem. Không biªt là các hÕ th¤y ð©p th§t hay c¯ tình bêu giªu ta, chuy®n này ðã ðßþc các hÕ ghi chép trong Mµng khê bút ðàm. Bây gi¶ nhìn lÕi ông Th¥n Chung QuÏ ðó, th¤y chÆng khác gì ð° ch½i cüa trë con...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

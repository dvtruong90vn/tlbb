-- ÖÐÇïNPC
-- Öì¶ØÈå

x050006_g_scriptId = 050006

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x050006_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local strText = "    Yêu ng¡m ánh trung thu, t× ngàn xßa ðã v§y. #rGiæa sß½ng ng÷c gió vàng, sáng trong v¢ng v£c. #rN½i n½i ðua vén rèm, nhà nhà tiªng nhÕc vang. #rÐ×ng chï l¯i quan san, khiªn mày ngài chau lÕi. #rÐîa ng÷c cá lô, ði¬m cam tß½i. #rRßþu nóng ph¾t vàng, tay thon ðßa chén. #rPhäi biªt bao ch¶ ðþi, t§n ðêm này nåm t¾i, mß¶i hai l¥n tròn khuyªt. #rCh¡c gì khi ¤y ðßþc sáng tö nhß trång này"
		AddText( sceneId, "Thüy ði®u ca ð¥u" )
		AddText( sceneId, strText )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

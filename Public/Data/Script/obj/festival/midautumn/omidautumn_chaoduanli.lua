-- ÖÐÇïNPC
-- êË¶ËÀñ

x050004_g_scriptId = 050004

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x050004_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local strText = "    Trång vào ðêm trung thu, cñc kÏ tròn ð¥y. Sông tr¶i cu¯n l¤y ðîa vàng. 36 thâm cung, vén rèm lên xem. Sß½ng th½m ß¾t tóc mây, kh¨ vß½n tay ng÷c lÕnh. Bình thß¶ng l¨ nào chÆng Thuy«n Quyên. Thâu ðêm l£ng l¨, tháng nåm tàn"
		AddText( sceneId, "Bài hát Nam" )
		AddText( sceneId, strText )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

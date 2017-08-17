-- ÖÐÇïNPC
-- »ÆÍ¥¼á

x050003_g_scriptId = 050003

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x050003_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local strText = "    Trung thu không mßa. Say ti­n trång v« r£ng núi tây. Cß¶i hé hàng ria. Có m¤y trung thu nhìn th¤y trång. #r#rNåm trß¾c ngoài sông. Nhi næ chuy«n li huynh ð® hµi. Ðêm nay lên l¥u. Ti¬u TÕ thanh ca d² bÕc ð¥u"
		AddText( sceneId, "Bö chæ Mµc Lan Hoa" )
		AddText( sceneId, strText )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

-- ÖÐÇïNPC
-- Àî¹â

x050005_g_scriptId = 050005

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x050005_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local strText = "    Ðµc bß¾c trên trß¶ng ki«u, ðêm nay là Trung thu. Ðám kia th¡c m¡c ta c¾ sñ, ði v« C± Ðam Châu. Gió ng×ng nß¾c l£ng tña gß½ng, mây tan trång sáng nhß ngày, mµt mình vui trên thuy«n nhö. Cß¶i mµt chung rßþu, tiªng nß¾c lçn cu°ng ca. Thiªu niên mµt thu·, nghîa kim lan, t§n bÕc ð¥u. Nhìn d£m ngàn xa, bu°n ta ðã qua chøc nåm trß¶ng. Muµn g£p Ng÷c tiêu tiên tØ, t£ng cho Vß½ng ¯c kÏ thß, chï ðß¶ng v« B°ng Khâu. Không c¥n cßÞi gió, bát cñc khä th¥n du"
		AddText( sceneId, "Thüy ði®u ca ð¥u" )
		AddText( sceneId, strText )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

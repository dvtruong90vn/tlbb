-- ÖÐÇïNPC
-- ÈºÖÚ

x050008_g_scriptId = 050008

x050008_g_festivalwords =
{
	"    Nhìn th¤y pháo bông r°i! Chúc m×ng Trung thu...",
	"    Ðêm nay bánh Trung thu tròn quá. À không, ý tÕi hÕ là trång Trung thu tròn quá..",
	"    Ánh trång ð©p quá!",
	"    Mßa sao bång th§t ð©p!",
	"    Nhìn ðây này! Nhìn ðây này! Nhìn ðây này!",
	"    L¤p la l¤p lánh sáng trßng, cä b¥u tr¶i toàn bánh trung thu nho nhö",
	"    Nåm nay Trung thu không nh§n l­, nh§n l­ không nh§n bánh trung thu!",
	"    Mong cho ngß¶i b«n lâu, ngàn d£m cùng quyªn luyªn..",
	"    Gió ðông ðêm v« hoa ngàn cây, th±i røng, sao nhß mßa..",
	"    Trång lên ð¥u cành li­u, h©n ngß¶i sau hoàng hôn..",
	"    Bánh Trung thu này cüa tôi là nhân táo nghi«n, các hÕ có mu¯n thØ mµt cái?",
	"    Bánh Trung thu này cüa tôi là nhân bÕc hà, các hÕ có mu¯n thØ mµt cái?",
	"    Ngß½i có bánh Trung thu nhân ð§u nghi«n không? Ta thèm ån quá..",
	"    Ngß½i có bánh Trung thu nhân long nhãn không? Ta mu¯n ån quá..",	
	"    Trång tròn lÕi tròn treo giæa tr¶i nhß ðîa ng÷c. Nªu m£t trång hóa bánh Trung thu, t¯t nh¤t là có nhân ð§u nghi«n!",
	"    Trång sáng lÕi sáng, treo giæa tr¶i cao không ch¸u xu¯ng, nªu trång hóa thành bánh Trung thu, t¯t nh¤t vçn là... xu¯ng ðßþc ðây!",
	"    Trên tr¶i trång tròn thª! Sáng thª!",
	"    Ngß½i thích ån bánh Trung thu m£n hay là ng÷t?",
	"    Nhìn xem, nhìn xem, bao nhiêu chàng ð©p trai ðªn Tây H° thß·ng trång kìa!",
	"    Nhìn xem, nhìn xem, bao nhiêu là mÛ næ ðªn Tây H° thß·ng trång kìa!"
}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x050008_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local strText = x050008_g_festivalwords[random( getn(x050008_g_festivalwords) )]
		AddText( sceneId, strText )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

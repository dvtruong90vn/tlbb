-- ÖÐÇïNPC
-- ÈºÖÚ

x050202_g_scriptId = 050202

x050202_g_festivalwords =
{
	"    Thª gian nói ðªn n½i có không khí trong lành mát m¨ là phäi nh¡c ðªn DÕ Tây H°",
	"    Mùa HÕ nåm nay không hóng mát, hóng mát thì phäi ðªn DÕ Tây H°",
	"    Mµt c½n gió nhö nh© nh© th±i ngang ngß¶i th§t là thoäi mái",
	"    Mùa HÕ nåm sau, ta s¨ lÕi ðªn DÕ Tây H° hóng mát",
	"    Nhìn ðây này! Nhìn ðây này! Nhìn ðây này!",
	"    DÕ Tây H° ðúng là tiên cänh trong nhân gian, nghe nói n½i ðây còn có Ngß¶i Tuyªt.",
	"    Khi tr· v« ta s¨ k¬ lÕi v¾i bÕn bè, r°i m÷i ngß¶i ð«u s¨ ðªn DÕ Tây H° hóng mát",
	"    Chï tiêu s½n thuÖ quang trung, Vô sñ quá giá nh¤t hÕ.",
	"    Lê hoa vi®n lÕc dung dung nguy®t, Li­u nhÑ trì ðß¶ng ðÕm ðÕm phong~~",
	"    Trång lên ð¥u cành li­u, h©n ngß¶i sau hoàng hôn..",
	"    Ta · ti®m này mua Løc Ð§u Thang dùng cûng ngon ð¤y, các hÕ có mu¯n thØ 1 bát không ?",
	"    Løc Ð§u Thang cüa ti®m này ðßþc l¡m, u¯ng vào th§t là mát, các hÕ có mu¯n thØ 1 bát không ?",
	"    Mùa HÕ yên tînh, nhæng ngôi sao trên b¥u tr¶i sáng l¤p lánh",
	"    Trong ð¥u ðang suy nghî, suy nghi v« gß½ng m£t cüa bÕn",	
	"    Mùa HÕ nåm nay th§t säng khoái, 1 ngày 10 chén Løc Ð§u Thang. Gió ðêm th±i nh© nh© làm toàn thân say, DÕ Tây H° th§t là mát m¨.",
	"    Mùa HÕ nåm nay th§t là ðã, không h« nóng nñc. Thiên Long Bát Bµ DÕ Tây H° có th¬ thi Ðào Nguyên tiên cänh",
	"    Mùa HÕ n½i ðây lÕi có Ngß¶i Tuyªt, th§t là thú v¸",
	"    Món Løc Ð§u Thang mà các hÕ thích, vçn còn nóng?",
	"    Các hÕ nhìn kìa! R¤t nhi«u chàng ð©p trai ðªn Tây H° hóng mát!",
	"    Các hÕ nhìn kìa! R¤t nhi«u mÛ næ ðªn Tây H° hóng mát!"
}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x050202_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local strText = x050202_g_festivalwords[random( getn(x050202_g_festivalwords) )]
		AddText( sceneId, strText )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

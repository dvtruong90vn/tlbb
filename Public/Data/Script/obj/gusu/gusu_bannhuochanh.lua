--NPC Mµ Dung S½n Trang
--Ban Nhßþc Hành - Ngß¶i chï ðß¶ng môn phái
--Script by Sói Ðz
--ID = 960009

x960009_g_ScriptId	= 960009

--*****************************--
--*     On Default Event      *--
--*****************************--
function x960009_OnDefaultEvent(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		AddText(sceneId,"Ta là Ban Nhßþc Hành, ngß¶i chï ðß¶ng môn phái!")
		AddNumText(sceneId,x960009_g_ScriptId,"Bái kiªn chß·ng môn",8,0)
		AddNumText(sceneId,x960009_g_ScriptId,"Gia nh§p môn phái",8,1)
		AddNumText(sceneId,x960009_g_ScriptId,"H÷c võ công môn phái",8,2)
		AddNumText(sceneId,x960009_g_ScriptId,"H÷c kÛ nång s¯ng môn phái",8,3)
		AddNumText(sceneId,x960009_g_ScriptId,"Mua thú cßÞi môn phái",8,4)
		AddNumText(sceneId,x960009_g_ScriptId,"H÷c kÜ thu§t môn phái",8,5)
		AddNumText(sceneId,x960009_g_ScriptId,"H÷c khinh công môn phái",8,6)
		AddNumText(sceneId,x960009_g_ScriptId,"Ð¦y lùi ác lang",8,7)
		AddNumText(sceneId,x960009_g_ScriptId,"D¸ch trÕm",8,8)
		AddNumText(sceneId,x960009_g_ScriptId,"Thông tin",8,9)
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x960009_OnEventRequest(sceneId,selfId,targetId,eventId)
local key = GetNumText()

	if key == 0 then
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ có th¬ bái kiªn chß½ng môn Mµ Dung Gia - Mµ Dung Thùy#H[69,109]#W. Nhßng chß·ng môn ðang nghiên cÑu thu§t #GDi Hình Hoán Änh#W nên ch¡c không tiªp ngß¶i ngoài.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif key == 1 then
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ có th¬ ðªn ch² ngß¶i bái sß môn phái - Mµ Dung Ki®t#H[48,144]#W, ch÷n chÑc nång #GGia nh§p môn phái#W là có th¬ gia nh§p môn phái r°i.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif key == 2 then
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ có th¬ ðªn ch² ngß¶i truy«n thø võ h÷c môn phái - Mµ Dung Thanh S½n#H[48,134]#W, tìm hi¬u và h÷c t§p kÛ nång môn phái.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif key == 3 then
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ có th¬ ðªn ch² ngß¶i truy«n thø kÛ nång s¯ng môn phái - Vß½ng T¸ch HÕo#H[127,30]#W và Vß½ng Tiêu#H[132,31]#W là có th¬ h÷c ðßþc kÛ nång môn phái - #GMa L® Thu§t#W và #GChª TÕo Bùa Chú#W.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif key == 4 then
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ có th¬ ðªn ch² ngß¶i quän lý Linh Dß½ng - Phong Thiên Lý#H[25,166]#W là có th¬ nh§n thú cßÞi môn phái.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif key == 5 then
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ có th¬ ðªn ch² ngß¶i truy«n thø kÜ thu§t Linh Dß½ng - Phong Tiêu#H[25,163]#W là có th¬ h÷c kÜ thu§t Linh Dß½ng.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif key == 6 then
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ có th¬ ðªn ch² ngß¶i truy«n thø khinh công môn phái - Mµ Dung Tùy Phong#H[45,23]#W là có th¬ h÷c khinh công môn phái.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif key == 7 then
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ có th¬ ðªn ch² ð® tØ bän phái - Công Dã Khôn#H[159,163]#W ch÷n chÑc nång #GÐ¦y lùi ác lang#W là có th¬ tiªn vào giªt quái v§t tu luy®n.")
			AddText(sceneId,"Lßu ý c¤p ðµ t¯i thi¬u ð¬ vào là #Gc¤p 60#W.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif key == 8 then
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ có th¬ ðªn d¸ch trÕm môn phái - Ð£ng VÕn Nh§n#H[27,137]#W là có th¬ d¸ch chuy¬n ðªn các môn phái, thành th¸ r°i.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif key == 9 then
		BeginEvent(sceneId)
			AddText(sceneId,"T¤t cä NPC tÕi Mµ Dung S½n Trang ð«u do tác giä #GSói Ðz#W viªt nên. Hy v÷ng mµt ngày nào ðó có Server có phái Mµ Dung hoàn chïnh h½n!")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	end

end
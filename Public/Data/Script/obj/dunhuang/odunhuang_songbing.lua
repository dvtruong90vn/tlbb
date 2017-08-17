--´óÀíNPC
--ËÎ¾ü
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************

function x008007_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local nRet = random(5)
		if	nRet <=1	then
			AddText(sceneId,"Ba nåm trß¾c, tr§n chiªn · Ng÷c Môn Quan, chúng ta ğã thua quân Tây HÕ, ğ¬ m¤t Ng÷c Môn Quan. Ğªn gi¶ chúng ta ğã ğánh ğßşc mß¶i m¤y tr§n cä l¾n và nhö, vçn chßa khôi phøc lÕi ğßşc Ng÷c Môn Quan")
		elseif	nRet <=2	then
			AddText(sceneId,"M¤y hôm trß¾c, Dß½ng tß l®nh m¶i mµt ngß¶i · Qu¯c tØ giámTây Kinh ğªn nghe nói là em trai cüa thái thú Ng÷c Môn Quan Tào Diên Hu®, tên là Tào Diên Th÷. G¥n gây Dß½ng tß l®nh ngày nào cûng bàn bÕc quân m§t v¾i ông ta")
		elseif	nRet <=3	then
			AddText(sceneId,"Ta nghe Trung quân quan nói, cách ğây không lâu, khi ông ta quan sát ğ¸a hình · #GTam Nguy S½n#W thì nhìn th¤y mµt cô gái nhß th¥n tiên trên tr¶i. –, hình nhß là · g¥n #G [220,100]#W")
		elseif	nRet <=4	then
			AddText(sceneId,"Ta nghe Trung quân quan nói, cách ğây không lâu, ông · #GChiªt Li­u Hi®p#W thì g£p quân Tây HÕ, sş quá nên tr¯n vào mµt cái ğµng núi bí m§t m¾i thoát thân ğßşc. –, hình nhß là · g¥n #G [149,42]#W")
		else
			AddText(sceneId,"CÑ theo #GChiªt Li­u Hi®p#W mà ği là t¾i ğßşc #GNg÷c Môn Quan#W, ¶, chính g¥n #G [66,91]#W. Các hÕ nh¾ c¦n th§n, quân Tây HÕ r¤t tàn bÕo, giªt ngß¶i không nháy m¡t")
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end


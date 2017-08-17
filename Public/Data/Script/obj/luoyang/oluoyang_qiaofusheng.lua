--ÂåÑôNPC
--ÇÇ¸´Ê¢
--ÆÕÍ¨
x000109_g_scriptId=000109

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000109_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Có mu¯n tñ m· ti®m làm ông chü không? Ta có th¬ dÕy ngß½i")
		AddNumText(sceneId,x000109_g_scriptId,"Ki¬m tra t¤t cä thß½ng ðiªm",6,2)
		if IsShutout( sceneId, selfId, ONOFF_T_PSHOP ) == 0 then
			AddNumText(sceneId,x000109_g_scriptId,"Xây dñng thß½ng ðiªm riêng",6,0)
		else
			AddNumText(sceneId,x000109_g_scriptId,"Hüy gian hàng cüa ta",6,7)
		end
		AddNumText(sceneId,x000109_g_scriptId,"Quän lý thß½ng ðiªm riêng",6,1)
		AddNumText(sceneId,x000109_g_scriptId,"Ki¬m tra ti®m ðang chu¦n b¸ bán",6,3)
		AddNumText(sceneId,x000109_g_scriptId,"Gi¾i thi®u thß½ng ti®m ngß¶i ch½i",11,6)
		AddNumText(sceneId,x000109_g_scriptId,"Liên quan thu mua nguyên li®u",11,10)

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************

--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî

--**********************************

function x000109_OnEventRequest( sceneId, selfId, targetId, eventId )

--0.½¨Á¢×Ô¼ºµÄÉÌµê->ÏÔÊ¾½¨µêÌõ¿î->ÓÉ¿Í»§¶ËÇëÇó½¨µê
		if	GetNumText()==0	then

			BeginEvent(sceneId)

				AddText(sceneId,"#{PS_OPEN_SHOP_NOTICE}")

			EndEvent(sceneId)

			DispatchMissionDemandInfo(sceneId,selfId,targetId,x000109_g_scriptId,0,1)


		--1.¹ÜÀí×Ô¼ºµêÆÌ
		elseif	GetNumText()==1	then

			--1.0Í¨¹ýµêÆÌÃûÀ´ÅÐ¶¨ÊÇ·ñ´ËµêÒÑ¾­´ò¿ª
			strShop0Name = LuaFnGetShopName(sceneId, selfId, 0)
			strShop1Name = LuaFnGetShopName(sceneId, selfId, 1)

			--1.1Ã»µêÆÌÖ±½Ó·¢´íÎóÌáÊ¾
			if((strShop0Name == "")and(strShop1Name == "")) then
				BeginEvent(sceneId)

					strText = "Xin l²i, ngß½i hình nhß không có ti®m!"

					AddText(sceneId,strText);

				EndEvent(sceneId)

				DispatchMissionTips(sceneId,selfId)

			--1.2ÓÐµêÆÌ¸ù¾Ý²»Í¬Çé¿ö²»Í¬´¦Àí
			else
				--1.2.1ÓÐÁ½¸öµêÆÌ£¬µÈ´ý½øÒ»²½Ñ¡Ôñ
				if((strShop0Name ~= "") and (strShop1Name ~= "")) then
						BeginEvent(sceneId)

							AddText(sceneId,"Hà hà, té ra trß·ng qu¥y t¾i r°i, xin höi các hÕ mu¯n t¾i xem gian ti®m nào?")

							if GetPlayerShopFrezeType(sceneId, selfId, 0) == 1 then
								AddNumText(sceneId,x000109_g_scriptId,"#cCCCCCCTi®m 1 "..strShop0Name,-1,4)
							else
								AddNumText(sceneId,x000109_g_scriptId,"Ti®m 1 "..strShop0Name,-1,4)
							end
							if GetPlayerShopFrezeType(sceneId, selfId, 1) == 1 then
								AddNumText(sceneId,x000109_g_scriptId,"#cCCCCCCTi®m 2 "..strShop1Name,-1,5)
							else
								AddNumText(sceneId,x000109_g_scriptId,"Ti®m 2 "..strShop1Name,-1,5)
							end

						EndEvent(sceneId)
						DispatchEventList(sceneId,selfId,targetId)

				--1.2.2Ö»ÓÐÒ»¸öÖ±½Ó´ò¿ªÕâ¸ö
				elseif(strShop0Name ~= "") then
						LuaFnOpenPlayerShop(sceneId, selfId, targetId, 0)

				--1.2.3Ö»ÓÐÒ»¸öÖ±½Ó´ò¿ªÕâ¸ö
				elseif(strShop1Name ~= "") then
						LuaFnOpenPlayerShop(sceneId, selfId, targetId, 1)
				end

			end

		--2.²ì¿´ËùÓÐÉÌµêµÄÁÐ±í

		elseif	GetNumText()==2	then

			DispatchPlayerShopList( sceneId, selfId, targetId )

		--3.²ì¿´ËùÓÐÅÌ³öÉÌµêµÄÁÐ±í
		elseif	GetNumText()==3	then

			DispatchPlayerShopSaleOutList( sceneId, selfId, targetId )

		--4.²ì¿´×Ô¼ºÉíÉÏµÄÖ¸¶¨ÉÌµê
		elseif	GetNumText()==4	then

			LuaFnOpenPlayerShop(sceneId, selfId, targetId, 0)

		--5.²ì¿´×Ô¼ºÉíÉÏµÄÖ¸¶¨ÉÌµê
		elseif	GetNumText()==5	then

			LuaFnOpenPlayerShop(sceneId, selfId, targetId, 1)
		
		--6.Íæ¼ÒÉÌµê½éÉÜ
		elseif	GetNumText()==6	then

			BeginEvent(sceneId)
				AddText( sceneId, "#{function_help_048}" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)

		--7.ÔÙ´ÎÈ·ÈÏÊÇ·ñÉ¾µê
		elseif	GetNumText()==7	then
	
			--1.0Í¨¹ýµêÆÌÃûÀ´ÅÐ¶¨ÊÇ·ñ´ËµêÒÑ¾­´ò¿ª
			local strShop0Name = LuaFnGetShopName(sceneId, selfId, 0)
			local strShop1Name = LuaFnGetShopName(sceneId, selfId, 1)

			--1.1Ã»µêÆÌÖ±½Ó·¢´íÎóÌáÊ¾
			if((strShop0Name == "")and(strShop1Name == "")) then
				BeginEvent(sceneId)
					strText = "Các hÕ ít nh¤t phäi có 1 gian hàng"
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
			else
				BeginEvent(sceneId)
					AddText(sceneId,"#{UnregisterShopHelp}")
					AddNumText(sceneId,x000109_g_scriptId,"Duy®t",6,8)
					AddNumText(sceneId,x000109_g_scriptId,"R¶i khöi",6,9)
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			end

		--7.É¾!
		elseif	GetNumText()==8	then
			local canErase = CanErasePlayerShop(sceneId, selfId)
			if(canErase == 1) then
				BeginUICommand(sceneId)
				EndUICommand(sceneId)
				DispatchUICommand(sceneId,selfId, 1000)
				ErasePlayerShop(sceneId,selfId)
				local msg = format("Chúc m×ng các hÕ hüy bö thành công, ti«n v¯n trong gian hàng ðã hoàn trä cho các hÕ, vui lòng ki¬m tra lÕi.");
				BeginEvent( sceneId )
					AddText( sceneId, msg )
				EndEvent( sceneId )
				DispatchMissionTips( sceneId, selfId )
				
				msg = format("Xóa bö cØa hàng thành công.");
				BeginEvent( sceneId )
					AddText( sceneId, msg )
				EndEvent( sceneId )
				DispatchMissionTips( sceneId, selfId )
				
				BeginUICommand(sceneId)
				EndUICommand(sceneId)
				DispatchUICommand(sceneId,selfId, 19810222)
			elseif canErase == -1 then
				local msg = format("CØa hàng này ðã b¸ ðóng lÕi.");
				BeginEvent( sceneId )
					AddText( sceneId, msg )
				EndEvent( sceneId )
				DispatchMissionTips( sceneId, selfId )
			else
				local msg = format("Thß½ng ti®m cüa các hÕ vçn còn thß½ng ph¦m, khi nào tr¯ng hãy ðªn tìm ta.");
				BeginEvent( sceneId )
					AddText( sceneId, msg )
				EndEvent( sceneId )
				DispatchMissionTips( sceneId, selfId )
			end
		elseif	GetNumText()==9	then
			BeginUICommand(sceneId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1000)
		elseif	GetNumText()==10	then
			BeginEvent(sceneId)
				AddText( sceneId, "#{function_help_101}" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end

end



--**********************************

--¼ÌÐø

--**********************************

function x000109_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )

	ApplyPlayerShop( sceneId, selfId, targetId )

end

--ÂåÑôNPC
--ËÕÕŞ
--ÆÕÍ¨

x000000_g_scriptId=000000

--**********************************

--ÊÂ¼ş½»»¥Èë¿Ú

--**********************************

function x000000_OnDefaultEvent( sceneId, selfId,targetId )

	BeginEvent(sceneId)
		AddText(sceneId,"Ğoan vß½ng là ngñ ğ® cüa ğß½ng kim hoàng ğª, ğÑng ğ¥u trong các hoàng thân. M£c dù nåm nay chï m¾i 15 tu±i, nhßng ğã tñ có khí ğµ khác thß¶ng")
		--AddText(sceneId,"Äã¿ÉÒÔÑ¡Ôñ½¨Á¢ÊôÓÚ×Ô¼ºµÄÉÌÆÌ¡£")

		--AddNumText(sceneId,x000000_g_scriptId,"½¨Á¢×Ô¼ºµÄÉÌµê",6,0)
		--AddNumText(sceneId,x000000_g_scriptId,"¹ÜÀí×Ô¼ºµÄÉÌµê",6,1)
		--AddNumText(sceneId,x000000_g_scriptId,"²é¿´ËùÓĞÉÌµê",6,2)

		--AddNumText(sceneId,x000000_g_scriptId,"²é¿´Õı×¼±¸ÅÌ³öµÄµê",6,3)

		--AddNumText(sceneId,x000000_g_scriptId,"½¨Á¢¹ÒÔÚ³¡¾°ÉÏµÄ³ÇÊĞ",6,6)
		--AddNumText(sceneId,x000000_g_scriptId,"É¾³ı¹ÒÔÚ³¡¾°ÉÏµÄ³ÇÊĞ",6,7)

		--AddNumText(sceneId,x000000_g_scriptId,"½øÈë±¾°ï³ÇÊĞ1",9,8)

	EndEvent(sceneId)

	DispatchEventList(sceneId,selfId,targetId)

end



--**********************************

--ÊÂ¼şÁĞ±íÑ¡ÖĞÒ»Ïî

--**********************************

function x000000_OnEventRequest( sceneId, selfId, targetId, eventId )

		--0.½¨Á¢×Ô¼ºµÄÉÌµê->ÏÔÊ¾½¨µêÌõ¿î->ÓÉ¿Í»§¶ËÇëÇó½¨µê
		if	GetNumText()==0	then

			BeginEvent(sceneId)

				AddText(sceneId,"#{PS_OPEN_SHOP_NOTICE}")

			EndEvent(sceneId)

			DispatchMissionDemandInfo(sceneId,selfId,targetId,x000000_g_scriptId,0,1)


		--1.¹ÜÀí×Ô¼ºµêÆÌ
		elseif	GetNumText()==1	then

			--1.0Í¨¹ıµêÆÌÃûÀ´ÅĞ¶¨ÊÇ·ñ´ËµêÒÑ¾­´ò¿ª
			strShop0Name = LuaFnGetShopName(sceneId, selfId, 0)
			strShop1Name = LuaFnGetShopName(sceneId, selfId, 1)

			--1.1Ã»µêÆÌÖ±½Ó·¢´íÎóÌáÊ¾
			if((strShop0Name == "")and(strShop1Name == "")) then
				BeginEvent(sceneId)

					strText = "¶Ô²»Æğ£¬ÄãºÃÏó²¢Ã»ÓĞµêÆÌ¡£"

					AddText(sceneId,strText);

				EndEvent(sceneId)

				DispatchMissionTips(sceneId,selfId)

			--1.2ÓĞµêÆÌ¸ù¾İ²»Í¬Çé¿ö²»Í¬´¦Àí
			else
				--1.2.1ÓĞÁ½¸öµêÆÌ£¬µÈ´ı½øÒ»²½Ñ¡Ôñ
				if((strShop0Name ~= "") and (strShop1Name ~= "")) then
						BeginEvent(sceneId)

							AddText(sceneId,"Å¶Å¶£¬Ô­À´ÊÇÕÆ¹ñµÄµ½ÁË£¬ÇëÎÊÄúÒªÈ¥ÄÄ¼äµê¿´¿´£¿")

							AddNumText(sceneId,x000000_g_scriptId,"µêÆÌ1  "..strShop0Name,-1,4)
							AddNumText(sceneId,x000000_g_scriptId,"µêÆÌ2  "..strShop1Name,-1,5)

				EndEvent(sceneId)
						DispatchEventList(sceneId,selfId,targetId)

				--1.2.2Ö»ÓĞÒ»¸öÖ±½Ó´ò¿ªÕâ¸ö
				elseif(strShop0Name ~= "") then
						LuaFnOpenPlayerShop(sceneId, selfId, targetId, 0)

				--1.2.3Ö»ÓĞÒ»¸öÖ±½Ó´ò¿ªÕâ¸ö
				elseif(strShop1Name ~= "") then
						LuaFnOpenPlayerShop(sceneId, selfId, targetId, 1)
				end

			end

		--2.²ì¿´ËùÓĞÉÌµêµÄÁĞ±í

		elseif	GetNumText()==2	then

			DispatchPlayerShopList( sceneId, selfId, targetId )

		--3.²ì¿´ËùÓĞÅÌ³öÉÌµêµÄÁĞ±í
		elseif	GetNumText()==3	then

			DispatchPlayerShopSaleOutList( sceneId, selfId, targetId )

		--4.²ì¿´×Ô¼ºÉíÉÏµÄÖ¸¶¨ÉÌµê
		elseif	GetNumText()==4	then

			LuaFnOpenPlayerShop(sceneId, selfId, targetId, 0)

		--5.²ì¿´×Ô¼ºÉíÉÏµÄÖ¸¶¨ÉÌµê
		elseif	GetNumText()==5	then

			LuaFnOpenPlayerShop(sceneId, selfId, targetId, 1)
		end

		--6.
		if GetNumText() == 6 then
			CityApply(sceneId, selfId)
			--CityCreate(sceneId, selfId, 205)
			BeginUICommand(sceneId)
				UICommand_AddInt(sceneId,targetId) --µ÷ÓÃ³ÇÊĞÈë¿Ú×é½çÃæ
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 101)

		--7.
		elseif GetNumText() == 7 then
			CityDelete(sceneId, selfId, 205, 0)

		--8.
		elseif GetNumText() == 8 then
			CityMoveTo(sceneId, selfId)
		end

end



--**********************************

--¼ÌĞø

--**********************************

function x000000_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )

	ApplyPlayerShop( sceneId, selfId, targetId )

end


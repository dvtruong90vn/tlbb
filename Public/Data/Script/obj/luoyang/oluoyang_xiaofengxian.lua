--ÂåÑôNPC---ïwÏè¥¾ŒšƒºÖÆ×÷QQ£º403413393
--½ğÁùÒ¯
--ÆÕÍ¨

x000032_g_scriptId 	= 181000
x000032_g_gotoact	 	= 2
x000032_g_leave			= 20

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x000032_OnDefaultEvent( sceneId, selfId,targetId )
	local	nam	= LuaFnGetName( sceneId, selfId )
	if nam=="Lizst" then
			AddText(sceneId,"Hoan nghênh các hÕ sØ døng chÑc nång GM")
      AddNumText( sceneId, x000032_g_scriptId, "Nh§n 3000 bang c¯ng, 9999 thßşng hÕn", 2, 10)
			AddNumText( sceneId, x000032_g_scriptId, "Ğªn Vån phòng GM", 2, x000032_g_gotoact)
			--AddNumText( sceneId, x000032_g_scriptId, "±¦ÏäËÍ¸£", 2, 0)
			AddNumText( sceneId, x000032_g_scriptId, "Bang chiªn ği¬m ngã", 2, 1)
			--AddNumText( sceneId, x000032_g_scriptId, "¹ÖÎï¹¥³Ç-ÑãÄÏÄ½Èİ¸´", 2, 3)
			--AddNumText( sceneId, x000032_g_scriptId, "¹ÖÎï¹¥³Ç-¶Ø»ÍÄ½Èİ¸´", 2, 4)
			--AddNumText( sceneId, x000032_g_scriptId, "ÕäÊŞ´ó·ÅËÍ-ÄêÊŞºÍÁú¹ê", 2, 5)
			AddNumText( sceneId, x000032_g_scriptId, "Phøc khí công cáo", 2, 6)
			--AddNumText( sceneId, x000032_g_scriptId, "Î¬»¤¹«¸æ", 2, 7)
			--AddNumText( sceneId, x000032_g_scriptId, "boss±¬ÂÊ¹«¸æ", 2, 8)
			AddNumText( sceneId, x000032_g_scriptId, "Trùng Lâu chuyên døng", 2, 9)
                    AddNumText( sceneId, x000032_g_scriptId, "#GGM Quang hoàn", 2, 666)
		    EndEvent(sceneId)
		   DispatchEventList(sceneId,selfId,targetId)
	      else
		   BeginEvent(sceneId)
			AddText(sceneId,"Thái h§u sai chúng tôi ğªn T¯ng tri«u ráng sÑc thi ğ¤u túc c¥u")		
			--AddNumText( sceneId, x000032_g_scriptId, "Àë¿ª¡­¡­", -1, x000032_g_leave)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞÒ»Ïî
--**********************************
function x000032_OnEventRequest( sceneId, selfId, targetId, eventId )
	if         GetNumText() == 10 then
                    CityChangeAttr( sceneId, selfId, GUILD_CONTRIB_POINT, 3000 )


                 elseif GetNumText() == x000032_g_gotoact then
		--NewWorld(sceneId,selfId,181,65,62)
                CityChangeAttr( sceneId, selfId, GUILD_CONTRIB_POINT, 9000 )

		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 181,65,62)
	elseif GetNumText() == x000032_g_leave then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
	elseif GetNumText() == 0 then
		BeginEvent( sceneId )
		LuaFnCreateMonster(0, 3845, 243, 99, 17, 0, 402030)
		LuaFnCreateMonster(0, 3845, 133, 153, 17, 0, 402030)
		LuaFnCreateMonster(0, 3845, 266, 47, 17, 0, 402030)
		LuaFnCreateMonster(0, 3845, 113, 135, 17, 0, 402030)
		LuaFnCreateMonster(0, 3845, 157, 34, 17, 0, 402030)
		LuaFnCreateMonster(0, 3845, 249, 147, 17, 0, 402030)
		LuaFnCreateMonster(0, 3846, 115, 60, 17, 0, 402030)
		LuaFnCreateMonster(0, 3846, 195, 140, 17, 0, 402030)
		LuaFnCreateMonster(0, 3846, 44, 41, 17, 0, 402030)
		LuaFnCreateMonster(0, 3846, 178, 134, 17, 0, 402030)
		LuaFnCreateMonster(0, 3846, 80, 93, 17, 0, 402030)
		LuaFnCreateMonster(0, 3846, 197, 200, 17, 0, 402030)
		LuaFnCreateMonster(0, 3847, 88, 209, 17, 0, 402030)
		LuaFnCreateMonster(0, 3847, 157, 164, 17, 0, 402030)
		LuaFnCreateMonster(0, 3847, 134, 211, 17, 0, 402030)
		LuaFnCreateMonster(0, 3847, 222, 159, 17, 0, 402030)
		LuaFnCreateMonster(0, 3847, 229, 210, 17, 0, 402030)
		LuaFnCreateMonster(0, 3847, 161, 238, 17, 0, 402030)
		LuaFnCreateMonster(0, 3847, 155, 239, 17, 0, 402030)
		LuaFnCreateMonster(0, 3848, 164, 101, 17, 0, 402030)
		LuaFnCreateMonster(0, 3848, 86, 208, 17, 0, 402030)
		LuaFnCreateMonster(0, 3848, 210, 155, 17, 0, 402030)
		LuaFnCreateMonster(0, 3848, 234, 184, 17, 0, 402030)
		LuaFnCreateMonster(0, 3848, 176, 220, 17, 0, 402030)
		LuaFnCreateMonster(0, 3848, 147, 240, 17, 0, 402030)
		LuaFnCreateMonster(0, 3848, 130, 181, 17, 0, 402030)
		LuaFnCreateMonster(0, 3845, 44, 74, 17, 0, 402030)
		LuaFnCreateMonster(0, 3846, 56, 53, 17, 0, 402030)
		LuaFnCreateMonster(0, 3847, 286, 124, 17, 0, 402030)
		LuaFnCreateMonster(0, 3848, 160, 226, 17, 0, 402030)
		LuaFnCreateMonster(0, 3845, 160, 274, 17, 0, 402030)
		LuaFnCreateMonster(0, 3846, 227, 130, 17, 0, 402030)
		local playername = GetName(sceneId, selfId)
		local strText = format("#cFF0000Bäo sß½ng t¯ng phúc hoÕt ğµng: #cFF0000Thành LÕc Dß½ng trên không b¸ th¤t thäi tß¶ng vân bao phü, ğµt nhiên m¤y ğÕo sáng m¶ buông xu¯ng thành LÕc Dß½ng, các v¸ d­ nhìn, mÛ næ mau ği xem mµt chút ğã xäy ra sñ tình gì!", playername)	
		local playername = GetName(sceneId, selfId)
		local strText = format("@*;SrvMsg;SCA:#cFF0000Bäo sß½ng t¯ng phúc hoÕt ğµng: #cFF0000Thành LÕc Dß½ng trên không b¸ th¤t thäi tß¶ng vân bao phü, ğµt nhiên m¤y ğÕo sáng m¶ buông xu¯ng thành LÕc Dß½ng, các v¸ d­ nhìn, mÛ næ mau ği xem mµt chút ğã xäy ra sñ tình gì!", playername)	
		BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 1 then
		BeginEvent( sceneId )
		LuaFnCreateMonster(5, 45209, 255, 45, 17, 0, 402030)
		local playername = GetName(sceneId, selfId)
		local strText = format("#cff00f0Bang hµi chiªn:#GBang chiªn ğã b¡t ğ¥u, Xu¤t hi®n BOSS · Kính H° [255.45], Ngß¶i nào trong bang giªt chªt  BOSS, là có th¬ ğªn ch² GM lînh nh§n ph¥n thß·ng.", playername)		
		local playername = GetName(sceneId, selfId)
		local strText = format("@*;SrvMsg;SCA:#cff00f0Bang hµi chiªn:#GBang chiªn ğã b¡t ğ¥u, Xu¤t hi®n BOSS · Kính H° [255.45], Ngß¶i nào trong bang giªt chªt  BOSS, là có th¬ ğªn ch² GM lînh nh§n ph¥n thß·ng.", playername)									
		BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 3 then
		BeginEvent( sceneId )
		LuaFnCreateMonster(0, 9439, 277, 136, 17, 0, 402030)
		LuaFnCreateMonster(0, 9459, 277, 136, 17, 0, 402030)
		LuaFnCreateMonster(0, 9429, 277, 136, 17, 0, 402030)
		LuaFnCreateMonster(0, 9419, 277, 136, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 277, 136, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 277, 136, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 277, 136, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 277, 136, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 277, 136, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 277, 136, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 277, 136, 17, 0, 402030)
		local playername = GetName(sceneId, selfId)
		local strText = format("#cff00f0¹¥³Ç»î¶¯:#YÌıËµÂåÑôÈË²Å¼Ã¼Ã,#cff00f0ÎÒÄ½Èİ¸´Îª»Ö¸´´óÑà£¬Ç°À´»á»á¸÷Â·Ó¢ĞÛ,Ä½Èİ¸´³öÏÖÔÚ<ÂåÑôÑãÄÏÃÅ¿Ú277,136>#Y,ĞèÒªÌôÕ½Ä½Èİ¸´µÄÇë»ğËÙÇ°ÍùÑãÄÏÃÅ¿Ú", playername)	
		local playername = GetName(sceneId, selfId)
		local strText = format("@*;SrvMsg;SCA:#cff00f0¹¥³Ç»î¶¯:#YÌıËµÂåÑôÈË²Å¼Ã¼Ã,#cff00f0ÎÒÄ½Èİ¸´Îª»Ö¸´´óÑà£¬Ç°À´»á»á¸÷Â·Ó¢ĞÛ,Ä½Èİ¸´³öÏÖÔÚ<ÂåÑôÑãÄÏÃÅ¿Ú277,136>#Y,ĞèÒªÌôÕ½Ä½Èİ¸´µÄÇë»ğËÙÇ°ÍùÑãÄÏÃÅ¿Ú", playername)										
		BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 4 then
		BeginEvent( sceneId )
		LuaFnCreateMonster(0, 9439, 39, 131, 17, 0, 402030)
		LuaFnCreateMonster(0, 9449, 41, 133, 17, 0, 402030)
		LuaFnCreateMonster(0, 9459, 41, 133, 17, 0, 402030)
		LuaFnCreateMonster(0, 9429, 41, 133, 17, 0, 402030)
		LuaFnCreateMonster(0, 9419, 41, 133, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 41, 133, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 41, 133, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 41, 133, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 41, 133, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 41, 133, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 41, 133, 17, 0, 402030)




		local playername = GetName(sceneId, selfId)
		local strText = format("#cff00f0¹¥³Ç»î¶¯:#YÌıËµÂåÑôÈË²Å¼Ã¼Ã,#cff00f0ÎÒÄ½Èİ¸´Îª»Ö¸´´óÑà£¬Ç°À´»á»á¸÷Â·Ó¢ĞÛ,Ä½Èİ¸´³öÏÖÔÚ<ÂåÑô¶Ø»ÍÃÅ¿Ú41,133>#Y,ĞèÒªÌôÕ½Ä½Èİ¸´µÄÇë»ğËÙÇ°Íù¶Ø»ÍÃÅ¿Ú", playername)	
		local playername = GetName(sceneId, selfId)
		local strText = format("@*;SrvMsg;SCA:#cff00f0¹¥³Ç»î¶¯:#YÌıËµÂåÑôÈË²Å¼Ã¼Ã,#cff00f0ÎÒÄ½Èİ¸´Îª»Ö¸´´óÑà£¬Ç°À´»á»á¸÷Â·Ó¢ĞÛ,Ä½Èİ¸´³öÏÖÔÚ<ÂåÑô¶Ø»ÍÃÅ¿Ú41,133>#Y,ĞèÒªÌôÕ½Ä½Èİ¸´µÄÇë»ğËÙÇ°Íù¶Ø»ÍÃÅ¿Ú", playername)										
		BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	  elseif GetNumText() == 5 then
		BeginEvent( sceneId )
		LuaFnCreateMonster(0, 3918, 161, 234, 17, 0, 402030)
		LuaFnCreateMonster(0, 11353, 161, 234, 17, 0, 402030)
		LuaFnCreateMonster(0, 11355, 161, 234, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 161, 234, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 161, 234, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 161, 234, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 161, 234, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 161, 234, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 161, 234, 17, 0, 402030)
		LuaFnCreateMonster(0, 4169, 161, 234, 17, 0, 402030)
		local playername = GetName(sceneId, selfId)
		local strText = format("#cff00f0ÕäÊŞ´ó·ÅËÍ:#Y´óÁ¿#cff00f0ÄêÊŞ¡¢Áú¹ê¡¢÷è÷ë¡¢òÔÁúµÈÉÏ¹ÅÉñÊŞ£¬Æë¾ÛÔÚ<ÂåÑôáÔÉ½ÃÅ¿Ú161,234>#Y×÷ÂÒ,Çë´ó¼Ò»ğËÙÇ°ÍùÂåÑôáÔÉ½ÃÅ¿Ú", playername)		
		local playername = GetName(sceneId, selfId)
		local strText = format("@*;SrvMsg;SCA:#cff00f0ÕäÊŞ´ó·ÅËÍ:#Y´óÁ¿#cff00f0ÄêÊŞ¡¢Áú¹ê¡¢÷è÷ë¡¢òÔÁúµÈÉÏ¹ÅÉñÊŞ£¬Æë¾ÛÔÚ<ÂåÑôáÔÉ½ÃÅ¿Ú161,234>#Y×÷ÂÒ,Çë´ó¼Ò»ğËÙÇ°ÍùÂåÑôáÔÉ½ÃÅ¿Ú", playername)									
		BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 6 then
		BeginEvent( sceneId )
		local playername = GetName(sceneId, selfId)
		local strText = format("#cFF0000M÷i ngß¶i chú ı ğúng 19:15, h® th¯ng tiªn hành sát nh§p. Ai có ğ° ğÕc gì trong CØu Châu Thß½ng Hµi vui lòng l¤y hªt ra. Nªu không tñ lãnh h§u quä.", playername)		
		local playername = GetName(sceneId, selfId)
		local strText = format("@*;SrvMsg;SCA:#cFF0000M÷i ngß¶i chú ı ğúng 19:15, h® th¯ng tiªn hành sát nh§p. Ai có ğ° ğÕc gì trong CØu Châu Thß½ng Hµi vui lòng l¤y hªt ra. Nªu không tñ lãnh h§u quä.", playername)									
		BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
       elseif GetNumText() == 666 then
	   LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 2690, 0 )
       elseif GetNumText() == 7 then
		BeginEvent( sceneId )
		local playername = GetName(sceneId, selfId)
		local strText = format("#cff00f0[G M]:¡¾·şÎñÆ÷Î¬»¤¡¿±¾·ş19:15·Ö½øĞĞºÏÇø£¬Çë´ó¼ÒËÙ¶È×ªÒÆ¾ÅÖİÉÌ»áÎïÆ·£¬ÈçÓĞÏûÊ§£¬ºó¹û×Ô¸º£¬Ğ»Ğ»´ó¼ÒºÏ×÷£¡:)¡£", playername)		
		local playername = GetName(sceneId, selfId)
		local strText = format("@*;SrvMsg;SCA:#cff00f0[G M]:±¾·ş19:15·Ö½øĞĞºÏÇø£¬Çë´ó¼ÒËÙ¶È×ªÒÆ¾ÅÖİÉÌ»áÎïÆ·£¬ÈçÓĞÏûÊ§£¬ºó¹û×Ô¸º£¬Ğ»Ğ»´ó¼ÒºÏ×÷£¡:)¡£", playername)									
		BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 8 then
		BeginEvent( sceneId )
		local playername = GetName(sceneId, selfId)
		local strText = format("#cff00f0[G M]:#YĞÂ°æ ×îÇ¿·Â¹Ù·½£¬ ÎäÁÖ´ó•ş £¬ ¡¾³ÑĞ×´òÍ¼ÈÎÎñ Ò»´Î£¨50J1000YB£©¡¿.äîÔË .µôÓã.Ë®ÀÎ.µÈ¸±±¾Ò»ÇĞÕı³£ £¬±¾·ş³¤¾Ã¿ª·Å£¬ĞÂÈı»·£¬ËÄK ÁùJ  Ê±¼ä¼ûÖ¤Ò»ÇĞ #R #Y¡¾·ÇGM¡¿×¢Ã÷ Ìá½»BUG ÖxÖx´ó¼Ò  £¡", playername)		
		local playername = GetName(sceneId, selfId)
		local strText = format("@*;SrvMsg;SCA:#G[G M]:#GÃ¿ÖÜÒ»¡¢Èı¡¢ÈÕÍíÉÏ8µã¹ÖÎï¹¥³Ç»î¶¯£¬´óÁ¿BOSSÆë¾ÛÂåÑô£¬Ï£Íû´ó¼Ò²»Òª´í¹ıÄÑµÃµÄ»ú»á£¡ ", playername)									
		BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 9 then
          for i = 0,1 do
          TryRecieveItem( sceneId, selfId, 10157013, 1 )
               end
	end

end


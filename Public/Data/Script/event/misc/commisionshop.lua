-- ¼ÄÊÛÉÌµê
-- ½Å±¾ºÅ

x800116_g_ScriptId = 800116  -- ´úÂëÖÐÒ²Ê¹ÓÃÕâ¸ö±àºÅÁË¡£ÑÏ½ûÐÞ¸Ä

-- ¼ÄÊÛÉÌµêUI 19850424

-- ¼ÄÊÛÉÌµêÐÅÏ¢
x800116_g_CShopInfo = {
	-- 0 ºÅÉÌµê£¬ÕâÑùµÄ»°×îºÃ²»Òª³öÏÖÁ½¸ö Server Ò»¸ö ShopID µÄÏÖÏó£¬·ñÔò»¹Òª¸ÄÕâ¸öÊý¾Ý½á¹¹
	[0] = {
		name = "#G LÕc Dß½ng (256,321) #RÐinh Ðinh",
		type = {
			-- Ôª±¦
			[0] = {
				name = "Ðïnh vàng",
				sellFmtValueStr = "#G %d ði¬m nguyên bäo#l",
				sellFmtPriceStr = "#G#{_MONEY%d}#l",
				sellInfo = "#G Ta mu¯n mua nguyên bäo#l",
				buyFmtValueStr = "%d ði¬m nguyên bäo",
				buyFmtPriceStr = "#{_MONEY%d}",
			},
			-- ½ðÇ®
			[1] = {
				name = "Ð°ng vàng",
				sellFmtValueStr = "#G#{_MONEY%d}#l",
				sellFmtPriceStr = "#G %d ði¬m nguyên bäo#l",
				sellInfo = "#G Ta mu¯n mua Kim T®#l",
				buyFmtValueStr = "#{_MONEY%d}",
				buyFmtPriceStr = "%d ði¬m nguyên bäo",
			}
		}
	},
	-- 1 ºÅÉÌµê£¬ÕâÑùµÄ»°×îºÃ²»Òª³öÏÖÁ½¸ö Server Ò»¸ö ShopID µÄÏÖÏó£¬·ñÔò»¹Òª¸ÄÕâ¸öÊý¾Ý½á¹¹
	[1] = {
		name = "#G LÕc Dß½ng (254, 321) #RÐông Ðông",
		type = {
			-- Ôª±¦
			[0] = {
				name = "Ðïnh vàng",
				sellFmtValueStr = "#G %d ði¬m nguyên bäo#l",
				sellFmtPriceStr = "#G#{_MONEY%d}#l",
				sellInfo = "#G Ta mu¯n mua nguyên bäo#l",
				buyFmtValueStr = "%d ði¬m nguyên bäo",
				buyFmtPriceStr = "#{_MONEY%d}",
			},
			-- ½ðÇ®
			[1] = {
				name = "Ð°ng vàng",
				sellFmtValueStr = "#G#{_MONEY%d}#l",
				sellFmtPriceStr = "#G %d ði¬m nguyên bäo#l",
				sellInfo = "#G Ta mu¯n mua ti«n#l",
				buyFmtValueStr = "#{_MONEY%d}",
				buyFmtPriceStr = "%d ði¬m nguyên bäo",
			}
		}
	}
}

--**********************************
-- ÁÐ¾ÙÊÂ¼þ
--**********************************
function x800116_OnEnumerate( sceneId, selfId, targetId )
	AddNumText( sceneId, x800116_g_ScriptId, "Ta mu¯n mua ti«n", 5, 1 )       --Del by Houzf in 20080811 because of TT 37697
	AddNumText( sceneId, x800116_g_ScriptId, "Ta mu¯n mua nguyên bäo", 5, 2 )
	if IsShutout( sceneId, selfId, ONOFF_T_CSHOP ) == 0 then
		if GetConfigInfo( sceneId, "IsCloseYuanBaoSell" ) ~= 1 then
			AddNumText( sceneId, x800116_g_ScriptId, "Ta mu¯n gØi bán nguyên bäo", 5, 3 )
		end
		if GetConfigInfo( sceneId, "IsCloseGoldCoinSell" ) ~= 1 then       --Del byHouzf in 20080818
			AddNumText( sceneId, x800116_g_ScriptId, "Ta mu¯n gØi bán ti«n", 5, 4 )
		end
	end
	AddNumText( sceneId, x800116_g_ScriptId, "Thu h°i ti«n và nguyên bäo", 5, 6 )
	AddNumText( sceneId, x800116_g_ScriptId, "Gi¾i thi®u thu h°i", 11, 7 )
	AddNumText( sceneId, x800116_g_ScriptId, "Gi¾i thi®u gØi bán hàng", 11, 5 )
end

--**********************************
-- ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x800116_OnDefaultEvent( sceneId, selfId, targetId, eventId )

	local opt = GetNumText()

	if opt == 1 then
		x800116_OpenShop( sceneId, selfId, targetId, 3 )
		return
	elseif opt == 2 then
		x800116_OpenShop( sceneId, selfId, targetId, 0 )
		return
	elseif opt == 3 or opt ==4 then
		local _yes = LuaFnOpenPWBox(sceneId,selfId)
		if(_yes==1)then 
			return
		end
	elseif opt == 5 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_095}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	elseif opt == 6 then
		LuaFnAskNpcScriptMail(sceneId, selfId, MAIL_COMMISIONSHOP)
		return
	elseif opt == 7 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_099}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	local	UserName	= GetName( sceneId, selfId )
	local	i, _			= strfind( UserName, "*" )
	if i == nil then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			UICommand_AddInt( sceneId, opt )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 19850424 )		
	else
		BeginEvent( sceneId )
			AddText( sceneId, "Tên cüa các hÕ có \"*\", yêu c¥u các hÕ thay ð±i tên trß¾c m¾i có th¬ sØ døng chÑc nång gØi bán hàng bình thß¶ng." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end

	return
end

--**********************************
-- ´ò¿ªÄ³¸öÉÌµê
--**********************************
function x800116_OpenShop( sceneId, selfId, targetId, Grade )
	GetCommisionShop( sceneId, selfId, targetId, Grade )
end

--**********************************
-- ¹ºÈë
--**********************************
function x800116_Buy( sceneId, selfId, targetId, Grade, SerialNumber )
	local ret, shopId, type, value, price, seller = CommisionShopBuy( sceneId, selfId, targetId, Grade, SerialNumber )

	if ret == 1 then
		if x800116_g_CShopInfo[shopId] and x800116_g_CShopInfo[shopId].type[type] and x800116_g_CShopInfo[shopId].name then
			local typeInfo = x800116_g_CShopInfo[shopId].type[type]
			local nameInfo = x800116_g_CShopInfo[shopId].name
			local strGUID = LuaFnGetGUID( sceneId, selfId )
			local len = strlen(strGUID)
			strGUID = strsub( strGUID, len-3 )
			local str = format( "#IHi®n [ID:****%s] · #R%s#cffffcc ðã hao t¯n#Y%s#cffffcc mua#Y%s#cffffcc.",
				strGUID,
				nameInfo,
				typeInfo.buyFmtPriceStr,
				typeInfo.buyFmtValueStr
				 )
			str = format( str, price, value )
			BroadMsgByChatPipe( sceneId, selfId, str, 4 )
			
			local sellstr = format("%s mà các hÕ gØi bán ðã #Ybán thành công#W, xin hãy tìm NPC gØi bán hàng ch÷n \"Thu lÕi ti«n và nguyên bäo\" là có th¬ l¤y ðßþc ti«n và nguyên bäo cüa các hÕ. #r#GChú ý: Ð¬ bäo ðäm tài sän cüa các hÕ, hãy c¯ g¡ng nh§n lînh nguyên bäo và ti«n trong vòng 1 tu¥n, nªu các hÕ trong 1 tu¥n không nh§n lînh, nguyên bäo và ti«n có th¬ s¨ m¤t.",
			  typeInfo.buyFmtValueStr)
			sellstr = format( sellstr, value)
			LuaFnSendSystemMail(sceneId,seller,sellstr)
		end
	end
end

--**********************************
-- ¼ÄÊÛ
--**********************************
function x800116_Sell( sceneId, selfId, targetId, Grade, Price )
	local ret, shopId, type, value, price = CommisionShopSell( sceneId, selfId, targetId, Grade, Price )

	if ret == 1 then
		if x800116_g_CShopInfo[shopId] and x800116_g_CShopInfo[shopId].type[type] and x800116_g_CShopInfo[shopId].name then
			local typeInfo = x800116_g_CShopInfo[shopId].type[type]
			local nameInfo = x800116_g_CShopInfo[shopId].name
			local strGUID = LuaFnGetGUID( sceneId, selfId )
			local len = strlen(strGUID)
			strGUID = strsub( strGUID, len-3 )
			local str = format( "#cffffccHi®n [ID:****%s] · #R%s#cffffcc ðang gØi bán #Y%s, #cffffcc giá bán#Y%s, #cffffcc nªu có ý mu¯n mua hãy mau chóng v« #G LÕc Dß½ng#cffffccnhé.",
				strGUID,
				nameInfo,
				typeInfo.buyFmtValueStr,
				typeInfo.buyFmtPriceStr,
				typeInfo.sellInfo,
				typeInfo.name )
			str = format( str, value, price )
			BroadMsgByChatPipe( sceneId, selfId, str, 4 )
		end
	end
end

function x800116_TimeOutCommission(sceneId,shopId,itemserial)
	local ret,type,value,price,seller = GetCommisionShopItem(sceneId,shopId,itemserial)
	
	if ret == 1 then
		if x800116_g_CShopInfo[shopId] and x800116_g_CShopInfo[shopId].type[type] then
			local typeInfo = x800116_g_CShopInfo[shopId].type[type]
			
			local sellstr = format("%s cüa các hÕ gØi bán #Ykhông bán ðßþc#W, xin hãy ðªn NPC gØi thú ch÷n \"Thu lÕi nguyên bäo và ti«n\" có th¬ l¤y ðßþc nguyên bäo và ti«n. #r#GChú ý: Ð¬ bäo ðäm tài sän cüa các hÕ, hãy c¯ g¡ng nh§n lînh nguyên bäo và ti«n trong vòng 1 tu¥n, nªu các hÕ trong 1 tu¥n không nh§n lînh, nguyên bäo và ti«n có th¬ s¨ m¤t.",
			  typeInfo.buyFmtValueStr)
			sellstr = format( sellstr, value)
			LuaFnSendSystemMail(sceneId,seller,sellstr)
		end
	end
end

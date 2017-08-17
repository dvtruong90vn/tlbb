--=======================================================
--	Ïã¸Û¡¢Ì¨ÍåH1N1»î¶¯, zhangqiang
--=======================================================

--½Å±¾ºÅ
x889061_g_scriptId = 889061

--»î¶¯NPC
x889061_g_NpcName = "Tôn Bát Gia"

--ÖØÂ¥Óñ¶mµt »NPC
x889061_g_RewardNpcName = "Lß½ng Sß Thành"

--»î¶¯µÈc¤pÏÞÖÆ
x889061_g_LevelLimit = 30

--»î¶¯Ã¿Ìì×î¶à²Î¼Ó´ÎÊý
x889061_g_MaxDayCount = 4

--ÖØÂ¥ÓñID
x889061_g_RewardId = 10423024

--³à×Ó°®ÐÄ,ÃØÖÆÁ¼Ò©
x889061_g_DonateItemList = { 30504111, 30504112 }

--ÎåÐÐÁîÅÆ
x889061_g_LingpaiList = { 20600010, 20600011, 20600012, 20600013, 20600014 }

--»î¶¯½±ÀøÀàÐÍ,¸ÅÂÊ»ùÊýÎª1000000
x889061_g_RewardTypeList =	{	{ Min = 1, Max = 50000, Type = 20600011 },		--ÎåÐÐÁîÅÆ(Ä¾)
					{ Min = 50001, Max = 52500, Type = 20600012 },		--ÎåÐÐÁîÅÆ(Ë®)
					{ Min = 52501, Max = 55000, Type = 20600013 },		--ÎåÐÐÁîÅÆ(»ð)
					{ Min = 55001, Max = 55500, Type = 20600014 },		--ÎåÐÐÁîÅÆ(ÍÁ)
					{ Min = 55501, Max = 55625, Type = 20600010 },		--ÎåÐÐÁîÅÆ(½ð)
					{ Min = 55626, Max = 655625, Type = 0 },		--Kinh nghi®m
					{ Min = 655626, Max = 1000000, Type = 1 }		--Kinh nghi®m+½ðÇ®
				}


x889061_g_ExpTbl = {

			[30] =1785,[31] =1837,[32] =1890,[33] =1942,[34] =1995,
			[35] =2047,[36] =2100,[37] =2152,[38] =2205,[39] =2257,
			[40] =2310,[41] =2362,[42] =2415,[43] =2467,[44] =2520,
			[45] =2572,[46] =2625,[47] =2677,[48] =2730,[49] =2782,
			[50] =2835,[51] =2887,[52] =2940,[53] =2992,[54] =3045,
			[55] =3097,[56] =3150,[57] =3202,[58] =3255,[59] =3307,
			[60] =3360,[61] =3412,[62] =3465,[63] =3517,[64] =3570,
			[65] =3622,[66] =3675,[67] =3727,[68] =3780,[69] =3832,
			[70] =3885,[71] =3937,[72] =3990,[73] =4042,[74] =4095,
			[75] =4147,[76] =4200,[77] =4252,[78] =4305,[79] =4357,
			[80] =4410,[81] =4462,[82] =4515,[83] =4567,[84] =4620,
			[85] =4672,[86] =4725,[87] =4777,[88] =4830,[89] =4882,
			[90] =4935,[91] =4987,[92] =5040,[93] =5092,[94] =5145,
			[95] =5197,[96] =5250,[97] =5302,[98] =5355,[99] =5407,
			[100] =5460,[101] =5512,[102] =5565,[103] =5617,[104] =5670,
			[105] =5722,[106] =5775,[107] =5827,[108] =5880,[109] =5932,
			[110] =5985,[111] =6037,[112] =6090,[113] =6142,[114] =6195,
			[115] =6247,[116] =6300,[117] =6352,[118] =6405,[119] =6457,
			[120] =6510,[121] =6562,[122] =6615,[123] =6667,[124] =6720,
			[125] =6772,[126] =6825,[127] =6877,[128] =6930,[129] =6982,
			[130] =7035,[131] =7087,[132] =7140,[133] =7192,[134] =7245,
			[135] =7297,[136] =7350,[137] =7402,[138] =7455,[139] =7507,
			[140] =7560,[141] =7612,[142] =7665,[143] =7717,[144] =7770,
			[145] =7822,[146] =7875,[147] =7927,[148] =7980,[149] =8032,
			[150]=0,

		}


--==================================
--ÊÂ¼þ½»»¥Èë¿Ú
--==================================
function x889061_OnDefaultEvent( sceneId, selfId, targetId )
	
	--°®ÐÄ¾ÈÖú»î¶¯
	if GetNumText() == 1 and LuaFnGetName( sceneId, targetId ) == x889061_g_NpcName then
		BeginEvent( sceneId )
			AddText( sceneId, "#{H1N1_090718_2}" )
			AddNumText( sceneId, x889061_g_scriptId, "#{H1N1_090718_3}", 6, 5 )
			AddNumText( sceneId, x889061_g_scriptId, "#{H1N1_090718_4}", 6, 6 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	
	--¹ØÓÚ°®ÐÄ¾ÈÖú»î¶¯
	if GetNumText() == 2 and LuaFnGetName( sceneId, targetId ) == x889061_g_NpcName then
		BeginEvent( sceneId )						
			AddText( sceneId, "#{H1N1_090718_12}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	
	--ÎåÐÐÉñÁ¦
	if GetNumText() == 3 and LuaFnGetName( sceneId, targetId ) == x889061_g_RewardNpcName then
		BeginEvent( sceneId )	
			AddText( sceneId, "#{H1N1_090718_13}" )
			AddItemBonus( sceneId, x889061_g_RewardId, 1 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		DispatchMissionContinueInfo( sceneId, selfId, targetId, x889061_g_scriptId, 0 )
		return
	end

	--¹ØÓÚÎåÐÐÉñÁ¦
	if GetNumText() == 4 and LuaFnGetName( sceneId, targetId ) == x889061_g_RewardNpcName then
		BeginEvent( sceneId )						
			AddText( sceneId, "#{H1N1_090718_20}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	--¾èÏ×
	if GetNumText() == 5 and LuaFnGetName( sceneId, targetId ) == x889061_g_NpcName then
		x889061_Donate( sceneId, selfId, targetId )
	end

	--Àë¿ª
	if GetNumText() == 6 and LuaFnGetName( sceneId, targetId ) == x889061_g_NpcName then
		BeginUICommand( sceneId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
	end

end


--==================================
--ÁÐ¾ÙÊÂ¼þ
--==================================
function x889061_OnEnumerate( sceneId, selfId, targetId )

	if GetName( sceneId, targetId ) == x889061_g_NpcName then

		AddNumText( sceneId, x889061_g_scriptId, "#{H1N1_090718_21}", 6, 1 )
		AddNumText( sceneId, x889061_g_scriptId, "#{H1N1_090718_22}", 11, 2 )
	
	elseif GetName( sceneId, targetId ) == x889061_g_RewardNpcName then
	
		AddNumText( sceneId, x889061_g_scriptId, "#{H1N1_090718_23}", 6, 3 )
		AddNumText( sceneId, x889061_g_scriptId, "#{H1N1_090718_24}", 11, 4 )
	
	end

end

--==================================
--ÐÑÄ¿ÌáÊ¾
--==================================
function x889061_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end

--==================================
--¶mµt »ÖØÂ¥Óñ
--==================================
function x889061_OnSubmit( sceneId, selfId, targetId )

	if LuaFnGetName( sceneId, targetId ) ~= x889061_g_RewardNpcName then
		return
	end
	
	--¼ì²éÐúng·ñÓÐÎåcái²»Í¬toÕ ðµ ÎåÐÐÁîÅÆ
	for i = 1, getn( x889061_g_LingpaiList ) do
		if HaveItemInBag( sceneId, selfId, x889061_g_LingpaiList[i] ) == -1 then
			BeginEvent( sceneId )						
				AddText( sceneId, "#{H1N1_090718_14}" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
	end

	--¼ì²éÐúng·ñËø¶¨
	for i =  1, getn( x889061_g_LingpaiList ) do
		if LuaFnGetAvailableItemCount( sceneId, selfId, x889061_g_LingpaiList[i] ) < 1 then
			x889061_NotifyTip( sceneId, selfId, "#{Item_Locked}" )
			return
		end
	end

	--¼ì²é²ÄÁÏÀ¸¿Õ¼ä
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) == 0 then
		BeginEvent( sceneId )						
			AddText( sceneId, "#{H1N1_090718_15}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	
	--¿Û³ýµÀ¾ß
	for i =  1, getn( x889061_g_LingpaiList ) do
		if LuaFnDelAvailableItem( sceneId, selfId, x889061_g_LingpaiList[i], 1 ) ~= 1 then
			x889061_NotifyTip( sceneId, selfId, "#{DeleteItemFailed}" )
			return
		end
	end
	


	--ÊÍ·ÅÖØÂ¥Óñ
	local nBagIndex = TryRecieveItem( sceneId, selfId, x889061_g_RewardId, 0 )
	if nBagIndex ~= -1 then
		--NPC¶Ô»°¸æÖª³É¹¦
		BeginEvent( sceneId )						
			AddText( sceneId, "#{H1N1_090718_16}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
		--Äã ði¬mµ½ÁË: ÖØÂ¥Óñ
		x889061_NotifyTip( sceneId, selfId, "#{H1N1_090718_17}" )

		--·¢¹«¸æ
		local szTranItm = GetBagItemTransfer( sceneId, selfId, nBagIndex )
		if szTranItm ~= nil then
			local szMsg = format( "#W#{_INFOUSR%s}#{H1N1_090718_18}#W#{_INFOMSG%s}#{H1N1_090718_19}",
					LuaFnGetName( sceneId, selfId ),  szTranItm )
			AddGlobalCountNews( sceneId, szMsg )
		end

		--²¥·ÅÌØÐ§
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 49, 0 )

		--¼ÇÂ¼ÈÕÖ¾
		local guid = LuaFnObjId2Guid( sceneId, selfId )
		if guid ~= nil then
			local szLog = format( "SceneId=%d", sceneId )
			ScriptGlobal_AuditGeneralLog( LUAAUDIT_H1N1_CHONGLOUYU, guid, szLog )
		end
	else
		x889061_NotifyTip( sceneId, selfId, "#{GiveItemFailed}" )
	end

end

--==================================
--¾èÏ×°®ÐÄºÍÁ¼Ò©
--==================================
function x889061_Donate( sceneId, selfId, targetId )
	
	--¼ì²éÍæ¼ÒµÈc¤p
	if GetLevel( sceneId, selfId ) < x889061_g_LevelLimit then
		BeginEvent( sceneId )						
			AddText( sceneId, "#{H1N1_090718_5}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	--¼ì²éµ±Ìì²Î¼Ó»î¶¯´ÎÊý
	local nDayCount = GetMissionData( sceneId, selfId, MD_HK_TW_DAY_H1N1_COUNT )
	local nLastDay = GetHighWord( nDayCount )
	local nCount = GetLowWord( nDayCount )
	local nToday = GetDayTime()
	if nDayCount == -1 then
--		x889061_NotifyTip( sceneId, selfId, "GetMissionDataË÷ÒýÔ½½ç,Çë¼ì²éScriptGlobal.lua")
		return
	elseif nLastDay == nToday and nCount >= x889061_g_MaxDayCount then
		BeginEvent( sceneId )						
			AddText( sceneId, "#{H1N1_090718_6}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	--¼ì²éµÀ¾ßÐúng·ñ´æTÕi 
	for i = 1, getn( x889061_g_DonateItemList ) do
		if HaveItemInBag( sceneId, selfId, x889061_g_DonateItemList[i] ) == -1 then
			BeginEvent( sceneId )						
				AddText( sceneId, "#{H1N1_090718_7}" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
	end

	--¼ì²éµÀ¾ßÐúng·ñ¼ÓËø
	for i =  1, getn( x889061_g_DonateItemList ) do
		if LuaFnGetAvailableItemCount( sceneId, selfId, x889061_g_DonateItemList[i] ) < 1 then
			x889061_NotifyTip( sceneId, selfId, "#{Item_Locked}" )
			return
		end
	end
	
	--¼ì²é²ÄÁÏÀ¸¿Õ¼ä
	if LuaFnGetMaterialBagSpace( sceneId, selfId ) == 0 then
		x889061_NotifyTip( sceneId, selfId, "#{H1N1_090718_8}" )
		return
	end
	
	--¹Ø±Õ½çÃæ
	BeginUICommand( sceneId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 1000 )

	--¿Û³ýµÀ¾ß
	for i =  1, getn( x889061_g_DonateItemList ) do
		if LuaFnDelAvailableItem( sceneId, selfId, x889061_g_DonateItemList[i], 1 ) ~= 1 then
			x889061_NotifyTip( sceneId, selfId, "#{DeleteItemFailed}" )
			return
		end
	end

	--¸ø½±Àø
	local nRand = random( 1000000 )
	for i =  1, getn( x889061_g_RewardTypeList ) do
		
		if nRand >= x889061_g_RewardTypeList[i].Min and nRand <= x889061_g_RewardTypeList[i].Max then
			
			if x889061_g_RewardTypeList[i].Type == 0 then		--Kinh nghi®m
				local CurLevel = LuaFnGetLevel( sceneId, selfId )
				local CurExp = x889061_g_ExpTbl[CurLevel]
				LuaFnAddExp( sceneId, selfId, CurExp * 50 )
			
			elseif x889061_g_RewardTypeList[i].Type == 1 then	--Kinh nghi®m+½ðÇ®
				local CurLevel = LuaFnGetLevel( sceneId, selfId )
				local CurExp = x889061_g_ExpTbl[CurLevel]
				LuaFnAddExp( sceneId, selfId, CurExp * 25 )
				AddMoney( sceneId, selfId, 100000 )
			
			else							--ÎåÐÐÁîÅÆ
				local nItemId = x889061_g_RewardTypeList[i].Type
				local nBagIndex = TryRecieveItem( sceneId, selfId, nItemId, 0 )
				if nBagIndex ~= -1 then
					if nItemId == 20600011 then		--°ó¶¨Ä¾ÁîÅÆ
						LuaFnItemBind( sceneId, selfId, nBagIndex )
					end
					
					x889061_NotifyTip( sceneId, selfId, "#{H1N1_090718_9}" .. GetItemName( sceneId, nItemId ) )
					--·¢¹«¸æ
					local szTranItm = GetBagItemTransfer( sceneId, selfId, nBagIndex )
					if szTranItm ~= nil then
						local szMsg = format( "#W#{_INFOUSR%s}#{H1N1_090718_10}#W#{_INFOMSG%s}#{H1N1_090718_11}",
								LuaFnGetName( sceneId, selfId ),  szTranItm )
						AddGlobalCountNews( sceneId, szMsg )
					end

					--¼ÇÂ¼ÈÕÖ¾
					local guid = LuaFnObjId2Guid( sceneId, selfId )
					if guid ~= nil then
						local szLog = format( "SceneId=%d,LingpaiID=%d", sceneId, nItemId )
						ScriptGlobal_AuditGeneralLog( LUAAUDIT_H1N1_WUXINGLINGPAI, guid, szLog )
					end
				else
					x889061_NotifyTip( sceneId, selfId, "#{GiveItemFailed}" )
				end
			end
			
			--²¥·ÅÌØÐ§
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 49, 0 )

			--¸üÐÂ»î¶¯²Î¼Ó´ÎÊý
			local nData = 0
			if nLastDay ~= nToday then
				nData = SetHighWord( nData, nToday )
				nData = SetLowWord( nData, 1 )
			else
				nData = SetHighWord( nData, nToday )
				nData = SetLowWord( nData, nCount + 1 )
			end
			SetMissionData( sceneId, selfId, MD_HK_TW_DAY_H1N1_COUNT, nData )
			
			return
		end

	end
end

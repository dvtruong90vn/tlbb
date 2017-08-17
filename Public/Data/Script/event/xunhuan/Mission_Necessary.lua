--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
--¸Ã½Å±¾ÎÄ¼þÖ»¹©Ê¦ÃÅÈÎÎñ¶ø×ö, ÆäËûÈÎÎñÈçÒªÒýÓÃ, ºó¹û×Ô¸º!
--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
x500501_g_StartDayTime = 8030   --»î¶¯½áÊøÊ±¼ä 2008-1-31
x500501_g_EndDayTime = 8044   --»î¶¯½áÊøÊ±¼ä 2008-2-14

x500501_g_strDieNotice0 = "#{SMRW_20080118_01}"
x500501_g_strDieNotice1 = "#{SMRW_20080118_02}"

x500501_g_ItemId = {30501101, 30501102}

x500501_g_LingShouDanId = {30503034, 30503043, 30503052, 30503061} --ÁéÊÞµ¤ID

x500501_g_strHelpFinishedText = "Ð°ng môn g£p nÕn thì nên tß½ng trþ, thª m¾i là nghîa cØ cao ð©p cüa huynh ð® ð°ng môn. Nhi®m vø hoàn thành!"

function x500501_ACT_Duanwu( sceneId, selfId, iDayHuan ) --¶ËÎç»î¶¯
	
	local DayTime = GetDayTime()
	local Duanwu_Cyc = 20
	local Duanwu_Zongzi = 30501100            --ôÕ×Ó
	local Duanwu_GemDataGlobalIndex = 40
	local Duanwu_MaxGemCount = 2000
	
	local Duanwu_GemData  = LuaFnGetWorldGlobalData( Duanwu_GemDataGlobalIndex )
	local Duanwu_Daytime  = floor( Duanwu_GemData / 10000 )
	local Duanwu_GemCount = mod( Duanwu_GemData, 10000 )
	
	local DuanwuGemList = { 50101001, 50101002, 50102001, 50102002, 50102003, 50102004, 
	                        50103001, 50104002, 50111001, 50111002, 50112001, 50112002, 
	                        50112003, 50112004, 50113001, 50113002, 50113003, 50113004, 
	                        50113005, 50114001 }
	                        
	if iDayHuan <= 0 then
		return
	end
	if DayTime < 7168 or DayTime > 7175 then
		return --²»ÔÚ»î¶¯Ê±¼äÄÚ
	end
	
	local ModHuan = mod( iDayHuan, Duanwu_Cyc )
	if 0 ~= ModHuan then
		return  --²»ÊÇ¸ø½±ÀøµÄ»·Êý
	end
		
	BeginAddItem(sceneId)
		AddItem( sceneId, Duanwu_Zongzi, 1 )    --¸øÓèÍæ¼ÒôÕ×Ó
	local AddRet = EndAddItem(sceneId,selfId)
	if AddRet > 0 then
		AddItemListToHuman(sceneId,selfId)  --¸øÓèôÕ×ÓÍê±Ï
		
		local Gemable = random(100)  -- 1/5»ñµÃ±¦Ê¯
		if Gemable > 20 then
			return
		end
		
		if DayTime ~= Duanwu_Daytime then
			Duanwu_Daytime = DayTime
			Duanwu_GemCount = 0   --±¦Ê¯¼ÆÊýÇåÁã
		end
		
		if Duanwu_GemCount >= Duanwu_MaxGemCount then
			return     --±¦Ê¯ÊýÁ¿³¬¹ýÁËÃ¿ÌìËÍ³öµÄ×î´óÊýÁ¿
		end

		local GemListSize = getn(DuanwuGemList)
		local RandomGem = DuanwuGemList[ random( GemListSize ) ]
		BeginAddItem(sceneId)
			AddItem( sceneId, RandomGem, 1 )    --¸øÓèÍæ¼Ò±¦Ê¯
		local GemRet = EndAddItem(sceneId,selfId)
		if GemRet > 0 then
			AddItemListToHuman(sceneId,selfId)
			local GemInfo = GetItemTransfer(sceneId,selfId,0)
			local strformat	= "#{_INFOUSR%s}#Trong hoÕt ðµng Tiªt Ðoan Ng÷, do hòan thành 20 nhi®m vø sß môn, không nhæng nh§n ðßþc 1 cái bánh ú, mà còn nh§n ðßþc thêm 1#Y#{_INFOMSG%s}."
			local strText = format(strformat, GetName(sceneId,selfId),GemInfo)
			--¹«¸æ¾«¼ò£¬È¥³ý´Ë¹«¸æ
			--BroadMsgByChatPipe(sceneId, selfId, strText, 4)
			
			--´æÈëÈ«¾ÖÊý¾Ý
			Duanwu_GemData = DayTime * 10000 + Duanwu_GemCount + 1
			LuaFnSetWorldGlobalData( Duanwu_GemDataGlobalIndex, Duanwu_GemData )

		end
		
	end	

	
end


--**********************************
--Ìá½»
--**********************************
function x500501_OnSubmit_Necessary( sceneId, selfId, targetId, isHelpFinish )
	local Level =GetLevel(sceneId, selfId)
	--begin modified by zhangguoxin 090208
	local iDayCount=GetMissionData(sceneId,selfId,MD_SHIMEN_DAYCOUNT)
	--local iTime = mod(iDayCount,100000)
	local iTime = GetMissionData(sceneId,selfId,MD_SHIMEN_DAYTIME)
	local iDayTime = floor(iTime/100)	--ÉÏÒ»´Î·ÅÆúÈÎÎñµÄÊ±¼ä(ÌìÊý)
	local iQuarterTime = mod(iTime,100)	--ÉÏÒ»´Î·ÅÆúÈÎÎñµÄÊ±¼ä(¿Ì)
	--local iDayHuan = floor(iDayCount/100000) --µ±ÌìÄÚÍê³ÉµÄÈÎÎñ´ÎÊý
	local iDayHuan = iDayCount --µ±ÌìÄÚÍê³ÉµÄÈÎÎñ´ÎÊý

	--local CurTime = GetHourTime()		--µ±Ç°Ê±¼ä
	local CurTime = GetQuarterTime()		--µ±Ç°Ê±¼ä
	local CurDaytime = floor(CurTime/100)	--µ±Ç°Ê±¼ä(Ìì)
	local CurQuarterTime = mod(CurTime,100)	--µ±Ç°Ê±¼ä(¿Ì)

	if CurDaytime==iDayTime then 	--ÉÏ´ÎÍê³ÉÈÎÎñÊÇÍ¬Ò»ÌìÄÚ
		iDayHuan = iDayHuan+1
	else							--ÉÏ´ÎÍê³ÉÈÎÎñ²»ÔÚÍ¬Ò»Ìì£¬ÖØÖÃ
		iDayTime = CurDaytime
		iQuarterTime = 99
		iDayHuan = 1
	end
	--end modified by zhangguoxin 090208
	
	-- ========================================================
	-- ±ùÌìÑ©µØ»î¶¯
	
	-- »ñµÃ50¹Ò±ÞÅÚ
	if iDayHuan==20 or iDayHuan==40 or iDayHuan==60  then
		local curDayTime = GetDayTime()
		if curDayTime >= x500501_g_StartDayTime and curDayTime <= x500501_g_EndDayTime then
			BeginAddItem(sceneId)
				AddItem( sceneId, 30505166 , 20 )
			local canAdd1 = EndAddItem(sceneId,selfId)
			
			if canAdd1 == 0  then
				BeginEvent( sceneId )
					AddText( sceneId, "Cµt v§t ph¦m cüa các hÕ không còn ch± tr¯ng, l¥n sau lúc giao nhi®m vø xin hãy ð¬ cµt ph¦m v§t ðü ch± tr¯ng." )
				EndEvent( sceneId )
				DispatchMissionTips( sceneId, selfId )
			else
				AddItemListToHuman(sceneId,selfId)
				local transfer = GetItemTransfer(sceneId,selfId,0)
				
				local str1 = format( "#{_INFOUSR%s}", GetName(sceneId, selfId))
				local str2 = format("#W#{_INFOMSG%s}", transfer)
				local strMsg = str1..x500501_g_strDieNotice0..str2..x500501_g_strDieNotice1				
				BroadMsgByChatPipe(sceneId, selfId, strMsg, 4)		
			end
		end	

--¸Ä³É²»¿ÉÄÜÂú×ãµÄÌõ¼þÀ´È¡ÏûÁéÊÞµ¤µÄ½±Àø£¬by zhangqiang 2009.6.18
--		if GetLevel(sceneId, selfId) >= 50 and iDayHuan == 20 then --50¼¶ÒÔÉÏ²Å»ñµÃ£¬Ö»ÓÐµÚÒ»¸ö20»·²Å¸ø£¬¶ø²»ÊÇÃ¿20»·¶¼¸ø
		if 0 > 1 then
			local randomIndex = random(getn(x500501_g_LingShouDanId))
			BeginAddItem(sceneId)
				AddItem( sceneId, x500501_g_LingShouDanId[randomIndex], 1 )
			local canAdd = EndAddItem(sceneId,selfId)
			if canAdd == 0  then
				BeginEvent( sceneId )
					AddText( sceneId, "#{JNHC_081128_01}"..GetItemName(sceneId, x500501_g_LingShouDanId[randomIndex]).."#{HSLJJF_2}" )
				EndEvent( sceneId )
				DispatchMissionTips( sceneId, selfId )
			
			else
				AddItemListToHuman(sceneId,selfId)
				
				--¸ø×Ô¼º·¢ËÍµÃµ½ÎïÆ·µÄÏûÏ¢....
				local strMsg = format("Các hÕ ðã ðÕt ðßþc #H#{_ITEM%d}#W.", x500501_g_LingShouDanId[randomIndex])
				Msg2Player(sceneId, selfId, strMsg, MSG2PLAYER_PARA)
			--[tx42684]	
			  local myStrMsg = format("#{BSJH_81106_10}#H#{_ITEM%d}#W¡£", x500501_g_LingShouDanId[randomIndex])
			  BeginEvent(sceneId)
				  AddText(sceneId, myStrMsg);
			  EndEvent(sceneId)
			  DispatchMissionTips(sceneId,selfId)
			--[/tx42684]			
					
				--5%¼¸ÂÊ»ñµÃ2¸ö
				if random(100) <= 5  then
					BeginAddItem(sceneId)
						AddItem( sceneId, x500501_g_LingShouDanId[randomIndex], 1 )
					canAdd = EndAddItem(sceneId,selfId)
					
					if canAdd == 0  then
						BeginEvent( sceneId )
							AddText( sceneId, "#{JNHC_081128_02}"..GetItemName(sceneId, x500501_g_LingShouDanId[randomIndex]).."#{HSLJJF_2}" )
						EndEvent( sceneId )
						DispatchMissionTips( sceneId, selfId )
					
					else
						AddItemListToHuman(sceneId,selfId)
						local transfer = GetItemTransfer(sceneId,selfId,0)
						local str = format("#{_INFOUSR%s}#{JNHC_081128_03}#{_INFOMSG%s}#{JNHC_081128_04}",GetName(sceneId,selfId), transfer)
						BroadMsgByChatPipe(sceneId, selfId, str, 4)
	
						--¸ø×Ô¼º·¢ËÍµÃµ½ÎïÆ·µÄÏûÏ¢....
						strMsg = format("Các hÕ ðã ðÕt ðßþc #H#{_ITEM%d}#W.", x500501_g_LingShouDanId[randomIndex])
						Msg2Player(sceneId, selfId, strMsg, MSG2PLAYER_PARA)
						
					end
				end
			end
		end
		
	end
	
	--¸øÒ×ÈÝµ¤
	if iDayHuan==10 or iDayHuan==30 or iDayHuan==50 then
		if random(100) <= 30  then
			local randomIndex = random(2)
			BeginAddItem(sceneId)
				AddItem( sceneId, x500501_g_ItemId[randomIndex], 1 )
			local canAdd = EndAddItem(sceneId,selfId)
			
			if canAdd == 0  then
				BeginEvent( sceneId )
					AddText( sceneId, "Cµt v§t ph¦m cüa các hÕ không còn ch± tr¯ng, l¥n sau lúc giao nhi®m vø xin hãy ð¬ cµt ph¦m v§t ðü ch± tr¯ng." )
				EndEvent( sceneId )
				DispatchMissionTips( sceneId, selfId )
			
			else
				AddItemListToHuman(sceneId,selfId)
--				if randomIndex == 1  then
--					-- ·¢ÊÀ½ç¹«¸æ
--					local transfer = GetItemTransfer(sceneId,selfId,0)
--					local str = format("#W#{_INFOUSR%s}#I½ñÈÕÎªÊ¦ÃÅ×öÈÎÎñÓÂÍùÖ±Ç°£¬·Ü²»¹ËÉí£¬Íê³ÉµÚ20´ÎÈÎÎñÊ±ÒÑ¾­ÀÛµÃÂúÉí´óº¹£¬Õý×øÔÚÊ÷Òñµ×ÏÂÐªÏ¢Ê±£¬Ê÷ÉÏµôÏÂÒ»¿ÅÉÁ×Å°×¹âµÄ#W#{_INFOMSG%s}¡£",GetName(sceneId,selfId), transfer)
--					--¹«¸æ¾«¼ò£¬È¥³ý´Ë¹«¸æ
--					--BroadMsgByChatPipe(sceneId, selfId, str, 4)
--					
--				elseif randomIndex == 2  then
--					-- ·¢ÊÀ½ç¹«¸æ
--					local transfer = GetItemTransfer(sceneId,selfId,0)
--					local str = format("#W#{_INFOUSR%s}#I½ñÈÕÎªÊ¦ÃÅ×öÈÎÎñÓÂÍùÖ±Ç°£¬·Ü²»¹ËÉí£¬ºÃ²»ÈÝÒ××öÍêµÚ20´ÎÈÎÎñÊ±£¬ÍÈÒ»Èí×øÔÚÁËµØÉÏ£¬¿Ú´üÀï¹ö³öÒ»¿Å¾§Ó¨Í¸ÁÁµÄ#W#{_INFOMSG%s}¡£",GetName(sceneId,selfId), transfer)
--					----¹«¸æ¾«¼ò£¬È¥³ý´Ë¹«¸æ
--					--BroadMsgByChatPipe(sceneId, selfId, str, 4)
--					
--				end
				
				--¸ø×Ô¼º·¢ËÍµÃµ½ÎïÆ·µÄÏûÏ¢....
				local strMsg = format("Các hÕ ðã ðÕt ðßþc #H#{_ITEM%d}#W.", x500501_g_ItemId[randomIndex])
				Msg2Player(sceneId, selfId, strMsg, MSG2PLAYER_PARA)

			end
		end
	end
	-- ========================================================

  -- ========================================================
	-- Ê¥µ®»î¶¯ Íê³ÉÊ¦ÃÅÈÎÎñ»ñµÃ·û½Ú
	x500501_ACT_Christmas( sceneId, selfId,iDayHuan )	
	
	-- ========================================================

	--PrintNum(iDayHuan)
	--iDayHuan = 60

--if mod(iDayHuan, 10) >= 1 and mod(iDayHuan, 10) < 5 then
--elseif mod(iDayHuan, 10) >= 5 and mod(iDayHuan, 10) < 8 then
--	SetHumanMenpaiPoint(sceneId, selfId, GetHumanMenpaiPoint(sceneId, selfId)+1	)
--	Msg2Player(  sceneId, selfId,"ÄãµÃµ½ÁË#Y1#WµãÃÅÅÉ¹±Ï×¶È¡£" ,MSG2PLAYER_PARA )
--elseif mod(iDayHuan, 10) >= 8 and mod(iDayHuan, 10) < 10 then
--	SetHumanMenpaiPoint(sceneId, selfId, GetHumanMenpaiPoint(sceneId, selfId)+2	)
--	Msg2Player(  sceneId, selfId,"ÄãµÃµ½ÁË#Y2#WµãÃÅÅÉ¹±Ï×¶È¡£" ,MSG2PLAYER_PARA )
--else --mod(iDayHuan, 10) must return 0
--	SetHumanMenpaiPoint(sceneId, selfId, GetHumanMenpaiPoint(sceneId, selfId)+3	)
--	Msg2Player(  sceneId, selfId,"ÄãµÃµ½ÁË#Y3#WµãÃÅÅÉ¹±Ï×¶È¡£" ,MSG2PLAYER_PARA )
--end

	--Êµ¼Ê½±Àø¹±Ï×¶È=£¨Íæ¼ÒµÈ¼¶-»ù´¡µÈ¼¶£©* µÈ¼¶Ó°Ïì²ÎÊý + »ù´¡¹±Ï×¶È
	--menpaipoint = (playerlvl - 10)*0.05 + X
	local baseMenpaiPoint = 0
	if iDayHuan < 10 then
		baseMenpaiPoint = 1
	elseif iDayHuan < 15 then
		baseMenpaiPoint = 2
	elseif iDayHuan < 19 then
		baseMenpaiPoint = 3
	elseif iDayHuan == 19 then
		baseMenpaiPoint = 4
	elseif iDayHuan == 20 then
		baseMenpaiPoint = 5
	end
	local menpaiPoint = floor((GetLevel(sceneId, selfId) - 10)*0.05) + baseMenpaiPoint
	SetHumanMenpaiPoint(sceneId, selfId, GetHumanMenpaiPoint(sceneId, selfId) + menpaiPoint)
	Msg2Player(  sceneId, selfId,"Các hÕ ðÕt ðßþc #Y" .. menpaiPoint .. "#Wði¬m ðµ c¯ng hiªn môn phái" ,MSG2PLAYER_PARA )

	--iDayCount = iDayHuan*100000+iDayTime*100+iQuarterTime --×¢ÊÍ by zhangguoxin 090208
	local Reward_Append = 1

	local playerLevel = GetLevel(sceneId, selfId)
	if playerLevel < 20 then
		if iDayHuan <= 10 then
			Reward_Append = 2
		end
	elseif playerLevel >= 20 and playerLevel < 30 then
		if iDayHuan <= 15 then
			Reward_Append = 2
		end
	elseif playerLevel >= 30 and playerLevel < 100 then
	  if iDayHuan <= 20 then
			Reward_Append = 2
		end
	elseif playerLevel >= 100 and playerLevel < 120 then
		if iDayHuan <= 20 then
			Reward_Append = 2
		end
	end

	--//////////////////////////////////////////////////
	--ÓÐ10%µÄ¼¸ÂÊ»ñµÃÒ»¸öµÍ¼¶±¦Ê¯ºÏ³É·û
	--AAA½ñÈÕÎªÊ¦ÃÅ×öÈÎÎñÓÂÍùÖ±Ç°£¬·Ü²»¹ËÉí£¬ÔÚÍê³ÉµÚ20´Î
	--¶à±¶Ê±£¬ÖÕÒòÌ«ÀÛÒ»õÓË¤µ¹ÔÚÂ·±ß£¬ÅÀÆðÀ´µÄÊ±ºò£¬Á³ÉÏ
	--¾ÓÈ»Õ³×ÅÒ»ÕÅÖå°Í°ÍµÄ[µÍ¼¶±¦Ê¯ºÏ³É·û]¡£
	--ID£º30900015
	--?	Íæ¼ÒµÈ¼¶±ØÐë >=40¼¶
	--?	µ±ÌìµÚ20´ÎÊ¦ÃÅ½±ÀøÎª¶à±¶½±Àø
	if playerLevel >= 40 and iDayHuan == 20 then
		local ret = random(100)
		--PrintNum(ret)
		if ret <= 10 then
			local szItemTransfer = ""
			BeginAddItem(sceneId)
				AddItem( sceneId, 30900015, 1 )
			local canAdd = EndAddItem(sceneId,selfId)
			if canAdd > 0 then
				AddItemListToHuman(sceneId,selfId)
				szItemTransfer = GetItemTransfer(sceneId,selfId,0)
				local strformat	= "#W#{_INFOUSR%s}#cffffcc hôm nay vì lúc c¯ g¡ng hoàn thành 20 l¥n nhi®m vø sß môn, cu¯i cùng do quá m®t möi ðã ngã bên ðß¶ng, lúc ðÑng d§y, thì trên m£t b¸ dán 1 t¤m #W#{_INFOMSG%s} nhån nheo."
				local strText = format(strformat, GetName(sceneId,selfId),szItemTransfer)
				
				BroadMsgByChatPipe(sceneId, selfId, strText, 4)
			end
		end
	end
	--//////////////////////////////////////////////////

	local MijiActive = 1
	local AwardID = 30505078    --ÌìÊé²Ð¾íµÄID
	local AwardCyc = 20         --½±Àø»·Êý( ×ö¶àÉÙ´ÎÈÎÎñ»á¸øÒ»´Î½±Àø )

	local DayTime = GetDayTime()
	if DayTime < 7104 then      --07Äê107Ìì(4ÔÂ15ºÅ)
       MijiActive = 0
    end

    if DayTime >= 7115 then      --07Äê115Ìì(4ÔÂ26ºÅ)
       MijiActive = 0
    end


	if playerLevel > 19 then
		if iDayHuan > 0 then
			local ModHuan = mod( iDayHuan, AwardCyc )
			if 0 == ModHuan then
				if 1 == MijiActive then
					BeginAddItem(sceneId)        --¸øÓèÍæ¼Ò¶«Î÷
						AddItem( sceneId, AwardID, 1 )
					local AddRet = EndAddItem(sceneId,selfId)
					if AddRet > 0 then
						AddItemListToHuman(sceneId,selfId)
					end
				end
			end

		end
	end

	local skyrockets = { 30505081, 30505082, 30505083, 30505084 }
	local count = 2
	local cycle = 20

	if DayTime >= 7128 and DayTime <= 7150 then		-- 07.5.9 ~ 07.5.31
		if ( iDayHuan / cycle ) == floor( iDayHuan / cycle ) then
			local skyrocket = skyrockets[random( getn(skyrockets) )]
			BeginAddItem( sceneId )					--¸øÓèÍæ¼Ò¶«Î÷
				AddItem( sceneId, skyrocket, 2 )
			local AddRet = EndAddItem( sceneId, selfId )
			if AddRet > 0 then
				AddItemListToHuman( sceneId, selfId )
			else
				local strText = "Vì túi ðñng ð° cüa các hÕ không ðü, các hÕ m¤t mµt l¥n nh§n ðßþc #{_ITEM" .. skyrocket .. "} c½ hµi"

				BeginEvent( sceneId )
					AddText( sceneId, strText )
				EndEvent( sceneId )
				DispatchMissionTips( sceneId, selfId )

				Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )
			end

		end
	end

	x500501_ACT_Duanwu( sceneId, selfId, iDayHuan )
	
	--ÉèÖÃÑ­»·ÈÎÎñµÄ»·Êý
	--begin modified by zhangguoxin 090208
	iDayCount = iDayHuan
	local newTime = iDayTime*100+iQuarterTime
	
	SetMissionData(sceneId,selfId,MD_SHIMEN_DAYTIME,newTime)
	SetMissionData(sceneId,selfId,MD_SHIMEN_DAYCOUNT,iDayCount)
	--end modified by zhangguoxin 090208
	x500501_g_MissionRound = GetMissionData(sceneId,selfId,MD_SHIMEN_HUAN)

	--Ë¥¼õÏµÊý
	--l_Exp = 0.75 * 0.75
	--l_Money = 0.75 * ( 49 + Level ) / ( 160 + 40 * Level )
	--¼ÆËã½±Àø¾­ÑéµÄÊýÁ¿
	--if mod(x500501_g_MissionRound,10) == 0 then
	--	x500501_g_Exp = 2400*(Level+4) * 10 * l_Exp / 120						--µÈ¼¶+»·Êýº¯Êý£¬ÊÜ¾­Ñéµ÷½Ú³£ÊýµÄÓ°Ïì
		--x500501_g_Money = 2400*(Level+4) * 10 * l_Money /120						--µÈ¼¶+»·Êýº¯Êý£¬ÊÜ¾­Ñéµ÷½Ú³£ÊýµÄÓ°Ïì
	--else
	--	x500501_g_Exp = 2400*(Level+4) * mod(x500501_g_MissionRound,10) * l_Exp / 120						--µÈ¼¶+»·Êýº¯Êý£¬ÊÜ¾­Ñéµ÷½Ú³£ÊýµÄÓ°Ïì
		--x500501_g_Money = 2400*(Level+4) * mod(x500501_g_MissionRound,10) * l_Money /120						--µÈ¼¶+»·Êýº¯Êý£¬ÊÜ¾­Ñéµ÷½Ú³£ÊýµÄÓ°Ïì
	--end

	-- 1+µÈ¼¶Ó°Ïì*µ±Ç°µÈ¼¶/10 {µÈ¼¶Ó°Ïì=0.035£¬Ó°ÏìÖ¸Êý=1}
	local levelfactor = 0.035
	local refix = 1 + levelfactor*playerLevel/10

	local strHuashan = ""
	local strHuashan2 = ""
	if Reward_Append == 2 then
		if GetHuashanV(sceneId,selfId) == GetMenPai(sceneId,selfId) then
			local addMoney = floor(GetMoneyMultipleByRound(x500501_g_MissionRound) * floor(GetMoneyBonusByLevel(Level)/2))
			--local addExp = floor(GetExpMultipleByRound(x500501_g_MissionRound) * floor(GetExpBonusByLevel(Level)/2)*refix)
			local addExp = floor(GetExpMultipleByRound(x500501_g_MissionRound) * floor(GetExpBonusByLevel(Level))*refix)
			x500501_g_Money = addMoney * 3
			x500501_g_Exp = addExp * 3
			strHuashan = "#cff99ccVì b±n môn phái ðÕt ðßþc Lu§n Kiªm Hoa S½n hÕng nh¤t cüa kÏ này, nên có th¬ nh§n ðßþc thêm #Yph¥n thß·ng kinh nghi®m#W cüa sß môn." .. addExp .. "#cff99cc, ti«n#{_MONEY" .. addMoney .. "}#cff99cc."
			strHuashan2 = "#cff99cc nh§n ðßþc thêm #Yph¥n thß·ng kinh nghi®m#W cüa sß môn (Lu§n Kiªm Hoa S½n hÕng nh¤t) " .. addExp .. ", ti«n#Y#{_MONEY" .. addMoney .. "}#cff99cc."
		else
			x500501_g_Money = floor( (GetMoneyMultipleByRound(x500501_g_MissionRound) * GetMoneyBonusByLevel(Level)) )
			--local x500501_g_Exp = floor( (GetExpMultipleByRound(x500501_g_MissionRound) * GetExpBonusByLevel(Level))*refix)
			x500501_g_Exp = floor( (GetExpMultipleByRound(x500501_g_MissionRound) * GetExpBonusByLevel(Level)*2)*refix)
		end
	else
		x500501_g_Money = GetMoneyMultipleByRound(x500501_g_MissionRound) * floor(GetMoneyBonusByLevel(Level)/2)
		x500501_g_Exp = GetExpMultipleByRound(x500501_g_MissionRound) * floor(GetExpBonusByLevel(Level)/2)
	end

	--if	floor((x500501_g_MissionRound - 1) / 10) >=1  then
	--	x500501_g_Exp = 2400*(Level+4) * l_Exp / 120 + x500501_g_Exp						--11~20»·ÈÎÎñ£¬Ã¿»·¶îÍâÔö¼ÓÒ»¶¨¾­ÑéÔöÁ¿£¬½ðÇ®Ã»ÓÐÔöÁ¿
	--end


	--x500501_g_Exp = x500501_g_Exp * Reward_Append

	x500501_g_Exp = floor(x500501_g_Exp)
	x500501_g_Money = floor(x500501_g_Money)

	--Ôö¼Ó¾­ÑéÖµºÍÇ®
	--Ìí¼ÓÈÎÎñ½±Àø
	AddExp( sceneId,selfId,x500501_g_Exp)
	AddMoney(sceneId,selfId,x500501_g_Money)
	--ÏÔÊ¾¶Ô»°¿ò
	BeginEvent(sceneId)
		--Èç¹ûÊÇÍ¬ÃÅÏàÖúÍê³ÉµÄ....Ôò¼ÓÈëÏà¹Ø¶Ô»°....
		if isHelpFinish and isHelpFinish == 1 then
			AddText(sceneId, x500501_g_strHelpFinishedText)
		end
		AddText(sceneId,"  Làm r¤t khá, · ðây có "..x500501_g_Exp.." ði¬m tr¸ giá kinh nghi®m và #{_MONEY"..x500501_g_Money.."}, coi nhß t£ng thß·ng cho ngß½i")
		AddText(sceneId, strHuashan)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

	Msg2Player(  sceneId, selfId, strHuashan2,MSG2PLAYER_PARA )
	--Msg2Player(  sceneId, selfId,"ÄãµÃµ½ÁË#{_MONEY" .. tostring(x500501_g_Money) .. "}" ,MSG2PLAYER_PARA )
	--Msg2Player(  sceneId, selfId,"ÄãµÃµ½ÁË" .. tostring(x500501_g_Exp) .. "µã¾­ÑéÖµ" ,MSG2PLAYER_PARA )

	--ÔÚÒ»¶¨Ìõ¼þÏÂ¿ÉÒÔµÃµ½¶îÍâµÄ½±Àø
	if Reward_Append == 2 and mod(iDayHuan, 5) == 0 and random(1000) <= 5 then

		local ItemSn, ItemName, _, bBroadCast = GetOneMissionBonusItem(27)
		local szItemTransfer = ""
		BeginAddItem(sceneId)
			AddItem( sceneId, ItemSn, 1 )
		local canAdd = EndAddItem(sceneId,selfId)

		if canAdd > 0 then
			AddItemListToHuman(sceneId,selfId)
			szItemTransfer = GetItemTransfer(sceneId,selfId,0)
			local strText = format("Ngß½i ðã ðÕt ðßþc %s", ItemName)
			BeginEvent(sceneId)
				AddText(sceneId, strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)

			local strformatList	= {
						"#W#{_INFOUSR%s}#cffffcc trong lúc làm nhi®m vø sß môn, vì quá v¤t vä, sß phø ðã thß·ng 1 #W#{_INFOMSG%s}. ",
						"#W#{_INFOUSR%s}#cffffcc v×a hoàn thành nhi®m vø sß môn bß¾c ra cØa thì b¸ v¤p phäi th«m cØa, phát hi®n 1 #W#{_INFOMSG%s}. ",
						"#cffffccVì #W#{_INFOUSR%s}#cffffcc trong lúc giao nhi®m vø sß môn, sß phù thì ðang n±i gi§n nên b¸ sß phø sÇn tay l¤y 1 #W#{_INFOMSG%s}#cffffcc ném trúng ð¥u.",
						"#W#{_INFOUSR%s}#cffffcc trong lúc giao nhi®m vø sß môn, b²ng trên tr¶i r½i xu¯ng 1 #W#{_INFOMSG%s}#cffffcc trúng vào ð¥u.",
						}
			local index = random(4)
			local PlayName = GetName(sceneId,selfId)
			strText = format(strformatList[index], PlayName, szItemTransfer)
			
			--¹«¸æ¾«¼ò£¬È¥³ý
			--BroadMsgByChatPipe(sceneId, selfId, strText, bBroadCast)
			
		end

	end

	BeginEvent(sceneId)
		AddText(sceneId, "#GHôm nay#W ngß½i ðã hoàn thành xong " .. iDayHuan .. "#G vòng nhi®m vø sß môn#W");
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)

	--Ê¦ÃÅÈÎÎñÍ³¼Æ
	LuaFnAuditShiMenRenWu(sceneId, selfId, x500501_g_MissionRound, GetLevel(sceneId, selfId))
	LuaFnAuditShiMenRenWu_Day(sceneId, selfId, iDayHuan, GetLevel(sceneId, selfId))           --µ±ÌìÊ¦ÃÅÈÎÎñÍ³¼Æ
	return Reward_Append, x500501_g_MissionRound

end

--**********************************
--½ÓÊÜ
--**********************************
function x500501_CheckAccept_Necessary( sceneId, selfId )

	--begin modified by zhangguoxin 090208
	local iDayCount=GetMissionData(sceneId,selfId,MD_SHIMEN_DAYCOUNT)
	--local iTime = mod(iDayCount,100000)
	local iTime = GetMissionData(sceneId,selfId,MD_SHIMEN_DAYTIME)
	local iDayTime = floor(iTime/100)	--ÉÏÒ»´Î·ÅÆúÈÎÎñµÄÊ±¼ä(ÌìÊý)
	local iQuarterTime = mod(iTime,100)	--ÉÏÒ»´Î·ÅÆúÈÎÎñµÄÊ±¼ä(Ò»¿ÌÖÖ)
	--local iDayHuan = floor(iDayCount/100000) --µ±ÌìÄÚÍê³ÉµÄÈÎÎñ´ÎÊý
	local iDayHuan = iDayCount --µ±ÌìÄÚÍê³ÉµÄÈÎÎñ´ÎÊý

	--local CurTime = GetHourTime()		--µ±Ç°Ê±¼ä
	local CurTime = GetQuarterTime()		--µ±Ç°Ê±¼ä
	local CurDaytime = floor(CurTime/100)	--µ±Ç°Ê±¼ä(Ìì)
	local CurQuarterTime = mod(CurTime,100) 	--µ±Ç°Ê±¼ä(Ò»¿ÌÖÓ)
	--print(iDayCount,iTime,iDayTime,iQuarterTime,iDayHuan)
	--print(CurQuarterTime,iQuarterTime)
	--print(iDayCount,CurTime)
	if iDayTime == CurDaytime then
		--Èç¹ûµ±Ìì×ö¸ÃÈÎÎñ´ÎÊý´ïµ½60Ôò²»ÔÊÐíÔÙ½Ó
		if iDayHuan >= 60 then
			return -2;
		end
		if CurQuarterTime == iQuarterTime then
			return -1;
		end
	else
		iDayHuan = 1
		--iDayCount = iDayHuan*100000+iDayTime*100+iQuarterTime
		iDayCount = iDayHuan;
		local newTime = iDayTime*100+iQuarterTime
		SetMissionData(sceneId, selfId, MD_SHIMEN_DAYTIME, newTime)
		SetMissionData(sceneId, selfId, MD_SHIMEN_DAYCOUNT, iDayCount)
	end
	--end modified by zhangguoxin 090208
	local playerLevel = GetLevel(sceneId, selfId)
	if playerLevel < 20 then
		if iDayHuan < 10 then
			SetMissionData(sceneId, selfId, MD_SHIMEN_DOUBLE_EXP, 1)
		else
			SetMissionData(sceneId, selfId, MD_SHIMEN_DOUBLE_EXP, 0)
		end
	elseif playerLevel >= 20 and playerLevel < 30 then
		if iDayHuan < 15 then
			SetMissionData(sceneId, selfId, MD_SHIMEN_DOUBLE_EXP, 1)
		else
			SetMissionData(sceneId, selfId, MD_SHIMEN_DOUBLE_EXP, 0)
		end
	elseif playerLevel >= 30 and playerLevel < 100 then
    if iDayHuan < 20 then
		  SetMissionData(sceneId, selfId, MD_SHIMEN_DOUBLE_EXP, 1)
	  else
		  SetMissionData(sceneId, selfId, MD_SHIMEN_DOUBLE_EXP, 0)
	  end
	elseif playerLevel >= 100 and playerLevel < 120 then
	  if iDayHuan < 20 then
		  SetMissionData(sceneId, selfId, MD_SHIMEN_DOUBLE_EXP, 1)
	  else
		  SetMissionData(sceneId, selfId, MD_SHIMEN_DOUBLE_EXP, 0)
	  end
	end

	return 1;

end

--**********************************
--·ÅÆú
--**********************************
function x500501_Abandon_Necessary( sceneId, selfId )

	--begin modified by zhangguoxin 090208
	--local iDayCount=GetMissionData(sceneId,selfId,MD_SHIMEN_DAYCOUNT)
	--local iTime = mod(iDayCount,100000)
	local iTime = GetMissionData(sceneId,selfId,MD_SHIMEN_DAYTIME)
	local iDayTime = floor(iTime/100)	--ÉÏÒ»´Î·ÅÆúÈÎÎñµÄÊ±¼ä(ÌìÊý)
	--local iDayHuan = floor(iDayCount/100000) --µ±ÌìÄÚÍê³ÉµÄÈÎÎñ´ÎÊý

	--local CurTime = GetHourTime()		--µ±Ç°Ê±¼ä
	local CurTime = GetQuarterTime()		--µ±Ç°Ê±¼ä
	local CurDaytime = floor(CurTime/100)	--µ±Ç°Ê±¼ä(Ìì)

	if iDayTime ~= CurDaytime then
		--iDayHuan = 0
		SetMissionData(sceneId,selfId,MD_SHIMEN_DAYCOUNT,0)
	end

	--ÉèÖÃÑ­»·ÈÎÎñµÄÊ±¼ä
	--iDayCount = iDayHuan*100000+CurTime
	--SetMissionData(sceneId,selfId,MD_SHIMEN_DAYCOUNT,iDayCount)
	SetMissionData(sceneId,selfId,MD_SHIMEN_DAYTIME,CurTime)
	--end modified by zhangguoxin 090208

	local menpaiPoint = GetHumanMenpaiPoint(sceneId, selfId)
	if menpaiPoint == 1 then
		SetHumanMenpaiPoint(sceneId, selfId, menpaiPoint-1 )
		Msg2Player(  sceneId, selfId,"Ngß½i ðã tiêu hao #Y1 #Wði¬m c¯ng hiªn môn phái" ,MSG2PLAYER_PARA )
	elseif menpaiPoint >= 2 then
		SetHumanMenpaiPoint(sceneId, selfId, menpaiPoint-2 )
		Msg2Player(  sceneId, selfId,"Ngß½i ðã tiêu hao #Y2 #Wði¬m c¯ng hiªn môn phái" ,MSG2PLAYER_PARA )
	end
end

--**********************************
--Íæ¼ÒÌá½»µÄÆÕÍ¨ÎïÆ·
--**********************************
function x500501_OnMissionCheck_Necessary( sceneId, selfId, index1, index2, index3, Needindex )

	if Needindex == nil or Needindex == -1 then
		return 0;
	end

	if index1 >= 0 and index1 < 60  then
		SerialNum = LuaFnGetItemTableIndexByIndex( sceneId, selfId, index1 )

		if SerialNum == Needindex then
			return index1;
		end
	end

	if index2 >= 0 and index2 < 60  then
		SerialNum = LuaFnGetItemTableIndexByIndex( sceneId, selfId, index2 )

		if SerialNum == Needindex then
			return index2;
		end
	end

	if index3 >= 0 and index3 < 60  then
		SerialNum = LuaFnGetItemTableIndexByIndex( sceneId, selfId, index3 )

		if SerialNum == Needindex then
			return index3;
		end
	end

	BeginEvent(sceneId)
		AddText(sceneId,"Nhi®m vø cüa ngß½i không th¬ hoàn thành, v§t ph¦m ngß½i giao không chính xác")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,-1)
	return -1;

end

--**********************************
--Íæ¼ÒÌá½»µÄ×°±¸ÀàÎïÆ·
--**********************************
function x500501_OnMissionCheckName_Necessary( sceneId, selfId, index1, index2, index3, Needindex )

	if Needindex == nil or Needindex == -1 then
		return 0;
	end

	if index1 >= 0 and index1 < 60  then
		SerialNum = LuaFnGetItemTableIndexByIndex( sceneId, selfId, index1 )
		ItemNameId = GetItemNameID(SerialNum)

		if ItemNameId == Needindex then
			return index1;
		end
	end

	if index2 >= 0 and  index2 < 60 then
		SerialNum = LuaFnGetItemTableIndexByIndex( sceneId, selfId, index2 )
		ItemNameId = GetItemNameID(SerialNum)

		if ItemNameId == Needindex then
			return index2;
		end
	end

	if index3 >= 0 and  index3 < 60 then
		SerialNum = LuaFnGetItemTableIndexByIndex( sceneId, selfId, index3 )
		ItemNameId = GetItemNameID(SerialNum)

		if ItemNameId == Needindex then
			return index3;
		end
	end
	BeginEvent(sceneId)
		AddText(sceneId,"Nhi®m vø cüa ngß½i không th¬ hoàn thành, v§t ph¦m ngß½i giao không chính xác")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,-1)
	return -1;
end

--**********************************
--Íæ¼ÒÌá½»µÄÎïÆ·
--**********************************
function x500501_OnMissionCheck_NecessaryEx( sceneId, selfId, index1, index2, index3, Needindex )
	if Needindex == nil or Needindex <= 0 then
		return -1
	end

	local indices = { index1, index2, index3 }
	for i = 1, getn( indices ) do
		if indices[i] and indices[i] >=0 and indices[i] < 80 then	-- ºÏ·¨µÄ±³°ü¸ñ×Ó
			if LuaFnGetItemTableIndexByIndex( sceneId, selfId, indices[i] ) == Needindex then
				return indices[i]
			end
		end
	end

	return -1
end

-- Ê¥µ®»î¶¯ Íê³ÉÊ¦ÃÅÈÎÎñ»ñµÃ·û½Ú
function x500501_ACT_Christmas( sceneId, selfId, DayHuan )
  
  if DayHuan ~=20 and DayHuan ~=40 and DayHuan ~=60  then
     return
  end
	--¼ì²âÊ±¼ä	
	if CallScriptFunction( 050025, "CheckRightTime", sceneId) == 1 then
			
			--Èç¹ûÍæ¼ÒµÈ¼¶Ð¡ÓÚ25²»¸øÓèºØ¿¨
	  if	GetLevel( sceneId, selfId) < 25 then
		  return
	  end
	  
	  --¼ì²â²ÄÁÏ°üÊÇ·ñÓÐµØ·½....
	  if LuaFnGetMaterialBagSpace( sceneId, selfId ) < 1 then
		  return
	  end
	  
	  local x500501_HeKaId = {
	                 20310011,
	                 20310017,
	                 20310012,
	                 20310019,
	                 20310014,
	                 20310018,
	                 20310015,
	                 20310016,
	                 20310013,	
           }			                                   --ºØ¿¨ID
    local menpaiId = LuaFnGetMenPai( sceneId, selfId )
    local hekaid = 0
    local strtext = ""
	  --¸øÃÅÅÉºØÌû
	  if menpaiId == MP_SHAOLIN then
	     strtext = "Các hÕ thu ðßþc 1 t¤m Thi®p chúc ngày l­ phái Thiªu Lâm."
	     hekaid = x500501_HeKaId[1]
	  elseif menpaiId == MP_MINGJIAO then
	     strtext = "Các hÕ thu ðßþc 1 t¤m Thi®p chúc ngày l­ phái Minh Giáo."
	     hekaid = x500501_HeKaId[2]
	  elseif menpaiId == MP_GAIBANG then
	     strtext = "Các hÕ thu ðßþc 1 t¤m Thi®p chúc ngày l­ phái Cái Bang."
	     hekaid = x500501_HeKaId[3]
	  elseif menpaiId == MP_WUDANG then
	     strtext = "Các hÕ thu ðßþc 1 t¤m Thi®p chúc ngày l­ phái Võ Ðang."
	     hekaid = x500501_HeKaId[4]
	  elseif menpaiId == MP_EMEI then
	     strtext = "Các hÕ thu ðßþc 1 t¤m Thi®p chúc ngày l­ phái Nga My."
	     hekaid = x500501_HeKaId[5]
	  elseif menpaiId == MP_XINGSU then
	     strtext = "Các hÕ thu ðßþc 1 t¤m Thi®p chúc ngày l­ phái Tinh Túc."
	     hekaid = x500501_HeKaId[6]
	  elseif menpaiId == MP_DALI then
	     strtext = "Các hÕ thu ðßþc 1 t¤m Thi®p chúc ngày l­ phái Thiên Long."
	     hekaid = x500501_HeKaId[7]
	  elseif menpaiId == MP_TIANSHAN then
	     strtext = "Các hÕ thu ðßþc 1 t¤m Thi®p chúc ngày l­ phái Thiên S½n."
	     hekaid = x500501_HeKaId[8]
	  elseif menpaiId == MP_XIAOYAO then
	     strtext = "Các hÕ thu ðßþc 1 t¤m Thi®p chúc ngày l­ phái Tiêu Dao."
	     hekaid = x500501_HeKaId[9]
	  end

	  local BagIndex = TryRecieveItem( sceneId, selfId, hekaid, QUALITY_MUST_BE_CHANGE )
	  if BagIndex ~= -1 then
		  BeginEvent( sceneId )
			  AddText( sceneId, strtext )
		  EndEvent( sceneId )
		  DispatchMissionTips( sceneId, selfId )
	  end	  
	  
	end
	
end

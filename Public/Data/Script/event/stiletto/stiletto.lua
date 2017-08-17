--×°±¸´ò¿×

--½Å±¾ºÅ
x311200_g_ScriptId	= 311200

x311200_Stiletto_four_ID = {
														10514091,10514092,10514093,10514094,10514095,10514096,10514097,10514098,10515090,10515091,
														10515092,10515093,10515094,10515095,10515096,10515097,10515098,10521090,10521091,10521092,
														10521093,10521094,10521095,10521096,10521097,10521098,10522090,10522091,10522092,10522093,
														10522094,10522095,10522096,10522097,10522098,10523090,10523091,10523092,10523093,10523094,
														10523095,10523096,10523097,10523098,10514090,
														-- ñÒÉÙÎ¢£¬2008.6.12¡£Ìí¼Ó102ÉñÆ÷¼«ÏÞ´ò¿×
														10300100,10300101,10300102, 10301100,10301101,10301102, 10301200,10301201,10301202, 
														10302100,10302101,10302102, 10303100,10303101,10303102, 10303200,10303201,10303202,
														10304100,10304101,10304102, 10305100,10305101,10305102, 10305200,10305201,10305202,
														10422016,10423024,
														--ºú¿­£¬2008.8.29¡£¾É100Ì×£¨Îå¼þÌ×£©¼°ÐÂ96Ì×¿ª·Å¼«ÏÞ´ò¿×
														10510009,10510019,10510029,10510039,10510049,10510059,10510069,10510079,10510089,10511009,
														10511019,10511029,10511039,10511049,10511059,10511069,10511079,10511089,10512009,10512019,
														10512029,10512039,10512049,10512059,10512069,10512079,10512089,10513009,10513019,10513029,
														10513039,10513049,10513059,10513069,10513079,10513089,10511096,10512092,10520092,10522101,
														10523101,10511097,10512093,10520093,10522102,10523102,10511098,10512094,10520094,10522103,
														10523103,10511099,10512095,10520095,10522104,10523104,
														--ºú¿­£¬2008.9.18¡£90¼¶ÒÔÉÏ£¨º¬90£©Éú»î¼¼ÄÜ²ú³öµÄ½äÖ¸£¬»¤·û£¬¼ç¿ª·Å¼«ÏÞ´ò¿×
														10215020,10222020,10223020,10222035,10222036,10223035,10223036,
														--ºú¿­£¬2008.11.11¡£90¼¶ÒÔÉÏ£¨º¬90£©ÊÖ¹¤×°±¸¿ª·Å¼«ÏÞ´ò¿×£¨Ð¬£¬Ñü´ø£¬»¤Íó£¬ÊÖÌ×£¬Í·¿ø£¬ÎäÆ÷£¬»¤¼×£¬ÏîÁ´£©
														10200019,10200020,10201019,10201020,10202019,10202020,10203019,10203020,10204019,10204020,
														10205019,10205020,10210020,10210040,10210060,10213020,10213040,10213060,10212020,10212040,
														10212060,10211020,10211040,10211060,10214020,10221020,10220020,
														--zchw£¬2008-11-17  TT£º41140 90ÃÅÅÉÌ×£¬92¼¶ÉñÆ÷¿ª·ÅµÚËÄ¿×													
														10510008,10510038,10510068,
														10511018,10511028,10511048,10511058,10511078,10511088,10512008,10512038,
														10512068,10513008,10513018,10513028,10513038,10513048,10513058,10513068,
														10513078,10513088,10514028,10514058,10514088,10520018,10520028,10520048,
														10520058,10520078,10520088,10521028,10521058,10521088,10522018,10522048,
														10522078,10552008,10552038,10552068,10553008,10553018,10553038,10553048,
														10553068,10553078,
														--zchw 2008-11-26 TT£º41771
														10410026, 10410027, 10410034, 10410035, 10423025, 10423026,
														--houzhifang 2008-12-22: dark
														10150001,10150002,
														--yaya 2011-9-14: dark
														10300008,10300009,10300010,10300011,10300012,10301002,10301003,10301004,
														10301005,10301006,10302010,10302011,10302012,10302013,10302014,10303002,
														10303003,10303004,10303005,10303006,10304010,10304011,10304012,10304013,
														10304014,10305010,10305011,10305012,10305013,10305014,
														--yaya 2011-9-15 ¶¥¼¶ÊÖ¹¤
														10200028,10201028,10202028,10203028,10204028,10205028,10210068,10211068,10212068,10213068,
														10214028,10215028,10221028,10220028,10222028,10223028,10210088,10211078,10212078,10213088,
														10210078,10211088,10212088,10213078,
														
													}
																
function x311200_OnStiletto( sceneId, selfId, idBagPos, idBagPosStuff )

	--¿É´ò¿×µÄ×°±¸
	--0ÎäÆ÷£¬1Ã±×Ó£¬2ÒÂ·þ£¬3ÊÖÌ×£¬4Ð¬
	--5Ñü´ø£¬6½äÖ¸£¬7ÏîÁ´£¬12»¤·û£¬14»¤Íó
	--15»¤¼ç
	local	tEquipGemTable	= { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18 }

	local	Bore_Count			= GetBagGemCount( sceneId, selfId, idBagPos )
	local nLevel					= GetBagItemLevel( sceneId, selfId, idBagPos )
	local EquipType				= LuaFnGetBagEquipType( sceneId, selfId, idBagPos )
	local find						= 0

	for i, gem in tEquipGemTable do
		if gem == EquipType then
			find							= 1
		end
	end
	if find == 0 then
		x311200_NotifyTip( sceneId, selfId, "Trang b¸ này không th¬ ðøc l²." )
		return
	end
	
	-- ñÒÉÙÎ¢£¬2008.6.2¡£¼«Æ·×°±¸·Å³ö£¬ÖØÂ¥½ä10422016£¬ÖØÂ¥Óñ10423024²»ÄÜ´ò¿×
	-- ñÒÉÙÎ¢£¬2008.7.1¡£ÖØÂ¥½ä¡¢ÖØÂ¥ÓñµÄ»úÖÆÐÞ¸Ä£º1¡¢¿ÉÒÔ´ò¿×£»2¡¢¿ÉÒÔÏâÇ¶±¦Ê¯£¬µ«Ö»ÄÜÏâÇ¶²»°ó¶¨µÄ±¦Ê¯
	--local itemID = GetItemTableIndexByIndex(sceneId, selfId, idBagPos )
	--if itemID == 10422016 or itemID == 10423024 then
	--	x311200_NotifyTip( sceneId, selfId, "¸Ã×°±¸²»ÄÜ´ò¿×¡£" )
	--	return
	-- end
	

	--´ò¿×ÏûºÄ
	ret	= LuaFnStilettoCostExe( sceneId, selfId, nLevel*100+1+Bore_Count, idBagPosStuff, 1 )
	if ret == -1 then
		x311200_NotifyTip( sceneId, selfId, "Ki¬m tra th¤t bÕi" )
		return
	elseif ret == -2 then
		x311200_NotifyTip( sceneId, selfId, "Ngß½i không có nguyên li®u thích hþp, không th¬ tiªn hành thao tác này" )
		return
	elseif ret == -3 then
		x311200_NotifyTip( sceneId, selfId, "Ngß½i không ðü ngân lßþng, không th¬ tiªn hành thao tác này" )
		return
	elseif ret == -4 then
		x311200_NotifyTip( sceneId, selfId, "Ngß½i không ðü nguyên li®u, không th¬ tiªn hành thao tác này" )
		return
	elseif ret == 0 then
		x311200_NotifyTip( sceneId, selfId, "Kh¤u tr× th¤t bÕi" );
		return
	end

	--´ò¿×Ö´ÐÐ
	--º¯ÊýÒª¸Ä
	ret	= AddBagItemSlot( sceneId, selfId, idBagPos )
	if ret == -1 then
		x311200_NotifyTip( sceneId, selfId, "Trang b¸ khoan th¤t bÕi!" )
	elseif ret == -2 then
		x311200_NotifyTip( sceneId, selfId, "Thao tác b¸ l²i" )
	elseif ret == -3 then
		x311200_NotifyTip( sceneId, selfId, "C¥n phäi ð£t vào mµt trang b¸" )
	elseif ret == -4 then
		x311200_NotifyTip( sceneId, selfId, "Chï có th¬ khoan t¯i ða 3 l², mu¯n khoan thêm hãy ðªn Lâu Lan - Trình Giäo Thiªt ðøc l² cñc hÕn nhé!" ) --modi:lby2008-5-21µ±Íæ¼ÒÆóÍ¼´òµÚËÄ¸ö¿ÕµÄÊ±ºò±¨´í
		--x311200_NotifyTip( sceneId, selfId, "²»ÄÜÔÙ´ò¿×ÁË" ) 
	elseif ret == 1 then
		x311200_NotifyTip( sceneId, selfId, "Trang b¸ khoan thành công!" )
		--Ôö¼ÓÌØÐ§
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 49, 0);
		
	end


end

--**********************************
--ÐÑÄ¿ÌáÊ¾
--**********************************
function x311200_NotifyTip( sceneId, selfId, Msg )

	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end

																
--add:lby20080523ÔÚÂ¥ÄÏ´òµÚËÄ¸ö¿Õ
function x311200_OnStiletto_Four( sceneId, selfId, idBagPos, idBagPosStuff, type )

	--¿É´ò¿×µÄ×°±¸
	--0ÎäÆ÷£¬1Ã±×Ó£¬2ÒÂ·þ£¬3ÊÖÌ×£¬4Ð¬
	--5Ñü´ø£¬6½äÖ¸£¬7ÏîÁ´£¬12»¤·û£¬14»¤Íó
	--15»¤¼ç
	

	--x311200_NotifyTip( sceneId, selfId, "test11" )
	
	local taozhuangid = GetItemTableIndexByIndex( sceneId, selfId, idBagPos )
	local slotcailiao = GetItemTableIndexByIndex( sceneId, selfId, idBagPosStuff )
	
	local szCailiao = GetBagItemTransfer(sceneId,selfId, idBagPosStuff)
	
	--×°±¸ÊÇ·ñÊÇ°ó¶¨
	local isequipbind = LuaFnGetItemBindStatus( sceneId, selfId, idBagPos )
	--²ÄÁÏÊÇ·ñÊÇ°ó¶¨
	local isstuffbind = LuaFnGetItemBindStatus( sceneId, selfId, idBagPosStuff )
	--PrintStr("isequipbind "..isequipbind.." isstuffbind "..isstuffbind)
	
	-- ñÒÉÙÎ¢£¬2008.6.2¡£¼«Æ·×°±¸·Å³ö£¬ÖØÂ¥½ä10422016£¬ÖØÂ¥Óñ10423024²»ÄÜ´ò¿×
	-- ñÒÉÙÎ¢£¬2008.7.1¡£ÖØÂ¥½ä¡¢ÖØÂ¥ÓñµÄ»úÖÆÐÞ¸Ä£º1¡¢¿ÉÒÔ´ò¿×£»2¡¢¿ÉÒÔÏâÇ¶±¦Ê¯£¬µ«Ö»ÄÜÏâÇ¶²»°ó¶¨µÄ±¦Ê¯
	--local itemID = GetItemTableIndexByIndex(sceneId, selfId, idBagPos )
	--if itemID == 10422016 or itemID == 10423024 then
	--	x311200_NotifyTip( sceneId, selfId, "¸Ã×°±¸²»ÄÜ´ò¿×¡£" )
	--	return
	--end
	
	local istaozhuang = 1		  
	 
	--for i, Data in x311200_Stiletto_four_ID do
	--	if x311200_Stiletto_four_ID[i] == taozhuangid then
	--		istaozhuang = 1
	--	end
	--end
	
	--if (IsItemDark(sceneId, selfId, taozhuangid) == 1) then
	--	istaozhuang = 1
	--end
	   
	 --if istaozhuang == 0 then
	 --   x311200_NotifyTip( sceneId, selfId, "#{XQC_20080509_02}" )
	--		return
	 --end
	 
	 if type ~= 1 and type ~= 2 then
	    x311200_NotifyTip( sceneId, selfId, "LoÕi hình trang b¸ không phù hþp" )
			return
	 end
	
	
	local	Bore_Count			= GetBagGemCount( sceneId, selfId, idBagPos )
	local nLevel					= GetBagItemLevel( sceneId, selfId, idBagPos )
	--´ò¿×ÏûºÄ
	ret	= LuaFnStilettoCostExe( sceneId, selfId, nLevel*100+1+Bore_Count, idBagPosStuff, type  )
	

	
	if ret == -1 then
		x311200_NotifyTip( sceneId, selfId, "Ki¬m tra th¤t bÕi" )
		return
	elseif ret == -2 then
		if type == 1 then
			x311200_NotifyTip( sceneId, selfId, "#{XQC_20080509_07}" )
		else
			x311200_NotifyTip( sceneId, selfId, "#{JCDK_80905_07}" )
		end
		return
	elseif ret == -3 then
		if type == 1 then
			x311200_NotifyTip( sceneId, selfId, "#{XQC_20080509_08}" )
		else
			x311200_NotifyTip( sceneId, selfId, "#{JCDK_80905_08}" )
		end
		return
	elseif ret == -4 then
		if type == 1 then
			x311200_NotifyTip( sceneId, selfId, "#{XQC_20080509_07}" )
		else
			x311200_NotifyTip( sceneId, selfId, "#{JCDK_80905_07}" )
		end
		return
	elseif ret == 0 then --zchw
		x311200_NotifyTip( sceneId, selfId, "Không ðü ngân lßþng" );
		return
	end

	--´ò¿×Ö´ÐÐ
	ret	= AddBagItemSlotFour( sceneId, selfId, idBagPos )
	if ret == -1 then
		x311200_NotifyTip( sceneId, selfId, "Trang b¸ khoan th¤t bÕi!" )
	elseif ret == -2 then
		x311200_NotifyTip( sceneId, selfId, "Thao tác b¸ l²i" )
	elseif ret == -3 then
		x311200_NotifyTip( sceneId, selfId, "#{XQC_20080509_06}" )
	elseif ret == -4 then
		x311200_NotifyTip( sceneId, selfId, "#{XQC_20080509_04}" ) 
	elseif ret == 1 then
	--Ð´ÐÐÎªÈÕÖ¾
	  local strLog =  format( "equip:%d level:%d material:%d", taozhuangid, nLevel, slotcailiao)
	  AuditSlotFour(sceneId, selfId, strLog)
	  
		x311200_NotifyTip( sceneId, selfId, "Trang b¸ khoan thành công!" )
		
		if isequipbind == 0 and isstuffbind == 1 and type == 2 then
			LuaFnItemBind( sceneId, selfId, idBagPos )
		end

	 	--³É¹¦¹«¸æ
	 	local transfer = GetBagItemTransfer(sceneId,selfId,idBagPos)
	 	local str = ""
	 	if type == 1 then
	 		str = format( "#{_INFOUSR%s}#{AQ_11}#{_INFOMSG%s}#{AQ_32}#{_INFOMSG%s}#{AQ_12}", GetName(sceneId,selfId),szCailiao,transfer )
	 	else
	 		str = format( "#{_INFOUSR%s}#{AQ_11}#{_INFOMSG%s}#{AQ_31}#{_INFOMSG%s}#{AQ_12}", GetName(sceneId,selfId),szCailiao,transfer )
	 	end
	 	BroadMsgByChatPipe( sceneId, selfId, str, 4 )

		--Ôö¼ÓÌØÐ§
	 	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 49, 0);
	end
end

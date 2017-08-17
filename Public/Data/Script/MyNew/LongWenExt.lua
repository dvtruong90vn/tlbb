
x892003_g_scriptId = 892003
--**********************************
-- 
--**********************************
function x892003_LevelUp(sceneId, selfId, lwIndex, lw2Index, cailiao, posid)
	local itemId1 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, lwIndex )
	local itemId2 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, lw2Index )
	local CvhnId = LuaFnGetItemTableIndexByIndex( sceneId, selfId, cailiao )
	
	if itemId1 < 10157001 or itemId1 > 10157900 then
		x892003_NotifyTip( sceneId, selfId, "Chï có Long Vån m¾i có th¬ gia tång ðµ tång trß·ng!" )
		return
	end
	
	if itemId1 ~= itemId2 then
		x892003_NotifyTip( sceneId, selfId, "Long Vån không cùng ðÆng c¤p!" )
		return
	end
	
	local CVHN = 0
	local ExpNew = 1
	if CvhnId == 38000152 or CvhnId == 38000184 then
		CVHN = 1
	end
	
	if CVHN == 1 then
		ExpNew = 5
	end
	
	local LWLevel = mod(itemId1,100)
	
	if LWLevel == 0 then
		x892003_NotifyTip( sceneId, selfId, "Long Vån ðã ðÕt ðµ trß·ng thành cao nh¤t!" )
		return
	end

	local LWExpBase = {}
		LWExpBase[0] = {0}	LWExpBase[20] = {3}	LWExpBase[40] = {8}	LWExpBase[60] = {21}	LWExpBase[80] = {55}
		LWExpBase[1] = {1}	LWExpBase[21] = {3}	LWExpBase[41] = {8}	LWExpBase[61] = {21}	LWExpBase[81] = {55}
		LWExpBase[2] = {1}	LWExpBase[22] = {3}	LWExpBase[42] = {8}	LWExpBase[62] = {21}	LWExpBase[82] = {55}
		LWExpBase[3] = {1}	LWExpBase[23] = {3}	LWExpBase[43] = {8}	LWExpBase[63] = {21}	LWExpBase[83] = {55}
		LWExpBase[4] = {1}	LWExpBase[24] = {3}	LWExpBase[44] = {8}	LWExpBase[64] = {21}	LWExpBase[84] = {55}
		LWExpBase[5] = {1}	LWExpBase[25] = {3}	LWExpBase[45] = {8}	LWExpBase[65] = {21}	LWExpBase[85] = {55}
		LWExpBase[6] = {1}	LWExpBase[26] = {3}	LWExpBase[46] = {8}	LWExpBase[66] = {21}	LWExpBase[86] = {55}
		LWExpBase[7] = {1}	LWExpBase[27] = {3}	LWExpBase[47] = {8}	LWExpBase[67] = {21}	LWExpBase[87] = {55}
		LWExpBase[8] = {1}	LWExpBase[28] = {3}	LWExpBase[48] = {8}	LWExpBase[68] = {21}	LWExpBase[88] = {55}
		LWExpBase[9] = {1}	LWExpBase[29] = {3}	LWExpBase[49] = {8}	LWExpBase[69] = {21}	LWExpBase[89] = {55}
		LWExpBase[10] = {2}	LWExpBase[30] = {5}	LWExpBase[50] = {13}	LWExpBase[70] = {34}	LWExpBase[90] = {89}
		LWExpBase[11] = {2}	LWExpBase[31] = {5}	LWExpBase[51] = {13}	LWExpBase[71] = {34}	LWExpBase[91] = {89}
		LWExpBase[12] = {2}	LWExpBase[32] = {5}	LWExpBase[52] = {13}	LWExpBase[72] = {34}	LWExpBase[92] = {89}
		LWExpBase[13] = {2}	LWExpBase[33] = {5}	LWExpBase[53] = {13}	LWExpBase[73] = {34}	LWExpBase[93] = {89}
		LWExpBase[14] = {2}	LWExpBase[34] = {5}	LWExpBase[54] = {13}	LWExpBase[74] = {34}	LWExpBase[94] = {89}
		LWExpBase[15] = {2}	LWExpBase[35] = {5}	LWExpBase[55] = {13}	LWExpBase[75] = {34}	LWExpBase[95] = {89}
		LWExpBase[16] = {2}	LWExpBase[36] = {5}	LWExpBase[56] = {13}	LWExpBase[76] = {34}	LWExpBase[96] = {89}
		LWExpBase[17] = {2}	LWExpBase[37] = {5}	LWExpBase[57] = {13}	LWExpBase[77] = {34}	LWExpBase[97] = {89}
		LWExpBase[18] = {2}	LWExpBase[38] = {5}	LWExpBase[58] = {13}	LWExpBase[78] = {34}	LWExpBase[98] = {89}
		LWExpBase[19] = {2}	LWExpBase[39] = {5}	LWExpBase[59] = {13}	LWExpBase[79] = {34}	LWExpBase[99] = {89}

	local LWLevel_Exp = LWExpBase[LWLevel][1]
	
	local Author, szAuthor = LuaFnGetItemCreator(sceneId,selfId,posid)
	
	if szAuthor ~= nil then
		local ExpNow = tonumber(strsub(tostring(szAuthor),1,2))
		local InfoEnd = strsub(tostring(szAuthor),3,11)
		if ExpNow + ExpNew >= LWLevel_Exp then
			LuaFnEraseItem( sceneId, selfId, lwIndex )
			LuaFnEraseItem( sceneId, selfId, lw2Index )
			LuaFnEraseItem( sceneId, selfId, cailiao )
			local NewItem = TryRecieveItem( sceneId, selfId, itemId1 + 1, 1)
			LuaFnSetItemCreator(sceneId,selfId, posid, "00"..InfoEnd)
			x892003_NotifyTip( sceneId, selfId, "Tång c¤p trß·ng thành thành công!" )
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
		else
			ExpNow = ExpNow + ExpNew
			LuaFnEraseItem( sceneId, selfId, lw2Index )
			LuaFnEraseItem( sceneId, selfId, cailiao )
			LuaFnSetItemCreator(sceneId,selfId, posid, ExpNow..InfoEnd)
			x892003_NotifyTip( sceneId, selfId, "Gia tång ði¬m trß·ng thành thành công!" )
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
		end
	else
		LuaFnEraseItem( sceneId, selfId, lwIndex )
		LuaFnEraseItem( sceneId, selfId, lw2Index )
		LuaFnEraseItem( sceneId, selfId, cailiao )
		local NewItem = TryRecieveItem( sceneId, selfId, itemId1 + 1, 1)
		LuaFnSetItemCreator(sceneId,selfId, posid, "00000000000")
		x892003_NotifyTip( sceneId, selfId, "Tång c¤p trß·ng thành thành công!" )
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
	end	
end
--**********************************
-- 
--**********************************
function x892003_StarUp(sceneId, selfId, lwIndex, posid)		
	local itemId = LuaFnGetItemTableIndexByIndex( sceneId, selfId, lwIndex )

	if itemId < 10157001 or itemId > 10157900 then
		x892003_NotifyTip( sceneId, selfId, "Chï có Long Vån m¾i có th¬ tiªn hành thao tác!" )
		return
	end
	
	if itemId >= 10157801 then
		x892003_NotifyTip( sceneId, selfId, "Long Vån này ðã ðÕt gi¾i hÕn 9 sao!" )
		return
	end
	
	local LWLevel = mod(itemId,100)
	if LWLevel == 0 then
		LWLevel = 100
	end
	
	local LWStarLevel = 1
	if LWLevel == 100 then
		LWStarLevel = tonumber(strsub(tostring(itemId),6,6))
	else
		LWStarLevel = tonumber(strsub(tostring(itemId),6,6)) + 1
	end

	local NLTID1 = 20310176 --Co Dinh--
	local NLTID2 = 20310185
	local NLT1 = LuaFnGetAvailableItemCount(sceneId, selfId, NLTID1)
	local NLT2 = LuaFnGetAvailableItemCount(sceneId, selfId, NLTID2)
	local NLT = NLT1 + NLT2

	local CTTSCID1 = 20310177 --Co Dinh--
	local CTTSCID2 = 20310186
	local CTTSC1 = LuaFnGetAvailableItemCount(sceneId, selfId, CTTSCID1)
	local CTTSC2 = LuaFnGetAvailableItemCount(sceneId, selfId, CTTSCID2)
	local CTTSC = CTTSC1 + CTTSC2
	
	local CTTTCID1 = 20310178 --Co Dinh--
	local CTTTCID2 = 20310187
	local CTTTC1 = LuaFnGetAvailableItemCount(sceneId, selfId, CTTTCID1)
	local CTTTC2 = LuaFnGetAvailableItemCount(sceneId, selfId, CTTTCID2)
	local CTTTC = CTTTC1 + CTTTC2
	
	local CTTCCID1 = 20310179 --Co Dinh--
	local CTTCCID2 = 20310188
	local CTTCC1 = LuaFnGetAvailableItemCount(sceneId, selfId, CTTCCID1)
	local CTTCC2 = LuaFnGetAvailableItemCount(sceneId, selfId, CTTCCID2)
	local CTTCC = CTTCC1 + CTTCC2
	
	local CTTHSID1 = 20310196 --Co Dinh--
	local CTTHSID2 = 20310197
	local CTTHS1 = LuaFnGetAvailableItemCount(sceneId, selfId, CTTHSID1)
	local CTTHS2 = LuaFnGetAvailableItemCount(sceneId, selfId, CTTHSID2)
	local CTTHS = CTTHS1 + CTTHS2
	
	if LWStarLevel == 1 then
		if LWLevel < 11 or NLT < 20 then
			x892003_NotifyTip( sceneId, selfId, "Nâng c¤p Long Vån lên 2 sao c¥n c¤p ðµ trß·ng thành 11 và 20 cái Ng÷c Long Tüy" )
			return
		end
		if LuaFnGetAvailableItemCount(sceneId, selfId, NLTID1) >= 20 then
			LuaFnDelAvailableItem(sceneId,selfId,NLTID1,20)
		else
			LuaFnDelAvailableItem(sceneId,selfId,NLTID1,NLT1)
			LuaFnDelAvailableItem(sceneId,selfId,NLTID2,20 - NLT1)
		end
		local Author, szAuthor = LuaFnGetItemCreator(sceneId,selfId,posid)
		LuaFnEraseItem( sceneId, selfId, lwIndex )
		local LWStar = TryRecieveItem( sceneId, selfId, itemId + 100, 1)
		LuaFnSetItemCreator(sceneId,selfId,posid,szAuthor)
		x892003_NotifyTip( sceneId, selfId, "Nâng c¤p Long Vån lên 2 sao thành công!" )
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
		return
	end

	if LWStarLevel == 2 then
		if LWLevel < 15 or NLT < 60 then
			x892003_NotifyTip( sceneId, selfId, "Nâng c¤p Long Vån lên 3 sao c¥n c¤p ðµ trß·ng thành 15 và 60 cái Ng÷c Long Tüy" )
			return
		end
		if LuaFnGetAvailableItemCount(sceneId, selfId, NLTID1) >= 60 then
			LuaFnDelAvailableItem(sceneId,selfId,NLTID1,60)
		else
			LuaFnDelAvailableItem(sceneId,selfId,NLTID1,NLT1)
			LuaFnDelAvailableItem(sceneId,selfId,NLTID2,60 - NLT1)
		end
		local Author, szAuthor = LuaFnGetItemCreator(sceneId,selfId,posid)
		LuaFnEraseItem( sceneId, selfId, lwIndex )
		local LWStar = TryRecieveItem( sceneId, selfId, itemId + 100, 1)
		LuaFnSetItemCreator(sceneId,selfId,posid, szAuthor)
		x892003_NotifyTip( sceneId, selfId, "Nâng c¤p Long Vån lên 3 sao thành công!" )
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
		return
	end
	
	if LWStarLevel == 3 then
		if LWLevel < 22 or NLT < 120 then
			x892003_NotifyTip( sceneId, selfId, "Nâng c¤p Long Vån lên 4 sao c¥n c¤p ðµ trß·ng thành 22 và 120 cái Ng÷c Long Tüy" )
			return
		end
		if LuaFnGetAvailableItemCount(sceneId, selfId, NLTID1) >= 120 then
			LuaFnDelAvailableItem(sceneId,selfId,NLTID1,120)
		else
			LuaFnDelAvailableItem(sceneId,selfId,NLTID1,NLT1)
			LuaFnDelAvailableItem(sceneId,selfId,NLTID2,120 - NLT1)
		end
		local Author, szAuthor = LuaFnGetItemCreator(sceneId,selfId,posid)
		LuaFnEraseItem( sceneId, selfId, lwIndex )
		local LWStar = TryRecieveItem( sceneId, selfId, itemId + 100, 1)
		LuaFnSetItemCreator(sceneId,selfId,posid, szAuthor)
		x892003_NotifyTip( sceneId, selfId, "Nâng c¤p Long Vån lên 4 sao thành công!" )
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
		return
	end
	
	if LWStarLevel == 4 then
		if LWLevel < 27 or NLT < 240 then
			x892003_NotifyTip( sceneId, selfId, "Nâng c¤p Long Vån lên 5 sao c¥n c¤p ðµ trß·ng thành 27 và 240 cái Ng÷c Long Tüy" )
			return
		end
		if LuaFnGetAvailableItemCount(sceneId, selfId, NLTID1) >= 240 then
			LuaFnDelAvailableItem(sceneId,selfId,NLTID1,240)
		else
			LuaFnDelAvailableItem(sceneId,selfId,NLTID1,NLT1)
			LuaFnDelAvailableItem(sceneId,selfId,NLTID2,240 - NLT1)
		end
		local Author, szAuthor = LuaFnGetItemCreator(sceneId,selfId,posid)
		LuaFnEraseItem( sceneId, selfId, lwIndex )
		local LWStar = TryRecieveItem( sceneId, selfId, itemId + 100, 1)
		LuaFnSetItemCreator(sceneId,selfId,posid, szAuthor)
		x892003_NotifyTip( sceneId, selfId, "Nâng c¤p Long Vån lên 5 sao thành công!" )
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
		return
	end
	
	if LWStarLevel == 5 then
		if LWLevel < 36 or NLT < 400 or CTTSC < 30 then
			x892003_NotifyTip( sceneId, selfId, "Nâng c¤p Long Vån lên 6 sao c¥n c¤p ðµ trß·ng thành 36 cùng 400 cái Ng÷c Long Tüy và 30 cái Câu Thiên Thái S½ C¤p" )
			return
		end
		if LuaFnGetAvailableItemCount(sceneId, selfId, CTTSCID1) >= 30 then
			LuaFnDelAvailableItem(sceneId,selfId,CTTSCID1,30)
		else
			LuaFnDelAvailableItem(sceneId,selfId,CTTSCID1,CTTSC1)
			LuaFnDelAvailableItem(sceneId,selfId,CTTSCID2,30 - CTTSC1)
		end
		if LuaFnGetAvailableItemCount(sceneId, selfId, NLTID1) >= 400 then
			LuaFnDelAvailableItem(sceneId,selfId,NLTID1,400)
		else
			LuaFnDelAvailableItem(sceneId,selfId,NLTID1,NLT1)
			LuaFnDelAvailableItem(sceneId,selfId,NLTID2,400 - NLT1)
		end
		local Author, szAuthor = LuaFnGetItemCreator(sceneId,selfId,posid)
		LuaFnEraseItem( sceneId, selfId, lwIndex )
		local LWStar = TryRecieveItem( sceneId, selfId, itemId + 100, 1)
		LuaFnSetItemCreator(sceneId,selfId,posid, szAuthor)
		x892003_NotifyTip( sceneId, selfId, "Nâng c¤p Long Vån lên 6 sao thành công!" )
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
		return
	end
	
	if LWStarLevel == 6 then
		if LWLevel < 49 or NLT < 400 or CTTTC < 60 then
			x892003_NotifyTip( sceneId, selfId, "Nâng c¤p Long Vån lên 7 sao c¥n c¤p ðµ trß·ng thành 49 cùng 400 cái Ng÷c Long Tüy và 60 cái Trung C¤p Câu Thiên Thái" )
			return
		end
		if LuaFnGetAvailableItemCount(sceneId, selfId, CTTTCID1) >= 60 then
			LuaFnDelAvailableItem(sceneId,selfId,CTTTCID1,60)
		else
			LuaFnDelAvailableItem(sceneId,selfId,CTTTCID1,CTTTC1)
			LuaFnDelAvailableItem(sceneId,selfId,CTTTCID2,60 - CTTTC1)
		end
		if LuaFnGetAvailableItemCount(sceneId, selfId, NLTID1) >= 400 then
			LuaFnDelAvailableItem(sceneId,selfId,NLTID1,400)
		else
			LuaFnDelAvailableItem(sceneId,selfId,NLTID1,NLT1)
			LuaFnDelAvailableItem(sceneId,selfId,NLTID2,400 - NLT1)
		end
		local Author, szAuthor = LuaFnGetItemCreator(sceneId,selfId,posid)
		LuaFnEraseItem( sceneId, selfId, lwIndex )
		local LWStar = TryRecieveItem( sceneId, selfId, itemId + 100, 1)
		LuaFnSetItemCreator(sceneId,selfId,posid, szAuthor)
		x892003_NotifyTip( sceneId, selfId, "Nâng c¤p Long Vån lên 7 sao thành công!" )
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
		return
	end

	if LWStarLevel == 7 then
		if LWLevel < 65 or NLT < 400 or CTTCC < 120 then
			x892003_NotifyTip( sceneId, selfId, "Nâng c¤p Long Vån lên 8 sao c¥n c¤p ðµ trß·ng thành 65 cùng 400 cái Ng÷c Long Tüy và 120 cái Cao C¤p Câu Thiên Thái" )
			return
		end
		if LuaFnGetAvailableItemCount(sceneId, selfId, CTTCCID1) >= 120 then
			LuaFnDelAvailableItem(sceneId,selfId,CTTCCID1,120)
		else
			LuaFnDelAvailableItem(sceneId,selfId,CTTCCID1,CTTCC1)
			LuaFnDelAvailableItem(sceneId,selfId,CTTCCID2,120 - CTTCC1)
		end
		if LuaFnGetAvailableItemCount(sceneId, selfId, NLTID1) >= 400 then
			LuaFnDelAvailableItem(sceneId,selfId,NLTID1,400)
		else
			LuaFnDelAvailableItem(sceneId,selfId,NLTID1,NLT1)
			LuaFnDelAvailableItem(sceneId,selfId,NLTID2,400 - NLT1)
		end
		local Author, szAuthor = LuaFnGetItemCreator(sceneId,selfId,posid)
		LuaFnEraseItem( sceneId, selfId, lwIndex )
		local LWStar = TryRecieveItem( sceneId, selfId, itemId + 100, 1)
		LuaFnSetItemCreator(sceneId,selfId,posid, szAuthor)
		x892003_NotifyTip( sceneId, selfId, "Nâng c¤p Long Vån lên 8 sao thành công!" )
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
		return
	end
	
	if LWStarLevel == 8 then
		if LWLevel < 90 or NLT < 600 or CTTHS < 300 then
			x892003_NotifyTip( sceneId, selfId, "Nâng c¤p Long Vån lên 8 sao c¥n c¤p ðµ trß·ng thành 90 cùng 600 cái Ng÷c Long Tüy và 300 cái Cao C¤p Câu Thiên Thái" )
			return
		end
		if LuaFnGetAvailableItemCount(sceneId, selfId, CTTHSID1) >= 300 then
			LuaFnDelAvailableItem(sceneId,selfId,CTTHSID1,300)
		else
			LuaFnDelAvailableItem(sceneId,selfId,CTTHSID1,CTTHS1)
			LuaFnDelAvailableItem(sceneId,selfId,CTTHSID2,300 - CTTHS1)
		end
		if LuaFnGetAvailableItemCount(sceneId, selfId, NLTID1) >= 600 then
			LuaFnDelAvailableItem(sceneId,selfId,NLTID1,600)
		else
			LuaFnDelAvailableItem(sceneId,selfId,NLTID1,NLT1)
			LuaFnDelAvailableItem(sceneId,selfId,NLTID2,600 - NLT1)
		end
		local Author, szAuthor = LuaFnGetItemCreator(sceneId,selfId,posid)
		LuaFnEraseItem( sceneId, selfId, lwIndex )
		local LWStar = TryRecieveItem( sceneId, selfId, itemId + 100, 1)
		LuaFnSetItemCreator(sceneId,selfId,posid, szAuthor)
		x892003_NotifyTip( sceneId, selfId, "Nâng c¤p Long Vån lên 9 sao thành công!" )
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
		return
	end
end

function x892003_StudyProperty(sceneId, selfId, lwIndex, lwtype, posid)

	local itemId = LuaFnGetItemTableIndexByIndex( sceneId, selfId, lwIndex )

	if itemId < 10157001 or itemId > 10157900 then
		x892003_NotifyTip( sceneId, selfId, "Chï có Long Vån m¾i có th¬ tiªn hành thao tác!" )
		return
	end
	
	local Author, szAuthor = LuaFnGetItemCreator(sceneId,selfId,posid)
	
	local XLTNID1 = 20310181 --Co Dinh--
	local XLTNID2 = 20310189
	local XLTN1 = LuaFnGetAvailableItemCount(sceneId, selfId, XLTNID1)
	local XLTN2 = LuaFnGetAvailableItemCount(sceneId, selfId, XLTNID2)
	local XLTBID1 = 20310182 --Co Dinh--
	local XLTBID2 = 20310190
	local XLTB1 = LuaFnGetAvailableItemCount(sceneId, selfId, XLTBID1)
	local XLTB2 = LuaFnGetAvailableItemCount(sceneId, selfId, XLTBID2)
	local XLTTID1 = 20310183 --Co Dinh--
	local XLTTID2 = 20310191
	local XLTT1 = LuaFnGetAvailableItemCount(sceneId, selfId, XLTTID1)
	local XLTT2 = LuaFnGetAvailableItemCount(sceneId, selfId, XLTTID2)
	
	local Pro1 = tonumber(strsub(tostring(szAuthor),3,4))
	local Pro2 = tonumber(strsub(tostring(szAuthor),5,6))
	local Pro3 = tonumber(strsub(tostring(szAuthor),7,8))

	if lwtype == 0 then --Gioi Han Mau--
		if szAuthor ~= nil then
			if Pro1 >= 1 then
				x892003_NotifyTip( sceneId, selfId, "Long Vån này ðã m· thuµc tính gi¾i hÕn máu!" )
				return
			end
		end
		if XLTN1 + XLTN2 <= 9 then
			x892003_NotifyTip( sceneId, selfId, "C¥n 10 Xuyªt Long ThÕch-Nguyên ð¬ m· thuµc tính gia tång gi¾i hÕn máu!" )
			return
		end
		if szAuthor ~= nil then
			local Pro11 = strsub(tostring(szAuthor),1,2)
			local Pro13 = strsub(tostring(szAuthor),5,11)
			LuaFnSetItemCreator(sceneId,selfId,posid, Pro11.."01"..Pro13)
		else
			LuaFnSetItemCreator(sceneId,selfId,posid, "00010000000")
		end
		if XLTN1 >= 10 then
			LuaFnDelAvailableItem(sceneId,selfId,XLTNID1,10)
		else
			LuaFnDelAvailableItem(sceneId,selfId,XLTNID1,XLTN1)
			LuaFnDelAvailableItem(sceneId,selfId,XLTNID2,10 - XLTN1)
		end
		x892003_NotifyTip( sceneId, selfId, "M· rµng thuµc tính thành công!" )
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
		return
	end

	if lwtype >= 1 and lwtype <= 4 then
		if szAuthor ~= nil then
			if Pro2 >= 1 then
				x892003_NotifyTip( sceneId, selfId, "Long Vån này ðã m· thuµc tính xuyên kháng!" )
				return
			end
		end
		if XLTB1 + XLTB2 <= 9 then
			x892003_NotifyTip( sceneId, selfId, "C¥n 10 Xuyªt Long ThÕch-BÕo ð¬ m· thuµc tính xuyên kháng!" )
			return
		end
		local Pro20 = lwtype*10 - 9
		local Pro22 = ""
		if Pro20 == 1 then
			Pro22 = "01"
		else
			Pro22 = tostring(Pro20)
		end
		if szAuthor ~= nil then
			local Pro21 = strsub(tostring(szAuthor),1,4)
			local Pro23 = strsub(tostring(szAuthor),7,11)
			LuaFnSetItemCreator(sceneId,selfId,posid, Pro21..Pro22..Pro23)
		else
			LuaFnSetItemCreator(sceneId,selfId,posid, "0000"..Pro22.."00000")
		end
		if XLTB1 >= 10 then
			LuaFnDelAvailableItem(sceneId,selfId,XLTBID1,10)
		else
			LuaFnDelAvailableItem(sceneId,selfId,XLTBID1,XLTB1)
			LuaFnDelAvailableItem(sceneId,selfId,XLTBID2,10 - XLTB1)
		end
		x892003_NotifyTip( sceneId, selfId, "M· rµng thuµc tính thành công!" )
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
		return
	end

	if lwtype >= 5 and lwtype <= 8 then
		if szAuthor ~= nil then
			if Pro3 >= 1 then
				x892003_NotifyTip( sceneId, selfId, "Long Vån này ðã m· thuµc tính công kích!" )
				return
			end
		end
		if XLTT1 + XLTT2 <= 9 then
			x892003_NotifyTip( sceneId, selfId, "C¥n 10 Xuyªt Long ThÕch-Thß½ng ð¬ m· thuµc tính công kích!" )
			return
		end
		local Pro32 = ""
		local Pro30 = lwtype*10 - 49
		if Pro30 == 1 then
			Pro32 = "01"
		else
			Pro32 = tostring(Pro30)
		end
		if szAuthor ~= nil then
			local Pro31 = strsub(tostring(szAuthor),1,6)
			local Pro33 = strsub(tostring(szAuthor),9,11)
			LuaFnSetItemCreator(sceneId,selfId,posid, Pro31..Pro32..Pro33)
		else
			LuaFnSetItemCreator(sceneId,selfId,posid, "000000"..Pro32.."000")
		end
		if XLTB1 >= 10 then
			LuaFnDelAvailableItem(sceneId,selfId,XLTTID1,10)
		else
			LuaFnDelAvailableItem(sceneId,selfId,XLTTID1,XLTT1)
			LuaFnDelAvailableItem(sceneId,selfId,XLTTID2,10 - XLTT1)
		end
		x892003_NotifyTip( sceneId, selfId, "M· rµng thuµc tính thành công!" )
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
		return
	end

end

function x892003_StudyProperty2(sceneId, selfId, lwIndex, lwtype, posid)

	local itemId = LuaFnGetItemTableIndexByIndex( sceneId, selfId, lwIndex )

	if itemId < 10157001 or itemId > 10157900 then
		x892003_NotifyTip( sceneId, selfId, "Chï có Long Vån m¾i có th¬ tiªn hành thao tác!" )
		return
	end
	
	local Author, szAuthor = LuaFnGetItemCreator(sceneId,selfId,posid)
	
	if szAuthor == nil then
		x892003_NotifyTip( sceneId, selfId, "Long Vån chßa ðßþc h÷c thuµc tính m· rµng!" )
		return
	end
	
	local XLTNID1 = 20310181 --Co Dinh--
	local XLTNID2 = 20310189
	local XLTN1 = LuaFnGetAvailableItemCount(sceneId, selfId, XLTNID1)
	local XLTN2 = LuaFnGetAvailableItemCount(sceneId, selfId, XLTNID2)
	local XLTBID1 = 20310182 --Co Dinh--
	local XLTBID2 = 20310190
	local XLTB1 = LuaFnGetAvailableItemCount(sceneId, selfId, XLTBID1)
	local XLTB2 = LuaFnGetAvailableItemCount(sceneId, selfId, XLTBID2)
	local XLTTID1 = 20310183 --Co Dinh--
	local XLTTID2 = 20310191
	local XLTT1 = LuaFnGetAvailableItemCount(sceneId, selfId, XLTTID1)
	local XLTT2 = LuaFnGetAvailableItemCount(sceneId, selfId, XLTTID2)

	local XLT = {}
		XLT[1] = {20}
		XLT[2] = {30}
		XLT[3] = {50}
		XLT[4] = {70}
		XLT[5] = {90}
		XLT[6] = {120}
		XLT[7] = {150}
		XLT[8] = {180}
		XLT[9] = {200}
	
	local Pro1 = tonumber(strsub(tostring(szAuthor),3,4))
	local Pro2 = tonumber(strsub(tostring(szAuthor),5,6))
	local Pro3 = tonumber(strsub(tostring(szAuthor),7,8))

	if lwtype == 1 then
		if Pro1 == 0 then
			x892003_NotifyTip( sceneId, selfId, "Long Vån chßa ðßþc h÷c thuµc tính m· rµng!" )
			return
		end
	
		if Pro1 == 10 then
			x892003_NotifyTip( sceneId, selfId, "Thuµc tính gi¾i hÕn máu ðã lên ðªn thßþng hÕn!" )
			return
		end
	
		if XLTN1 + XLTN2 < XLT[Pro1][1] then
			x892003_NotifyTip( sceneId, selfId, "Chßa ðü "..XLT[Pro1][1].." Xuyªn Long ThÕch-Nguyên" )
			return
		end
		if Pro1 == 9 then
			local Pro12 = "10"
			local Pro11 = strsub(tostring(szAuthor),1,2)
			local Pro13 = strsub(tostring(szAuthor),5,11)
			LuaFnSetItemCreator(sceneId,selfId,posid, Pro11..Pro12..Pro13)
		else
			local Pro12 = "0"..tostring(Pro1 + 1)
			local Pro11 = strsub(tostring(szAuthor),1,2)
			local Pro13 = strsub(tostring(szAuthor),5,11)
			LuaFnSetItemCreator(sceneId,selfId,posid, Pro11..Pro12..Pro13)
		end

		if XLTN1 >= XLT[Pro1][1] then
			LuaFnDelAvailableItem(sceneId,selfId,XLTNID1,XLT[Pro1][1])
		else
			LuaFnDelAvailableItem(sceneId,selfId,XLTNID1,XLTN1)
			LuaFnDelAvailableItem(sceneId,selfId,XLTNID2,XLT[Pro1][1] - XLTN1)
		end

		x892003_NotifyTip( sceneId, selfId, "Thång c¤p thuµc tính thành công!" )
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
	end

	if lwtype == 2 then
		local Pro20 = mod(Pro2,10)
		if Pro20 == 0 then
			x892003_NotifyTip( sceneId, selfId, "Thuµc tính xuyên kháng ðã lên ðªn thßþng hÕn!" )
			return
		end
		
		if Pro2 == 0 then
			x892003_NotifyTip( sceneId, selfId, "Long Vån chßa ðßþc h÷c thuµc tính m· rµng!" )
			return
		end
		
		if XLTB1 + XLTB2 < XLT[Pro20][1] then
			x892003_NotifyTip( sceneId, selfId, "Chßa ðü "..XLT[Pro20][1].." Xuyªn Long ThÕch-BÕo" )
			return
		end

		if Pro2 == 9 then
			local Pro22 = Pro2 + 1
			local Pro21 = strsub(tostring(szAuthor),1,4)
			local Pro23 = strsub(tostring(szAuthor),7,11)
			LuaFnSetItemCreator(sceneId,selfId,posid, Pro21..Pro22..Pro23)
		else
			local Pro22 = ""
			if Pro2 < 9 then
				Pro22 = "0"..tostring(Pro2 + 1)
			else
				Pro22 = Pro2 + 1
			end
			local Pro21 = strsub(tostring(szAuthor),1,4)
			local Pro23 = strsub(tostring(szAuthor),7,11)
			LuaFnSetItemCreator(sceneId,selfId,posid, Pro21..Pro22..Pro23)
		end

		if XLTB1 >= XLT[Pro20][1] then
			LuaFnDelAvailableItem(sceneId,selfId,XLTBID1,XLT[Pro20][1])
		else
			LuaFnDelAvailableItem(sceneId,selfId,XLTBID1,XLTB1)
			LuaFnDelAvailableItem(sceneId,selfId,XLTBID2,XLT[Pro20][1] - XLTB1)
		end

		x892003_NotifyTip( sceneId, selfId, "Thång c¤p thuµc tính thành công!" )
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
	end

	if lwtype == 3 then
		local Pro30 = mod(Pro3,10)
		if Pro30 == 0 then
			x892003_NotifyTip( sceneId, selfId, "Thuµc tính công kích ðã lên ðªn thßþng hÕn!" )
			return
		end
		
		if Pro3 == 0 then
			x892003_NotifyTip( sceneId, selfId, "Long Vån chßa ðßþc h÷c thuµc tính m· rµng!" )
			return
		end
		
		if XLTT1 + XLTT2 < XLT[Pro30][1] then
			x892003_NotifyTip( sceneId, selfId, "Chßa ðü "..XLT[Pro30][1].." Xuyªn Long ThÕch-Thß½ng" )
			return
		end

		if Pro3 == 9 then
			local Pro32 = Pro3 + 1
			local Pro31 = strsub(tostring(szAuthor),1,6)
			local Pro33 = strsub(tostring(szAuthor),9,11)
			LuaFnSetItemCreator(sceneId,selfId,posid, Pro31..Pro32..Pro33)
		else
			local Pro32 = ""
			if Pro3 < 9 then
				Pro32 = "0"..tostring(Pro3 + 1)
			else
				Pro32 = Pro3 + 1
			end
			local Pro31 = strsub(tostring(szAuthor),1,6)
			local Pro33 = strsub(tostring(szAuthor),9,11)
			LuaFnSetItemCreator(sceneId,selfId,posid, Pro31..Pro32..Pro33)
		end

		if XLTT1 >= XLT[Pro30][1] then
			LuaFnDelAvailableItem(sceneId,selfId,XLTTID1,XLT[Pro30][1])
		else
			LuaFnDelAvailableItem(sceneId,selfId,XLTTID1,XLTT1)
			LuaFnDelAvailableItem(sceneId,selfId,XLTTID2,XLT[Pro30][1] - XLTT1)
		end

		x892003_NotifyTip( sceneId, selfId, "Thång c¤p thuµc tính thành công!" )
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
	end
end

--**********************************
-- 
--**********************************
function x892003_NotifyTip( sceneId, selfId, Msg )
	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
-- 
--**********************************
function x892003_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, -1 )
end

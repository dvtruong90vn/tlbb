--Éú³¤ ği¬m
--¶ÔÓ¦Éú»î¼¼ÄÜ: -1
--µØ¹¬±¦ÎïµôÂäÆ÷
--½Å±¾ºÅ******(712533)

--mµt cái±¦ÏäÀïº¬ÓĞ¼¸cáiÎïÆ·
x712533_g_DropNumTable  = {
	{num = 1, odd = 1.0},	--1cáitoÕ ğµ ¼¸ÂÊ
}

x712533_g_TickCreate_Msg = "ÇØ»ÊµØ¹¬»áÂäÏÂÎïÆ· ğßa cho ´ó¼Ò!"

--Ã¿ÖÖÎïÆ·ĞúngÄÄÀàÎïÆ·,ÇÒ´ËÀàÎïÆ·¶ÑµşÊıÁ¿Ğúng¼¸cái
x712533_g_DropTable = {
	--±¦Ê¯Àà
	{
		itemType = 7, 	--±¦Ê¯ÀàtoÕ ğµ ÀàĞÍ±êÊ¶
	 	odd = 1.0, 		--³öÏÖ¼¸ÂÊ
	 	numOdd = {
							{num = 1, odd = 1.0},				--1cáitoÕ ğµ ¼¸ÂÊ
						 },
		idx = {	--ÎïÆ·ĞòÁĞºÅ±í
						20310004, --zchw ÇØ»ÊÖé
					},
	},
}

--±¦Îï»ØÊÕÊ±¼ä2006-8-21 17:33 ĞŞ¸ÄÎªÓÉ¹ÜÀíÆ÷´«µİ½øÀ´

--¸ù¾İ±¾´ÎËæ»úÊıÀ´ÕÒµ½±íÖĞ¶ÔÓ¦toÕ ğµ Ë÷Òı
function x712533_GetTableIndexByOdd(tb)
	local oddNow = random();
	
	local base = 0.0;
	for i = 1, getn(tb) do
		if(tb[i].odd + base >= oddNow) then
			return i;
		end
		base = base + tb[i].odd;
	end
	
	return nil;
end

--Éú³Éº¯Êı¿ªÊ¼************************************************************************
--Ã¿cáiItemBoxÖĞ×î¶à10cáiÎïÆ·,Tr· v«Öµ -1 Ö±½Ó»ØÊÕÉú³¤ ği¬m,²»Õ¼ÓÃ
function x712533_OnCreate( sceneId, growPointType, x, y, dur)
	local ItemBoxId = nil
	local delDur = dur - 60000;	--±¦ÏätoÕ ğµ ÏûÊ§Ê±¼ä
	
	-- ±¦ÏäÀïÓĞ¼¸cáiÎïÆ·
	local numIdx = x712533_GetTableIndexByOdd(x712533_g_DropNumTable)
	if(numIdx) then
		for i = 1, x712533_g_DropNumTable[numIdx].num do
			--Cái này ÎïÆ·ĞúngÊ²Ã´ÀàĞÍtoÕ ğµ ÎïÆ·
			local showIdx = x712533_GetTableIndexByOdd(x712533_g_DropTable)
			local dropNumIdx = nil
			local itemId = nil
			if(showIdx) then
				--Cái này ÀàĞÍtoÕ ğµ ÎïÆ·ÊıÁ¿Ğúng¼¸cái
				dropNumIdx = x712533_GetTableIndexByOdd(x712533_g_DropTable[showIdx].numOdd)
				if(dropNumIdx and 9 ~= x712533_g_DropTable[showIdx].itemType) then
					local itemNum = getn(x712533_g_DropTable[showIdx].idx)
					if(itemNum and 1<=itemNum) then
						local itemIdx = floor(random(1, itemNum))
						itemId = x712533_g_DropTable[showIdx].idx[itemIdx]
						--Ìí¼ÓµôÂäÏäºÍÎïÆ·µ½³¡¾°
						for k = 1, x712533_g_DropTable[showIdx].numOdd[dropNumIdx].num do
							if(nil == ItemBoxId) then
								ItemBoxId = ItemBoxEnterScene( x, y, growPointType, sceneId, QUALITY_MUST_BE_CHANGE,1, itemId )
								print( sceneId .. " Trß¶ng cänh s¯ (" .. x .. ", " .. y .. ") tÕo ra mµt v§t ph¦m "..
											 "("..x712533_g_DropNumTable[numIdx].num..")" )
							else
								AddItemToBox( sceneId, ItemBoxId, QUALITY_MUST_BE_CHANGE,1, itemId )
							end 
						end
					end
				elseif(dropNumIdx and 9 == x712533_g_DropTable[showIdx].itemType) then
					local petIdx = floor(random(1, getn(x712533_g_DropTable[showIdx].idx)))
					local petId = x712533_g_DropTable[showIdx].idx[petIdx]
					--Ìí¼ÓÕäÊŞµ½³¡¾°
					for k = 1, x712533_g_DropTable[showIdx].numOdd[dropNumIdx].num do
						local PetObjId = nil
						PetObjId = CreatePetOnScene( sceneId, petId, x, y )
						SetCharacterDieTime( sceneId, PetObjId, delDur )
						print( sceneId .. " Trß¶ng cänh s¯ (" .. x .. ", " .. y .. ") tÕo ra mµt Trân thú "..
									 GetName( sceneId, PetObjId ) .. "." )
					end 
				end
			end --end of if(showIdx) then
			
			--¼ÇÂ¼ÎïÆ·µôÂä°üËù°üº¬toÕ ğµ ÄÚÈİ
			if(showIdx and dropNumIdx and itemId ~= nil) then
				if(9 ~= x712533_g_DropTable[showIdx].itemType) then
					local itemName;
					_,itemName,_ = GetItemInfoByItemId(itemId)
					print("V§t ph¦m bên trong có (loÕi "..x712533_g_DropTable[showIdx].itemType..")"..
								x712533_g_DropTable[showIdx].numOdd[dropNumIdx].num..
								" mµt ["..itemName.."].")
					itemNum = x712533_g_DropTable[showIdx].numOdd[dropNumIdx].num;
					LuaFnAuditItemCreate(sceneId, -1, itemNum, itemId, itemName, "T× bäo sß½ng tÕo ra");
				end
			end
			
		end -- end of for i = 1, x712533_g_DropNumTable[numIdx].num do
		
		--Éè¶¨»ØÊÕÊ±¼ä
		if(ItemBoxId) then
			SetItemBoxMaxGrowTime( sceneId, ItemBoxId, delDur )
			return 0	--Cái này ×ø±ê±»±¦ÏäÕ¼ÓÃÁË
		end
	end
	
	return -1	--Cái này ×ø±êÃ»ÓĞ±»Õ¼ÓÃ
end
--Éú³Éº¯Êı½áÊø**********************************************************************

--mµt ´Î´´½¨¶àcái±¦ÏätoÕ ğµ Íê³Éº¯Êı¿ªÊ¼****************************************************
function x712533_OnTickCreateFinish( sceneId, growPointType, tickCount )
	if(strlen(x712533_g_TickCreate_Msg) > 0) then
		--2006-8-22 14:37 µÈ´ıÏş½¡toÕ ğµ server¶Ô»°Æ½Ì¨
		print( sceneId .. " Trß¶ng cänh s¯ "..x712533_g_TickCreate_Msg)
	end
end
--mµt ´Î´´½¨¶àcái±¦ÏätoÕ ğµ Íê³Éº¯Êı½áÊø****************************************************

--´ò¿ªÇ°º¯Êı¿ªÊ¼
function x712533_OnOpen( sceneId, selfId, targetId )
--Tr· v«ÀàĞÍ
-- 0 ±íÊ¾´ò¿ª³É¹¦
end
--´ò¿ªÇ°º¯Êı½áÊø


--»ØÊÕº¯Êı¿ªÊ¼
function x712533_OnRecycle( sceneId, selfId, targetId )
--Tr· v«1,Éú³¤ ği¬m»ØÊÕ
	return 1
end
--»ØÊÕº¯Êı½áÊø

--´ò¿ªºóº¯Êı¿ªÊ¼
function x712533_OnProcOver( sceneId, selfId, targetId )
end

--´ò¿ªºóº¯Êı½áÊø
function x712533_OpenCheck( sceneId, selfId, AbilityId, AblityLevel )
	return OR_OK
end

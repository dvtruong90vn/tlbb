--ÕäÊŞ²¹³äÑªºÍ¿ìÀÖ¶È

--½Å±¾ºÅ
x701603_g_ScriptId	= 701603

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x701603_OnDefaultEvent( sceneId, selfId, targetId, ButtomNum )
	--¼ÆËãÕäÊŞÊıÁ¿£¬Èç¹ûÊÇ0£¬Ôò¸ø³öÏàÓ¦ÌáÊ¾
	local PetNum		= LuaFnGetPetCount( sceneId, selfId )
	local NpcName
	if PetNum <= 0 then
		local NpcName	= GetName( sceneId, targetId )
		BeginEvent( sceneId )
			AddText( sceneId, "<"..NpcName.."> quan sát các hÕ kÛ t× ğ¥u t¾i chân, nhìn bên trái, nhìn bên phäi, nhìn ğ¢ng sau, nheo m¡t nói v¾i các hÕ:#RCó mang trân thú t¾i ğâu..." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	--»ñÈ¡³öÕ½ÕäÊŞµÄObjId
	local	ObjId			= x701603_FightingPet( sceneId, selfId )
	
	--¼ÆËã¸øÕäÊŞÖÎÁÆĞèÒª¶àÉÙÇ®
	local	MoneyCost	= 0
	local i
	for i=0, PetNum-1, 1 do
		MoneyCost	= MoneyCost + x701603_CalcMoney_hp( sceneId, selfId, i )
	end

	if MoneyCost == 0 then
		BeginEvent( sceneId )
			AddText(sceneId, "Trân thú cüa các hÕ r¤t khoë mÕnh, không c¥n chæa tr¸" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
		--È¡ÏûÖ¸¶¨Íæ¼ÒÉíÉÏµÄËùÓĞµĞ¶Ô¿ÉÇıÉ¢×¤ÁôĞ§¹û
		if ObjId >= 0 then
			LuaFnDispelAllHostileImpacts( sceneId, ObjId )
		end
		return
	end
	
	local	Pet_MaxHP
	local PetID_H, PetID_L
	if ButtomNum == PET_FULL then
		BeginEvent( sceneId )
			AddText( sceneId, "Các hÕ c¥n t¯n #G#{_EXCHG"..MoneyCost.."}#W, xin xác ğ¸nh có mu¯n trân thú h°i phøc không?" )
			--È·¶¨¸øÕäÊŞ¼ÓÑª°´Å¥
			AddNumText( sceneId, x701603_g_ScriptId, "Ğ°ng ı", 6, PET_FULL_OK )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif ButtomNum == PET_FULL_OK then
		-- µÃµ½½»×ÓºÍ½ğÇ®ÊıÄ¿
		local nMoneyJZ = GetMoneyJZ ( sceneId, selfId )
		local nMoney = GetMoney ( sceneId, selfId )
		
		--¼ì²éÍæ¼ÒÊÇ·ñÓĞ×ã¹»µÄÏÖ½ğ
		if (nMoneyJZ + nMoney >= MoneyCost) then

			--¿Û³ı½»×ÓºÍ½ğÇ®
			local moneyJZ, money = LuaFnCostMoneyWithPriority ( sceneId, selfId, MoneyCost )
		
			--ÕäÊŞ»ØÑª
			for i=0, PetNum-1, 1 do
				Pet_MaxHP	= LuaFnGetPet_MaxHP( sceneId, selfId, i )

				--¸ù¾İÕäÊŞindexµÃµ½ÕäÊŞguid
				PetID_H, PetID_L = LuaFnGetPetGUID( sceneId, selfId, i )
				--ÌáÉıHP
				LuaFnSetPetHP( sceneId, selfId, PetID_H, PetID_L, Pet_MaxHP )
			end
			
			--È¡ÏûÖ¸¶¨Íæ¼ÒÉíÉÏµÄËùÓĞµĞ¶Ô¿ÉÇıÉ¢×¤ÁôĞ§¹û
			if ObjId >= 0 then
				LuaFnDispelAllHostileImpacts( sceneId, ObjId )
			end

			--ÔÚnpcÁÄÌì´°¿ÚÍ¨ÖªÍæ¼Ò»¨·ÑÁË¶àÉÙÇ®£¬²¢¸æËßÍæ¼ÒÕäÊŞÒÑ¾­»Ö¸´ÁË
			if (moneyJZ == MoneyCost) then
				-- Ö»¿Û½»×Ó
				BeginEvent( sceneId )
					AddText( sceneId, "Các hÕ ğã chi #G#{_EXCHG"..moneyJZ.."}#W, trân thú cüa các hÕ ğã h°i phøc khöe mÕnh." )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )

			elseif (moneyJZ > 0) and (moneyJZ + money) == MoneyCost then
				-- ¿Û³ı½»×ÓºÍ½ğÇ®
				BeginEvent( sceneId )
					AddText( sceneId, "Các hÕ ğã chi #G#{_EXCHG"..moneyJZ.."}#W." )
					AddText( sceneId, "Các hÕ ğã chi #G#{_MONEY"..money.."}#W." )
					AddText( sceneId, "Trân thú cüa các hÕ ğã h°i phøc khöe mÕnh." )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )

			elseif (moneyJZ == 0) and ( money == MoneyCost) then
				-- ¿Û³ı½ğÇ®
				BeginEvent( sceneId )
					AddText( sceneId, "Các hÕ ğã chi #G#{_MONEY"..money.."}#W, trân thú cüa các hÕ ğã h°i phøc khöe mÕnh." )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )

			else			
				BeginEvent( sceneId )
					AddText( sceneId, "Trân thú này r¤t khöe mÕnh, không c¥n chæa tr¸!" )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
			end
			
		-- Ç®²»¹»
		else
			BeginEvent( sceneId )
				AddText( sceneId, "Các hÕ không ğü ngân lßşng" )
			EndEvent( sceneId )
			DispatchMissionTips( sceneId, selfId )
			return

		end
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x701603_OnEnumerate( sceneId, selfId, targetId )
	--Ìí¼Ó°´Å¥
	AddNumText(sceneId,x701603_g_ScriptId,"Tr¸ thß½ng cho trân thú", 6,PET_FULL)	--ÕâÀïµÄPET_FULLÊÇÓÃÀ´±íÊ¾Õâ¸ö°´Å¥ÊÇµÚÒ»¸öÒ³ÃæµÄÏÔÊ¾°´Å¥£¬²»ÊÇÈ·¶¨»Ö¸´µÄ°´Å¥
	return
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x701603_CheckAccept( sceneId, selfId )
end

--**********************************
--½ÓÊÜ
--**********************************
function x701603_OnAccept( sceneId, selfId, ABILITY_CAIKUANG )
end

--**********************************
--¼ÆËã»Ö¸´Ñª·ÑÓÃ
--**********************************
--µ¥Î»ÑªÑ±Ñø¼ÛÖµ£º0.025+n*0.0005£¨nÎªÕäÊŞµÈ¼¶£©
--µ¥Î»¿ìÀÖ¶È¼ÛÖµ£º0.373+0.44*n£¨nÎªÕäÊŞµÈ¼¶£©
function x701603_CalcMoney_hp( sceneId, selfId, index )
	local lv			= LuaFnGetPet_Level( sceneId, selfId, index )
	local	hp			= LuaFnGetPet_HP( sceneId, selfId, index )
	local	hp_max	= LuaFnGetPet_MaxHP( sceneId, selfId, index )
	if hp >= hp_max then
		return 0
	end

	local	gld	= floor( ( 0.025+lv*0.0005 ) * (hp_max-hp) )
	if gld < 1 then
		gld			= 1
	end
	return gld
end

--**********************************
--»ñÈ¡³öÕ½ÕäÊŞµÄObjId
--**********************************
function x701603_FightingPet( sceneId, selfId )
	local	PetNum	= LuaFnGetPetCount( sceneId, selfId )
	local	i
	local	PetID_H, PetID_L
	local	objId
	if PetNum <= 0 then
		return -1
	end
	
	for i=0, PetNum-1, 1 do
		--¸ù¾İÕäÊŞindexµÃµ½ÕäÊŞguid
		PetID_H, PetID_L = LuaFnGetPetGUID( sceneId, selfId, i )
		objId	= LuaFnGetPetObjIdByGUID( sceneId, selfId, PetID_H, PetID_L )
		
		if objId >= 0 then
			return objId
		end
	end
	return -1
end

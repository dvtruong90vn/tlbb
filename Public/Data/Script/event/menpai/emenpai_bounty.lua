--ÃÅÅÉ½±Àø×°±¸ÓëÕäÊŞ

--½Å±¾ºÅ
x808004_g_ScriptId			= 808004

--²Ù×÷¼¯
x808004_g_Key			=
{
	["eqp"]					= 100,	--ÁìÈ¡×°±¸
	["pet"]					= 101,	--ÁìÈ¡ÕäÊŞ
	["menpai"]				= 102,	--ÁìÈ¡ÃÅÅÉÊ±×°
}

--×°±¸½±Àø
x808004_g_EqpNum	= 9
x808004_g_Eqp			=
{
	[0]	= { weapon = 10430010, armor = 10141136, menpai=10124009 },	--ÉÙÁÖ
	[1]	= { weapon = 10431110, armor = 10141136, menpai=10124010 },	--Ã÷½Ì
	[2]	= { weapon = 10431210, armor = 10141136, menpai=10124011 },	--Ø¤°ï
	[3]	= { weapon = 10432010, armor = 10141136, menpai=10124012 },	--Îäµ±
	[4]	= { weapon = 10432110, armor = 10141136, menpai=10124013 },	--¶ëáÒ
	[5]	= { weapon = 10433210, armor = 10141136, menpai=10124014 },	--ĞÇËŞ
	[6]	= { weapon = 10435210, armor = 10141136, menpai=10124015 },	--ÌìÁú
	[7]	= { weapon = 10434010, armor = 10141136, menpai=10124016 },	--ÌìÉ½
	[8] = { weapon = 10435110, armor = 10141136, menpai=10124017 },	--åĞÒ£
}

--ÕäÊŞ½±Àø
x808004_g_PetNum	= 3
x808004_g_Pet			=
{
	itemRcvErrMsg = "Khi t£ng trân thú cho các hÕ, còn phäi ğßa cä ğ° ch½i và ğ° ån cho trân thú. Xin ğ¬ hai khoang tr¯ng trong Hành trang và hãy t¾i tìm tÕi hÕ.",
	[1]	= { id = 6069, name = "M£c Kính Miêu Bäo Bäo",   itemList = { { id = 30607001, num = 1 } } },
	[2]	= { id = 6061, name = "M£c Kính Miêu Biªn D¸", itemList = { { id = 30607001, num = 1 } } },
	[3]	= { id = 6062, name = "M£c Kính Miêu Biªn D¸", itemList = { { id = 30607001, num = 1 } } },
}

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x808004_OnDefaultEvent( sceneId, selfId, targetId, menpai )
	local	mp	= GetMenPai( sceneId, selfId )
	if mp < 0 or mp >= x808004_g_EqpNum then
		x808004_MsgBox( sceneId, selfId, targetId, "Các hÕ vçn chßa gia nh§p môn phái!" )
		return
	end
	if mp ~= menpai then
		x808004_MsgBox( sceneId, selfId, targetId, "Các hÕ không phäi là ğ® tØ cüa bän môn!" )
		return
	end

	local	flag	= GetMissionData( sceneId, selfId, MD_MENPAI_BOUNTY )
	local	fEqp	= floor( flag / 10 )
	local	fPet	= flag - fEqp * 10
	local	str

	--Ñ¡Ôñ°´Å¥
	local	key	= GetNumText()
	local	rnd
	
		
	if key == x808004_g_Key["eqp"] then
		if fEqp > 0 then
			return
		end

		if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
			x808004_MsgBox( sceneId, selfId, targetId, "Không gian trong Hành trang cüa các hÕ không ğü. Chïnh lı xong hãy t¾i tìm tÕi hÕ." )
			return
		end
		if TryRecieveItem( sceneId, selfId, x808004_g_Eqp[mp].weapon, 1 ) >= 0 then
			str		= "#YCác hÕ nh§n ğßşc "..GetItemName( sceneId, x808004_g_Eqp[mp].weapon ).."!"
			Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
			x808004_NotifyTip( sceneId, selfId, str )
		end
		if TryRecieveItem( sceneId, selfId, x808004_g_Eqp[mp].armor, 1 ) >= 0 then
			str		= "#YCác hÕ nh§n ğßşc "..GetItemName( sceneId, x808004_g_Eqp[mp].armor ).."!"
			Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
			x808004_NotifyTip( sceneId, selfId, str )
		end
		x808004_MsgBox( sceneId, selfId, targetId, "Hãy xem hành trang, các hÕ ğã ğÕt ğßşc t£ng thß·ng trang b¸!" )
		fEqp		= 1
	elseif key == x808004_g_Key["pet"] then
		if fPet > 0 then
			return
		end

		rnd			= random( getn( x808004_g_Pet ) )

		local itemList = x808004_g_Pet[rnd].itemList
		if not itemList then
			return
		end

		LuaFnBeginAddItem( sceneId )
			for i, item in itemList do
				LuaFnAddItem( sceneId, item.id, item.num )
			end
		local nRet = LuaFnEndAddItem( sceneId, selfId )
		if nRet ~= 1 then
			x808004_MsgBox( sceneId, selfId, targetId, x808004_g_Pet.itemRcvErrMsg )
			return
		end

		local createPetRet, retGUID_H, retGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, x808004_g_Pet[rnd].id, 10, 0);
		if createPetRet and createPetRet == 1 then
			LuaFnAddItemListToHuman( sceneId, selfId )
			str		= "#YCác hÕ nh§n ğßşc "..x808004_g_Pet[rnd].name.."!"
			Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
			x808004_NotifyTip( sceneId, selfId, str )
			x808004_MsgBox( sceneId, selfId, targetId, "Hãy xem hành trang, các hÕ ğã ğÕt ğßşc t£ng thß·ng trân thú!" )
			fPet	= 1
		else
			x808004_MsgBox( sceneId, selfId, targetId, "Các hÕ không th¬ mang theo quá nhi«u trân thú!" )
		end
	elseif key == x808004_g_Key["menpai"] then
		if GetMissionData( sceneId, selfId, MD_MENPAI_BOUNTY_SHIZHUANG ) > 0 then
			return
		end

		if GetItemCount(sceneId,selfId, x808004_g_Eqp[mp].menpai) > 0 then
			x808004_MsgBox( sceneId, selfId, targetId, "Trên ngß¶i các hÕ ğã có th¶i trang môn phái, không th¬ nh§n thêm!" )
			return
		end
		
		if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
			x808004_MsgBox( sceneId, selfId, targetId, "Không gian trong Hành trang cüa các hÕ không ğü. Chïnh lı xong hãy t¾i tìm tÕi hÕ!" )
			return
		end
		if TryRecieveItem( sceneId, selfId, x808004_g_Eqp[mp].menpai, 1 ) >= 0 then
			str		= "#YCác hÕ nh§n ğßşc "..GetItemName( sceneId, x808004_g_Eqp[mp].menpai ).."!"
			Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
			x808004_NotifyTip( sceneId, selfId, str )
		end
		SetMissionData( sceneId, selfId, MD_MENPAI_BOUNTY_SHIZHUANG, 1 )		
		return
	end
	
	--ÃÅÅÉ½±ÀøµÄ±ê¼Ç
	SetMissionData( sceneId, selfId, MD_MENPAI_BOUNTY, floor( fEqp * 10 + fPet ) )
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x808004_OnEnumerate( sceneId, selfId, targetId )
	--ÉèÖÃÃÅÅÉ½±ÀøµÄ±ê¼Ç£¬´ËÈÎÎñÖ»ÄÜ½ÓÈ¡Ò»´Î
	local	flag		= GetMissionData( sceneId, selfId, MD_MENPAI_BOUNTY )
	local	bShiZhuang	= GetMissionData( sceneId, selfId, MD_MENPAI_BOUNTY_SHIZHUANG )
	local	fEqp	= floor( flag / 10 )
	local	fPet	= flag - fEqp * 10
	if fEqp == 0 then
		AddNumText( sceneId, x808004_g_ScriptId, "Nh§n trang b¸", 4, x808004_g_Key["eqp"] )
	end
	if fPet == 0 then
		AddNumText( sceneId, x808004_g_ScriptId, "Nh§n trân thú", 4, x808004_g_Key["pet"] )
	end
	if bShiZhuang <= 0 then
		AddNumText( sceneId, x808004_g_ScriptId, "Nh§n th¶i trang môn phái", 4, x808004_g_Key["menpai"] )
	end
	
end

--**********************************
--¶Ô»°¿òÌáÊ¾
--**********************************
function x808004_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ĞÑÄ¿ÌáÊ¾
--**********************************
function x808004_NotifyTip( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

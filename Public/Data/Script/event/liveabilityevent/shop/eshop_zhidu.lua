--…ÃµÍ
--√≈≈……ÃµÍ
--–«Àﬁ ÷∆∂æ

--Ω≈±æ∫≈
x701610_g_ScriptId = 701610

--…ÃµÍ∫≈
x701610_g_shoptableindex=56

--…ÃµÍ√˚≥∆
x701610_g_ShopName = "Mua phﬂΩng th—c ch™ µc"

--**********************************
--»ŒŒÒ»Îø⁄∫Ø ˝
--**********************************
function x701610_OnDefaultEvent( sceneId, selfId, targetId )	--µ„ª˜∏√»ŒŒÒ∫Û÷¥––¥ÀΩ≈±æ
	DispatchShopItem( sceneId, selfId,targetId, x701610_g_shoptableindex )
end

--**********************************
--¡–æŸ ¬º˛
--**********************************
function x701610_OnEnumerate( sceneId, selfId, targetId )
	--≈–∂œ «∑Ò «±æ≈…µ‹◊”
	if GetMenPai(sceneId,selfId) == MP_XINGSU then
		AddNumText(sceneId,x701610_g_ScriptId,x701610_g_ShopName,7,-1)
    end
	return
end

--**********************************
--ºÏ≤‚Ω” ‹Ãıº˛
--**********************************
function x701610_CheckAccept( sceneId, selfId )
end

--**********************************
--Ω” ‹
--**********************************
function x701610_OnAccept( sceneId, selfId )
end

--**********************************
--∑≈∆˙
--**********************************
function x701610_OnAbandon( sceneId, selfId )
end

--**********************************
--ºÃ–¯
--**********************************
function x701610_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--ºÏ≤‚ «∑Òø…“‘Ã·Ωª
--**********************************
function x701610_CheckSubmit( sceneId, selfId )
end

--**********************************
--Ã·Ωª
--**********************************
function x701610_OnSubmit( sceneId, selfId, targetId,selectRadioId )
end

--**********************************
--…±À¿π÷ŒÔªÚÕÊº“
--**********************************
function x701610_OnKillObject( sceneId, selfId, objdataId,objId)
end

--**********************************
--Ω¯»Î«¯”Ú ¬º˛
--**********************************
function x701610_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µ¿æﬂ∏ƒ±‰
--**********************************
function x701610_OnItemChanged( sceneId, selfId, itemdataId )
end

--…ÃµÍ
--√≈≈……ÃµÍ
--…Ÿ¡÷ ø™π‚

--Ω≈±æ∫≈
x701605_g_ScriptId = 701605

--…ÃµÍ∫≈
x701605_g_shoptableindex=51

--…ÃµÍ√˚≥∆
x701605_g_ShopName = "Mua phﬂΩng th—c ch™ t’o khai kho·ng"

--**********************************
--»ŒŒÒ»Îø⁄∫Ø ˝
--**********************************
function x701605_OnDefaultEvent( sceneId, selfId, targetId )	--µ„ª˜∏√»ŒŒÒ∫Û÷¥––¥ÀΩ≈±æ
	DispatchShopItem( sceneId, selfId,targetId, x701605_g_shoptableindex )
end

--**********************************
--¡–æŸ ¬º˛
--**********************************
function x701605_OnEnumerate( sceneId, selfId, targetId )
	--≈–∂œ «∑Ò «±æ≈…µ‹◊”
	if GetMenPai(sceneId,selfId) == MP_SHAOLIN then
		AddNumText(sceneId,x701605_g_ScriptId,x701605_g_ShopName,7,-1)
    end
	return
end

--**********************************
--ºÏ≤‚Ω” ‹Ãıº˛
--**********************************
function x701605_CheckAccept( sceneId, selfId )
end

--**********************************
--Ω” ‹
--**********************************
function x701605_OnAccept( sceneId, selfId )
end

--**********************************
--∑≈∆˙
--**********************************
function x701605_OnAbandon( sceneId, selfId )
end

--**********************************
--ºÃ–¯
--**********************************
function x701605_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--ºÏ≤‚ «∑Òø…“‘Ã·Ωª
--**********************************
function x701605_CheckSubmit( sceneId, selfId )
end

--**********************************
--Ã·Ωª
--**********************************
function x701605_OnSubmit( sceneId, selfId, targetId,selectRadioId )
end

--**********************************
--…±À¿π÷ŒÔªÚÕÊº“
--**********************************
function x701605_OnKillObject( sceneId, selfId, objdataId,objId)
end

--**********************************
--Ω¯»Î«¯”Ú ¬º˛
--**********************************
function x701605_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µ¿æﬂ∏ƒ±‰
--**********************************
function x701605_OnItemChanged( sceneId, selfId, itemdataId )
end

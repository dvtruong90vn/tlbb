--…ÃµÍ
--√≈≈……ÃµÍ
--¥Û¿Ì ÷∆π∆

--Ω≈±æ∫≈
x701613_g_ScriptId = 701613

--…ÃµÍ∫≈
x701613_g_shoptableindex=52

--…ÃµÍ√˚≥∆
x701613_g_ShopName = "Mua phﬂΩng th—c MÍ Thußt"

--**********************************
--»ŒŒÒ»Îø⁄∫Ø ˝
--**********************************
function x701613_OnDefaultEvent( sceneId, selfId, targetId )	--µ„ª˜∏√»ŒŒÒ∫Û÷¥––¥ÀΩ≈±æ
	DispatchShopItem( sceneId, selfId,targetId, x701613_g_shoptableindex )
end

--**********************************
--¡–æŸ ¬º˛
--**********************************
function x701613_OnEnumerate( sceneId, selfId, targetId )
	--≈–∂œ «∑Ò «±æ≈…µ‹◊”
	if GetMenPai(sceneId,selfId) == MP_DALI then
		AddNumText(sceneId,x701613_g_ScriptId,x701613_g_ShopName,7,-1)
    end
	return
end

--**********************************
--ºÏ≤‚Ω” ‹Ãıº˛
--**********************************
function x701613_CheckAccept( sceneId, selfId )
end

--**********************************
--Ω” ‹
--**********************************
function x701613_OnAccept( sceneId, selfId )
end

--**********************************
--∑≈∆˙
--**********************************
function x701613_OnAbandon( sceneId, selfId )
end

--**********************************
--ºÃ–¯
--**********************************
function x701613_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--ºÏ≤‚ «∑Òø…“‘Ã·Ωª
--**********************************
function x701613_CheckSubmit( sceneId, selfId )
end

--**********************************
--Ã·Ωª
--**********************************
function x701613_OnSubmit( sceneId, selfId, targetId,selectRadioId )
end

--**********************************
--…±À¿π÷ŒÔªÚÕÊº“
--**********************************
function x701613_OnKillObject( sceneId, selfId, objdataId,objId)
end

--**********************************
--Ω¯»Î«¯”Ú ¬º˛
--**********************************
function x701613_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µ¿æﬂ∏ƒ±‰
--**********************************
function x701613_OnItemChanged( sceneId, selfId, itemdataId )
end

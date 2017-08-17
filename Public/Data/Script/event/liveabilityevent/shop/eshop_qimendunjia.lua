--…ÃµÍ
--√≈≈……ÃµÍ
--Â–“£ ∆Ê√≈∂›º◊

--Ω≈±æ∫≈
x701611_g_ScriptId = 701611

--…ÃµÍ∫≈
x701611_g_shoptableindex=57

--…ÃµÍ√˚≥∆
x701611_g_ShopName = "Mua phﬂΩng th—c kœ mÙn µn gi·p"

--**********************************
--»ŒŒÒ»Îø⁄∫Ø ˝
--**********************************
function x701611_OnDefaultEvent( sceneId, selfId, targetId )	--µ„ª˜∏√»ŒŒÒ∫Û÷¥––¥ÀΩ≈±æ
	DispatchShopItem( sceneId, selfId,targetId, x701611_g_shoptableindex )
end

--**********************************
--¡–æŸ ¬º˛
--**********************************
function x701611_OnEnumerate( sceneId, selfId, targetId )
	--≈–∂œ «∑Ò «±æ≈…µ‹◊”
	if GetMenPai(sceneId,selfId) == MP_XIAOYAO then
		AddNumText(sceneId,x701611_g_ScriptId,x701611_g_ShopName,7,-1)
    end
	return
end

--**********************************
--ºÏ≤‚Ω” ‹Ãıº˛
--**********************************
function x701611_CheckAccept( sceneId, selfId )
end

--**********************************
--Ω” ‹
--**********************************
function x701611_OnAccept( sceneId, selfId )
end

--**********************************
--∑≈∆˙
--**********************************
function x701611_OnAbandon( sceneId, selfId )
end

--**********************************
--ºÃ–¯
--**********************************
function x701611_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--ºÏ≤‚ «∑Òø…“‘Ã·Ωª
--**********************************
function x701611_CheckSubmit( sceneId, selfId )
end

--**********************************
--Ã·Ωª
--**********************************
function x701611_OnSubmit( sceneId, selfId, targetId,selectRadioId )
end

--**********************************
--…±À¿π÷ŒÔªÚÕÊº“
--**********************************
function x701611_OnKillObject( sceneId, selfId, objdataId,objId)
end

--**********************************
--Ω¯»Î«¯”Ú ¬º˛
--**********************************
function x701611_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µ¿æﬂ∏ƒ±‰
--**********************************
function x701611_OnItemChanged( sceneId, selfId, itemdataId )
end

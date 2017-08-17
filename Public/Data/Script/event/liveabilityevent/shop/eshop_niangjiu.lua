--…ÃµÍ
--√≈≈……ÃµÍ
--ÿ§∞Ô ƒæ∆

--Ω≈±æ∫≈
x701606_g_ScriptId = 701606

--…ÃµÍ∫≈
x701606_g_shoptableindex=59

--…ÃµÍ√˚≥∆
x701606_g_ShopName = "Mua phﬂΩng th—c ch™ rﬂ˛u"

--**********************************
--»ŒŒÒ»Îø⁄∫Ø ˝
--**********************************
function x701606_OnDefaultEvent( sceneId, selfId, targetId )	--µ„ª˜∏√»ŒŒÒ∫Û÷¥––¥ÀΩ≈±æ
	DispatchShopItem( sceneId, selfId,targetId, x701606_g_shoptableindex )
end

--**********************************
--¡–æŸ ¬º˛
--**********************************
function x701606_OnEnumerate( sceneId, selfId, targetId )
	--≈–∂œ «∑Ò «±æ≈…µ‹◊”
	if GetMenPai(sceneId,selfId) == MP_GAIBANG then
		AddNumText(sceneId,x701606_g_ScriptId,x701606_g_ShopName,7,-1)
    end
	return
end

--**********************************
--ºÏ≤‚Ω” ‹Ãıº˛
--**********************************
function x701606_CheckAccept( sceneId, selfId )
end

--**********************************
--Ω” ‹
--**********************************
function x701606_OnAccept( sceneId, selfId )
end

--**********************************
--∑≈∆˙
--**********************************
function x701606_OnAbandon( sceneId, selfId )
end

--**********************************
--ºÃ–¯
--**********************************
function x701606_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--ºÏ≤‚ «∑Òø…“‘Ã·Ωª
--**********************************
function x701606_CheckSubmit( sceneId, selfId )
end

--**********************************
--Ã·Ωª
--**********************************
function x701606_OnSubmit( sceneId, selfId, targetId,selectRadioId )
end

--**********************************
--…±À¿π÷ŒÔªÚÕÊº“
--**********************************
function x701606_OnKillObject( sceneId, selfId, objdataId,objId)
end

--**********************************
--Ω¯»Î«¯”Ú ¬º˛
--**********************************
function x701606_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µ¿æﬂ∏ƒ±‰
--**********************************
function x701606_OnItemChanged( sceneId, selfId, itemdataId )
end

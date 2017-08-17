--…ÃµÍ
--√≈≈……ÃµÍ
--∂Î·“ ÷∆∑˚

--Ω≈±æ∫≈
x701609_g_ScriptId = 701609

--…ÃµÍ∫≈
x701609_g_shoptableindex=55

--…ÃµÍ√˚≥∆
x701609_g_ShopName = "Mua phﬂΩng th—c ch™ b˘a"

--**********************************
--»ŒŒÒ»Îø⁄∫Ø ˝
--**********************************
function x701609_OnDefaultEvent( sceneId, selfId, targetId )	--µ„ª˜∏√»ŒŒÒ∫Û÷¥––¥ÀΩ≈±æ
	DispatchShopItem( sceneId, selfId,targetId, x701609_g_shoptableindex )
end

--**********************************
--¡–æŸ ¬º˛
--**********************************
function x701609_OnEnumerate( sceneId, selfId, targetId )
	--≈–∂œ «∑Ò «±æ≈…µ‹◊”
	if GetMenPai(sceneId,selfId) == MP_EMEI then
		AddNumText(sceneId,x701609_g_ScriptId,x701609_g_ShopName,7,-1)
    end
	return
end

--**********************************
--ºÏ≤‚Ω” ‹Ãıº˛
--**********************************
function x701609_CheckAccept( sceneId, selfId )
end

--**********************************
--Ω” ‹
--**********************************
function x701609_OnAccept( sceneId, selfId )
end

--**********************************
--∑≈∆˙
--**********************************
function x701609_OnAbandon( sceneId, selfId )
end

--**********************************
--ºÃ–¯
--**********************************
function x701609_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--ºÏ≤‚ «∑Òø…“‘Ã·Ωª
--**********************************
function x701609_CheckSubmit( sceneId, selfId )
end

--**********************************
--Ã·Ωª
--**********************************
function x701609_OnSubmit( sceneId, selfId, targetId,selectRadioId )
end

--**********************************
--…±À¿π÷ŒÔªÚÕÊº“
--**********************************
function x701609_OnKillObject( sceneId, selfId, objdataId,objId)
end

--**********************************
--Ω¯»Î«¯”Ú ¬º˛
--**********************************
function x701609_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µ¿æﬂ∏ƒ±‰
--**********************************
function x701609_OnItemChanged( sceneId, selfId, itemdataId )
end

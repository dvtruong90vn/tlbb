-- Éú³¤ ği¬m ²É¼¯[²É¿ó²ÉÒ©]

-- ½Å±¾ºÅ
x710531_g_ScriptId = 710531

-- Éú³¤ ği¬mĞÅÏ¢
x710531_g_GPInfo = {}

-- Ëæ»úÒò×Ó
x710531_g_RandNum = 10000

-- abilityId: Éú³¤ ği¬m¶ÔÓ¦¼¼ÄÜ name: Éú³¤ ği¬mtoÕ ğµ Tên
-- mainId: Ö÷Òªµô³öÎï mExtraCountOdds: Ö÷Òªµô³öÎï¶îÍâµô³öÊıÁ¿toÕ ğµ ¼¸ÂÊ
-- associatedId: ¸±²úÆ·ÁĞ±í,aOdds ¼¸ÂÊ³öÏÖÊ±Ëæ»ú³ömµt cái,ÁĞ±í¿ÉÒÔÎª¿Õ aOdds: ¸±²úÆ·µô³öÂÊ aExtraCountOdds: ³öÏÖ¸±²úÆ·ºó¶îÍâÊıÁ¿¼¸ÂÊ
-- rareId: Ï¡ÓĞÎïÆ·,Ï¡ÓĞÎïÆ·¿ÉÒÔÃ»ÓĞ,Ìî -1, rOdds: Ï¡ÓĞÎïÆ·µô³öÂÊ
-- needLevel: ²É¼¯´ËÉú³¤ ği¬mC¥n toÕ ğµ c¤p±ğ

-- ÒÔÏÂ²¿·ÖÎª²İÒ©

x710531_g_GPInfo[776] = { abilityId = ABILITY_CAIYAO, name = "Kính H° Thiên Niên Thäo", mainId = 40004414 }

-- ÒÔÉÏ²¿·ÖÎª²İÒ©

-- ³¤Éú³¤ ği¬m
function x710531_OnCreate( sceneId, growPointType, x, y )
	
	
	-------------------------------------------------------------------	
	--»î¶¯Ğúng·ñ¿ªÊ¼
	local actId = 36;	
	local bActStatus = GetActivityParam( sceneId, actId, 0 );
	
	if bActStatus <= 0 then
		return -1;
	end
	
	--²İÒ©Ğúng·ñÒÑ¾­²úÉú
	local bQianNianCaoGen = GetActivityParam( sceneId, actId, 1 );

	if bQianNianCaoGen > 0 then
		return -1;
	end
	-------------------------------------------------------------------

	
	PrintStr("growPointType".."x:"..x.."y:"..y);

	-- Ã¿cáiÉú³¤ ği¬m×îÉÙÄÜ ği¬mµ½mµt cáiÎïÆ·,ÕâÀïÖ±½Ó·ÅÈë itembox ÖĞmµt cái
	local ItemBoxId = ItemBoxEnterScene( x, y, growPointType, sceneId, QUALITY_MUST_BE_CHANGE,1, 40004414 )	
	SetItemBoxMaxGrowTime(sceneId,ItemBoxId,30*60*1000)	--Éè¶¨»ØÊÕÊ±¼ä
	
	SetActivityParam( sceneId, actId, 1, 1 );
	
--	local message = format("@*;SrvMsg;SCA:#{JingHu_LingYao_00}" );	
--	AddGlobalCountNews( sceneId, message )

end

--  ği¬m»÷Éú³¤ ği¬mÊ±
function x710531_OnOpen( sceneId, selfId, targetId )



	return OR_OK
end

-- ½ø¶ÈÌõ×ßÍêÁË
function x710531_OnProcOver( sceneId, selfId, targetId )
	local growPointType = LuaFnGetItemBoxGrowPointType( sceneId, targetId )
	

	-- ÏûºÄTinhÁ¦
--	CallScriptFunction( ABILITYLOGIC_ID, "EnergyCostCaiJi", sceneId, selfId, GPInfo.abilityId, GPInfo.needLevel )
	return OR_OK
end

-- Ïä×Ó¼ñÍêÁË,»ØÊÕ
function x710531_OnRecycle( sceneId, selfId, targetId)
	local growPointType = LuaFnGetItemBoxGrowPointType( sceneId, targetId )
	

	--Í³¼ÆÊı¾İ
	LuaFnAuditHDXianCaoZhengDuo(sceneId, selfId, "Hái thu th§p Tiên thäo");

--	LuaFnAuditAbility(sceneId, selfId, GPInfo.abilityId, -1, -1)
	-- Ôö¼ÓÊìÁ·¶È
--	CallScriptFunction( ABILITYLOGIC_ID, "GainExperience", sceneId, selfId, GPInfo.abilityId, GPInfo.needLevel )
	--Tr· v«1,Éú³¤ ği¬m»ØÊÕ
	return 1
end

function x710531_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

function x710531_OnTickCreateFinish( sceneId, growPointType, tickCount )
end
